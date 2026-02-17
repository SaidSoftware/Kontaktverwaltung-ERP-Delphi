unit KontaktQuality;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, Vcl.Menus, cxButtons, cxLabel, cxTextEdit,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxLayoutContainer, cxClasses,
  dxLayoutControl, cxGeometry, cxVariants, dxCustomData, cxCustomCanvas,
  dxCoreGraphics, dxChartCore, dxChartData, dxChartLegend, dxChartSimpleDiagram,
  dxChartXYDiagram, dxChartXYSeriesLineView, dxChartXYSeriesAreaView,
  dxChartMarkers, dxChartXYSeriesBarView, dxChartControl,Math,StartList,MyPapierkorb,
  cxGroupBox, cxCheckGroup, dxBar,MyCheckboxKontaktQ, Data.DB, MemDS, DBAccess,
  MSAccess,KVDatamodule,KontaktFeldDefinition, dxRibbon, dxRibbonGallery,MyQualitaet,
  dxCore, cxMaskEdit, cxDropDownEdit, dxColorEdit, Vcl.ExtDlgs,Vcl.Imaging.pnglang,
  cxCheckBox;
type
  TDiagrammTyp = (dtPie, dtBar, dtColumn);


type
  TTKontaktQ = class(TForm)
    PanelAdmin: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    ImageChart: TImage;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButtonAnpassen: TdxBarLargeButton;
    cxTextEditVoll: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    cxTextEditUnvoll: TcxTextEdit;
    MSQuery1: TMSQuery;
    dxBarLargeButtonArten: TdxBarLargeButton;
    dxRibbonDropDownGalleryChartTypen: TdxRibbonDropDownGallery;
    dxBarLargeButDiagramm: TdxBarLargeButton;
    dxBarLargeButColumn: TdxBarLargeButton;
    dxBarLargeButBar: TdxBarLargeButton;
    dxBarLargeButDevEx: TdxBarLargeButton;
    dxBarLargeButAktualisieren: TdxBarLargeButton;
    ColorBoxVoll: TColorBox;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    ColorBoxUnVoll: TColorBox;
    dxBarLargeButExport: TdxBarLargeButton;
    SaveDialog1: TSaveDialog;
    SavePictureDialog1: TSavePictureDialog;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure cxTextEditVollClick(Sender: TObject);
    procedure cxTextEditUnvollClick(Sender: TObject);
    procedure dxBarLargeButtonAnpassenClick(Sender: TObject);
    procedure dxBarLargeButDiagrammClick(Sender: TObject);
    procedure dxBarLargeButColumnClick(Sender: TObject);
    procedure dxBarLargeButBarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButDevExClick(Sender: TObject);
    procedure dxBarLargeButAktualisierenClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarLargeButExportClick(Sender: TObject);
    procedure cxTextEditVollPropertiesChange(Sender: TObject);
  private
    { Private-Deklarationen }
    FDiagrammTyp: TDiagrammTyp;
  public
    { Public-Deklarationen }
    function GetQualityCountsFromDB: TContactQuality;

    procedure DrawPieChart(Image: TImage; Voll, Unvoll: Integer; ColorVoll, ColorUnvoll: TColor);
    procedure DrawBarChart(Image: TImage; Voll, Unvoll: Integer; ColorVoll, ColorUnvoll: TColor);
    procedure DrawColumnChart(Image: TImage; Voll, Unvoll: Integer; ColorVoll, ColorUnvoll: TColor);
    procedure LoadDiagrammWerte;
    procedure ZeigeDiagramm(DiagrammTyp: TDiagrammTyp);
    procedure CountKontaktQualitaet(out Voll, Unvoll: Integer);
    procedure AktualisiereDiagramm;
    procedure SaveArtDiagramm;
    procedure SaveColorDiagramm;

 var
    FKontaktVollstaendig: Integer;
    FKontaktUnvollstaendig: Integer;

  end;

var
  TKontaktQ: TTKontaktQ;

implementation

uses IniFiles,pngimage;

{$R *.dfm}

function IsDarkColor(AColor: TColor): Boolean;
var
  R, G, B: Byte;
begin
  AColor := ColorToRGB(AColor);
  R := GetRValue(AColor);
  G := GetGValue(AColor);
  B := GetBValue(AColor);
  // F Luminance
  Result := (0.299 * R + 0.587 * G + 0.114 * B) < 128;
end;

{Filter}
function GenerateFullnessFilter(Status: string): string;
var
  QueryFeld: TMSQuery;
  FeldList: TStringList;
  FeldName: string;

  function JoinConditions(List: TStringList; const Delimiter: string): string;
  var
    i: Integer;
    ResultStr: string;
  begin
    ResultStr := '';
    for i := 0 to List.Count - 1 do    begin
      if i > 0 then
        ResultStr := ResultStr + ' ' + Delimiter + ' ';
      ResultStr := ResultStr + List[i];
    end;
    Result := ResultStr;
  end;

begin
  FeldList := TStringList.Create;
  QueryFeld := TMSQuery.Create(nil);
  try
    QueryFeld.Connection := MyDataModule.MyConnections;
    QueryFeld.SQL.Text := 'SELECT Feldname FROM KontaktFeldEinstellungen WHERE Aktiv = 1 AND Modus = :Modus';
    QueryFeld.ParamByName('Modus').AsString := 'vollständig';
    QueryFeld.Open;

    while not QueryFeld.Eof do
    begin
      FeldName := QueryFeld.FieldByName('Feldname').AsString;
      if Status = 'vollständig' then
        FeldList.Add(Format('(%s IS NOT NULL AND %s <> '''')', [FeldName, FeldName]))
      else
        FeldList.Add(Format('(%s IS NULL OR %s = '''')', [FeldName, FeldName]));
      QueryFeld.Next;
    end;

    if Status = 'vollständig' then
      Result := '(' + JoinConditions(FeldList, 'AND') + ')'
    else
      Result := '(' + JoinConditions(FeldList, 'OR') + ')';
  finally
    QueryFeld.Free;
    FeldList.Free;
  end;
end;

function GetArchivFilter: string;
begin
  case StartListe.cxComboBoxArchiv.ItemIndex of
    0: Result := 'IsArchived = 0';
    1: Result := '1=1';
    2: Result := 'IsArchived = 1';
  else
    Result := '1=1';
  end;
end;

{Count}
procedure TTKontaktQ.CountKontaktQualitaet(out Voll, Unvoll: Integer);
var
  Q: TMSQuery;
  FilterVoll, FilterUnvoll, Archiv: string;
begin
  FilterVoll := GenerateFullnessFilter('vollständig');
  FilterUnvoll := GenerateFullnessFilter('unvollständig');
  Archiv := GetArchivFilter;

  Q := TMSQuery.Create(nil);
  try
    Q.Connection := MyDataModule.MyConnections;

    // Vollständig
    Q.SQL.Text := Format('SELECT COUNT(*) FROM Kontaktview WHERE %s AND %s', [FilterVoll, Archiv]);
    Q.Open;
    Voll := Q.Fields[0].AsInteger;

    // Unvollständig
    Q.Close;
    Q.SQL.Text := Format('SELECT COUNT(*) FROM Kontaktview WHERE %s AND %s', [FilterUnvoll, Archiv]);
    Q.Open;
    Unvoll := Q.Fields[0].AsInteger;
  finally
    Q.Free;
  end;
end;


procedure TTKontaktQ.DrawPieChart(Image: TImage; Voll, Unvoll: Integer; ColorVoll, ColorUnvoll: TColor);
var
  Total, AngleVoll, AngleUnvoll: Double;
  CenterX, CenterY, Radius: Integer;
  BitmapCanvas: TCanvas;
  StartX, StartY, EndX, EndY: Integer;
  MidAngle: Double;
  TextX, TextY: Integer;
begin
  Total := Voll + Unvoll;
  if Total = 0 then Exit;

  Image.Picture.Bitmap.SetSize(Image.Width, Image.Height);
  BitmapCanvas := Image.Picture.Bitmap.Canvas;
  BitmapCanvas.Brush.Color := clWhite;
  BitmapCanvas.FillRect(Rect(0, 0, Image.Width, Image.Height));

  CenterX := Image.Width div 2;
  CenterY := Image.Height div 2;
  Radius := Min(CenterX - 10, CenterY - 10);

  // --- Vollständig Segment ---
  AngleVoll := 360 * Voll / Total;

  BitmapCanvas.Brush.Color := ColorVoll;
  StartX := CenterX + Radius;
  StartY := CenterY;
  EndX := Round(CenterX + Radius * Cos(DegToRad(AngleVoll)));
  EndY := Round(CenterY - Radius * Sin(DegToRad(AngleVoll)));

  BitmapCanvas.Pie(CenterX - Radius, CenterY - Radius,
                   CenterX + Radius, CenterY + Radius,
                   StartX, StartY, EndX, EndY);

  // --- Beschriftung im Vollständig Segment ---
  MidAngle := DegToRad(AngleVoll / 2);
  TextX := CenterX + Round(Cos(MidAngle) * Radius * 0.6);
  TextY := CenterY - Round(Sin(MidAngle) * Radius * 0.6);

  BitmapCanvas.Brush.Style := bsClear;
  BitmapCanvas.Font.Size := 10;
  if IsDarkColor(ColorVoll) then
    BitmapCanvas.Font.Color := clWhite
  else
    BitmapCanvas.Font.Color := clBlack;

  BitmapCanvas.TextOut(TextX - 20, TextY, Format('%d (%.1f%%)', [Voll, 100 * Voll / Total]));

  // --- Unvollständig Segment ---
  AngleUnvoll := 360 - AngleVoll;
  BitmapCanvas.Brush.Color := ColorUnvoll;

  BitmapCanvas.Pie(CenterX - Radius, CenterY - Radius,
                   CenterX + Radius, CenterY + Radius,
                   EndX, EndY, StartX, StartY);

  // --- Beschriftung im Unvollständig Segment ---
  MidAngle := DegToRad(AngleVoll + (AngleUnvoll / 2));
  TextX := CenterX + Round(Cos(MidAngle) * Radius * 0.6);
  TextY := CenterY - Round(Sin(MidAngle) * Radius * 0.6);

  BitmapCanvas.Brush.Style := bsClear;

  if IsDarkColor(ColorUnvoll) then
    BitmapCanvas.Font.Color := clWhite
  else
    BitmapCanvas.Font.Color := clBlack;

  BitmapCanvas.TextOut(TextX - 20, TextY, Format('%d (%.1f%%)', [Unvoll, 100 * Unvoll / Total]));

  Image.Invalidate;
end;



procedure TTKontaktQ.DrawBarChart(Image: TImage; Voll, Unvoll: Integer; ColorVoll, ColorUnvoll: TColor);
var
  Total, Scale: Double;
  BarHeight, Space, MaxBarWidth: Integer;
  BitmapCanvas: TCanvas;
begin
  Total := Voll + Unvoll;
  if Total = 0 then Exit;

  Image.Picture.Bitmap.SetSize(Image.Width, Image.Height);
  BitmapCanvas := Image.Picture.Bitmap.Canvas;

  BitmapCanvas.Brush.Color := clWhite;
  BitmapCanvas.FillRect(Image.ClientRect);

  BarHeight := 25;
  Space := 20;
  MaxBarWidth := Image.Width - 150;
  Scale := MaxBarWidth / Total;

  // Vollständig
  BitmapCanvas.Brush.Color := ColorVoll;
  BitmapCanvas.Rectangle(20, 40, 20 + Round(Voll * Scale), 40 + BarHeight);
  BitmapCanvas.TextOut(25 + Round(Voll * Scale), 40, Format('%d (%.1f%%)', [Voll, 100 * Voll / Total]));

  // Unvollständig
  BitmapCanvas.Brush.Color := ColorUnVoll;
  BitmapCanvas.Rectangle(20, 40 + BarHeight + Space, 20 + Round(Unvoll * Scale), 40 + BarHeight*2 + Space);
  BitmapCanvas.TextOut(25 + Round(Unvoll * Scale), 40 + BarHeight + Space, Format('%d (%.1f%%)', [Unvoll, 100 * Unvoll / Total]));

  Image.Invalidate;
end;


procedure TTKontaktQ.DrawColumnChart(Image: TImage; Voll, Unvoll: Integer; ColorVoll, ColorUnvoll: TColor);
var
  Total, Scale: Double;
  BarWidth, Space, MaxBarHeight: Integer;
  BitmapCanvas: TCanvas;
begin
  Total := Voll + Unvoll;
  if Total = 0 then Exit;

  Image.Picture.Bitmap.SetSize(Image.Width, Image.Height);
  BitmapCanvas := Image.Picture.Bitmap.Canvas;

  BitmapCanvas.Brush.Color := clWhite;
  BitmapCanvas.FillRect(Image.ClientRect);

  BarWidth := 50;
  Space := 30;
  MaxBarHeight := Image.Height - 80;
  Scale := MaxBarHeight / Total;

  // Vollständig
  BitmapCanvas.Brush.Color := ColorVoll;
  BitmapCanvas.Rectangle(60, Image.Height - 20 - Round(Voll * Scale), 60 + BarWidth, Image.Height - 20);
  BitmapCanvas.TextOut(60, Image.Height - 25 - Round(Voll * Scale), Format('%d (%.1f%%)', [Voll, 100 * Voll / Total]));

  // Unvollständig
  BitmapCanvas.Brush.Color := ColorUnVoll;
  BitmapCanvas.Rectangle(60 + BarWidth + Space, Image.Height - 20 - Round(Unvoll * Scale),
                         60 + BarWidth*2 + Space, Image.Height - 20);
  BitmapCanvas.TextOut(60 + BarWidth + Space, Image.Height - 25 - Round(Unvoll * Scale),
                       Format('%d (%.1f%%)', [Unvoll, 100 * Unvoll / Total]));

  Image.Invalidate;
end;




{UnVoll}
procedure TTKontaktQ.cxTextEditUnvollClick(Sender: TObject);
begin
    if not Assigned(StartListe) then
      StartListe := TStartListe.Create(Self);
    StartListe.TTSuchen := ttLokal;
    StartListe.EnableDblClick := False;

    StartListe.ShowContacts('unvollständig');
    Startliste.dxBarLargeButQualityDaten.Enabled:=false;
    Startliste.AcNeu.Enabled:=false;
    StartListe.AcKalender.Enabled:=false;
    StartListe.dxBarSubItemOption.Enabled:=false;
    Startliste.AcZurueck.Enabled:=true;
    StartListe.AcSuchen.Enabled:=true;
    Startliste.cxComboboxArchiv.Enabled := False;
  //Startliste.cxBarEditItemStatus.EditValue := 'Unvollständig';
    Startliste.dxRibbonStartlisteTabKategorie.Visible:=False;
    Startliste.cxBarEditItemGefunden.Caption;
    Startliste.Caption:='Kontaktliste [Unvollständig]';
    Startliste.UpdateTabCaptions;
    Startliste.SetTabMode(TtDeaktiv);
    StartListe.StringGrid1DBBandedTableView1IsArchived.Visible:=False;
    StartListe.StringGrid1DBBandedTableView1.Bands[9].Caption:='Archiv & Datei';
    Startliste.Position:=poMainFormCenter;
    StartListe.Show;
    StartListe.BringToFront;
    StartListe.ResetLokal;
    Application.ProcessMessages;
    StartListe.EnableDblClick := True;
end;



{Voll}
procedure TTKontaktQ.cxTextEditVollClick(Sender: TObject);
begin
    if not Assigned(StartListe) then
    StartListe := TStartListe.Create(Self);
    StartListe.TTSuchen := ttLokal;
    StartListe.EnableDblClick := False;

    StartListe.ShowContacts('vollständig');
    Startliste.dxBarLargeButQualityDaten.Enabled:=false;
    Startliste.AcNeu.Enabled:=false;
    StartListe.AcKalender.Enabled:=false;
    StartListe.dxBarSubItemOption.Enabled:=false;
    Startliste.AcZurueck.Enabled:=true;
    StartListe.AcSuchen.Enabled:=true;
    Startliste.cxComboboxArchiv.Enabled := False;
    Startliste.SetTabMode(TtDeaktiv);
    Startliste.UpdateTabCaptions;
    //Startliste.cxBarEditItemStatus.EditValue := 'Vollständig';
    Startliste.dxRibbonStartlisteTabKategorie.Visible:=False;
    Startliste.cxBarEditItemGefunden.Caption;
    Startliste.Caption := 'Kontaktliste [Vollständig]';
    StartListe.StringGrid1DBBandedTableView1IsArchived.Visible:=False;
    StartListe.StringGrid1DBBandedTableView1.Bands[9].Caption:='Archiv & Datei';
    Startliste.Position:=poMainFormCenter;
    StartListe.Show;
    StartListe.BringToFront;
    StartListe.ResetLokal;
    Application.ProcessMessages;
    StartListe.EnableDblClick := True;
end;


procedure TTKontaktQ.cxTextEditVollPropertiesChange(Sender: TObject);
begin

end;

{Get Felder}
function GetAktiveFelder(Modus: string): TArray<string>;
var
  Query: TMSQuery;
  Felder: TArray<string>;
  i: Integer;
begin
  Query := TMSQuery.Create(nil);
  try
    Query.Connection := MyDataModule.MyConnections;
    Query.SQL.Text := 'SELECT Feldname FROM KontaktFeldEinstellungen WHERE Modus = :Modus AND Aktiv = 1';
    Query.ParamByName('Modus').AsString := Modus;
    Query.Open;

    SetLength(Felder, Query.RecordCount);
    i := 0;
    while not Query.Eof do  begin
      Felder[i] := Query.FieldByName('Feldname').AsString;
      Inc(i);
      Query.Next;
    end;
    Result := Felder;
  finally
    Query.Free;
  end;
end;


{Close Form}
procedure TTKontaktQ.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'settings.ini');
  try
    Ini.WriteInteger('Diagramm', 'Typ', Ord(FDiagrammTyp));

    Ini.WriteInteger('Farben', 'VollColor', ColorBoxVoll.Selected);
    Ini.WriteInteger('Farben', 'UnvollColor', ColorBoxUnvoll.Selected);
  finally
    Ini.Free;
  end;
end;


{Create}
procedure TTKontaktQ.FormCreate(Sender: TObject);
begin
    if not Assigned(StartListe) then
    StartListe := TStartListe.Create(nil);
    SaveArtDiagramm;
    SaveColorDiagramm;
end;



{Save Color}
procedure TTKontaktQ.SaveColorDiagramm;
var
  Ini: TIniFile;
  VollColor, UnvollColor: TColor;
begin
   Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'settings.ini');
  try
    VollColor := Ini.ReadInteger('Farben', 'VollColor', clTeal);
    UnvollColor := Ini.ReadInteger('Farben', 'UnvollColor', clMaroon);

    ColorBoxVoll.Selected := VollColor;
    ColorBoxUnvoll.Selected := UnvollColor;
  finally
    Ini.Free;
  end;

    //FDiagrammTyp := dtPie;
    AktualisiereDiagramm;
end;

{Save Art}
procedure TTKontaktQ.SaveArtDiagramm;
var
  DiagrammWert: Integer;
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'settings.ini');
  try
    DiagrammWert := Ini.ReadInteger('Diagramm', 'Typ', Ord(dtPie));
    FDiagrammTyp := TDiagrammTyp(DiagrammWert);

    case FDiagrammtyp of
      dtPie:  dxLayoutGroup3.Caption:='Diagramm';
      dtBar:   dxLayoutGroup3.Caption:='Bar';
      dtColumn:  dxLayoutGroup3.Caption:='Column';
    end;
    AktualisiereDiagramm;
  finally
    Ini.Free;
  end;
end;

{Werte}
procedure TTKontaktQ.LoadDiagrammWerte;
var
  Voll, Unvoll: Integer;
begin
  CountKontaktQualitaet(Voll, Unvoll);
  FKontaktVollstaendig := Voll;
  FKontaktUnvollstaendig := Unvoll;
end;


{Show}
procedure TTKontaktQ.FormShow(Sender: TObject);
begin
//   AktualisiereDiagramm;
//   FDiagrammTyp := dtPie;  //  Pie
end;


{Aktualisieren}
procedure TTKontaktQ.dxBarLargeButAktualisierenClick(Sender: TObject);
begin
  AktualisiereDiagramm;
end;


{Bar}
procedure TTKontaktQ.dxBarLargeButBarClick(Sender: TObject);
begin
  FDiagrammTyp := dtBar;
  dxLayoutGroup3.Caption:='Bar';
  AktualisiereDiagramm;
end;

{Column}
procedure TTKontaktQ.dxBarLargeButColumnClick(Sender: TObject);
begin
  FDiagrammTyp := dtColumn;
  dxLayoutGroup3.Caption:='Column';
  AktualisiereDiagramm;
end;

{Diagramm}
procedure TTKontaktQ.dxBarLargeButDiagrammClick(Sender: TObject);
begin
  FDiagrammTyp := dtPie;
  dxLayoutGroup3.Caption:='Diagramm';
  AktualisiereDiagramm;
end;



procedure TTKontaktQ.dxBarLargeButExportClick(Sender: TObject);
var
  ExportDateiname: string;
  PNG: TPngImage;
begin

  case FDiagrammTyp of
    dtBar: ExportDateiname := 'Diagramm_Bar.png';
    dtColumn: ExportDateiname := 'Diagramm_Column.png';
    dtPie: ExportDateiname := 'Diagramm_Pie.png';
  else
    ExportDateiname := 'Diagramm_Unbekannt.png';
  end;

  SaveDialog1.FileName := ExportDateiname;
  SaveDialog1.Filter := 'PNG-Bild (*.png)|*.png';

  if SaveDialog1.Execute then  begin
    if Assigned(ImageChart.Picture.Graphic) then    begin
      PNG := TPngImage.Create;
      try
        PNG.Assign(ImageChart.Picture.Graphic);
        PNG.SaveToFile(SaveDialog1.FileName);
        ShowMessage('Diagramm wurde exportiert nach: ' + SaveDialog1.FileName);
      finally
        PNG.Free;
      end;
    end
    else
      ShowMessage('Kein Diagramm zum Exportieren vorhanden.');
  end;
end;



{Show Diagramm}
procedure TTKontaktQ.ZeigeDiagramm(DiagrammTyp: TDiagrammTyp);
var
  Quality: TContactQuality;
begin
  Quality := GetQualityCountsFromDB;

  case DiagrammTyp of
    dtPie:
      begin
        DrawPieChart(ImageChart, Quality.Vollstaendig, Quality.Unvollstaendig,ColorBoxVoll.Selected,ColorBoxUnVoll.Selected);
      end;
    dtBar:
      begin
        DrawBarChart(ImageChart, Quality.Vollstaendig, Quality.Unvollstaendig,ColorBoxVoll.Selected,ColorBoxUnVoll.Selected);
      end;
    dtColumn:
      begin
        DrawColumnChart(ImageChart, Quality.Vollstaendig, Quality.Unvollstaendig,ColorBoxVoll.Selected,ColorBoxUnVoll.Selected);
      end;
  end;
end;


{Test DevEx}
procedure TTKontaktQ.dxBarLargeButDevExClick(Sender: TObject);
var
  FormDatenqualitaet: TFormDatenqualitaet;
begin
  FormDatenqualitaet := TFormDatenqualitaet.Create(Self);
  try
    FormDatenqualitaet.ShowModal;
  finally
    FormDatenqualitaet.Free;
  end;
end;

{Anpassen Form}
procedure TTKontaktQ.dxBarLargeButtonAnpassenClick(Sender: TObject);
 var
 KontaktQZustand: TKontatkQZustand;
begin
  KontaktQZustand := TKontatkQZustand.Create(Self);
  KontaktQZustand.Caption:='Kontaktqualität [Anpassen]';
  try
    KontaktQZustand.LoadFeldSettings(KontaktQZustand.cxTextEditZustand.Text);
    KontaktQZustand.ShowModal;
  finally
    KontaktQZustand.Free;
  end;
end;



{Get Quality counts}
function TTKontaktQ.GetQualityCountsFromDB: TContactQuality;
var
  Query: TMSQuery;
  AktiveFelder: TArray<string>;
  FeldName: string;
  IsVollstaendig: Boolean;
begin
  Result.Vollstaendig := 0;
  Result.Unvollstaendig := 0;

  AktiveFelder := GetAktiveFelder('vollständig');

  Query := TMSQuery.Create(nil);
  try
    Query.Connection := MyDataModule.MyConnections;
    Query.SQL.Text := 'SELECT * FROM Kontaktview WHERE IsArchived = 0';
    Query.Open;

    while not Query.Eof do   begin
      IsVollstaendig := True;

      for FeldName in AktiveFelder do begin
        if Query.FindField(FeldName) = nil then
          Continue;
        if Query.FieldByName(FeldName).IsNull or
           (Trim(Query.FieldByName(FeldName).AsString) = '') then  begin
          IsVollstaendig := False;
          Break;
        end;
      end;

      if IsVollstaendig then
        Inc(Result.Vollstaendig)
      else
        Inc(Result.Unvollstaendig);
      Query.Next;
    end;
  finally
    Query.Free;
  end;
end;


{Aktiv}
function IstFeldAktiv(const Feldname: string): Boolean;
var
  Query: TMSQuery;
begin
  Query := TMSQuery.Create(nil);
  try
    Query.Connection := MyDataModule.MyConnections;
    Query.SQL.Text := 'SELECT Aktiv FROM KontaktFeldEinstellungen WHERE Feldname = :Feldname AND Aktiv = 1';
    Query.ParamByName('Feldname').AsString := Feldname;
    Query.Open;
    Result := not Query.IsEmpty;
  finally
    Query.Free;
  end;
end;

{Aktualisieren}
procedure TTKontaktQ.AktualisiereDiagramm;
var
  Voll, Unvoll: Integer;
begin
  CountKontaktQualitaet(Voll, Unvoll);

  case FDiagrammTyp of
    dtPie:    DrawPieChart(ImageChart, Voll, Unvoll,ColorBoxVoll.Selected,ColorBoxUnVoll.Selected);
    dtBar:    DrawBarChart(ImageChart, Voll, Unvoll,ColorBoxVoll.Selected,ColorBoxUnVoll.Selected);
    dtColumn: DrawColumnChart(ImageChart, Voll, Unvoll,ColorBoxVoll.Selected,ColorBoxUnVoll.Selected);
  end;
end;




end.

