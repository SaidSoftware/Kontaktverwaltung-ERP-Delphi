unit MyPapierkorb;

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
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, dxBar, cxClasses, dxPanel,
  System.ImageList, Vcl.ImgList, cxImageList, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, dxLayoutContainer, cxTextEdit, dxLayoutControl,System.UITypes,dxLayoutLookAndFeels,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxGroupBox,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, cxCustomListBox, cxListBox, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, dxColorEdit, cxCheckGroup, cxCheckBox,
  cxBarEditItem, dxRibbon, dxStatusBar, dxRibbonStatusBar, cxMemo,dxSkinscxPCPainter;

type
  TPapierkorb = class(TForm)
    dxPanelMessageDlg: TdxPanel;
    cxButLoeschen: TcxButton;
    cxButArchivieren: TcxButton;
    cxButAbbrechen: TcxButton;
    StandartLook: TdxLayoutLookAndFeelList;
    Standart: TdxLayoutStandardLookAndFeel;
    cxComboBox1: TcxComboBox;
    cxImageMain: TcxImageList;
    cxGroupBox1: TcxGroupBox;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarManager1Bar2: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarGroup1: TdxBarGroup;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarManager1Bar3: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    cxBarEditItem3: TcxBarEditItem;
    dxBarButton6: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxImageListKategorie: TcxImageList;
    SkinLook: TdxLayoutSkinLookAndFeel;
    cxImageListStartlist: TcxImageList;
    cxImageListNotizen: TcxImageList;
    cxImageListAll: TcxImageList;
    cxImageListKategorisieren: TcxImageList;
    dxLayoutCxLookAndFeelMain: TdxLayoutCxLookAndFeel;
    cxImageList32: TcxImageList;
    cxImageListArchivAktiv: TcxImageList;
    cxImageListKalender: TcxImageList;
    cxImageListKontaktKategorie: TcxImageList;
    cxImageListLieferant: TcxImageList;
    procedure dxBarLargeButSchliessenClick(Sender: TObject);
    procedure Schlieen1Click(Sender: TObject);
    procedure Leeren1Click(Sender: TObject);
    procedure Reaktivieren1Click(Sender: TObject);
private
    { Private-Deklarationen }
public
  procedure SetGlobalLayoutSkin(const ASkinName: string);



end;
var
  Papierkorb: TPapierkorb;
  cxImageListKategorie: TImageList;
  StandartLook:TdxLayoutLookAndFeelList;
  SkinLook:TdxLayoutLookAndFeelList;
  dxLayoutLookAndFeelListStandart:TdxLayoutLookAndFeelList;
  dxLayoutLookAndFeelListSkinLook:TdxLayoutLookAndFeelList;
  dxLayoutCxLookAndFeelMain:TdxLayoutCxLookAndFeel;
implementation

{$R *.dfm}

{Close}
procedure TPapierkorb.dxBarLargeButSchliessenClick(Sender: TObject);
begin
 close;
end;

procedure TPapierkorb.Leeren1Click(Sender: TObject);
begin
//dxBarLargeButLeerenClick(Sender);
end;

procedure TPapierkorb.Reaktivieren1Click(Sender: TObject);
begin
//dxBarLargeButReaktivierenClick(Sender);
end;

procedure TPapierkorb.Schlieen1Click(Sender: TObject);
begin
 dxBarLargeButSchliessenClick(Sender);
end;

{Set GlobalLayout Skin}
procedure TPapierkorb.SetGlobalLayoutSkin(const ASkinName: string);
begin
  if Assigned(dxLayoutCxLookAndFeelMain) then begin
    dxLayoutCxLookAndFeelMain.LookAndFeel.Kind := lfFlat;
    dxLayoutCxLookAndFeelMain.LookAndFeel.NativeStyle := False;
    dxLayoutCxLookAndFeelMain.LookAndFeel.SkinName := ASkinName;
  end;
    Application.ProcessMessages;
end;

end.
