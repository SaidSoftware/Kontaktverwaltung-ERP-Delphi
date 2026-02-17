unit MyAnhangform;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, dxPanel, cxClasses, dxBar,MyPapierkorb,
  System.Actions, Vcl.ActnList,MyDokuFrame, Data.DB, MemDS, DBAccess, MSAccess,ShellAPI,System.Win.ComObj,System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent, System.NetEncoding, dxLayoutContainer,
  dxLayoutControl, FileCtrl,Clipbrd;

type
  TAnhang = class(TForm)
    dxPanelAnhang: TdxPanel;
    dxBarManagerAnhang: TdxBarManager;
    dxBarManagerAnhangBar1: TdxBar;
    dxBarLargeButtonSenden: TdxBarLargeButton;
    dxBarLargeButtonSchliessen: TdxBarLargeButton;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group_Root1: TdxLayoutGroup;
    dxBarLargeButtonDownload: TdxBarLargeButton;
    procedure dxBarLargeButtonSendenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButtonDownloadClick(Sender: TObject);

  private
    FEmail: string;
    FPhone: string;
    FPersonID: Integer;
  public

     FrameDoku:TFrameDoku;
     procedure Init(const AEmail,APhone:string;APersonID: Integer);
     constructor CreateWithPersonID(AOwner: TComponent; APersonID: Integer);

     procedure CopyFilesToClipboardOrShow(FileList: TStringList);
  end;

var
  Anhang: TAnhang;

implementation

uses MyDokuForm,MyChoiseForm;
{$R *.dfm}


{Create}
procedure TAnhang.FormCreate(Sender: TObject);
begin
  FrameDoku := TFrameDoku.Create(Self);
  FrameDoku.Parent := Self;
  FrameDoku.Align := alClient;
  FrameDoku.ToolButtonNeu.Enabled:= False;
  FrameDoku.ToolButtonLoeschen.Enabled:=False;
  FrameDoku.ReadOnlyMode := True;
end;



{Consstructor}
constructor TAnhang.CreateWithPersonID(AOwner: TComponent; APersonID: Integer);
begin
  inherited Create(AOwner);
  FPersonID := APersonID;
end;


{Init}
procedure TAnhang.Init(const AEmail,APhone:string;APersonID: Integer);
begin
  FEmail := AEmail;
  FPhone := APhone;
  FPersonID := APersonID;
  if not Assigned(FrameDoku) then  begin
    ShowMessage('FrameDoku ist nicht zugewiesen!');
    Exit;
  end;
  FrameDoku.LoadDokumente(APersonID);
end;




{DownLoad}
procedure TAnhang.dxBarLargeButtonDownloadClick(Sender: TObject);
var
  DataSet: TDataSet;
  FileName: string;
  FileStream: TMemoryStream;
  i: Integer;
  Folder: string;
  FilesSaved: Integer;
begin
  if not SelectDirectory('Ordner zum Speichern auswählen', '', Folder) then  begin
    Exit;
  end;

  DataSet := FrameDoku.cxGridDBTableViewDokumenten.DataController.DataSource.DataSet;
  FilesSaved := 0;

  for i := 0 to DataSet.RecordCount - 1 do  begin
    DataSet.RecNo := i + 1;

    if DataSet.FieldByName('Versanderlaubt').AsBoolean then    begin
      FileName := DataSet.FieldByName('FileName').AsString;
      FileStream := TMemoryStream.Create;
      try
        (DataSet.FieldByName('FileData') as TBlobField).SaveToStream(FileStream);

        if FileStream.Size > 0 then  begin
          FileStream.Position := 0;
          FileStream.SaveToFile(IncludeTrailingPathDelimiter(Folder) + ExtractFileName(FileName));
          Inc(FilesSaved);
        end;

      finally
        FileStream.Free;
      end;
    end;
  end;

  if FilesSaved = 0 then
    Application.MessageBox('Kein Dokument zum Herunterladen vorhanden.', 'Fehler', MB_OK + MB_ICONERROR)
  else
    Application.MessageBox(PChar(Format('%d Dateien erfolgreich gespeichert.', [FilesSaved])), 'Info', MB_OK + MB_ICONINFORMATION);
end;


{Senden}
procedure TAnhang.dxBarLargeButtonSendenClick(Sender: TObject);
var
  DateiQuery: TMSQuery;
  TempFilePath: string;
  TempFileList: TStringList;
  Outlook, MailItem, Attachments: OleVariant;
  AttachStream: TStream;
  FormAuswahl: TFormAuswahl;
  SelectedOption: TAppSendOption;
  I: Integer;
begin
  FormAuswahl := TFormAuswahl.Create(Self);
  try
    if Pos('@', FEmail) > 0 then
      FormAuswahl.ShowForKontakt(FEmail, SelectedOption)
    else
      FormAuswahl.ShowForKontakt(FPhone, SelectedOption);

    if SelectedOption = asNone then
      Exit;

    if not (SelectedOption in [asOutlook, asCopy]) then begin
      ShowMessage('Nur Outlook-Versand ist zurzeit implementiert.');
      Exit;
    end;
  finally
    FormAuswahl.Free;
  end;

  TempFileList := TStringList.Create;
  try
    DateiQuery := FrameDoku.MSQueryDoku;
    DateiQuery.First;

    while not DateiQuery.Eof do begin
      if DateiQuery.FieldByName('Versanderlaubt').AsBoolean then begin
        TempFilePath := IncludeTrailingPathDelimiter(GetEnvironmentVariable('TEMP')) +
                        DateiQuery.FieldByName('FileName').AsString;
        AttachStream := DateiQuery.CreateBlobStream(DateiQuery.FieldByName('FileData'), bmRead);
        try
          with TFileStream.Create(TempFilePath, fmCreate) do
          try
            AttachStream.Position := 0;
            CopyFrom(AttachStream, AttachStream.Size);
          finally
            Free;
          end;
        finally
          AttachStream.Free;
        end;
        TempFileList.Add(TempFilePath);
      end;
      DateiQuery.Next;
    end;

    if TempFileList.Count > 0 then begin
      case SelectedOption of
        asOutlook: begin
          //Outlook
          try
            Outlook := CreateOleObject('Outlook.Application');
            MailItem := Outlook.CreateItem(0);
            MailItem.Recipients.Add(FEmail);
            MailItem.Subject := 'Kontaktaufnahme';
            MailItem.Body := 'Sehr geehrte/r...';
            Attachments := MailItem.Attachments;

            for I := 0 to TempFileList.Count - 1 do
              Attachments.Add(TempFileList[I]);

            MailItem.Display;
          except
            on E: Exception do
              ShowMessage('Fehler beim Öffnen von Outlook: ' + E.Message);
          end;
        end;

        asCopy: begin
          CopyFilesToClipboardOrShow(TempFileList);
        end;
      end;
    end
    else begin
      ShowMessage('Keine Dokumente mit Versanderlaubt = True gefunden.');
    end;
  finally

    for I := 0 to TempFileList.Count - 1 do begin
      if FileExists(TempFileList[I]) then
        DeleteFile(TempFileList[I]);
    end;
    TempFileList.Free;
  end;

  Close; // optional
end;


procedure TAnhang.CopyFilesToClipboardOrShow(FileList: TStringList);
var
  I: Integer;
  FileListText: string;
begin

  FileListText := 'Dateien zum Kopieren:' + sLineBreak + sLineBreak;
  for I := 0 to FileList.Count - 1 do
    FileListText := FileListText + ExtractFileName(FileList[I]) + sLineBreak;

  FileListText := FileListText + sLineBreak + 'Dateipfade wurden in die Zwischenablage kopiert.';

  Clipboard.AsText := FileList.Text;

  ShowMessage(FileListText);

end;


end.
