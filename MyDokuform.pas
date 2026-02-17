unit MyDokuform;

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
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, dxPanel, cxClasses, dxBar,MyPapierKorb,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxContainer, cxEdit,
  Vcl.Menus, dxLayoutContainer, cxLabel, Vcl.StdCtrls, cxButtons, cxTextEdit,
  dxLayoutControl, Data.DB, MemDS, DBAccess, MSAccess,KVDatamodule,MyMessageBox, ShellAPI,
  cxImage;

type
  TMyFormDoku = class(TForm)
    dxPanelDoku: TdxPanel;
    dxBarManagerDoku: TdxBarManager;
    dxBarManagerDokuBar1: TdxBar;
    dxBarLargeButSpeichern: TdxBarLargeButton;
    dxBarLargeButZuruecksetzen: TdxBarLargeButton;
    dxBarLargeButSchliessen: TdxBarLargeButton;
    dxLayoutControlDokuGroup_Root: TdxLayoutGroup;
    dxLayoutControlDoku: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    cxTextEditFile: TcxTextEdit;
    cxButtonFile: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    cxLabelFile: TcxLabel;
    dxLayoutItem3: TdxLayoutItem;
    cxImageDoku: TcxImage;
    dxLayoutItem4: TdxLayoutItem;
    dxBarLargeButDownload: TdxBarLargeButton;
    dxLayoutGroup1: TdxLayoutGroup;
    procedure dxBarLargeButSchliessenClick(Sender: TObject);
    procedure dxBarLargeButZuruecksetzenClick(Sender: TObject);
    procedure cxButtonFileClick(Sender: TObject);
    procedure dxBarLargeButSpeichernClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxTextEditFilePropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButDownloadClick(Sender: TObject);
    procedure cxImageDokuDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
 private
      FPersonID: Integer;
      FFileID: Integer;
      FSelectedFileName: string;
      FSelectedFileData: TMemoryStream;

      FEditMode: Boolean;
      FReadOnlyMode: Boolean;

    procedure SetReadOnlyMode(Value: Boolean);
    procedure WMDropFiles(var Msg: TWMDropFiles); message WM_DROPFILES;
    procedure LoadFile(const AFileName: string);

 public
      procedure NeueDoku;
      procedure ShowPreviewImage(const AFileName: string);
      procedure InitPersonAndNotiz(APersonID, ANotizID: Integer);
      procedure LoadDocumentFromStream(const AFileName: string; AStream: TStream);
      procedure UpdateToolbarVisibility;
      function  CheckID: Boolean;

      property ReadOnlyMode: Boolean read FReadOnlyMode write SetReadOnlyMode;

      var HasChanges:boolean
  end;

var
  MyFormDoku: TMyFormDoku;

implementation

{$R *.dfm}

uses Kontakt,MyDokuFrame;


{SetReadOnly}
procedure TMyFormDoku.SetReadOnlyMode(Value: Boolean);
begin
  FReadOnlyMode := Value;
  dxBarLargeButSpeichern.Enabled:= not Value;
  dxBarLargeButZuruecksetzen.Enabled:= not Value;
  cxButtonFile.Enabled := not Value;
end;



{Drop WM}
procedure TMyFormDoku.WMDropFiles(var Msg: TWMDropFiles);
var
  FileName: array[0..MAX_PATH] of Char;
begin
  if DragQueryFile(Msg.Drop, 0, FileName, MAX_PATH) > 0 then
    LoadFile(FileName);
  DragFinish(Msg.Drop);
end;

{LoadFile}
procedure TMyFormDoku.LoadFile(const AFileName: string);
var
  FileSize: Int64;
  FileStream: TFileStream;
  AskResult: Integer;
begin
  if not FileExists(AFileName) then Exit;


  if Assigned(FSelectedFileData) then begin
    AskResult := Application.MessageBox(
      'Ein Dokument wurde bereits ausgewählt. Möchten Sie es ersetzen?',
      'Datei ersetze  n?', MB_YESNO + MB_ICONQUESTION);

    if AskResult <> IDYES then Exit;
  end;

  FileStream := TFileStream.Create(AFileName, fmOpenRead or fmShareDenyWrite);
  try
    FileSize := FileStream.Size;
    if FileSize <= 50 * 1024 * 1024 then
    begin
      FSelectedFileName := AFileName;
      cxTextEditFile.Text := ExtractFileName(FSelectedFileName);
      cxLabelFile.Caption := Format('Datei ausgewählt: %.2f MB', [FileSize / 1024 / 1024]);

      FreeAndNil(FSelectedFileData);
      FSelectedFileData := TMemoryStream.Create;
      FSelectedFileData.CopyFrom(FileStream, 0);

      ShowPreviewImage(AFileName);

    end else begin
      Application.MessageBox('Die Datei ist zu groß. Größtmaß — 50 MB.', 'Fehler', MB_OK + MB_ICONERROR);
    end;
  finally
    FileStream.Free;
  end;
end;

{Show Image}
procedure TMyFormDoku.ShowPreviewImage(const AFileName: string);
var
  Ext: string;
begin
  Ext := LowerCase(ExtractFileExt(AFileName));

  if Ext = '.jpg' then
    cxImageDoku.Picture.LoadFromFile(AFileName)
  else if Ext = '.jpeg' then
    cxImageDoku.Picture.LoadFromFile(AFileName)
  else if Ext = '.png' then
    cxImageDoku.Picture.LoadFromFile(AFileName)
  else if Ext = '.bmp' then
    cxImageDoku.Picture.LoadFromFile(AFileName)
  else if Ext = '.gif' then
    cxImageDoku.Picture.LoadFromFile(AFileName)
  else if Ext = '.pdf' then
    cxImageDoku.Picture.LoadFromFile('icons\pdf.png')
  else if Ext = '.docx' then
    cxImageDoku.Picture.LoadFromFile('icons\word.png')
  else if Ext = '.xlsx' then
    cxImageDoku.Picture.LoadFromFile('icons\excel.png')
  else if Ext = '.zip' then
    cxImageDoku.Picture.LoadFromFile('icons\zip.png')
  else
    cxImageDoku.Picture.LoadFromFile('icons\unknown.png');
end;


{Neue Notiz}
procedure TMyFormDoku.NeueDoku;
begin
  FFileID := 0;
end;

{Show}
procedure TMyFormDoku.cxImageDokuDblClick(Sender: TObject);
var
  TempPath: string;
begin
  if (cxImageDoku.Picture.Graphic = nil) or cxImageDoku.Picture.Graphic.Empty then
    Exit;
  TempPath := IncludeTrailingPathDelimiter(GetEnvironmentVariable('TEMP')) + 'preview.jpg';
  cxImageDoku.Picture.SaveToFile(TempPath);

  ShellExecute(0, 'open', PChar(TempPath), nil, nil, SW_SHOWNORMAL);
end;

{PropertiesChange}
procedure TMyFormDoku.cxTextEditFilePropertiesChange(Sender: TObject);
begin
  HasChanges:=true;
end;

{Download}
procedure TMyFormDoku.dxBarLargeButDownloadClick(Sender: TObject);
var
  SaveDialog: TSaveDialog;
begin

  if (FSelectedFileData = nil) or (FSelectedFileData.Size = 0) then  begin
    Application.MessageBox('Kein Dokument zum Exportieren vorhanden.', 'Fehler', MB_OK + MB_ICONERROR);
    Exit;
  end;

  if not FEditMode then  begin
    Application.MessageBox('Download ist nur im Bearbeitungsmodus möglich.', 'Hinweis', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  SaveDialog := TSaveDialog.Create(nil);
  try
    SaveDialog.Title := 'Exportieren';
    SaveDialog.FileName := ExtractFileName(FSelectedFileName);
    SaveDialog.Filter := 'Alle Dateien (*.*)|*.*';
    if SaveDialog.Execute then begin
      FSelectedFileData.Position := 0;
      FSelectedFileData.SaveToFile(SaveDialog.FileName);
//      Application.MessageBox('Datei erfolgreich importiert.', 'Info', MB_OK + MB_ICONINFORMATION);
    end;
  finally
    SaveDialog.Free;
  end;
end;



{Schließen}
procedure TMyFormDoku.dxBarLargeButSchliessenClick(Sender: TObject);
var
 // UserResponse: Integer;
  UserText: string;
begin
  UserText := Trim(cxTextEditFile.Text);
    if HasChanges then begin
//      MyMesBox.Caption:='Bestätigen';
//      UserResponse := MyMesBox.ShowMessage(
//        'Soll dieser neu angelegte  File "' + UserText + ' "' + sLineBreak +
//        ' verworfen werden? Ihre Änderungen gehen verloren.',
//        mtConfirmation,
//        [mbYes, mbNo]
//      );
//      if UserResponse = mrYes then begin
//        Self.Close;
//      end;
    end else begin
      Close;
      Exit;
    end;

end;

{Speichern}
procedure TMyFormDoku.dxBarLargeButSpeichernClick(Sender: TObject);
var
  Query: TMSQuery;
begin
  if (FSelectedFileData = nil) or (FSelectedFileData.Size = 0) then  begin
    ShowMessage('Keine Datei zum Speichern ausgewählt.');
    Exit;
  end;

  if not CheckID then
    Exit;

  Query := TMSQuery.Create(nil);
  try
    Query.Connection := MyDataModule.MyConnections;
    Query.SQL.Text :=
      'INSERT INTO KontaktDateien (PersonID, FileName, FileSize, FileData, DateUploaded) ' +
      'VALUES (:PersonID, :FileName, :FileSize, :FileData, :DateUploaded)';
    Query.ParamByName('PersonID').Value := FPersonID;
    Query.ParamByName('FileName').Value := ExtractFileName(FSelectedFileName);
    Query.ParamByName('FileSize').Value := FSelectedFileData.Size;
    Query.ParamByName('FileData').LoadFromStream(FSelectedFileData, ftBlob);
    Query.ParamByName('DateUploaded').Value := Now;

    Query.ExecSQL;
    ModalResult := mrOk;
  finally
    Query.Free;
  end;
end;

{ID CHECK}
function TMyFormDoku.CheckID: Boolean;
var
  CheckQuery: TMSQuery;
begin
  Result := False;
  CheckQuery := TMSQuery.Create(nil);
  try
    CheckQuery.Connection := MyDataModule.MyConnections;
    CheckQuery.SQL.Text := 'SELECT COUNT(*) FROM Kontakt WHERE PersonID = :ID';
    CheckQuery.ParamByName('ID').AsInteger := FPersonID;
    CheckQuery.Open;

    if CheckQuery.Fields[0].AsInteger = 0 then
      ShowMessage('Kontakt mit PersonID=' + IntToStr(FPersonID) + ' existiert nicht.')
    else
      Result := True;
  finally
    CheckQuery.Free;
  end;
end;




{Zurücksetzen}
procedure TMyFormDoku.dxBarLargeButZuruecksetzenClick(Sender: TObject);
begin
  cxTextEditFile.Text := '';
  cxLabelFile.Caption := '';
 if Assigned(cxImageDoku) then
      cxImageDoku.Picture := nil;
end;

{Update Bar Visibility}
procedure TMyFormDoku.UpdateToolbarVisibility;
begin
  if FEditMode then begin
    dxBarLargeButDownload.Visible := ivAlways;
    cxButtonFile.Enabled:=false;
  end else begin
    dxBarLargeButDownload.Visible := ivNever;
  end;
end;


{Create}
procedure TMyFormDoku.FormCreate(Sender: TObject);
begin
  HasChanges:=false;
  DragAcceptFiles(Handle, True);
//  dxBarLargeButDownload.Visible := ivNever;
end;

{Destroy}
procedure TMyFormDoku.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FSelectedFileData);
  DragAcceptFiles(Handle, False);
end;

{Show}
procedure TMyFormDoku.FormShow(Sender: TObject);
begin
  if FReadOnlyMode then  begin
    dxBarManagerDokuBar1.Visible := False;
    dxLayoutControlDoku.Enabled := False;
  end;
end;


{Init}
procedure TMyFormDoku.InitPersonAndNotiz(APersonID, ANotizID: Integer);
begin
  FPersonID := APersonID;
  FFileID := ANotizID;
  if FPersonID <= 0 then  begin
    ShowMessage('Kein gültiger Kontakt ausgewählt.');
    Exit;
  end;
  NeueDoku;
end;

{GetFileSize}
function GetFileSize(const FileName: string): Int64;
var
  FS: TFileStream;
begin
  FS := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    Result := FS.Size;
  finally
    FS.Free;
  end;
end;


{FileClick}
procedure TMyFormDoku.cxButtonFileClick(Sender: TObject);
var
  OpenDialog: TOpenDialog;
begin
  OpenDialog := TOpenDialog.Create(nil);
  try
    OpenDialog.Filter := 'Alle Dateien (*.*)|*.*';
    OpenDialog.Options := [ofFileMustExist, ofEnableSizing];

    if OpenDialog.Execute then
      LoadFile(OpenDialog.FileName);
  finally
    OpenDialog.Free;
  end;
end;

{Load}
procedure TMyFormDoku.LoadDocumentFromStream(const AFileName: string; AStream: TStream);
var
  FileExt: string;
  IsImage: Boolean;
begin
  FEditMode := True;

  UpdateToolbarVisibility;
  FSelectedFileName := AFileName;
  FreeAndNil(FSelectedFileData);
  FSelectedFileData := TMemoryStream.Create;
  FSelectedFileData.CopyFrom(AStream, 0);
  FSelectedFileData.Position := 0;

  cxTextEditFile.Text := ExtractFileName(FSelectedFileName);
  cxLabelFile.Caption := Format('Datei geladen: %.2f MB', [FSelectedFileData.Size / 1024 / 1024]);

  FileExt := LowerCase(ExtractFileExt(FSelectedFileName));

 IsImage := (FileExt = '.jpg') or
             (FileExt = '.jpeg') or
             (FileExt = '.png') or
             (FileExt = '.bmp') or
             (FileExt = '.gif');

  if IsImage then  begin
    try
      cxImageDoku.Picture.LoadFromStream(FSelectedFileData);
    except
      cxImageDoku.Picture := nil;
      cxLabelFile.Caption := 'Bild konnte nicht geladen werden.';
    end;
  end  else  begin
    cxImageDoku.Picture := nil;
    cxLabelFile.Caption := 'Nicht-Bilddatei geladen: ' + ExtractFileExt(FSelectedFileName);
  end;
end;



end.
