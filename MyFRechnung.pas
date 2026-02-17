unit MyFRechnung;

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
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, cxClasses, dxLayoutContainer,
  dxLayoutControl, dxPanel, dxBar, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, dxRibbon,MyPapierkorb, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutcxEditAdapters, cxContainer, Vcl.ComCtrls, cxDateUtils,
  dxGDIPlusClasses, cxImage, cxDropDownEdit, cxMaskEdit, cxCalendar, cxTextEdit,
  DBAccess, MSAccess, MemDS,KVDataModule, cxGridBandedTableView,
  cxGridDBBandedTableView, cxImageComboBox, dxBarBuiltInMenu, cxPC, Vcl.Menus,
  cxGridChartView, cxGridDBChartView,System.Generics.Collections, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPSCore,dxPSdxChartControlLnk, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxCommon;

type
  TRechnungform = class(TForm)
    dxPanelRechnung: TdxPanel;
    dxLayoutControlRechnungGroup_Root: TdxLayoutGroup;
    dxLayoutControlRechnung: TdxLayoutControl;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarLargeButtonSuchen: TdxBarLargeButton;
    dxBarLargeButtonZuruecksetzen: TdxBarLargeButton;
    dxBarLargeButtonListendruck: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxBarLargeButtondrucken: TdxBarLargeButton;
    cxGridRechnungDBTableView1: TcxGridDBTableView;
    cxGridRechnungLevel1: TcxGridLevel;
    cxGridRechnung: TcxGrid;
    cxTextEditKontakt: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    cxTextEditBelegNummer: TcxTextEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    cxDateEditDatum: TcxDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDateEditBis: TcxDateEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxComboBoxArchivzustand: TcxComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxImageKontaktsuchen: TcxImage;
    dxLayoutItem7: TdxLayoutItem;
    MSQueryRechnung: TMSQuery;
    MSDataSourceRechnung: TMSDataSource;
    cxGridRechnungDBTableView1RechnungID: TcxGridDBColumn;
    cxGridRechnungDBTableView1BelegNummer: TcxGridDBColumn;
    cxGridRechnungDBTableView1PersonID: TcxGridDBColumn;
    cxGridRechnungDBTableView1LieferantID: TcxGridDBColumn;
    cxGridRechnungDBTableView1Datum: TcxGridDBColumn;
    cxGridRechnungDBTableView1Faelligkeitsdatum: TcxGridDBColumn;
    cxGridRechnungDBTableView1Bruttobetrag: TcxGridDBColumn;
    cxGridRechnungDBTableView1Nettobetrag: TcxGridDBColumn;
    cxGridRechnungDBTableView1MwStProzent: TcxGridDBColumn;
    cxGridRechnungDBTableView1MwStBetrag: TcxGridDBColumn;
    cxGridRechnungDBTableView1Status: TcxGridDBColumn;
    cxGridRechnungDBTableView1Archivzustand: TcxGridDBColumn;
    cxGridRechnungDBTableView1Beschreibung: TcxGridDBColumn;
    cxGridRechnungDBTableView1Notizen: TcxGridDBColumn;
    cxGridRechnungDBTableView1ZahlungsEingangDatum: TcxGridDBColumn;
    cxGridRechnungDBTableView1Mahnstatus: TcxGridDBColumn;
    cxGridRechnungDBTableView1ErstelltAm: TcxGridDBColumn;
    cxGridRechnungDBTableView1BearbeitetAm: TcxGridDBColumn;
    cxGridRechnungDBTableView1KontaktName: TcxGridDBColumn;
    cxGridRechnungDBTableView1KontaktVorname: TcxGridDBColumn;
    cxGridRechnungDBTableView1KontaktEmail: TcxGridDBColumn;
    cxGridRechnungDBTableView1KontaktTelefon: TcxGridDBColumn;
    cxGridRechnungDBTableView1KontaktAdresse: TcxGridDBColumn;
    cxGridRechnungDBTableView1KontaktPLZ: TcxGridDBColumn;
    cxGridRechnungDBTableView1KontaktOrt: TcxGridDBColumn;
    cxGridRechnungDBTableView1LieferantName: TcxGridDBColumn;
    cxGridRechnungDBTableView1LieferantKontaktPerson: TcxGridDBColumn;
    cxGridRechnungDBTableView1TagebisFaelligkeit: TcxGridDBColumn;
    cxGridRechnungDBTableView1StatusBerechnet: TcxGridDBColumn;
    cxGridRechnungDBBandedTableViewRechnung: TcxGridDBBandedTableView;
    cxGridRechnungDBBandedTableViewRechnungRechnungID: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungBelegNummer: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungPersonID: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungLieferantID: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungDatum: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungFaelligkeitsdatum: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungBruttobetrag: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungNettobetrag: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungMwStProzent: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungMwStBetrag: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungStatus: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungArchivzustand: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungBeschreibung: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungNotizen: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungZahlungsEingangDatum: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungMahnstatus: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungErstelltAm: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungBearbeitetAm: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungKontaktName: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungKontaktVorname: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungKontaktEmail: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungKontaktTelefon: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungKontaktAdresse: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungKontaktPLZ: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungKontaktOrt: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungLieferantName: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungLieferantKontaktPerson: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungTagebisFaelligkeit: TcxGridDBBandedColumn;
    cxGridRechnungDBBandedTableViewRechnungStatusBerechnet: TcxGridDBBandedColumn;
    cxPageControlRechnung: TcxPageControl;
    dxLayoutItem8: TdxLayoutItem;
    cxTabSheetMainform: TcxTabSheet;
    cxTabSheetRechnungStatistik: TcxTabSheet;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    MSQueryStatistik: TMSQuery;
    MSDataSourceStatistik: TMSDataSource;
    cxGrid1DBBandedTableViewStatistik: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableViewStatistikGesamtRechnungen: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewStatistikOffeneRechnungen: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewStatistikBezahlteRechnungen: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewStatistikUeberfaelligeRechnungen: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewStatistikOffenerBetrag: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewStatistikBezahlterBetrag: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewStatistikGesamtBetrag: TcxGridDBBandedColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutItem9: TdxLayoutItem;
    dxBarLargeButtonArchivieren: TdxBarLargeButton;
    dxBarLargeButtonLoeschen: TdxBarLargeButton;
    cxGrid1DBChartViewStatistik: TcxGridDBChartView;
    cxGrid1DBChartViewStatistikSeries3: TcxGridDBChartSeries;
    cxGrid1DBChartViewStatistikSeries4: TcxGridDBChartSeries;
    PopupMenu1: TPopupMenu;
    Ansicht1: TMenuItem;
    abelle1: TMenuItem;
    Chart1: TMenuItem;
    cxGrid1DBChartViewStatistikSeries1: TcxGridDBChartSeries;
    cxGrid1DBChartViewStatistikSeries2: TcxGridDBChartSeries;
    cxGrid1DBChartViewStatistikSeries5: TcxGridDBChartSeries;
    cxGrid1DBChartViewStatistikSeries6: TcxGridDBChartSeries;
    cxGrid1DBChartViewStatistikSeries7: TcxGridDBChartSeries;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    procedure cxImageKontaktsuchenClick(Sender: TObject);
    procedure cxGridRechnungDBBandedTableViewRechnungStatusBerechnetGetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure cxGridRechnungRootLevelStylesGetTabStyle(Sender,
      ATabLevel: TcxGridLevel; var AStyle: TcxStyle);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxTextEditKontaktPropertiesChange(Sender: TObject);
    procedure dxBarLargeButtonSuchenClick(Sender: TObject);
    procedure dxBarLargeButtonZuruecksetzenClick(Sender: TObject);
    procedure cxGridRechnungDBBandedTableViewRechnungCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure abelle1Click(Sender: TObject);
    procedure Chart1Click(Sender: TObject);
    procedure dxBarLargeButtonListendruckClick(Sender: TObject);
    procedure dxBarLargeButtondruckenClick(Sender: TObject);

private
   FSelectedPersonID: Integer;

public
    procedure LoadRechnungen;
    procedure ClearFilters;
    procedure RechnungStatistikanzeigen;
    procedure GetBelegNummer;
    property  SelectedPersonID: Integer read FSelectedPersonID write FSelectedPersonID;
    procedure SetKontaktFilter(APersonID: Integer; AKontaktName: string);
    procedure SetMultipleKontaktFilter(PersonIDs: TList<Integer>; KontaktNames: TStringList);
end;

var
  Rechnungform: TRechnungform;

implementation
{$R *.dfm}
uses StartList,MyFReport;

{Dbl Click}
procedure TRechnungform.cxGridRechnungDBBandedTableViewRechnungCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var RechnungID:integer;
    BelegNummer:string;
    KontaktName:string;
    KontaktID:integer;
    Betrag:double;
begin
  if not MyDataModule.MyQuery.IsEmpty then begin
    RechnungID :=  MSQueryRechnung.FieldByName('RechnungID').AsInteger;
    BelegNummer := MSQueryRechnung.FieldByName('BelegNummer').AsString;
    KontaktName := MSQueryRechnung.FieldByName('KontaktName').AsString + ' ' +
                   MSQueryRechnung.FieldByName('KontaktVorname').AsString;
    KontaktID :=   MSQueryRechnung.FieldByName('PersonID').Asinteger;
    Betrag := MSQueryRechnung.FieldByName('Bruttobetrag').AsCurrency;

    ShowMessage('Rechnung Details:' + #13#10 +
                'PersonID:' + intToStr(KontaktID) +#13#10+
                'RechnungID: ' + IntToStr(RechnungID) + #13#10 +
                'Belegnummer: ' + BelegNummer + #13#10 +
                'Kontakt: ' + KontaktName + #13#10 +
                'Betrag: ' + FormatCurr('#,##0.00 €', Betrag));
  end;
end;

{Hint}
procedure TRechnungform.cxGridRechnungDBBandedTableViewRechnungStatusBerechnetGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
  if ACellViewInfo.Value = 'Offen' then begin
     AHintText := 'Offen';
  end;
  if ACellViewInfo.Value = 'Bezahlt' then begin
     AHintText := 'Bezahlt';
  end;
  if ACellViewInfo.Value = 'Überfällig' then begin
     AHintText := 'Überfällig';
  end;
end;

{Startlist open}
procedure TRechnungform.cxImageKontaktsuchenClick(Sender: TObject);
var PersonID:integer;
begin
  with TStartListe.Create(Self) do
  try
    EnableDblClick := False;
    dxRibbonStartliste.Visible := False;
    dxBarManagerStartlisteBarMenu.Visible := True;

    AcZurueck.Enabled := True;
    AcSuchen.Enabled := True;
    AcNeu.Enabled := False;
    AcBearbeiten.Enabled := False;
    Rechnung1.Enabled := False;
    Kategorie1.Enabled := False;
    Autoarchiv.Enabled := False;
    Lschen1.Enabled := False;

    SetTabMode(TtDeaktiv);
    Caption := 'Kontaktliste';
    Position := poMainFormCenter;

    if ShowModal = mrOk then begin
      FSelectedPersonID := SelectedPersonID;
      //  "Vorname Name"
      cxTextEditKontakt.Text := Trim(SelectedVorname + ' ' + SelectedName);
      cxTextEditKontakt.Text := Trim(SelectedVorname + ' ' + SelectedName);
    end;
  finally
    Free;
  end;
end;




{Edit Kontakt Properties Change}
procedure TRechnungform.cxTextEditKontaktPropertiesChange(Sender: TObject);
begin
  if Trim(cxTextEditKontakt.Text) = '' then
    FSelectedPersonID := 0;
end;

{Suchen}
procedure TRechnungform.dxBarLargeButtondruckenClick(Sender: TObject);
var
    AReportLink: TBasedxReportLink;
begin
  if cxGridRechnungDBBandedTableViewRechnung.DataController.RecordCount = 0 then  begin
    ShowMessage('Keine Datensätze zum Drucken vorhanden.');
    Exit;
  end;

  // dxComponentPrinter1
    AReportLink := dxComponentPrinter1.AddEmptyLinkEx(TdxGridReportLink, cxGridRechnung);
    AReportLink.Component := cxGridRechnung;

  if AReportLink <> nil then  begin
     AReportLink.ReportDocument.Caption := 'Rechnung Liste';
     AReportLink.Preview;
  end;
end;

procedure TRechnungform.dxBarLargeButtonListendruckClick(Sender: TObject);
var
  PersonIDs: TList<Integer>;
  i: Integer;
begin
  if cxGridRechnungDBBandedTableViewRechnung.Controller.SelectedRowCount = 0 then  begin
    ShowMessage('Bitte wählen Sie mindestens einen Kontakt aus.');
    Exit;
  end;
  PersonIDs := TList<Integer>.Create;
  try
    for i := 0 to cxGridRechnungDBBandedTableViewRechnung.Controller.SelectedRecordCount - 1 do  begin
      PersonIDs.Add(
        cxGridRechnungDBBandedTableViewRechnung.Controller.SelectedRecords[i].Values[
          cxGridRechnungDBBandedTableViewRechnung.GetColumnByFieldName('PersonID').Index]
      );
    end;

    MyReport := TMyReport.Create(Application);
    try
      MyReport.SetReportData('Rechnung', PersonIDs, 'Rechnungsliste');
      MyReport.ShowModal;
    finally
      MyReport.Free;
    end;

  finally
    PersonIDs.Free;
  end;
end;

procedure TRechnungform.dxBarLargeButtonSuchenClick(Sender: TObject);
begin
 LoadRechnungen;
end;

{Zurücksetzen}
procedure TRechnungform.dxBarLargeButtonZuruecksetzenClick(Sender: TObject);
begin
  ClearFilters;
  LoadRechnungen;
end;

{Create}
procedure TRechnungform.FormCreate(Sender: TObject);
begin
  FSelectedPersonID := 0;
  //ComboBox Archivzustand
  cxComboBoxArchivzustand.Properties.Items.Clear;
  cxComboBoxArchivzustand.Properties.Items.Add('Alle');
  cxComboBoxArchivzustand.Properties.Items.Add('Archiviert');
  cxComboBoxArchivzustand.ItemIndex := 0; // Default "Aktiv"
//  cxDateEditDatum.Date := IncMonth(Date, -3);   // Default 3 month
//  cxDateEditBis.Date := Date;
end;



{Show}
procedure TRechnungform.FormShow(Sender: TObject);
begin
  LoadRechnungen;
//  GetBelegNummer;
end;

{Set Kontaktfilter}
procedure TRechnungform.SetKontaktFilter(APersonID: Integer; AKontaktName: string);
begin
  FSelectedPersonID := APersonID;
  cxTextEditKontakt.Text := AKontaktName;
  LoadRechnungen;
  Self.Show;
  Self.BringToFront;
end;

{Statistik anzeigen}
procedure TRechnungform.RechnungStatistikanzeigen;
begin

end;

{Style}
procedure TRechnungform.cxGridRechnungRootLevelStylesGetTabStyle(Sender,
  ATabLevel: TcxGridLevel; var AStyle: TcxStyle);
begin

end;

{Load Rechnung}
procedure TRechnungForm.LoadRechnungen;
var
  SQL: string;
  DatumVon, DatumBis: TDateTime;
  Archivzustand: string;
  BelegNummer: string;
begin
  DatumVon := cxDateEditDatum.Date;
  DatumBis := cxDateEditBis.Date;
  Archivzustand := cxComboBoxArchivzustand.Text;
  BelegNummer := cxTextEditBelegNummer.Text;

  SQL := 'SELECT * FROM RechnungView WHERE 1=1';

  if FSelectedPersonID > 0 then  begin
    SQL := SQL + ' AND PersonID = ' + IntToStr(FSelectedPersonID);
  end  else if Trim(cxTextEditKontakt.Text) <> '' then  begin
    SQL := SQL + ' AND (KontaktVorname LIKE ''%' + Trim(cxTextEditKontakt.Text) + '%''' +
                 ' OR KontaktName LIKE ''%' + Trim(cxTextEditKontakt.Text) + '%'')';
  end;

  if Trim(BelegNummer) <> '' then
    SQL := SQL + ' AND BelegNummer LIKE ''%' + Trim(BelegNummer) + '%''';

  if DatumVon > 0 then
    SQL := SQL + ' AND Datum >= ''' + FormatDateTime('yyyy-mm-dd', DatumVon) + '''';
  if DatumBis > 0 then
    SQL := SQL + ' AND Datum <= ''' + FormatDateTime('yyyy-mm-dd', DatumBis) + '''';

  if (Archivzustand <> '') and (Archivzustand <> 'Alle') then
    SQL := SQL + ' AND Archivzustand = ''' + Archivzustand + '''';

  SQL := SQL + ' ORDER BY Datum DESC, BelegNummer DESC';

  try
    MSQueryRechnung.Close;
    MSQueryRechnung.SQL.Text := SQL;
    MSQueryRechnung.Open;

    if MSQueryRechnung.RecordCount > 0 then
      cxTabSheetMainform.Caption :=
        'Rechnungen (' + IntToStr(MSQueryRechnung.RecordCount) + ')'
    else
      cxTabSheetMainform.Caption := 'Rechnungen (0)';
  except
    on E: Exception do
      ShowMessage('Fehler beim Laden der Rechnungen: ' + E.Message);
  end;
end;


{ClearFilters;}
procedure TRechnungform.ClearFilters;
begin
  cxTextEditKontakt.Clear;
  cxTextEditBelegNummer.Clear;
  cxDateEditDatum.Date := IncMonth(Date, -3);
  cxDateEditBis.Date := Date;
  cxComboBoxArchivzustand.ItemIndex := 0; // Aktiv
  FSelectedPersonID := 0;
end;

{GetBelegNummer}
procedure TRechnungform.GetBelegNummer;
var BelegNummer:integer;
begin
  if Trim(cxTextEditBelegNummer.Text)='' then begin
    try
      BelegNummer := cxGridRechnungDBBandedTableViewRechnung.DataController.GetItemByFieldName('Belegnummer').Index;
      cxTextEditBelegNummer.Text:= cxGridRechnungDBBandedTableViewRechnung.DataController.Values[
      cxGridRechnungDBBandedTableViewRechnung.Controller.FocusedRecordIndex,
      BelegNummer];
    except
    end;
  end;
end;

procedure TRechnungform.abelle1Click(Sender: TObject);
begin
 cxGrid1Level1.GridView := cxGrid1DBBandedTableViewStatistik;
end;

procedure TRechnungform.Chart1Click(Sender: TObject);
begin
 cxGrid1Level1.GridView:= cxGrid1DBChartViewStatistik
end;

{SetMultipleKontaktFilter}
procedure TRechnungform.SetMultipleKontaktFilter(PersonIDs: TList<Integer>; KontaktNames: TStringList);
var
  i: Integer;
  FilterStr: string;
  CaptionStr: string;
begin
  if PersonIDs.Count = 0 then Exit;
  if PersonIDs.Count <= 3 then begin
    CaptionStr := 'Rechnungen: ';
    for i := 0 to KontaktNames.Count - 1 do begin
      if i > 0 then CaptionStr := CaptionStr + ', ';
      CaptionStr := CaptionStr + KontaktNames[i];
    end;
  end else begin
    CaptionStr := 'Rechnungen: ' + IntToStr(PersonIDs.Count) + ' Kontakte ausgewählt';
  end;
  Self.Caption := CaptionStr;

  FilterStr := 'PersonID IN (';
  for i := 0 to PersonIDs.Count - 1 do begin
    if i > 0 then FilterStr := FilterStr + ',';
    FilterStr := FilterStr + IntToStr(PersonIDs[i]);
  end;
  FilterStr := FilterStr + ')';

  if Assigned(MSQueryRechnung) then begin
    MSQueryRechnung.Close;
    MSQueryRechnung.SQL.Clear;
    MSQueryRechnung.SQL.Add('SELECT * FROM Rechnung WHERE ' + FilterStr);
    MSQueryRechnung.Open;
  end;
end;


end.
