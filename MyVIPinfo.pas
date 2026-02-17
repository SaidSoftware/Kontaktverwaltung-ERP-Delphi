unit MyVIPinfo;

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
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, cxClasses, dxBar, dxPanel,
  dxLayoutContainer, cxCustomData, cxStyles, cxEdit, dxBarBuiltInMenu, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxPivotGridChartConnection, cxCustomPivotGrid,
  cxDBPivotGrid, cxGridChartView, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutControl,Mypapierkorb, DBAccess, MSAccess, MemDS,KVDataModule,
  System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList,
  Vcl.Menus, dxRibbon, dxRibbonGallery;

type
  TFormVIPinfo = class(TForm)
    dxPanelVIPInfo: TdxPanel;
    dxBarManager1: TdxBarManager;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBPivotGridVIPinfo: TcxDBPivotGrid;
    dxLayoutItem1: TdxLayoutItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGridLevel: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    cxGridChartView: TcxGridChartView;
    pgfKaufdatum: TcxDBPivotGridField;
    pgfPaymentType: TcxDBPivotGridField;
    pgfQuantity: TcxDBPivotGridField;
    pgfProduktName: TcxDBPivotGridField;
    pgfUnitPrice: TcxDBPivotGridField;
    pgfCompanyName: TcxDBPivotGridField;
    pgfPaymentAmount: TcxDBPivotGridField;
    cxPivotGridChartConnection: TcxPivotGridChartConnection;
    cxImageListPaymentImage: TcxImageList;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButExportieren: TdxBarLargeButton;
    dxRibbonDropDownGallery1: TdxRibbonDropDownGallery;
    dxBarButton1: TdxBarButton;
    dxBarLargeButExport: TdxBarLargeButton;
    dxBarLargeButExcel: TdxBarLargeButton;
    dxBarLargeButRasterImage: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pgfPaymentTypeGetGroupImageIndex(Sender: TcxPivotGridField;
      const AItem: TcxPivotGridViewDataItem; var AImageIndex: Integer;
      var AImageAlignHorz: TAlignment; var AImageAlignVert: TcxAlignmentVert);
  private
    FVipTransaktionenQuery: TMSQuery;
    FVipAnalyseQuery: TMSQuery;
    FConnection:TMSConnection;
    FDataSource: TDataSource;
    procedure SetupConnection;
    procedure SetupPivotGrid;
    procedure SetupTableView;
    procedure LoadVIPData;
  public
    { Public-Deklarationen }
  end;

var
  FormVIPinfo: TFormVIPinfo;

implementation

{$R *.dfm}

{Save Connection}
procedure TFormVIPinfo.SetupConnection;
begin
  FConnection := MyDataModule.MyConnections;
  FVipTransaktionenQuery := TMSQuery.Create(Self);
  FVipTransaktionenQuery.Connection := FConnection;
  FVipAnalyseQuery := TMSQuery.Create(Self);
  FVipAnalyseQuery.Connection := FConnection;
  // DataSource
  FDataSource := TDataSource.Create(Self);
  FDataSource.DataSet := FVipTransaktionenQuery;
end;

{Setup PrivotGrid}
procedure TFormVIPinfo.SetupPivotGrid;
begin
  cxDBPivotGridVIPinfo.DataSource := FDataSource;
  //PivotGrid
  pgfKaufdatum.DataBinding.FieldName := 'Kaufdatum';
  pgfKaufdatum.Area := faRow;
  pgfKaufdatum.GroupInterval := giDateMonth;

  pgfCompanyName.DataBinding.FieldName := 'KundenName';
  pgfCompanyName.Area := faRow;
  pgfCompanyName.Caption := 'VIP Kunde';

  pgfProduktName.DataBinding.FieldName := 'ProduktName';
  pgfProduktName.Area := faRow;
  pgfProduktName.Caption := 'Produkt';

  pgfPaymentType.DataBinding.FieldName := 'PaymentType';
  pgfPaymentType.Area := faColumn;
  pgfPaymentType.Caption := 'Zahlungsart';

  pgfQuantity.DataBinding.FieldName := 'Quantity';
  pgfQuantity.Area := faData;
  pgfQuantity.SummaryType := stSum;
  pgfQuantity.Caption := 'Menge';

  pgfUnitPrice.DataBinding.FieldName := 'UnitPrice';
  pgfUnitPrice.Area := faData;
  pgfUnitPrice.SummaryType := stAverage;
  pgfUnitPrice.Caption := 'Durchschn. Preis';

  pgfPaymentAmount.DataBinding.FieldName := 'PaymentAmount';
  pgfPaymentAmount.Area := faData;
  pgfPaymentAmount.SummaryType := stSum;
  pgfPaymentAmount.Caption := 'Gesamtbetrag';
  // Chart Connection
  cxPivotGridChartConnection.PivotGrid := cxDBPivotGridVIPinfo;
end;

{Setup View}
procedure TFormVIPinfo.SetupTableView;
var
  Column: TcxGridDBColumn;
begin
  cxGrid1DBTableView1.ClearItems;
  Column := cxGrid1DBTableView1.CreateColumn;
  Column.DataBinding.FieldName := 'KundenName';
  Column.Caption := 'VIP Kunde';
  Column.Width := 150;

  Column := cxGrid1DBTableView1.CreateColumn;
  Column.DataBinding.FieldName := 'Kaufdatum';
  Column.Caption := 'Datum';
  Column.Width := 100;

  Column := cxGrid1DBTableView1.CreateColumn;
  Column.DataBinding.FieldName := 'ProduktName';
  Column.Caption := 'Produkt';
  Column.Width := 200;

  Column := cxGrid1DBTableView1.CreateColumn;
  Column.DataBinding.FieldName := 'Kategorie';
  Column.Caption := 'Kategorie';
  Column.Width := 120;

  Column := cxGrid1DBTableView1.CreateColumn;
  Column.DataBinding.FieldName := 'Quantity';
  Column.Caption := 'Menge';
  Column.Width := 80;

  Column := cxGrid1DBTableView1.CreateColumn;
  Column.DataBinding.FieldName := 'UnitPrice';
  Column.Caption := 'Einzelpreis';
  Column.Width := 100;

  Column := cxGrid1DBTableView1.CreateColumn;
  Column.DataBinding.FieldName := 'PaymentAmount';
  Column.Caption := 'Gesamtbetrag';
  Column.Width := 120;

  Column := cxGrid1DBTableView1.CreateColumn;
  Column.DataBinding.FieldName := 'PaymentType';
  Column.Caption := 'Zahlungsart';
  Column.Width := 100;

  Column := cxGrid1DBTableView1.CreateColumn;
  Column.DataBinding.FieldName := 'VipStatus';
  Column.Caption := 'VIP Status';
  Column.Width := 100;

  cxGrid1DBTableView1.DataController.DataSource := FDataSource;
  cxGrid1DBTableView1.OptionsView.Footer := True;
  cxGrid1DBTableView1.OptionsView.GroupByBox := True;
end;

{Create}
procedure TFormVIPinfo.FormCreate(Sender: TObject);
begin
  SetupConnection;
  SetupPivotGrid;
  SetupTableView;
  LoadVIPData;
end;

{Destory}
procedure TFormVIPinfo.FormDestroy(Sender: TObject);
begin
  FVipTransaktionenQuery.Free;
  FVipAnalyseQuery.Free;
  FDataSource.Free;
 // FConnection.Free;
end;

{Load Vip Data}
procedure TFormVIPinfo.LoadVIPData;
begin
  try
    FVipTransaktionenQuery.Close;
    FVipTransaktionenQuery.SQL.Clear;
    FVipTransaktionenQuery.SQL.Add('SELECT * FROM VipTransaktionenView');
    FVipTransaktionenQuery.SQL.Add('ORDER BY Kaufdatum DESC');
    FVipTransaktionenQuery.Open;
    Self.Caption := Format('VIP Transaktion - KontaktName[ID] Transaktion: %d',
      [FVipTransaktionenQuery.RecordCount]);
  except
    on E: Exception do
      ShowMessage('Datenfehler: ' + E.Message);
  end;
end;

{ImageIndex}
procedure TFormVIPinfo.pgfPaymentTypeGetGroupImageIndex(
  Sender: TcxPivotGridField; const AItem: TcxPivotGridViewDataItem;
  var AImageIndex: Integer; var AImageAlignHorz: TAlignment;
  var AImageAlignVert: TcxAlignmentVert);
var Card:string;
begin
  Card:= VarToStr(AItem.Value);
      if SameText(Card,'Kreditkarte') then
      AImageIndex:=1
    else
      if SameText(Card,'Lastschrift') then
      AImageIndex:=3
    else
      if SameText(Card,'PayPal') then
      AImageIndex:=2
    else
      if SameText(Card,'Rechnung') then
      AImageIndex:=0
    else
      if SameText(Card,'Überweisung') then
      AImageIndex:=6
    else
      if SameText(Card,'Summe') then
        AImageIndex:=5
end;

end.
