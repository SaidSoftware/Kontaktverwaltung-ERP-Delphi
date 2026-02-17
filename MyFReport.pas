unit MyFReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxGeometry,
  dxFramedControl, cxClasses, dxBar, dxPanel, MyPapierKorb, KVDataModule,
  dxLayoutContainer, dxLayoutcxEditAdapters, cxStyles, cxContainer, cxEdit,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxLabel, cxMaskEdit, cxDropDownEdit,
  cxGridCustomView, cxGridCustomTableView, cxGridCustomLayoutView, cxGridCardView,
  cxGridDBCardView, cxTextEdit, cxGridLevel, cxGrid, dxLayoutControl, DBAccess,
  MSAccess, MemDS, dxColorEdit, cxCheckGroup, cxCheckBox, cxBarEditItem, dxRibbon,
  dxRibbonGallery, cxGridTableView, cxGridDBTableView, cxImageComboBox,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxImage,
  dxGDIPlusClasses, ShellAPI, dxSpreadSheetCore, dxSpreadSheetReportDesigner,
  System.Generics.Collections, VCLCom, ComObj,  CRBatchMove, System.IOUtils,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPSCore,System.UITypes, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxNavBarCollns, dxNavBarBase, dxNavBar;

type
  TReportModule = (rmKontakte, rmRechnung, rmAngebote);
type
  TMyReport = class(TForm)
    dxPanelABuch: TdxPanel;
    dxLayoutControlAbuch: TdxLayoutControl;
    dxLayoutControlAbuchGroup_Root: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    cxTextEditParameter: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxTextEditBeschreibung: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxTextEditFormular: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxTextEditModul: TcxTextEdit;
    cxCheckBoxdrucker: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    cxCheckBoxMicrosoftWord: TcxCheckBox;
    dxLayoutItem8: TdxLayoutItem;
    cxCheckBoxMicrosoftExcel: TcxCheckBox;
    dxLayoutItem9: TdxLayoutItem;
    cxCheckBoxBildschirm: TcxCheckBox;
    dxLayoutItem10: TdxLayoutItem;
    cxCheckBoxPDF: TcxCheckBox;
    dxLayoutItem11: TdxLayoutItem;
    cxCheckBoxTestdruck: TcxCheckBox;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    cxComboBoxVorlage: TcxComboBox;
    dxLayoutItem12: TdxLayoutItem;
    cxImage1: TcxImage;
    dxLayoutItem1: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutItem13: TdxLayoutItem;
    cxComboBoxEmailEmpfaenger: TcxComboBox;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxTextEditExemplarecount: TcxTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxComboBoxAusgabedrucker: TcxComboBox;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    cxButtonAbbrechen: TcxButton;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    cxButtonDrucken: TcxButton;
    dxLayoutItem19: TdxLayoutItem;
    cxButtonDokumente: TcxButton;
    CRBatchMove1: TCRBatchMove;
    MSDataSourceReport: TMSDataSource;
    dxNavBar1: TdxNavBar;
    dxLayoutItem20: TdxLayoutItem;
    dxNavBar1Druck: TdxNavBarGroup;
    nbDruck: TdxNavBarItem;
    dxNavBar1Item2: TdxNavBarItem;
    dxNavBar1Item3: TdxNavBarItem;
    dxNavBar1Item4: TdxNavBarItem;
    dxNavBar1Email: TdxNavBarGroup;
    dxLayoutGroupBericht: TdxLayoutGroup;
    procedure cxButtonDruckenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButtonAbbrechenClick(Sender: TObject);
    procedure ShowReport;
    procedure cxButtonDokumenteClick(Sender: TObject);
    procedure cxImage1DblClick(Sender: TObject);
    procedure OpenExportFolder;
    procedure cxComboBoxVorlagePropertiesChange(Sender: TObject);
    procedure cxComboBoxEmailEmpfaengerClick(Sender: TObject);
    procedure nbDruckClick(Sender: TObject);

private
    FReportPath: string;
    FExportPath: string;
    FCrystalRunnerPath: string;
    FModulName: string;
    FPersonIDs: TList<Integer>;
public
    procedure SetReportData(const ModulName: string; PersonIDs: TList<Integer>; const Description: string);
    procedure SetSingleReportData(const ModulName: string; RecordID: Integer; const Description: string);
    function  BuildParameterString:string;
    function  GetSelectedReportFile: string;
    procedure LoadEmailAddresses;
    procedure LoadReportTemplatesFromFolder;
end;

var
  MyReport: TMyReport;

implementation

{$R *.dfm}

uses
  Vcl.Printers;

{Create}
procedure TMyReport.FormCreate(Sender: TObject);
begin
  FPersonIDs := TList<Integer>.Create;
  FReportPath := ExtractFilePath(Application.ExeName) + 'Reports\';
  FExportPath := ExtractFilePath(Application.ExeName) + 'Export\';
  FCrystalRunnerPath := ExtractFilePath(Application.ExeName) + 'CrystalRunner\bin\Debug\CrystalRunner.exe';

  if not DirectoryExists(FReportPath) then
    ForceDirectories(FReportPath);
  if not DirectoryExists(FExportPath) then
    ForceDirectories(FExportPath);

  cxComboBoxAusgabedrucker.Properties.Items.Clear;
  cxComboBoxAusgabedrucker.Properties.Items.Assign(Printer.Printers);
  if Printer.Printers.Count > 0 then
    cxComboBoxAusgabedrucker.ItemIndex := Printer.PrinterIndex;
  cxTextEditExemplarecount.Text := '1';
  cxCheckBoxBildschirm.Checked := True;
end;

{SetReportData}
procedure TMyReport.SetReportData(const ModulName: string; PersonIDs: TList<Integer>; const Description: string);
var
  i: Integer;
  IDsStr: string;
begin
  FModulName := ModulName;

  FPersonIDs.Clear;
  IDsStr := '';
  for i := 0 to PersonIDs.Count - 1 do begin
    FPersonIDs.Add(PersonIDs[i]);
    if i > 0 then IDsStr := IDsStr + ', ';
    IDsStr := IDsStr + IntToStr(PersonIDs[i]);
  end;

  cxTextEditParameter.Text := IDsStr;
  cxTextEditBeschreibung.Text := Description;
  cxTextEditModul.Text := ModulName;
  cxTextEditFormular.Text := 'Report Generator';
  Caption := 'Report Generator - ' + ModulName + ' (' + IntToStr(FPersonIDs.Count) + ' ausgewählt)';
  LoadReportTemplatesFromFolder;
  LoadEmailAddresses;
end;

{SetSingleReportData}
procedure TMyReport.SetSingleReportData(const ModulName: string; RecordID: Integer; const Description: string);
var
  List: TList<Integer>;
begin
  List := TList<Integer>.Create;
  try
    List.Add(RecordID);
    SetReportData(ModulName, List, Description);
  finally
    List.Free;
  end;
end;


{Close}
procedure TMyReport.cxButtonAbbrechenClick(Sender: TObject);
begin
 close;
end;

{Dokument}
procedure TMyReport.cxButtonDokumenteClick(Sender: TObject);
begin
  if DirectoryExists(FExportPath) then
    ShellExecute(0, 'open', PChar(FExportPath), nil, nil, SW_SHOW)
  else
    ShowMessage('Export-Ordner nicht gefunden: ' + FExportPath);
end;

{Drucken Click}
procedure TMyReport.cxButtonDruckenClick(Sender: TObject);
begin
  if FPersonIDs.Count = 0 then  begin
    ShowMessage('Keine Daten zum Drucken ausgewählt.');
    Exit;
  end;
  ShowReport;
end;

{VorlagePropertiesChange}
procedure TMyReport.cxComboBoxVorlagePropertiesChange(Sender: TObject);
begin
  if cxComboBoxVorlage.ItemIndex >= 0 then begin
    cxTextEditFormular.Text := Copy(cxComboBoxVorlage.Text, 1,
      Pos(' - ', cxComboBoxVorlage.Text) - 1);
  end;
end;

{Image DblClick}
procedure TMyReport.cxImage1DblClick(Sender: TObject);
begin
  ShowReport;
end;

{Show Reports}
procedure TMyReport.ShowReport;
var
  ReportFile: string;
  CommandLine: string;
  ParameterString: string;
  ResultCode: Integer;
begin
  //  CrystalRunner
  if not FileExists(FCrystalRunnerPath) then begin
    ShowMessage('CrystalRunner.exe wurde nicht gefunden!' + sLineBreak + sLineBreak +
                'Pfad: ' + FCrystalRunnerPath + sLineBreak + sLineBreak +
                'Möchten Sie den Ordner öffnen?');
    ShellExecute(0, 'open', PChar(ExtractFilePath(FCrystalRunnerPath)), nil, nil, SW_SHOW);
    Exit;
  end;

  if cxComboBoxVorlage.ItemIndex < 0 then begin
    ShowMessage('Bitte wählen Sie eine Vorlage aus.');
    cxComboBoxVorlage.SetFocus;
    Exit;
  end;

  ReportFile := GetSelectedReportFile;

  if not FileExists(ReportFile) then begin
    ShowMessage('Report-Datei wurde nicht gefunden:' + sLineBreak + sLineBreak +
                ReportFile + sLineBreak + sLineBreak +
                'Möchten Sie den Reports-Ordner öffnen?');
    if MessageDlg('Reports-Ordner öffnen?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ShellExecute(0, 'open', PChar(FReportPath), nil, nil, SW_SHOW);
    Exit;
  end;

  ParameterString := BuildParameterString;

  if ParameterString = '' then begin
    ShowMessage('Keine PersonIDs zum Filtern vorhanden!');
    Exit;
  end;

  CommandLine := '"' + ReportFile + '" "' + ParameterString + '"';
  try
    ResultCode := ShellExecute(0, 'open', PChar(FCrystalRunnerPath), PChar(CommandLine),
                               PChar(ExtractFilePath(FCrystalRunnerPath)), SW_SHOWNORMAL);

    if ResultCode <= 32 then begin
      case ResultCode of
        0, SE_ERR_OOM: ShowMessage('Nicht genügend Arbeitsspeicher.');
        ERROR_FILE_NOT_FOUND: ShowMessage('Datei nicht gefunden: ' + FCrystalRunnerPath);
        ERROR_PATH_NOT_FOUND: ShowMessage('Pfad nicht gefunden.');
        ERROR_BAD_FORMAT: ShowMessage('Ungültiges .exe Format.');
        SE_ERR_ACCESSDENIED: ShowMessage('Zugriff verweigert.');
        SE_ERR_ASSOCINCOMPLETE: ShowMessage('Dateizuordnung unvollständig.');
        SE_ERR_DDEBUSY: ShowMessage('DDE ist beschäftigt.');
        SE_ERR_DDEFAIL: ShowMessage('DDE-Transaktion fehlgeschlagen.');
        SE_ERR_DDETIMEOUT: ShowMessage('DDE-Zeitüberschreitung.');
        SE_ERR_DLLNOTFOUND: ShowMessage('DLL nicht gefunden.');
        SE_ERR_NOASSOC: ShowMessage('Keine Anwendung zugeordnet.');
        SE_ERR_SHARE: ShowMessage('Freigabeverletzung.');
      else
        ShowMessage('Fehler beim Starten von CrystalRunner. Error Code: ' + IntToStr(ResultCode));
      end;
    end;

  except
    on E: Exception do
      ShowMessage('Fehler beim Öffnen des Reports: ' + E.Message);
  end;
end;

{OpenExportFolder}
procedure TMyReport.OpenExportFolder;
begin
  if DirectoryExists(FExportPath) then begin
    ShellExecute(0, 'open', PChar(FExportPath), nil, nil, SW_SHOW)
  end else begin
    ShowMessage('Export-Ordner nicht gefunden: ' + FExportPath);
  end;
end;


{Enmail Empfänger}
procedure TMyReport.cxComboBoxEmailEmpfaengerClick(Sender: TObject);
begin
 LoadEmailAddresses;
end;

{GetSelectedReportFile}
function TMyReport.GetSelectedReportFile: string;
begin
  Result := '';
  if cxComboBoxVorlage.ItemIndex < 0 then Exit;
  Result := FReportPath + cxComboBoxVorlage.Text + '.rpt';
end;

{BuildParameterString}
function TMyReport.BuildParameterString: string;
var
  i: Integer;
begin
  Result := '';
  for i := 0 to FPersonIDs.Count - 1 do begin
    if i > 0 then Result := Result + ',';
    Result := Result + IntToStr(FPersonIDs[i]);
  end;
end;

{LoadEmailAddresses}
procedure TMyReport.LoadEmailAddresses;
var
  Query: TMSQuery;
  i: Integer;
  PersonIDsStr: string;
begin
  if FPersonIDs.Count = 0 then Exit;

  cxComboBoxEmailEmpfaenger.Properties.Items.Clear;
  PersonIDsStr := '';
  for i := 0 to FPersonIDs.Count - 1 do  begin
    if i > 0 then PersonIDsStr := PersonIDsStr + ',';
    PersonIDsStr := PersonIDsStr + IntToStr(FPersonIDs[i]);
  end;

  Query := TMSQuery.Create(nil);
  try
    Query.Connection := MyDataModule.MyConnections;
    Query.SQL.Text :=
      'SELECT DISTINCT Email, [Email 2], [Email 3] ' +
      'FROM Kontaktview ' +
      'WHERE PersonID IN (' + PersonIDsStr + ')';
    Query.Open;

    while not Query.Eof do  begin
      if Trim(Query.FieldByName('Email').AsString) <> '' then
        cxComboBoxEmailEmpfaenger.Properties.Items.Add(Query.FieldByName('Email').AsString);

      if Trim(Query.FieldByName('Email 2').AsString) <> '' then
       cxComboBoxEmailEmpfaenger.Properties.Items.Add(Query.FieldByName('Email 2').AsString);

     if Trim(Query.FieldByName('Email 3').AsString) <> '' then
       cxComboBoxEmailEmpfaenger.Properties.Items.Add(Query.FieldByName('Email 3').AsString);

      Query.Next;
    end;

    if cxComboBoxEmailEmpfaenger.Properties.Items.Count > 0 then
      cxComboBoxEmailEmpfaenger.ItemIndex := 0;
  finally
    Query.Free;
  end;
end;

{LoadReportTemplatesFromFolder}
procedure TMyReport.LoadReportTemplatesFromFolder;
 var
  SearchRec: TSearchRec;
  FileName: string;
begin
  cxComboBoxVorlage.Properties.Items.Clear;
  if FindFirst(FReportPath + '*.rpt', faAnyFile, SearchRec) = 0 then begin
    repeat
      if (SearchRec.Attr and faDirectory) = 0 then begin
        FileName := ChangeFileExt(SearchRec.Name, '');
        if (FModulName = '') or(Pos(LowerCase(FModulName), LowerCase(FileName)) > 0) or (FModulName = 'Kontakte') then begin
          cxComboBoxVorlage.Properties.Items.Add(FileName);
        end;
      end;
    until FindNext(SearchRec) <> 0;
    FindClose(SearchRec);
  end;

  if cxComboBoxVorlage.Properties.Items.Count > 0 then begin
    cxComboBoxVorlage.ItemIndex := 0
  end else  begin
    ShowMessage('Keine Report-Vorlagen gefunden in: ' + FReportPath + sLineBreak + sLineBreak +'Bitte erstellen Sie .rpt Dateien im Reports-Ordner.');
  end;
end;

procedure TMyReport.nbDruckClick(Sender: TObject);
begin
  dxLayoutGroupBericht.Visible:=true;
end;

end.

