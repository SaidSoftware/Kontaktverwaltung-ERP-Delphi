unit MyQualitaet;

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
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, cxClasses, cxVariants,
  dxCustomData, cxCustomCanvas, dxCoreGraphics, dxChartCore, dxChartData,
  dxChartLegend, dxChartSimpleDiagram, dxChartXYDiagram,
  dxChartXYSeriesLineView, dxChartXYSeriesAreaView, dxChartMarkers,
  dxChartXYSeriesBarView, dxChartControl, dxPanel, dxCoreClasses,
  dxLayoutContainer, dxLayoutcxEditAdapters, cxContainer, cxEdit, dxCore,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, dxColorEdit, dxLayoutControl, MyPapierkorb,dxGDIPlusClasses, System.UITypes,
  Data.DB, MemDS, DBAccess, MSAccess, dxChartDBData, dxBarBuiltInMenu, cxPC,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxCheckBox,dxChartDesigner,
  dxBar, dxRibbon, dxRibbonGallery, dxRibbonMiniToolbar, System.ImageList,
  Vcl.ImgList, cxImageList, dxPSCore, dxPSdxChartControlLnk, dxPSPDFExport,
  cxTrackBar, dxZoomTrackBar, dxMapControlTypes, dxMapControl,KVDataModule;

type
  TFormDatenqualitaet = class(TForm)
    dxPanelQuali: TdxPanel;
    dxChartControlOrt: TdxChartControl;
    MSQueryGeschlecht: TMSQuery;
    MSQueryOrt: TMSQuery;
    MSDataSourceGeschlecht: TMSDataSource;
    MSConnection1: TMSConnection;
    MSDataSourceOrt: TMSDataSource;
    dxChartControlKontaktSimpleDiagram1: TdxChartSimpleDiagram;
    dxChartControlKontaktSimpleSeries2: TdxChartSimpleSeries;
    cxPageControlStatistik: TcxPageControl;
    cxTabSheetOrt: TcxTabSheet;
    cxTabSheetGeschlecht: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxChartControlGeschl: TdxChartControl;
    dxChartSimpleDiagram1: TdxChartSimpleDiagram;
    dxChartSimpleSeries1: TdxChartSimpleSeries;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutItem2: TdxLayoutItem;
    cxButtonShowDesigner: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    cxButton1: TcxButton;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButtonExport: TdxBarLargeButton;
    dxRibbonDropDownGallery1: TdxRibbonDropDownGallery;
    dxBarLargeButtonExcel: TdxBarLargeButton;
    dxBarLargeButtonDOCX: TdxBarLargeButton;
    dxBarLargeButtonSVG: TdxBarLargeButton;
    dxBarLargeButtonRasterImage: TdxBarLargeButton;
    dxBarLargeButtonMetaFile: TdxBarLargeButton;
    cxImageListDatenQ: TcxImageList;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure cxButtonShowDesignerClick(Sender: TObject);
    procedure dxBarLargeButtonExcelClick(Sender: TObject);
    procedure dxBarLargeButtonDOCXClick(Sender: TObject);
    procedure dxBarLargeButtonRasterImageClick(Sender: TObject);
  private

  public

  function  GetActiveChart: TdxChartControl;
  procedure ExportChartToPNG(Chart: TdxChartControl; const FileName: string);
  procedure LoadKategorie;
  end;

var
  FormDatenqualitaet: TFormDatenqualitaet;

implementation

uses KontaktQuality;


{$R *.dfm}


function TFormDatenqualitaet.GetActiveChart: TdxChartControl;
begin
  Result := nil;
  if Assigned(cxPageControlStatistik) then begin
    case cxPageControlStatistik.ActivePageIndex of
      0: if Assigned(cxTabSheetOrt) and (cxPageControlStatistik.ActivePage = cxTabSheetOrt) then
           Result := dxChartControlOrt; //  Ort
      1: if Assigned(cxTabSheetGeschlecht) and (cxPageControlStatistik.ActivePage = cxTabSheetGeschlecht) then
           Result := dxChartControlGeschl; //Geschlecht
    end;
  end;

  if not Assigned(Result) then begin
    if Assigned(dxChartControlGeschl) then
      Result := dxChartControlGeschl
    else if Assigned(dxChartControlOrt) then
      Result := dxChartControlOrt;
  end;
end;

{Docx}
procedure TFormDatenqualitaet.dxBarLargeButtonDOCXClick(Sender: TObject);
var
  SaveDialog: TSaveDialog;
  Chart: TdxChartControl;
begin
  Chart := GetActiveChart;
  if not Assigned(Chart) then begin
    ShowMessage('Keine aktive Diagramm gefunden.');
    Exit;
  end;

  SaveDialog := TSaveDialog.Create(Self);
  try
    SaveDialog.Title := 'Diagramm als DOCX speichern';
    SaveDialog.Filter := 'Word Documents (*.docx)|*.docx';
    SaveDialog.DefaultExt := 'docx';
    SaveDialog.FileName := 'Datenqualitaet_' + FormatDateTime('yyyy-mm-dd', Now);

    if SaveDialog.Execute then begin
      try
        Chart.ExportToDocx(SaveDialog.FileName);
        ShowMessage('Diagramm erfolgreich als DOCX exportiert: ' + SaveDialog.FileName);
      except
        on E: Exception do
          ShowMessage('Fehler beim DOCX Export: ' + E.Message);
      end;
    end;
  finally
    SaveDialog.Free;
  end;
end;


{Excel}
procedure TFormDatenqualitaet.dxBarLargeButtonExcelClick(Sender: TObject);
var
  SaveDialog: TSaveDialog;
  Chart: TdxChartControl;
begin
  Chart := GetActiveChart;
  if not Assigned(Chart) then begin
    ShowMessage('Keine aktive Diagramm gefunden.');
    Exit;
  end;

  SaveDialog := TSaveDialog.Create(Self);
  try
    SaveDialog.Title := 'Diagramm als Excel speichern';
    SaveDialog.Filter := 'Excel Files (*.xlsx)|*.xlsx|Excel 97-2003 (*.xls)|*.xls';
    SaveDialog.DefaultExt := 'xlsx';
    SaveDialog.FileName := 'Datenqualitaet_' + FormatDateTime('yyyy-mm-dd', Now);

    if SaveDialog.Execute then begin
      try
        Chart.ExportToXlsx(SaveDialog.FileName);
        ShowMessage('Diagramm erfolgreich als Excel exportiert: ' + SaveDialog.FileName);
      except
        on E: Exception do
          ShowMessage('Fehler beim Excel Export: ' + E.Message);
      end;
    end;
  finally
    SaveDialog.Free;
  end;
end;

{Png}
procedure TFormDatenqualitaet.ExportChartToPNG(Chart: TdxChartControl; const FileName: string);
var
  Bitmap: TBitmap;
begin
  Bitmap := TBitmap.Create;

  try
    Bitmap.Width := Chart.Width;
    Bitmap.Height := Chart.Height;
    Chart.PaintTo(Bitmap.Canvas, 0, 0);
    Bitmap.SaveToFile(FileName);
  finally
    Bitmap.Free;
  end;
end;
{RasterImage}
procedure TFormDatenqualitaet.dxBarLargeButtonRasterImageClick(Sender: TObject);
var
  SaveDialog: TSaveDialog;
  Chart: TdxChartControl;
begin
  Chart := GetActiveChart;
  if not Assigned(Chart) then begin
    ShowMessage('Keine aktive Diagramm gefunden.');
    Exit;
  end;

  SaveDialog := TSaveDialog.Create(Self);
  try
    SaveDialog.Filter := 'PNG Image (*.png)|*.png|Bitmap (*.bmp)|*.bmp';
    if SaveDialog.Execute then begin
      try
        if LowerCase(ExtractFileExt(SaveDialog.FileName)) = '.png' then
          ExportChartToPNG(Chart, SaveDialog.FileName)
        else
          ExportChartToPNG(Chart, ChangeFileExt(SaveDialog.FileName, '.png'));
        ShowMessage('Export erfolgreich: ' + SaveDialog.FileName);
      except
        on E: Exception do
          ShowMessage('Export Fehler: ' + E.Message);
      end;
    end;
  finally
    SaveDialog.Free;
  end;
end;




procedure TFormDatenqualitaet.cxButtonShowDesignerClick(Sender: TObject);
begin
      if Assigned(cxPageControlStatistik) then  begin
        case cxPageControlStatistik.ActivePageIndex of
          0:
            if Assigned(cxTabSheetOrt) and (cxPageControlStatistik.ActivePage = cxTabSheetOrt) then
              dxShowChartDesigner(dxChartControlOrt);
          1:
            if Assigned(cxTabSheetGeschlecht) and (cxPageControlStatistik.ActivePage = cxTabSheetGeschlecht) then
              dxShowChartDesigner(dxChartControlGeschl);
        end;
      end;
end;

procedure TFormDatenqualitaet.FormCreate(Sender: TObject);
begin
//    MSQueryGeschlecht.SQL.Text :=
//    'SELECT CASE WHEN AnredeID = 1 THEN ''Männlich'' ' +
//    'WHEN AnredeID = 2 THEN ''Weiblich'' ' +
//    'WHEN AnredeID = 3 THEN ''Divers'' ELSE ''Unbekannt'' END AS Geschlecht, ' +
//    'COUNT(*) AS Anzahl FROM Kontakt GROUP BY AnredeID';
//
//  MSQueryOrt.SQL.Text :=
//    'SELECT Ort, COUNT(*) AS Anzahl FROM Kontakt ' +
//    'WHERE Ort IS NOT NULL AND Ort <> '''' ' +
//    'GROUP BY Ort ORDER BY COUNT(*) DESC';
//
//  MSQueryGeschlecht.Open;
//  MSQueryOrt.Open;
//  dxChartControlKontaktSimpleDiagram1.ShowCustomizationForm;

end;

procedure TFormDatenqualitaet.LoadKategorie;
var
  SQL: TMSQuery;
begin
  SQL := TMSQuery.Create(nil);
  try
    SQL.Connection := MyDataModule.MyConnections;
    SQL.SQL.Text :=
      'SELECT kk.Beschreibung AS KategorieName, COUNT(k.PersonID) AS AnzahlKontakte ' +
      'FROM Kontakt k ' +
      'INNER JOIN KontaktKategorie kk ON k.KategorieID = kk.KategorieID ' +
      'GROUP BY kk.Beschreibung ' +
      'ORDER BY AnzahlKontakte DESC';

    SQL.Open;


//    dxChartControl1SimpleSeriesKateg.DataBinding.DataSource := SQL;
//    dxChartControl1SimpleSeriesKateg.DataBinding.ArgumentField.FieldName := 'KategorieName';
//    dxChartControl1SimpleSeriesKateg.DataBinding.ValueField.FieldName := 'AnzahlKontakte';


  finally

  end;
end;


end.
