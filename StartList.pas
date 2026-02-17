unit StartList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,System.UITypes, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXPanels, Vcl.Grids,
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
  dxSkinXmas2008Blue, dxBar, cxClasses, System.ImageList, Vcl.ImgList,
  cxImageList, cxGraphics,KontaktKlassen,Kontakt, Vcl.Menus, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Buttons, Suchen,Tools, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, cxDateUtils, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel,cxImage, cxGroupBox,Bild,
  cxBarEditItem, cxButtonEdit, dxRibbon, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, DBAccess, MSAccess, MemDS, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl,
  dxLayoutLookAndFeels,MySql,Math,KVDatamodule, System.Generics.Collections, ShellAPI,
  cxHyperLinkEdit,Printers,cxGridExportLink,Clipbrd, cxEditRepositoryItems,
  cxGeometry, dxFramedControl, dxPanel,MyGlobalDaten, MyPapierkorb,
  System.Actions, Vcl.ActnList, cxGridBandedTableView, cxGridDBBandedTableView,
  System.RegularExpressions, cxCustomListBox, cxListBox, dxStatusBar, cxMemo,
  dxBarExtItems,MessageBoxHelfer,MyMessageBox, dxColorEdit, cxCheckGroup,
  cxCheckBox, cxImageComboBox, dxLayoutControlAdapters, cxRadioGroup,
  dxToggleSwitch, Vcl.WinXCtrls, cxCheckComboBox, dxRibbonGallery,IniFiles,DateUtils,ComObj,
  dxRibbonSkins, dxRibbonCustomizationForm,SkinDemoUtils, dxSkinsForm,MyAnhangForm,
  dxPrnDev, dxPrnDlg, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxCommon,MyChoiseForm,UnachrichtSender,MyFReport,dxPSdxChartControlLnk,
  cxExport, dxBarBuiltInMenu, cxPC, Vcl.ToolWin, cxButtons,FKunde,FVIPPrioritaet,
  cxGridCustomPopupMenu, cxGridPopupMenu,MyKKategorieshow,MyFRechnung;

type
  TContactQuality = record
    Vollstaendig: Integer;
    Unvollstaendig: Integer;
  end;

type
 TTSearchType  = (TtGlobal,TtLokal);
type
  TTabMode =(TtAktiv,TtDeaktiv);
type
  TTableType = (ttAnrede, ttTitel, ttTelefontypen, ttEmailtypen);
const
  TableNames: array[TTableType] of string = ('Anrede', 'Titel', 'Telefontypen', 'Emailtypen');
type
  TStartListe = class(TForm)
    dxBarManagerStartliste: TdxBarManager;
    dxBarManagerStartlisteBarMenu: TdxBar;
    dxBarLargeButSuchen: TdxBarLargeButton;
    dxBarLargeButNeu: TdxBarLargeButton;
    dxBarLargeButBearbeiten : TdxBarLargeButton;
    dxBarLargeButSchliessen: TdxBarLargeButton;
    dxBarLargeButLoeschen: TdxBarLargeButton;
    PopupMenuStartliste: TPopupMenu;
    NeueKontakt1: TMenuItem;
    Suchen1: TMenuItem;
    Bearbeiten1: TMenuItem;
    Lschen1: TMenuItem;
    dxBarLargeButZuruck: TdxBarLargeButton;
    dxBarLargeButSave: TdxBarLargeButton;
    MyConnection: TMSConnection;
    MyQueryKontakt: TMSQuery;
    MyDataSourceKontakt: TMSDataSource;
    cxStyleRepositoryMenu: TcxStyleRepository;
    cxStyleTabelle: TcxStyle;
    cxStyleRow: TcxStyle;
    dxBarLargeButArchivieren: TdxBarLargeButton;
    cxStyle1: TcxStyle;
    Archivieren: TMenuItem;
    dxBarLargeButDrucken: TdxBarLargeButton;
    Listendruck1: TMenuItem;
    dxBarLargeButExportieren: TdxBarLargeButton;
    ExportierenExcel: TMenuItem;
    Kopieren: TMenuItem;
    dxPanelStartlist: TdxPanel;
    StringGrid1: TcxGrid;
    StringGrid1Level1: TcxGridLevel;
    DateGeburtsdatum: TcxDateEdit;
    ActionListStartliste: TActionList;
    AcBearbeiten: TAction;
    AcNeu: TAction;
    AcSuchen: TAction;
    AcZurueck: TAction;
    AcArchivieren: TAction;
    AcLoeschen: TAction;
    AcDrucken: TAction;
    AcExportieren: TAction;
    Schliessen: TAction;
    AcKopieren: TAction;
    Schliessens: TMenuItem;
    StringGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    StringGrid1DBBandedTableView1Vorname: TcxGridDBBandedColumn;
    dxBarManagerStartlisteBar1: TdxBar;
    cxBarEditItemGefunden: TcxBarEditItem;
    cxBarEditItemStatus: TcxBarEditItem;
    cxBarEditItemInfo: TcxBarEditItem;
    StringGrid1DBBandedTableView1Name: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Telefon1: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Telefontyp1: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Geburtsdatum: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Anrede: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Titel: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Hausnummer: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Strasse: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Notizen: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1IsArchived: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Ort: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1PLZ: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Telefon2: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Telefontyp2: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Telefon3: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Telefontyp3: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Email1: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Emailtyp1: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Emailtyp2: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Email2: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Email3: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Emailtyp3: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1ID: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Bild: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1AnredeIcon: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1TitelIcon: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1TelefonIcon: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Telefon2Icon: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Telefon3Icon: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1EmaiLIcon: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Email2Icon: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1Email3Icon: TcxGridDBBandedColumn;
    cxLookAndFeelController1: TcxLookAndFeelController;
    StartListeTimer: TTimer;
    cxBarEditItemwahlen: TcxBarEditItem;
    dxBarLargeButAnsichts: TdxBarLargeButton;
    dxRibbonDropDownGallery1: TdxRibbonDropDownGallery;
    dxBarButtonAlle: TdxBarButton;
    dxBarButtonNurTabelle: TdxBarButton;
    dxRibbonDropDownGallery2: TdxRibbonDropDownGallery;
    dxBarLargeButGrafik: TdxBarLargeButton;
    AcKalender: TAction;
    N1: TMenuItem;
    N3: TMenuItem;
    dxBarLargeButQualitydatens: TdxBarLargeButton;
    dxRibbonStartlisteTab1: TdxRibbonTab;
    dxRibbonStartliste: TdxRibbon;
    dxBarManagerStartlisteBar2: TdxBar;
    dxBarLargeButtonSuchen: TdxBarLargeButton;
    dxBarManagerStartlisteBar3: TdxBar;
    dxBarLargeButtonZurueck: TdxBarLargeButton;
    dxBarLargeButtonBearbeiten: TdxBarLargeButton;
    dxBarLargeButtonNeu: TdxBarLargeButton;
    dxBarLargeButtonArchivieren: TdxBarLargeButton;
    dxBarLargeButtonLoeschen: TdxBarLargeButton;
    dxBarManagerStartlisteBar4: TdxBar;
    dxBarLargeButtonAnsicht: TdxBarLargeButton;
    dxBarManagerStartlisteBar5: TdxBar;
    dxBarLargeButtonKalender: TdxBarLargeButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle2: TcxStyle;
    dxBarLargeButAnsicht: TdxBarSubItem;
    dxBarLargeButtonAlleKomponenten: TdxBarLargeButton;
    dxBarLargeButtonNurTabelle: TdxBarLargeButton;
    dxBarLargeButtonStyle: TdxBarLargeButton;
    dxBarSubItemModus: TdxBarSubItem;
    dxBarLargeButtonStandartmodus: TdxBarLargeButton;
    cxBarEditItemStandardmodus: TcxBarEditItem;
    cxBarEditItemDunkelmodus: TcxBarEditItem;
    dxBarSubItem3: TdxBarSubItem;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItemStandartdmodus: TcxBarEditItem;
    cxBarEditItemDunkelmoduss: TcxBarEditItem;
    cxBarEditItemModus: TcxBarEditItem;
    AcDatenqualitaet: TAction;
    cxBarEditItemModu: TcxBarEditItem;
    dxBarLargeButtonSkins: TdxBarLargeButton;
    dxBarSubItem2: TdxBarSubItem;
    dxSkinController1: TdxSkinController;
    dxBarSubItemSkinsS: TdxBarSubItem;
    dxBarManagerStartlisteBarOption: TdxBar;
    dxBarSubItemOption: TdxBarSubItem;
    dxBarLargeButtonAnrede: TdxBarLargeButton;
    dxBarLargeButtonTitel: TdxBarLargeButton;
    dxBarLargeButtonTelefontypen: TdxBarLargeButton;
    dxBarLargeButtonEmailtypen: TdxBarLargeButton;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeelStartliste: TdxLayoutCxLookAndFeel;
    dxBarLargeButQualitydaten: TdxBarLargeButton;
    dxBarManagerStartlisteBar7: TdxBar;
    dxBarLargeButDruckens: TdxBarLargeButton;
    dxBarLargeButExports: TdxBarLargeButton;
    dxBarLargeButAusblenden: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    StringGrid1DBBandedTableView1Dateien: TcxGridDBBandedColumn;
    dxBarLargeButListendruck: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    StringGrid1DBBandedTableView1Kategorie: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1AutoArchiv: TcxGridDBBandedColumn;
    dxRibbonDropDownGalleryExport: TdxRibbonDropDownGallery;
    dxBarLargeButExportDocs: TdxBarLargeButton;
    dxBarLargeButExcel: TdxBarLargeButton;
    dxBarLargeButSVG: TdxBarLargeButton;
    dxBarLargeButRasterImage: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxComponentPrinter1: TdxComponentPrinter;
    ExportzuExcel: TMenuItem;
    ExportzuDocx: TMenuItem;
    ExportzuRasterImage: TMenuItem;
    cxPageControlSuchParameter: TcxPageControl;
    cxTabSheetSuchGlobal: TcxTabSheet;
    cxTabSheetSuchennachNotizen: TcxTabSheet;
    dxLayoutControlSuchParameterGroup_Root: TdxLayoutGroup;
    dxLayoutControlSuchParameter: TdxLayoutControl;
    dxLayoutItem3: TdxLayoutItem;
    EditID: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    EditName: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxComboBoxArchiv: TcxComboBox;
    dxLayoutItem6: TdxLayoutItem;
    EditVorname: TcxTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    EditStrasse: TcxTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroupSuchenGlobal: TdxLayoutGroup;
    EditPLZ: TcxTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    EditOrt: TcxTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutControlNotizenGroup_Root: TdxLayoutGroup;
    dxLayoutControlNotizen: TdxLayoutControl;
    cxImageComboBoxKategorie: TcxImageComboBox;
    dxLayoutItem12: TdxLayoutItem;
    cxMemoNotizen: TcxMemo;
    dxLayoutItem11: TdxLayoutItem;
    cxTextEditNotizenAutor: TcxTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDateEditNotizErstellungsdatum: TcxDateEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxDateEditNotizLetzteAenderung: TcxDateEdit;
    dxLayoutItem15: TdxLayoutItem;
    Autoarchiv: TMenuItem;
    AcAutoarchiv: TAction;
    dxLayoutControlKategorieGroup_Root: TdxLayoutGroup;
    dxLayoutControlKategorie: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxRibbonStartlisteTabKategorie: TdxRibbonTab;
    dxBarManagerStartlisteBar6: TdxBar;
    dxBarLargeButtonLieferant: TdxBarLargeButton;
    dxBarLargeButtonPartner: TdxBarLargeButton;
    dxBarLargeButtonInteressent: TdxBarLargeButton;
    dxBarLargeButtonSontiges: TdxBarLargeButton;
    dxBarLargeButtonInterne: TdxBarLargeButton;
    dxBarLargeButtonExtern: TdxBarLargeButton;
    dxBarLargeButtonKunde: TdxBarLargeButton;
    dxBarLargeButtonVip: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarManagerStartlisteBar8: TdxBar;
    dxBarManagerStartlisteBar9: TdxBar;
    dxBarManagerStartlisteBar10: TdxBar;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxBarLargeButtonAlleClick: TdxBarLargeButton;
    dxBarSubItemMitarbeiter: TdxBarSubItem;
    dxBarLargeButtonIntern: TdxBarLargeButton;
    dxBarLargeButtonExterne: TdxBarLargeButton;
    dxBarSubItemKunde: TdxBarSubItem;
    dxBarLargeButtonStandardKunden: TdxBarLargeButton;
    dxBarLargeButtonInteressente: TdxBarLargeButton;
    dxBarLargeButtonVIPs: TdxBarLargeButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarSubItemSkins: TdxBarSubItem;
    cxFTabControl: TcxPageControl;
    dxLayoutItem2: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControlKategorienGroup_Root: TdxLayoutGroup;
    dxLayoutControlKategorien: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    cxBarEditItem2: TcxBarEditItem;
    cxLabelFarbe: TcxLabel;
    dxBarButton2: TdxBarButton;
    dxBarLargeButton12: TdxBarLargeButton;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    Tabelleansicht1: TMenuItem;
    AlleFelderanzeigen1: TMenuItem;
    FeldermitIconsanzeigen1: TMenuItem;
    AlleFelderohneIconsanzeigen1: TMenuItem;
    Kategorie1: TMenuItem;
    ExterneMitarbeiter1: TMenuItem;
    InterneMitarbeiter1: TMenuItem;
    Interessenten1: TMenuItem;
    Partner1: TMenuItem;
    Sontiges1: TMenuItem;
    StandartKunden1: TMenuItem;
    VIPKunden1: TMenuItem;
    N2: TMenuItem;
    Lieferant1: TMenuItem;
    Ohne1: TMenuItem;
    N4: TMenuItem;
    AcKategorie: TAction;
    AcExtern: TAction;
    AcIntern: TAction;
    AcLieferant: TAction;
    AcOhne: TAction;
    AcPartner: TAction;
    AcSontiges: TAction;
    Acinteressent: TAction;
    AcStandard: TAction;
    AcVIP: TAction;
    Ausblenden1: TMenuItem;
    AcAusblenden: TAction;
    StringGrid1DBBandedTableView1KategorieName: TcxGridDBBandedColumn;
    StringGrid1DBBandedTableView1KategorieID: TcxGridDBBandedColumn;
    cxImageListStartlistKategorie: TcxImageList;
    dxBarLargeButtonKategorieanzeigen: TdxBarLargeButton;
    dxBarLargeButVIPStatus: TdxBarLargeButton;
    dxBarLargeButVIPPrivilegien: TdxBarLargeButton;
    dxBarLargeButVIPTransaktionen: TdxBarLargeButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarSeparator2: TdxBarSeparator;
    dxBarLargeButProdukteDienstleistungen: TdxBarLargeButton;
    dxBarLargeBuZahlungsbedingungen: TdxBarLargeButton;
    dxBarLargeButBewertungssystem: TdxBarLargeButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarLargeButLieferbedingungen: TdxBarLargeButton;
    dxBarLargeButBestellungshistorie: TdxBarLargeButton;
    dxBarLargeButtonVIPStatus: TdxBarLargeButton;
    dxBarLargeButtonTableTest: TdxBarLargeButton;
    dxBarLargeButRechnungen: TdxBarLargeButton;
    Rechnung1: TMenuItem;
    dxBarLargeButUebernehmen: TdxBarLargeButton;
    dxBarLargeButListendrucken: TdxBarLargeButton;
    N5: TMenuItem;
    dxBarManagerStartlisteBar11: TdxBar;
    dxBarLargeButInfo: TdxBarLargeButton;
    dxBarLargeButtonDemo: TdxBarLargeButton;

    procedure dxBarLargeButSuchenClick(Sender: TObject);
    procedure dxBarLargeButNeuClick(Sender: TObject);
    procedure dxBarLargeButBearbeitenClick(Sender: TObject);
    procedure dxBarLargeButSchliessenClick(Sender: TObject);
    procedure dxBarLargeButLoeschenClick(Sender: TObject);
    procedure NeueKontakt1Click(Sender: TObject);
    procedure Suchen1Click(Sender: TObject);
    procedure Bearbeiten1Click(Sender: TObject);
    procedure SchliessenClick(Sender: TObject);
    procedure Lschen1Click(Sender: TObject);
    procedure dxBarLargeButZuruckClick(Sender: TObject);
    procedure SpeedButSuchParameterClick(Sender: TObject);



    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DBBandedTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dxBarLargeButArchivierenClick(Sender: TObject);
    procedure StringGrid1DBBandedTableView1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ArchivierenClick(Sender: TObject);
    procedure dxBarLargeButDruckenClick(Sender: TObject);
    procedure Listendruck1Click(Sender: TObject);
    procedure KopierenClick(Sender: TObject);


    procedure StringGrid1DBBandedTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarLargeButtonSchliessentestClick(Sender: TObject);
    procedure dxBarLargeButtonDruckentestClick(Sender: TObject);
    procedure dxBarLargeButtonZuruecksetzentestClick(Sender: TObject);
    procedure dxBarLargeButtonSuchentestClick(Sender: TObject);
    procedure AcBearbeitenExecute(Sender: TObject);
    procedure AcNeuExecute(Sender: TObject);
    procedure AcSuchenExecute(Sender: TObject);
    procedure AcArchivierenExecute(Sender: TObject);
    procedure AcZurueckExecute(Sender: TObject);
    procedure AcLoeschenExecute(Sender: TObject);
    procedure AcDruckenExecute(Sender: TObject);
    procedure AcKopierenExecute(Sender: TObject);
    procedure SchliessenExecute(Sender: TObject);
    procedure StartListeTimerTimer(Sender: TObject);
    procedure EditNamePropertiesEditValueChanged(Sender: TObject);
    procedure EditVornamePropertiesEditValueChanged(Sender: TObject);
    procedure EditOrtPropertiesEditValueChanged(Sender: TObject);
    procedure EditStrassePropertiesEditValueChanged(Sender: TObject);
    procedure StringGrid1DBBandedTableView1SelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure StringGrid1Exit(Sender: TObject);
    procedure StringGrid1DBBandedTableView1TelefonIconGetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure StringGrid1DBBandedTableView1EmaiLIconGetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure StringGrid1DBBandedTableView1AnredeIconGetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure StringGrid1DBBandedTableView1TitelIconGetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure dxBarButtonNurTabelleClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure EditPLZExit(Sender: TObject);
    procedure StringGrid1DBBandedTableView1NotizenGetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure StringGrid1DBBandedTableView1DokuGetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure dxBarLargeButtonKkalenderClick(Sender: TObject);
    procedure dxBarLargeButQualitydatensClick(Sender: TObject);
    procedure AcKalenderExecute(Sender: TObject);
    procedure AcDatenqualitaetExecute(Sender: TObject);
    procedure dxBarSubItemSkinsSClick(Sender: TObject);
    procedure dxBarLargeButtonAnredeClick(Sender: TObject);
    procedure dxBarLargeButtonTitelClick(Sender: TObject);
    procedure dxBarLargeButtonTelefontypenClick(Sender: TObject);
    procedure dxBarLargeButtonEmailtypenClick(Sender: TObject);
    procedure StringGrid1DBBandedTableView1DateienGetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure dxBarLargeButListendruckClick(Sender: TObject);
    procedure StringGrid1DBBandedTableView1KategorieGetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure StringGrid1DBBandedTableView1AutoArchivGetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure dxBarLargeButExportDocsClick(Sender: TObject);
    procedure dxBarLargeButExcelClick(Sender: TObject);
    procedure dxBarLargeButRasterImageClick(Sender: TObject);
    procedure ExportzuExcelClick(Sender: TObject);
    procedure ExportzuDocxClick(Sender: TObject);
    procedure ExportzuRasterImageClick(Sender: TObject);
    procedure AcAutoarchivExecute(Sender: TObject);
    procedure ToolButBearbeitenClick(Sender: TObject);
    procedure ToolButNeuClick(Sender: TObject);
    procedure ToolButLoeschenClick(Sender: TObject);
    procedure ToolButBearbeitenallClick(Sender: TObject);
    procedure ToolButNeuAllClick(Sender: TObject);
    procedure ToolButLoeschenallClick(Sender: TObject);
    procedure ToolButArchivierenClick(Sender: TObject);
    procedure dxBarLargeButtonKundeClick(Sender: TObject);
    procedure dxBarLargeButtonLieferantClick(Sender: TObject);
    procedure dxBarLargeButtonPartnerClick(Sender: TObject);
    procedure dxBarLargeButtonSontigesClick(Sender: TObject);
    procedure dxBarLargeButtonAlleClickClick(Sender: TObject);
    procedure dxBarLargeButtonInternClick(Sender: TObject);
    procedure dxBarLargeButtonExterneClick(Sender: TObject);
    procedure dxBarLargeButtonStandardKundenClick(Sender: TObject);
    procedure dxBarLargeButtonInteressenteClick(Sender: TObject);
    procedure dxBarLargeButtonVIPsClick(Sender: TObject);
    procedure dxBarSubItemSkinsClick(Sender: TObject);
    procedure AlleFelderanzeigen1Click(Sender: TObject);
    procedure FeldermitIconsanzeigen1Click(Sender: TObject);
    procedure AlleFelderohneIconsanzeigen1Click(Sender: TObject);
    procedure AcAusblendenExecute(Sender: TObject);
    procedure DrawKategorienCell(  ACanvas: TcxCanvas;  AViewInfo: TcxGridTableDataCellViewInfo;  const AKategorienText: string;  const AKategorieIDs: string;  AImageList: TCustomImageList);
    procedure StringGrid1DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarLargeButtonKategorieanzeigenClick(Sender: TObject);
    procedure dxBarLargeButVIPStatusClick(Sender: TObject);
    procedure dxBarLargeButVIPPrivilegienClick(Sender: TObject);
    procedure dxBarLargeButVIPTransaktionenClick(Sender: TObject);
    procedure dxBarLargeButtonVIPStatusClick(Sender: TObject);
    procedure dxBarLargeButRechnungenClick(Sender: TObject);
    procedure Rechnung1Click(Sender: TObject);
    procedure dxBarLargeButUebernehmenClick(Sender: TObject);
    procedure Kategorie1Click(Sender: TObject);
    procedure PopupMenuStartlistePopup(Sender: TObject);
    procedure dxBarLargeButInfoClick(Sender: TObject);
    procedure dxBarLargeButtonDemoClick(Sender: TObject);



private
    FUseCategoryGrouping: Boolean;
    FIsReaktivierenMode: Boolean; // True = Reaktivieren, False = Archivieren
    FViewMode: string;
    FFullnessFilterStatus: string;
    FSelectedKategorieID: Integer; // 0 = keine Kategorie
    FCurrentTabWithGrid: TcxTabSheet;
    FCategoryTabs: array[0..9] of record
    CategoryID: Integer;
    TabName: string;
    Filter: string;

end;
    FCurrentCategoryID: Integer;
    FCatDescriptions: TDictionary<Integer, string>;
    FTabsCache: TDictionary<Integer, TcxTabSheet>;
    FTabsVisible: TDictionary<Integer, Boolean>;
    procedure LoadCategoryDescriptions;

public
    SelectedPersonID: Integer;
    SelectedVorname: string;
    SelectedName: string;
    FUsedContactsMode: Boolean;
    FUsedContactsBezeichnungen: TArray<String>;
    FUsedContactsTableName: String;
    EnableDblClick: Boolean;
    FCurrentFrame: TFrameKundeVIP;


    procedure AddKontaKtToGrid(  const Anrede, Titel, Name, Vorname, Geburtsdatum, ComboboxT1, Telefons,ComboboxT2, Telefonzwei,ComboboxT3, Telefondrei,ComboboxE1,Email,ComboboxE2,Emailzwei,ComboboxE3,Emaildrei, PLZ, Ort, Strasse, Hausnummer,  BildBase64: string);
    procedure SetEditMode(Value: Boolean);
    function UpdateColumnCaptions(FilterCondition: string): Integer;
    constructor Create(AOwner: TComponent); override;
    procedure UpdateStatus(StatusText: string);

    procedure AdresseSearch;
    procedure OpenEmail(const Email, Anrede, Titel, Name: string);
    procedure Zustand;
    procedure ShowContacts(Status: string);
    procedure BearbeiteKontakt;
    procedure ShowOptionForm(TableType: TTableType);
    procedure Deaktivieren;
    procedure SuchenGlobal;
    function  GetNotizenFilter(Params: TParams): string;
    procedure ResetGlobal;
    procedure ResetLokal;

    procedure UpdateLayoutControls(const ASkinName: string);
    procedure AutoArchiveInactiveContacts(Connection: TMSConnection);
    procedure UpdateLastActiveDate(Connection: TMSConnection; PersonID: Integer);
    procedure ExportToExcel(const FileName: string);
    procedure InitializeCategoryTabs;
    function  GetCategoryFilter: string;
    procedure UpdateGroupCaption;
    procedure SwitchToCategory(CategoryID: Integer);
    procedure TabControlChange(Sender: TObject);
    procedure cxFTabControlChange(Sender: TObject);
    procedure CreateCategoryTabs;
    procedure MoveGridToTab(TargetTab: TcxTabSheet; CategoryID: Integer);
    function  FindTabByCategory(CategoryID: Integer): TcxTabSheet;
    procedure FramCreateKunden;
    procedure ApplyUsedContactsFilter;
    procedure TabsDeaktiv;
    procedure UpdateTabColor;
    procedure SetTabMode(Mode: TTabMode);
    procedure HideAllCategoryTabs;
    procedure ShowCategoryTab(CategoryID: Integer);
    procedure HideCategoryTab(CategoryID: Integer);
    procedure TabControlCanCloseEx(Sender: TObject; ATabIndex: Integer; var ACanClose: Boolean);

    function  GetTabCaptionWithCount(const BaseName: string; CategoryID: Integer): string;
    procedure UpdateTabCaptions;
    procedure UpdateCaptionsLokal;
    procedure ShowMessageAutoArchiv;
    procedure UpdateLabelColor(AGroup: TcxGridGroupRow);
    procedure UpdateKategorie(KategorieID: Integer; IsChecked: Boolean);
    procedure KategorieMenuItemClick(Sender: TObject);
    procedure LoadKategorienForCurrentContact;



type
  TcxCustomGridTableViewAccess = class(TcxCustomGridTableView);
var
     RechnungFenster: TRechnungform;
     TTSuchen: TTSearchType;
     TTStartListe: TTabMode;
     function GetContactQualityCount: TContactQuality;
end;

var
   OhneTab,VipTab, MitarbeiterTab, KundenTab, LieferantTab, PartnerTab, InteressentTab, SonstigesTab, InterneTab: TcxTabSheet;

var
  StartListe: TStartListe;
implementation

{$R *.dfm}
uses constant,ZustandSave,System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent, System.NetEncoding, UKontaktValidator,KontaktQuality,MyKalender,Optionenmenu,MyFHistoryStatus,MyVIPinfo,MyKontaktVIPStatus,About,
  HamburgerMenuDemoMain;

{Create}
constructor TStartListe.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;


{Archivieren}
procedure GetSelectedData(Grid: TcxGridDBTableView; var SelectedIDs: TList<Integer>);
var
  I: Integer;
  RecordIndex: Integer;
  PersonID: Integer;
begin
  const GridColumnIndexPersonID = 0;
  SelectedIDs.Clear;

  with Grid.DataController do begin
    for I := 0 to GetSelectedCount - 1 do begin
      RecordIndex := GetSelectedRowIndex(I);
      PersonID := Values[RecordIndex, GridColumnIndexPersonID];
      SelectedIDs.Add(PersonID);
    end;
  end;
end;

{Nur Tabelle}
procedure TStartListe.dxBarButtonNurTabelleClick(Sender: TObject);
begin
  if dxBarLargeButAusblenden.Caption = 'Ausblenden' then  begin
    dxLayoutGroup1.Visible := True;
    dxLayoutGroup2.Visible := False;
    cxPageControlSuchParameter.Visible:=False;
    dxLayoutGroup1.AlignVert:=avClient;
    dxLayoutGroup1.AlignHorz:=ahClient;
    dxLayoutControlKategorieGroup_Root.AlignVert := avClient;
    dxLayoutControlKategorieGroup_Root.AlignHorz := ahClient;
    dxLayoutControlKategorieGroup_Root.UpdateAction(Action);
    FViewMode := 'Nur Tabelle';
    dxBarLargeButAusblenden.Caption :='Einblenden';
    AcAusblenden.Caption:='Einblenden'
  end  else  begin
    dxLayoutGroup1.Visible := True;
    dxLayoutGroup2.Visible := True;
    cxPageControlSuchParameter.Visible:=True;
    dxLayoutControlKategorieGroup_Root.AlignVert := avClient;
    dxLayoutControlKategorieGroup_Root.AlignHorz := ahClient;
    dxLayoutControlKategorieGroup_Root.UpdateAction(Action);
    FViewMode := 'Alle';
    dxBarLargeButAusblenden.Caption := 'Ausblenden';
    AcAusblenden.Caption:='Ausblenden'
  end;
end;


{Archivieren}
procedure TStartListe.dxBarLargeButArchivierenClick(Sender: TObject);
var
  SelectedIDs: TList<Integer>;
  SelectedNames: TList<string>;
  Query: TMSQuery;
  I, UserChoice, FoundCount, RowIndex: Integer;
  Action, ActionCapitalized, IDListStr, MsgText: string;
  ColPersonID, ColName: Integer;
  MyMesBox: TMyMesBox;
begin
  SelectedIDs := TList<Integer>.Create;
  SelectedNames := TList<string>.Create;

  ColPersonID := StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('PersonID').Index;
  ColName := StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('Name').Index;

  try
    for I := 0 to StringGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      RowIndex := StringGrid1DBBandedTableView1.Controller.SelectedRecords[I].RecordIndex;
      SelectedIDs.Add(StringGrid1DBBandedTableView1.DataController.Values[RowIndex, ColPersonID]);
      SelectedNames.Add(StringGrid1DBBandedTableView1.DataController.Values[RowIndex, ColName]);
    end;

      if SelectedIDs.Count = 0 then begin
        MyMesBox := TMyMesBox.Create(nil);
        try
//          MyMesBox.Caption := 'Fehler';
//          MyMesBox.ShowMessage(_KeineDatensaetzevorhanden, mtError, [mbOK]);
        finally
          MyMesBox.Free;
        end;
        cxBarEditItemInfo.EditValue := _KeineDatensaetzevorhanden;
        StartListeTimer.Enabled := true;
        Exit;
      end;

    IDListStr := FormatIDList(SelectedIDs, SelectedNames);

    if FIsReaktivierenMode then
      Action := 'reaktivieren'
    else
      Action := 'archivieren';

    ActionCapitalized := AnsiUpperCase(Copy(Action, 1, 1)) + Copy(Action, 2, Length(Action) - 1);

    if SelectedIDs.Count = 1 then
      MsgText := Format('Wollen Sie den ausgewählten Datensatz mit der folgenden "ID" %s' +
                        'wirklich %s?' + SLineBreak + '[%s]',
                        [SLineBreak, Action, IDListStr])
    else
      MsgText := Format('Wollen Sie die ausgewählten Datensätze mit den folgenden "IDs" %s' +
                        'wirklich %s?' + SLineBreak + '[%s]',
                        [SLineBreak, Action, IDListStr]);


    //TMyMesBox
    MyMesBox := TMyMesBox.Create(nil);
    try
      if FIsReaktivierenMode then
        MyMesBox.Caption := 'Reaktivieren'
      else
        MyMesBox.Caption := 'Archivieren';

      UserChoice := MyMesBox.ShowMessage(MsgText, mtConfirmation, [mbYes, mbNo]);
    finally
      MyMesBox.Free;
    end;

    if UserChoice <> mrYes then begin
      cxBarEditItemInfo.EditValue := 'Archivieren wurde abgebrochen...';
      StartlisteTimer.Enabled := True;
      Exit;
    end;

    Query := TMSQuery.Create(nil);
    try
      Query.Connection := MyConnection;

      for I := 0 to SelectedIDs.Count - 1 do begin
        if FIsReaktivierenMode then begin
          Query.SQL.Text := 'UPDATE Kontakt SET IsArchived = 0 WHERE PersonID = :ID';
          cxBarEditItemInfo.EditValue := 'Die Kontakte wurden erfolgreich reaktiviert...';
        end else begin
          Query.SQL.Text := 'UPDATE Kontakt SET IsArchived = 1 WHERE PersonID = :ID';
          cxBarEditItemInfo.EditValue := 'Die Kontakte wurden erfolgreich archiviert...';
        end;
        Query.ParamByName('ID').AsInteger := SelectedIDs[I];
        Query.ExecSQL;
      end;

      StartlisteTimer.Enabled := True;
      StringGrid1DBBandedTableView1.DataController.DataSet.Close;
      StringGrid1DBBandedTableView1.DataController.DataSet.Open;
      StringGrid1DBBandedTableView1.DataController.Refresh;

      FoundCount := UpdateColumnCaptions('1=1');
      cxBarEditItemGefunden.EditValue := 'Gefundene Kontaktdaten: ' + IntToStr(FoundCount);
    finally
      Query.Free;
    end;
  finally
    SelectedIDs.Free;
    SelectedNames.Free;
  end;
  UpdateTabCaptions;
end;


{Wenn gefunden }
procedure TStartListe.StringGrid1DBBandedTableView1AnredeIconGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin

  if ACellViewInfo.Value = 0 then begin
      AHintText := 'Man';
  end;
    if ACellViewInfo.Value = 1 then begin
      AHintText := 'Frau';
  end;
  if ACellViewInfo.Value = 2 then begin
      AHintText := 'Divers';
  end;
    if ACellViewInfo.Value = 3 then begin
      AHintText := 'Andere';
  end
end;

{Cell Hint AutoArchiv}
procedure TStartListe.StringGrid1DBBandedTableView1AutoArchivGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
  if ACellViewInfo.Value = True then begin
     AHintText := 'Autoarchiv ist Aktiv';
  end;
  if ACellViewInfo.Value = False then begin
     AHintText := 'Autoarchivierung ist deaktiviert';
  end;
end;

{Kategorie CellHint}
procedure TStartListe.StringGrid1DBBandedTableView1KategorieGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
var
  KategorieID: Integer;
  KategorienText: string;
begin
  if VarIsNumeric(ACellViewInfo.Value) then
    KategorieID := ACellViewInfo.Value
  else
    KategorieID := 0;

  if (KategorieID > 0) and FCatDescriptions.ContainsKey(KategorieID) then
    AHintText := FCatDescriptions[KategorieID]
  else
    AHintText := '';

  AIsHintMultiLine := True;


  KategorienText := VarToStrDef(
    ARecord.Values[StringGrid1DBBandedTableView1Kategoriename.Index], '');

  if KategorienText <> '' then begin
    AHintText := StringReplace(KategorienText, '; ', sLineBreak, [rfReplaceAll]);
    AIsHintMultiLine := True;
  end;
end;



{Bearbeiten}
procedure TStartListe.StringGrid1DBBandedTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  BearbeiteKontakt;
end;


{Bearbeiten}
procedure TStartListe.BearbeiteKontakt;
var
  ColPersonID, ColIsArchived: Integer;
  PersonID: Integer;
  IsArchived: Boolean;
  KontaktForm: TKontaktMenu;
  Rec:TcxCustomGridRecord;
begin

  Rec := StringGrid1DBBandedTableView1.Controller.FocusedRecord;
  if (Rec = nil) or Rec.IsData = False then Exit;

  ColPersonID := StringGrid1DBBandedTableView1.GetColumnByFieldName('PersonID').Index;
  ColIsArchived := StringGrid1DBBandedTableView1.GetColumnByFieldName('IsArchived').Index;

  PersonID := Rec.Values[ColPersonID];
  IsArchived := Rec.Values[ColIsArchived] = '1';
  KontaktForm := TKontaktMenu.Create(nil);
  try
    KontaktForm.LoadKontakt(PersonID);
    KontaktForm.LadeAutoArchivDaten(PersonID);
    KontaktForm.LoadKategorienWithSelection(PersonID);
    KontaktForm.SetWindowIcon(1);
    if IsArchived then  begin
      KontaktForm.SetReadOnlyMode(True);
    end else begin
      KontaktForm.Caption := 'Bearbeiten [Kontakt]';
      UpdateLastActiveDate(MyDataModule.MyConnections, PersonID);
    end;

//    UpdateStatus('Status: Bearbeiten');
    KontaktForm.ShowModal;
    MyQueryKontakt.Refresh;
  finally
    KontaktForm.Free;
  end;
end;


procedure TStartListe.StringGrid1DBBandedTableView1DateienGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
  if ACellViewInfo.Value = 0 then begin
      AHintText:= 'nicht Vorhanden';
  end;
  if ACellViewInfo.Value = 1 then begin
      AHintText:= 'Vorhanden';
  end;
end;

procedure TStartListe.StringGrid1DBBandedTableView1DokuGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
  if ACellViewInfo.Value = 0 then begin
      AHintText:= 'nicht Vorhanden';
  end;
  if ACellViewInfo.Value = 1 then begin
      AHintText:= 'Vorhanden';
  end;
end;

{CellHint}
procedure TStartListe.StringGrid1DBBandedTableView1EmaiLIconGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
   if ACellViewInfo.Value = 13 then begin
      AHintText:= 'Geschäftlich';
  end;
  if ACellViewInfo.Value = 12 then begin
      AHintText:= 'Privat';
  end;
  if ACellViewInfo.Value = 14 then begin
      AHintText:= 'Andere';
  end;

end;

{Focus Record Changed}
procedure TStartListe.StringGrid1DBBandedTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  IsArchived: Boolean;
  CategoryID: Integer;
  DataRow: TcxGridDataRow;
  Column: TcxGridDBBandedColumn;
begin
  if not EnableDblClick then
    Exit;
  // nil
  if AFocusedRecord = nil then
    Exit;

  //DataController
  if not Assigned(StringGrid1DBBandedTableView1.DataController) then
    Exit;

  if StringGrid1DBBandedTableView1.DataController.RecordCount = 0 then
    Exit;

  try
    if AFocusedRecord is TcxGridGroupRow then begin
      UpdateLabelColor(AFocusedRecord as TcxGridGroupRow);
    end else if AFocusedRecord is TcxGridDataRow then  begin
      DataRow := TcxGridDataRow(AFocusedRecord);

      // RecordIndex
      if (DataRow.RecordIndex < 0) or
         (DataRow.RecordIndex >= StringGrid1DBBandedTableView1.DataController.RecordCount) then
        Exit;

      //  CategoryID
      if StringGrid1DBBandedTableView1Kategorie.Index >= 0 then  begin
        try
          CategoryID := VarAsType(DataRow.Values[StringGrid1DBBandedTableView1Kategoriename.Index], varInteger);
        except
          CategoryID := 0; // Default
        end;

        case CategoryID of
          1: cxLabelFarbe.Style.Color := clWebOrange;        // VIP
          2: cxLabelFarbe.Style.Color := clGray;             // Standard-Kunden
          3: cxLabelFarbe.Style.Color := clWebCrimson;       // Externe Mitarbeiter
          4: cxLabelFarbe.Style.Color := clWebDeepskyBlue;   // Lieferant
          5: cxLabelFarbe.Style.Color := clWebLimeGreen;     // Partner
          6: cxLabelFarbe.Style.Color := clWebHotPink;       // Interessent
          7: cxLabelFarbe.Style.Color := clBlack;            // Sonstiges
          8: cxLabelFarbe.Style.Color := clWhite;            // Ohne
          9: cxLabelFarbe.Style.Color := clWebDodgerBlue;    // Interne Mitarbeiter
        else
          cxLabelFarbe.Style.Color := clWhite;
        end;
        cxLabelFarbe.Repaint;
      end;
    end;

    //IsArchived
    Column := StringGrid1DBBandedTableView1.GetColumnByFieldName('IsArchived');
    if Assigned(Column) and (Column.Index >= 0) then begin
      try
        IsArchived := VarAsType(AFocusedRecord.Values[Column.Index], varBoolean);
      except
        IsArchived := False; // Default
      end;

      if IsArchived then begin
        // "Reaktivieren"
        dxBarLargeButtonArchivieren.Caption := 'Reaktivieren';
        dxBarLargeButtonArchivieren.LargeImageIndex := 18;
        Archivieren.Caption := 'Reaktivieren';
        Archivieren.ImageIndex := 19;
        FIsReaktivierenMode := True;
      end  else  begin
        // Archivieren
        dxBarLargeButtonArchivieren.Caption := 'Archivieren';
        dxBarLargeButtonArchivieren.LargeImageIndex := 17;
        Archivieren.Caption := 'Archivieren';
        Archivieren.ImageIndex := 18;
        FIsReaktivierenMode := False;
      end;
    end;
  except
    on E: Exception do
    begin
      Exit;
    end;
  end;
end;

procedure TStartListe.Deaktivieren;/////////////////////////////////////////////////////////////////
var
  Props: TcxTextEditProperties;
begin
  Props := TcxTextEditProperties.Create(StringGrid1DBBandedTableView1Email1);
  StringGrid1DBBandedTableView1Email1.Properties.Free;
  StringGrid1DBBandedTableView1Email1.Properties := Props;
end;

{Adresse -> Googlemap}
procedure TStartListe.AdresseSearch;
var
  Adresse, URL: string;
begin
  Adresse := Format('%s %s, %s %s',
    [VarToStr(StringGrid1DBBandedTableView1Strasse.EditValue),
     VarToStr(StringGrid1DBBandedTableView1Hausnummer.EditValue),
     VarToStr(StringGrid1DBBandedTableView1PLZ.EditValue),
     VarToStr(StringGrid1DBBandedTableView1Ort.EditValue)]
  );

  Adresse := StringReplace(Adresse, ' ', '+', [rfReplaceAll]);
  URL := 'https://www.google.com/maps/search/?api=1&query=' + Adresse;
  ShellExecute(0, 'open', PChar(URL), nil, nil, SW_SHOWNORMAL);
end;


{Link}
procedure TStartListe.StringGrid1DBBandedTableView1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var HitTest: TcxCustomGridHitTest;

  procedure AdresseSearch;
  var
    Adresse, URL: string;
  begin
    Adresse := Format('%s %s, %s %s',
      [VarToStr(StringGrid1DBBandedTableView1Strasse.EditValue),
       VarToStr(StringGrid1DBBandedTableView1Hausnummer.EditValue),
       VarToStr(StringGrid1DBBandedTableView1PLZ.EditValue),
       VarToStr(StringGrid1DBBandedTableView1Ort.EditValue)]
    );
    Adresse := StringReplace(Adresse, ' ', '+', [rfReplaceAll]);
    URL := 'https://www.google.com/maps/search/?api=1&query=' + Adresse;
    ShellExecute(0, 'open', PChar(URL), nil, nil, SW_SHOWNORMAL);
  end;

procedure HandleKontakt(const Kontaktwert, Name: string);
var
  Auswahl: TFormAuswahl;
  Option: TAppSendOption;
  MyMesBox: TMyMesBox;
  AnhangForm: TAnhang;
  PersonID: integer;
  ColPersonID: integer;
  IstEmail: Boolean;
  IstTelefon: Boolean;
begin
  ColPersonID := StringGrid1DBBandedTableView1.GetColumnByFieldName('PersonID').Index;
  if not TryStrToInt(VarToStr(TcxGridRecordCellHitTest(HitTest).GridRecord.Values[ColPersonID]), PersonID) then begin
    ShowMessage('Person-ID ist ungültig.');
    Exit;
  end;
  IstTelefon := (Pos('@', Kontaktwert) = 0);
  if IstTelefon then begin
    Auswahl := TFormAuswahl.Create(Self);
    try
      if Auswahl.ShowForKontakt(Kontaktwert, Option) then  begin
        SendeNachricht(Option, Kontaktwert, Name);
        UpdateLastActiveDate(MyConnection, PersonID);
      end;
    finally
      Auswahl.Free;
    end;
    Exit;
  end;

  IstEmail := (Pos('@', Kontaktwert) > 0);
  if IstEmail  then begin
    Auswahl := TFormAuswahl.Create(Self);
    try
      if Auswahl.ShowForKontakt(Kontaktwert, Option) then begin
        SendeNachricht(Option, Kontaktwert, Name);
        UpdateLastActiveDate(MyConnection, PersonID);
      end;
    finally
      Auswahl.Free;
    end;
  end;
end;

var
  AColumn: TcxGridColumn;
  Email, Nummer, Name, Anrede, Titel: string;
begin
  if Button = mbLeft then begin
    HitTest := StringGrid1DBBandedTableView1.ViewInfo.GetHitTest(X, Y);
    if (HitTest is TcxGridRecordCellHitTest) then begin
      AColumn := TcxGridRecordCellHitTest(HitTest).Item as TcxGridColumn;

      Anrede := VarToStr(TcxGridRecordCellHitTest(HitTest).GridRecord.Values[StringGrid1DBBandedTableView1Anrede.Index]);
      Titel := VarToStr(TcxGridRecordCellHitTest(HitTest).GridRecord.Values[StringGrid1DBBandedTableView1Titel.Index]);
      Name := VarToStr(TcxGridRecordCellHitTest(HitTest).GridRecord.Values[StringGrid1DBBandedTableView1Name.Index]);

      if AColumn = StringGrid1DBBandedTableView1Ort then begin
        AdresseSearch;
        Exit;
      end;

      if AColumn = StringGrid1DBBandedTableView1Email1 then
        Email := VarToStr(TcxGridRecordCellHitTest(HitTest).GridRecord.Values[StringGrid1DBBandedTableView1Email1.Index])
      else if AColumn = StringGrid1DBBandedTableView1Email2 then
        Email := VarToStr(TcxGridRecordCellHitTest(HitTest).GridRecord.Values[StringGrid1DBBandedTableView1Email2.Index])
      else if AColumn = StringGrid1DBBandedTableView1Email3 then
        Email := VarToStr(TcxGridRecordCellHitTest(HitTest).GridRecord.Values[StringGrid1DBBandedTableView1Email3.Index]);


      if AColumn = StringGrid1DBBandedTableView1Telefon1 then
        Nummer := VarToStr(TcxGridRecordCellHitTest(HitTest).GridRecord.Values[StringGrid1DBBandedTableView1Telefon1.Index])
      else if AColumn = StringGrid1DBBandedTableView1Telefon2 then
        Nummer := VarToStr(TcxGridRecordCellHitTest(HitTest).GridRecord.Values[StringGrid1DBBandedTableView1Telefon2.Index])
      else if AColumn = StringGrid1DBBandedTableView1Telefon3 then
        Nummer := VarToStr(TcxGridRecordCellHitTest(HitTest).GridRecord.Values[StringGrid1DBBandedTableView1Telefon3.Index]);


      if Email <> '' then begin
        HandleKontakt(Email, Anrede + ' ' + Titel + ' ' + Name);
      end
      else if Nummer <> '' then begin
        HandleKontakt(Nummer, Anrede + ' ' + Titel + ' ' + Name);
      end;

    end;
  end;

end;

{Notizen}
procedure TStartListe.StringGrid1DBBandedTableView1NotizenGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
  if ACellViewInfo.Value = 0 then begin
    AHintText := 'nicht Vorhanden';
  end;

  if ACellViewInfo.Value = 1 then begin
    AHintText := 'Vorhanden';
  end;
end;

{SelectionChanged}
procedure TStartListe.StringGrid1DBBandedTableView1SelectionChanged(
  Sender: TcxCustomGridTableView);
var
  SelectedRowCount: Integer;
  RowIndex, ColPersonID: Integer;
  PersonID: Integer;
begin
  SelectedRowCount := StringGrid1DbBandedTableView1.Controller.SelectedRecordCount;

  if (SelectedRowCount > 0) and (StringGrid1DbBandedTableView1.Controller.FocusedRecordIndex <> -1) then
    cxBarEditItemwahlen.EditValue := 'Zeilen ausgewählt: ' + IntToStr(SelectedRowCount)
  else
    cxBarEditItemwahlen.EditValue := '';

  if StringGrid1DbBandedTableView1.Controller.FocusedRecordIndex <> -1 then begin
    RowIndex := StringGrid1DbBandedTableView1.Controller.FocusedRecordIndex;
    ColPersonID := StringGrid1DbBandedTableView1.DataController.GetItemByFieldName('PersonID').Index;
    PersonID := StringGrid1DbBandedTableView1.DataController.Values[RowIndex, ColPersonID];
    if Assigned(FCurrentFrame) then
      FCurrentFrame.LoadVIPKundeInfo(PersonID);
  end;
end;


procedure TStartListe.StringGrid1DBBandedTableView1TelefonIconGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
  if ACellViewInfo.Value = 8 then begin
    AHintText := 'Privat';
  end;
  if ACellViewInfo.Value = 9 then begin
    AHintText := 'Geschäftlich';
  end;

  if ACellViewInfo.Value = 10 then begin
    AHintText := 'Haus';
  end;
  if ACellViewInfo.Value = 11 then begin
    AHintText := 'Andere';
  end;
end;

procedure TStartListe.StringGrid1DBBandedTableView1TitelIconGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
  if ACellViewInfo.Value = 4 then begin
      AHintText := 'Assistent';
  end;
    if ACellViewInfo.Value = 5 then begin
      AHintText := 'Professor';
  end;
  if ACellViewInfo.Value = 6 then begin
      AHintText := 'Doktor';
  end;
    if ACellViewInfo.Value = 7 then begin
      AHintText := 'Andere';
  end;
end;

{Grid Exit}
procedure TStartListe.StringGrid1Exit(Sender: TObject);
begin
  StringGrid1DBBandedTableView1.Controller.ClearSelection;
end;

{Suchen ->}
procedure TStartListe.SpeedButSuchParameterClick(Sender: TObject);
begin
  dxBarLargeButSuchenClick(Sender);
end;

{Zustand 'StartList'}
procedure TStartListe.Zustand;
var
  Skin, ViewMode, Ansicht: string;
begin
  TMSSettings.LoadSettings(MyQueryKontakt, Skin, ViewMode, Ansicht);
  if ViewMode = 'Nur Tabelle' then
    dxBarButtonNurTabelleClick(nil);
//  Ansicht := cxComboBoxAnsicht1.Text;
//  cxComboBoxAnsicht1.Text := Ansicht;
end;


{Form Close}
procedure TStartListe.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Skin, ViewMode, Ansicht: string;
begin
  ViewMode := FViewMode;
  if cxBarEditItemModus.CanSelect then
    Skin := 'Dark'
  else
    Skin := 'Light';

  //Ansicht := cxComboBoxAnsicht1.Text;
  TMSSettings.SaveSettings(MYQueryKontakt, Skin, ViewMode, Ansicht);
end;

////////////////////////////////////////////////////////////////////
// Create *                                                       //
////////////////////////////////////////////////////////////////////
procedure TStartListe.FormCreate(Sender: TObject);
var
  I: Integer;
  SkinName: string;
  Item: TdxBarButton;
begin
  AutoArchiveInactiveContacts(Myconnection);
//  cxComboBoxAnsicht1.Properties.Items.Add('Alle Felder anzeigen');
//  cxComboBoxAnsicht1.Properties.Items.Add('Felder mit Icons anzeigen');
//  cxComboBoxAnsicht1.Properties.Items.Add('Alle Felder ohne Icons anzeigen');
  cxBarEditItemModus.CanSelect:=false;
  Zustand;
  GlobalArchivComboBox(cxComboBoxArchiv);
  StringGrid1DBBandedTableView1.DataController.RecordCount:=0;
  EnableDblClick := True;
  LoadCategoryDescriptions;
  cxMemoNotizen.Clear;
  FTabsCache := TDictionary<Integer, TcxTabSheet>.Create;
  FTabsVisible := TDictionary<Integer, Boolean>.Create;
  CreateCategoryTabs;
  InitializeCategoryTabs;
  FCurrentCategoryID := 0;
  HideAllCategoryTabs;
  cxFTabControl.OnCanCloseEx := TabControlCanCloseEx;
  cxLabelFarbe.Style.Color:=clWhite;

  dxLayoutControlKategorien.Parent := cxFTabControl.ActivePage;
  dxLayoutControlKategorien.Align := alTop;
  dxLayoutControlKategorien.Height := 0;
  dxLayoutControlKategorien.Visible := True;

  for I := 0 to cxLookAndFeelPaintersManager.Count - 1 do begin
    SkinName := cxLookAndFeelPaintersManager.Items[I].LookAndFeelName;

    Item := TdxBarButton.Create(Self);
    Item.Caption := SkinName;
    Item.Tag := I;
    Item.ButtonStyle := bsChecked;
    Item.OnClick := dxBarSubItemSkinsClick;
    dxBarSubItemSkins.ItemLinks.Add(Item);
  end;

    // cxComboBoxAnsicht1.Text := 'Alle Felder anzeigen';
     StringGrid1DBBandedTableView1.Bands[0].Visible:=true;
     StringGrid1DBBandedTableView1.Bands[1].Visible:=true;
     StringGrid1DBBandedTableView1.Bands[2].Visible:=true;
     StringGrid1DBBandedTableView1.Bands[3].Visible:=true;
     StringGrid1DBBandedTableView1.Bands[4].Visible:=true;
     StringGrid1DBBandedTableView1.Bands[5].Visible:=true;
     StringGrid1DBBandedTableView1.Bands[6].Visible:=true;
     StringGrid1DBBandedTableView1.Bands[7].Visible:=true;
     StringGrid1DBBandedTableView1.Bands[8].Visible:=true;
     UpdateTabCaptions;

  ExterneMitarbeiter1.OnClick := KategorieMenuItemClick;
  InterneMitarbeiter1.OnClick := KategorieMenuItemClick;
  Lieferant1.OnClick := KategorieMenuItemClick;
  Ohne1.OnClick := KategorieMenuItemClick;
  Partner1.OnClick := KategorieMenuItemClick;
  Sontiges1.OnClick := KategorieMenuItemClick;
  Interessenten1.OnClick := KategorieMenuItemClick;
  StandartKunden1.OnClick := KategorieMenuItemClick;
  VIPKunden1.OnClick := KategorieMenuItemClick;
end;

{Kopieren}
procedure TStartListe.KopierenClick(Sender: TObject);
var
  ClipboardText: string;
  i, j: Integer;
  GridView: TcxGridTableView;
begin
  if (StringGrid1.FocusedView is TcxGridTableView) then begin
    GridView := TcxGridTableView(StringGrid1.FocusedView);
    for i := 0 to GridView.Controller.SelectedRecordCount - 1 do begin
      for j := 0 to GridView.ColumnCount - 1 do begin
        ClipboardText := ClipboardText +
          VarToStr(GridView.Controller.SelectedRecords[i].Values[GridView.Columns[j].Index]);
        if j < GridView.ColumnCount - 1 then
          ClipboardText := ClipboardText + #9;
      end;
      ClipboardText := ClipboardText + sLineBreak;
    end;
    Clipboard.AsText := ClipboardText;
  end else begin
    MessageDlg('Wählen Sie die Tabelle aus, in der die Daten kopiert werden sollen.', mtWarning, [mbOK], 0);
  end;
end;


{Suchen aus SuchenUnit}
procedure TStartListe.dxBarLargeButSuchenClick(Sender: TObject);
begin
  if TTSuchen = TtGlobal then begin
   SuchenGlobal;
   ShowMessageAutoArchiv;
  end else begin
   FilterGrid(StringGrid1DBBandedTableView1, EditID, EditName, EditVorname,EditStrasse, EditPLZ, EditOrt,DateGeburtsdatum);
//hier weiter
  end;
end;


{Group Update}
procedure TStartListe.UpdateGroupCaption;
var
  i: Integer;
begin
  for i := 0 to High(FCategoryTabs) do
  begin
    if FCategoryTabs[i].CategoryID = FCurrentCategoryID then
    begin
      dxLayoutGroup1.Caption := FCategoryTabs[i].TabName;
      dxLayoutGroup1.CaptionOptions.Text := FCategoryTabs[i].TabName;
      Break;
    end;
  end;
end;

procedure TStartListe.SwitchToCategory(CategoryID: Integer);
var
  i: Integer;
begin
  FCurrentCategoryID := CategoryID;
  FSelectedKategorieID := CategoryID;
  for i := 0 to cxFTabControl.PageCount - 1 do  begin
    if cxFTabControl.Pages[i].Tag = CategoryID then  begin
      cxFTabControl.ActivePageIndex := i;
      Break;
    end;
  end;
  SuchenGlobal;
end;

{Suchen Global}
procedure TStartListe.SuchenGlobal;
var
  QueryString, FilterCondition, AdditionalFilter, NotizenFilter, CategoryFilter: string;
  FoundCount: Integer;
begin
  TTSuchen := ttGlobal;

  case cxComboBoxArchiv.ItemIndex of
    0: FilterCondition := 'k.IsArchived = 0';
    1: FilterCondition := '1=1';
    2: FilterCondition := 'k.IsArchived = 1';
  else
    FilterCondition := '1=1';
  end;

  CategoryFilter := GetCategoryFilter;
  if CategoryFilter <> '1=1' then
    FilterCondition := FilterCondition + ' AND ' + CategoryFilter;

  AcBearbeiten.Enabled := True;
  AcArchivieren.Enabled := True;
  Acloeschen.Enabled := True;
  dxBarLargeButExports.Enabled := True;
  AcDrucken.Enabled := True;
  AcKopieren.Enabled := True;
  dxBarLargeButtonKalender.Enabled := True;
  dxBarLargeButQualityDaten.Enabled := True;
  AcKategorie.Enabled := True;
  Kategorie1.Enabled := True;

  AdditionalFilter := '';

  // KontaktviewMitKategorien
  QueryString :=
    'SELECT ' +
    '  k.PersonID, ' +
    '  k.Enabled, ' +
    '  k.Anrede, ' +
    '  k.AnredeIconIndex, ' +
    '  k.Titel, ' +
    '  k.TitelIconIndex, ' +
    '  k.Name, ' +
    '  k.Vorname, ' +
    '  k.Geburtsdatum, ' +
    '  k.Telefontyp, ' +
    '  k.TelefontypIconIndex, ' +
    '  k.Telefon, ' +
    '  k.Telefontyp2, ' +
    '  k.Telefontyp2IconIndex, ' +
    '  k.[Telefon 2], ' +
    '  k.Telefontyp3, ' +
    '  k.Telefontyp3IconIndex, ' +
    '  k.[Telefon 3], ' +
    '  k.Emailtyp, ' +
    '  k.EmailtypIconIndex, ' +
    '  k.Email, ' +
    '  k.Emailtyp2, ' +
    '  k.Emailtyp2IconIndex, ' +
    '  k.[Email 2], ' +
    '  k.Emailtyp3, ' +
    '  k.Emailtyp3IconIndex, ' +
    '  k.[Email 3], ' +
    '  k.PLZ, ' +
    '  k.Ort, ' +
    '  k.Strasse, ' +
    '  k.Hausnummer, ' +
    '  k.Notizen, ' +
    '  k.Bild, ' +
    '  k.IsArchived, ' +
    '  k.Datei, ' +
    '  k.KategorieID, ' +
    '  k.KategorieName, ' +
    '  k.KategorieIconID ' +
    'FROM KontaktviewMitKategorien k ' +
    'WHERE ' + FilterCondition;

  if EditID.Text <> '' then begin
    QueryString := QueryString + ' AND k.PersonID = :ID';
    AdditionalFilter := AdditionalFilter + ' AND PersonID = ' + QuotedStr(EditID.Text);
  end;
  if EditName.Text <> '' then begin
    QueryString := QueryString + ' AND k.Name LIKE :Name';
    AdditionalFilter := AdditionalFilter + ' AND Name LIKE ' + QuotedStr('%' + EditName.Text + '%');
  end;
  if EditVorname.Text <> '' then begin
    QueryString := QueryString + ' AND k.Vorname LIKE :Vorname';
    AdditionalFilter := AdditionalFilter + ' AND Vorname LIKE ' + QuotedStr('%' + EditVorname.Text + '%');
  end;
  if DateGeburtsdatum.Text <> '' then begin
    QueryString := QueryString + ' AND k.Geburtsdatum = :Geburtsdatum';
    AdditionalFilter := AdditionalFilter + ' AND Geburtsdatum = ' + QuotedStr(DateGeburtsdatum.Text);
  end;
  if EditStrasse.Text <> '' then begin
    QueryString := QueryString + ' AND k.Strasse LIKE :Strasse';
    AdditionalFilter := AdditionalFilter + ' AND Strasse LIKE ' + QuotedStr('%' + EditStrasse.Text + '%');
  end;
  if EditPlZ.Text <> '' then begin
    QueryString := QueryString + ' AND k.PLZ = :PLZ';
    AdditionalFilter := AdditionalFilter + ' AND PLZ = ' + QuotedStr(EditPlZ.Text);
  end;
  if EditOrt.Text <> '' then begin
    QueryString := QueryString + ' AND k.Ort LIKE :Ort';
    AdditionalFilter := AdditionalFilter + ' AND Ort LIKE ' + QuotedStr('%' + EditOrt.Text + '%');
  end;

  if cxPageControlSuchParameter.ActivePage = cxTabSheetSuchennachNotizen then begin
    NotizenFilter := GetNotizenFilter(MyQueryKontakt.Params);
    if NotizenFilter <> '' then
      QueryString := QueryString + NotizenFilter;
  end;

  StringGrid1DBBandedTableView1.BeginUpdate;
  try
    with MyQueryKontakt do begin
      Close;
      SQL.Text := QueryString;

      if EditID.Text <> '' then
        ParamByName('ID').AsInteger := StrToInt(EditID.Text);
      if EditName.Text <> '' then
        ParamByName('Name').AsString := '%' + EditName.Text + '%';
      if EditVorname.Text <> '' then
        ParamByName('Vorname').AsString := '%' + EditVorname.Text + '%';
      if DateGeburtsdatum.Text <> '' then
        ParamByName('Geburtsdatum').AsDate := StrToDate(DateGeburtsdatum.Text);
      if EditStrasse.Text <> '' then
        ParamByName('Strasse').AsString := '%' + EditStrasse.Text + '%';
      if EditPlZ.Text <> '' then
        ParamByName('PLZ').AsString := EditPlZ.Text;
      if EditOrt.Text <> '' then
        ParamByName('Ort').AsString := '%' + EditOrt.Text + '%';

      Open;
      FoundCount := RecordCount;
      if FoundCount = 0 then begin
        Close;
        cxBarEditItemInfo.EditValue := 'Es gibt keine Daten, die Ihrer Anfrage entsprechen!';
        StartlisteTimer.Enabled := True;
      end else begin
        MyDataSourceKontakt.DataSet := MyQueryKontakt;
      end;
    end;

    cxBarEditItemGefunden.EditValue := 'Gefundene Kontaktdaten: ' + IntToStr(FoundCount);
  finally
    StringGrid1DBBandedTableView1.EndUpdate;
  end;

  cxBarEditItemInfo.EditValue := 'Die Kontakte wurden gesucht...';
  StartlisteTimer.Enabled := True;
  UpdateTabCaptions;
end;

{Archivieren}
procedure TStartListe.ToolButArchivierenClick(Sender: TObject);
begin
 dxBarLargeButArchivierenClick(Sender);
end;

{Bearbeiten All}
procedure TStartListe.ToolButBearbeitenallClick(Sender: TObject);
begin
 BearbeiteKontakt;
end;

{Bearbeiten}
procedure TStartListe.ToolButBearbeitenClick(Sender: TObject);
begin
  BearbeiteKontakt;
end;

procedure TStartListe.ToolButLoeschenallClick(Sender: TObject);
begin
 dxBarLargeButLoeschenClick(Sender);
end;

procedure TStartListe.ToolButLoeschenClick(Sender: TObject);
begin
 dxBarLargeButLoeschenClick(Sender);
end;

procedure TStartListe.ToolButNeuAllClick(Sender: TObject);
begin
 dxBarLargeButNeuClick(Sender);
end;

procedure TStartListe.ToolButNeuClick(Sender: TObject);
begin
  dxBarLargeButNeuClick(Sender);
end;


{Suchen Notizen}
function TStartListe.GetNotizenFilter(Params: TParams): string;
var
  FilterParts: TStringList;
  I: Integer;
begin
  FilterParts := TStringList.Create;
  try
    if cxMemoNotizen.Text <> '' then  begin
      FilterParts.Add('N.Inhalt LIKE :Notizen');
      with Params.CreateParam(ftString, 'Notizen', ptInput) do
        AsString := '%' + cxMemoNotizen.Text + '%';
    end;

//    if cxDateEditNotizLetzteAenderung.Date <> 0 then begin
//      FilterParts.Add('N.LetzteAenderung >= :LetzteAenderungStart AND N.LetzteAenderung < :LetzteAenderungEnd');
//    end;
//
//    if cxDateEditNotizErstellungsdatum.Date <> 0 then begin
//      FilterParts.Add('N.Erstellungsdatum >= :ErstellungsdatumStart AND N.Erstellungsdatum < :ErstellungsdatumEnd');
//    end;

    if cxImageComboBoxKategorie.Text <> '' then begin
      FilterParts.Add('N.Kategorie = :Kategorie');
      with Params.CreateParam(ftInteger, 'Kategorie', ptInput) do
        AsInteger := cxImageComboBoxKategorie.ItemIndex;
    end;

    if cxTextEditNotizenAutor.Text <> '' then begin
      FilterParts.Add('N.Autor LIKE :Autor');
      with Params.CreateParam(ftString, 'Autor', ptInput) do
        AsString := '%' + cxTextEditNotizenAutor.Text + '%';
    end;

    if FilterParts.Count > 0 then begin

      Result := ' AND k.PersonID IN (SELECT DISTINCT N.PersonID FROM KontaktNotizen N WHERE ';
      for I := 0 to FilterParts.Count - 1 do  begin
        if I > 0 then
          Result := Result + ' AND ';
        Result := Result + FilterParts[I];
      end;
      Result := Result + ')';
    end  else
      Result := '';
  finally
    FilterParts.Free;
  end;
end;



{Zurück Test!}
procedure TStartListe.dxBarLargeButtonZuruecksetzentestClick(Sender: TObject);
begin
  EditName.Text := '';
  EditVorname.Text := '';
  EditID.Text := '';
  EditStrasse.Text := '';
  EditPLZ.Text := '';
  EditOrt.Text := '';
  DateGeburtsdatum.Clear;

  StringGrid1DBBandedTableView1.DataController.RecordCount := 0;
  MyDataSourceKontakt.DataSet := nil;
  with MyQueryKontakt do begin
    Close;
    SQL.Text := '';
  end;
end;

{Übernehmen}
procedure TStartListe.dxBarLargeButUebernehmenClick(Sender: TObject);
begin
  if (MyQueryKontakt = nil) or (MyQueryKontakt.RecordCount = 0) then  begin
    MessageDlg('Keine Daten zum Übernehmen vorhanden.', mtWarning, [mbOK], 0);
    Exit;
  end;

  if MyQueryKontakt.FieldByName('PersonID').IsNull then begin
    MessageDlg('Bitte wählen Sie einen Kontakt aus der Liste aus.', mtWarning, [mbOK], 0);
    Exit;
  end;

  SelectedPersonID := MyQueryKontakt.FieldByName('PersonID').AsInteger;

  if MyQueryKontakt.FindField('Vorname') <> nil then
    SelectedVorname := MyQueryKontakt.FieldByName('Vorname').AsString
  else
    SelectedVorname := '';

  if MyQueryKontakt.FindField('Name') <> nil then
    SelectedName := MyQueryKontakt.FieldByName('Name').AsString
  else
    SelectedName := '';
  ModalResult := mrOk;
end;



{kalenderClick}
procedure TStartListe.dxBarLargeButtonKkalenderClick(Sender: TObject);
var
  Kalender: TFormKalender;
begin
  Kalender := TFormKalender.Create(Self);
  try
    Kalender.Caption := 'Kalender';
    Kalender.ShowModal;
  finally
    Kalender.Free;
  end;
end;

{Kategorieanzeigen}
procedure TStartListe.dxBarLargeButtonKategorieanzeigenClick(Sender: TObject);
var
  KontaktKategorieAnzeigen: TMyKontaktK;
begin
  KontaktKategorieAnzeigen := TMyKontaktK.Create(Self);
  try
    KontaktKategorieAnzeigen.Caption := 'Kalender';
    KontaktKategorieAnzeigen.ShowModal;
  finally
    KontaktKategorieAnzeigen.Free;
  end;
end;

{Drucken ->}
procedure TStartListe.dxBarLargeButtonDemoClick(Sender: TObject);
var  HamburgerMenuDemo: TfrmHamburgerMenuDemo;
begin
  HamburgerMenuDemo:=TfrmHamburgerMenuDemo.Create(self);
  try
   HamburgerMenuDemo.ShowModal;
  finally
   HamburgerMenuDemo.Free;
  end;

end;

procedure TStartListe.dxBarLargeButtonDruckentestClick(Sender: TObject);
begin
  dxBarLargeButDruckenClick(Sender);
end;


{Schließen}
procedure TStartListe.dxBarLargeButtonSchliessentestClick(Sender: TObject);
begin
 close;
end;


{ Suchen }
procedure TStartListe.dxBarLargeButtonSuchentestClick(Sender: TObject);
var
  Row: Integer;
  MatchFound: Boolean;
  View: TcxGridDBTableView;
  DataController: TcxCustomDataController;
begin
  View := TcxGridDBTableView(StringGrid1.Levels[0].GridView);
  DataController := View.DataController;

  DataController.Filter.Root.Clear;
  DataController.Filter.Active := False;

  for Row := 0 to DataController.RecordCount - 1 do begin
    MatchFound := True;

    if (EditID.Text <> '') and (VarToStr(DataController.GetValue(Row, 0)) <> EditID.Text) then
      MatchFound := False;

    if (EditName.Text <> '') and (Pos(LowerCase(EditName.Text), LowerCase(VarToStr(DataController.GetValue(Row, 1)))) = 0) then
      MatchFound := False;

    if (EditVorname.Text <> '') and (Pos(LowerCase(EditVorname.Text), LowerCase(VarToStr(DataController.GetValue(Row, 2)))) = 0) then
      MatchFound := False;

    if (EditOrt.Text <> '') and (Pos(LowerCase(EditOrt.Text), LowerCase(VarToStr(DataController.GetValue(Row, 3)))) = 0) then
      MatchFound := False;

    if (EditStrasse.Text <> '') and (Pos(LowerCase(EditStrasse.Text), LowerCase(VarToStr(DataController.GetValue(Row, 4)))) = 0) then
      MatchFound := False;

    if (EditPLZ.Text <> '') and (Pos(LowerCase(EditPLZ.Text), LowerCase(VarToStr(DataController.GetValue(Row, 5)))) = 0) then
      MatchFound := False;

    if MatchFound then
      DataController.Filter.Root.AddItem(nil, foEqual, DataController.GetValue(Row, 0), '')
  end;
  DataController.Filter.Active := True;
end;



procedure TStartListe.EditNamePropertiesEditValueChanged(Sender: TObject);
begin
  BuchstabenGrossSchreiben(TWinControl(Sender));
end;

procedure TStartListe.EditOrtPropertiesEditValueChanged(Sender: TObject);
begin
  BuchstabenGrossSchreiben(TWinControl(Sender));
end;

procedure TStartListe.EditPLZExit(Sender: TObject);
begin
   FillCityFromPLZGlobal(EditPLZ.Text,EditOrt);
end;


procedure TStartListe.EditStrassePropertiesEditValueChanged(Sender: TObject);
begin
  BuchstabenGrossSchreiben(TWinControl(Sender));
end;

procedure TStartListe.EditVornamePropertiesEditValueChanged(Sender: TObject);
begin
  BuchstabenGrossSchreiben(TWinControl(Sender));
end;


{Close ->}
procedure TStartListe.SchliessenClick(Sender: TObject);
begin
   dxBarLargeButSchliessenClick(Sender);
end;

{Löschen}
procedure TStartListe.dxBarLargeButLoeschenClick(Sender: TObject);
var
  SelectedIDs: TList<Integer>;
  SelectedNames: TList<string>;
  UserChoice, FoundCount: Integer;
  IsArchived: Boolean;
  Query: TMSQuery;
  I, RowIndex, ColPersonID, ColName: Integer;
  IDListStr, IDOnlyListStr, MsgText: string;
  MyMesBox: TMyMesBox;
begin
  SelectedIDs := TList<Integer>.Create;
  SelectedNames := TList<string>.Create;

  ColPersonID := StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('PersonID').Index;
  ColName := StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('Name').Index;

  try
    for I := 0 to StringGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
      RowIndex := StringGrid1DBBandedTableView1.Controller.SelectedRecords[I].RecordIndex;
      SelectedIDs.Add(StringGrid1DBBandedTableView1.DataController.Values[RowIndex, ColPersonID]);
      SelectedNames.Add(StringGrid1DBBandedTableView1.DataController.Values[RowIndex, ColName]);
    end;

    if SelectedIDs.Count = 0 then begin
      MyMesBox := TMyMesBox.Create(nil);
      try
    //    MyMesBox.Caption := 'Fehler';  //Fehler
    //    MyMesBox.ShowMessage(_KeineDatensaetzevorhanden, mtError, [mbOK]);
      finally
        MyMesBox.Free;
      end;
      cxBarEditItemInfo.EditValue := _KeineDatensaetzevorhanden;
      StartListeTimer.Enabled := true;
      Exit;
    end;

    IDListStr := FormatIDList(SelectedIDs, SelectedNames);
    IDOnlyListStr := '';
    for I := 0 to SelectedIDs.Count - 1 do begin
      IDOnlyListStr := IDOnlyListStr + IntToStr(SelectedIDs[I]);
      if I < SelectedIDs.Count - 1 then begin
        IDOnlyListStr := IDOnlyListStr + ', ';
      end;
    end;

    if IDOnlyListStr = '' then Exit;

    if SelectedIDs.Count = 1 then begin
      Query := TMSQuery.Create(nil);
      try
        Query.Connection := MyConnection;
        Query.SQL.Text := 'SELECT IsArchived FROM Kontakt WHERE PersonID = :PersonID';
        Query.ParamByName('PersonID').AsInteger := SelectedIDs[0];
        Query.Open;
        IsArchived := Query.FieldByName('IsArchived').AsBoolean;
      finally
        Query.Free;
      end;
    end else
      IsArchived := False;

       if SelectedIDs.Count = 1 then begin
        if IsArchived then
          MsgText := Format('Dieser ausgewählte Datensatz ist bereits archiviert. Möchten Sie%s' +
                            'ihn wirklich löschen? (%s)',
                            [SLineBreak, IDListStr])
        else
          MsgText := Format('Möchten Sie den ausgewählten Datensatz mit der folgenden "ID"%s' +
                            'wirklich löschen?' + SLineBreak + '[%s]',
                            [SLineBreak, IDListStr]);
      end else begin
        MsgText := Format('Möchten Sie die ausgewählten Datensätze mit den folgenden "IDs"%s' +
                          'wirklich löschen?' + SLineBreak + '[%s]',
                          [SLineBreak, IDListStr]);
      end;


    MyMesBox := TMyMesBox.Create(nil);
    try
      MyMesBox.Caption := 'Löschen';
      UserChoice := MyMesBox.ShowMessage(MsgText, mtConfirmation, [mbYes, mbNo]);
    finally
      MyMesBox.Free;
    end;

    if UserChoice <> mrYes then begin
      cxBarEditItemInfo.EditValue := 'Löschen wurde abgebrochen';
      StartlisteTimer.Enabled := True;
      Exit;
    end;

    Query := TMSQuery.Create(nil);
      try
        Query.Connection := MyConnection;
        try
          MyConnection.StartTransaction;
          Query.SQL.Text := 'DELETE FROM Kontaktnotizen WHERE PersonID IN (' + IDOnlyListStr + ')';
          Query.ExecSQL;
          Query.SQL.Text := 'DELETE FROM KontaktDateien WHERE PersonID IN (' + IDOnlyListStr + ')';
          Query.ExecSQL;
          Query.SQL.Text := 'DELETE FROM Kontakt WHERE PersonID IN (' + IDOnlyListStr + ')';
          Query.ExecSQL;
          MyConnection.Commit;

        except
          on E: Exception do begin
            MyConnection.Rollback;
            raise;
          end;
        end;

      finally
        Query.Free;
      end;

    StringGrid1DBBandedTableView1.DataController.DataSet.Close;
    StringGrid1DBBandedTableView1.DataController.DataSet.Open;
    StringGrid1DBBandedTableView1.DataController.Refresh;

    FoundCount := UpdateColumnCaptions('1=1');
    cxBarEditItemGefunden.EditValue := 'Gefundene Kontaktdaten: ' + IntToStr(FoundCount);

    cxBarEditItemInfo.EditValue := 'Die Kontakte wurden erfolgreich gelöscht';
    StartlisteTimer.Enabled := True;

  finally
    SelectedIDs.Free;
    SelectedNames.Free;
  end;
  UpdateTabCaptions;
end;

{Kontaktformular}
procedure TStartListe.dxBarLargeButNeuClick(Sender: TObject);
begin
//  UpdateStatus('Status: Neu');
  with TKontaktMenu.Create(Self) do begin
    try
      if ShowModal = mrOk then begin
        StringGrid1DBBandedTableView1.DataController.DataSet.Close;
        StringGrid1DBBandedTableView1.DataController.DataSet.Open;
        StringGrid1DBBandedTableView1.DataController.Refresh;
      end;
    finally
      Free;
    end;
  end;
end;



{Bild load from SQL server}
procedure BildLoadToTable(KontaktForm: TKontaktMenu);
var
  Stream: TMemoryStream;
begin
  if not MyDataModule.MyQuery.FieldByName('Bild').IsNull then begin
    Stream := TMemoryStream.Create;
    try
      TBlobField(MyDataModule.MyQuery.FieldByName('Bild')).SaveToStream(Stream);
      Stream.Position := 0;
      KontaktForm.cxImage1.Picture.Graphic.LoadFromStream(Stream);
    finally
      Stream.Free;
    end;
  end else begin
    KontaktForm.cxImage1.Picture := nil;
  end;
end;


{Achivieren ->}
procedure TStartListe.ArchivierenClick(Sender: TObject);
begin
  dxBarLargeButArchivierenClick(Sender);
end;

{Bearbeiten ->}
procedure TStartListe.Bearbeiten1Click(Sender: TObject);
begin
  AcBearbeitenExecute(Sender);
end;

{Global}
procedure TStartListe.SetEditMode(Value: Boolean);
begin
  IsEditMode := Value;
end;



//////////////////////////////////////////////////
//  ist schon nicht mehr nötig                  //
//////////////////////////////////////////////////
procedure TStartListe.dxBarLargeButBearbeitenClick(Sender: TObject);
var
  Row: integer;
  KontaktForm: TKontaktMenu;
  KontaktLoad: TPerson;
  BenutzerID: string;

  Base64Str: string;
  BildQuery: TMSQuery;

        function KonvertNullToEmpty(Value: Variant): string;
          begin
            if VarIsNull(Value) then begin
              result := ''
            end else
              result := Value;
          end;

begin
  IsEditMode := True;
//FModeKontakt:=EditForm;

  if StringGrid1DBBandedTableView1.DataController.RecordCount = 0 then begin
//    dxBarLargeButBearbeiten.Enabled:=false;
 //   MessageDlg(_KeineDatensaetzevorhanden, mtError, [mbOK], 0);
    Exit;
  end;

    Row := StringGrid1DBBandedTableView1.DataController.FocusedRecordIndex;

  if (Row < 0) or (Row >= StringGrid1DBBandedTableView1.DataController.RecordCount) then begin
    MessageDlg('Fehler: Zeilenindex außerhalb des Bereichs.', mtError, [mbOK], 0);
    Exit;
  end;

 BenutzerID := StringGrid1DBBandedTableView1.DataController.Values[Row,
    StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('PersonID').Index];

  KontaktForm := TKontaktMenu.Create(Self);


  try
    KontaktLoad := TPerson.Create(
      ['', ''],  // AnredeTitel
      '',        // Name
      '',        // Vorname
      TTelefon.Create('', '', '', '', '', ''),  // Telefon
      TEmail.Create('', '', '', '', '', ''),    // Email
      TAdresse.Create('', '', '', ''),          // Adresse
      Now      // Geburtsdatum
    );

    try
      KontaktLoad.AnredeTitel[0] := KonvertNullToEmpty(StringGrid1DBBandedTableView1.DataController.Values[Row,
        StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('Anrede').Index]);

      KontaktLoad.AnredeTitel[1] := KonvertNullToEmpty(StringGrid1DBBandedTableView1.DataController.Values[Row,
        StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('Titel').Index]);

      KontaktLoad.Name := StringGrid1DBBandedTableView1.DataController.Values[Row,
        StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('Name').Index];

      KontaktLoad.Vorname := StringGrid1DBBandedTableView1.DataController.Values[Row,
        StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('Vorname').Index];

      KontaktLoad.Geburtsdatum := StrToDateDef(StringGrid1DBBandedTableView1.DataController.Values[Row,
        StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('Geburtsdatum').Index], Now);
      // Telefons
        KontaktLoad.Telefon.ComboboxT1 := KonvertNullToEmpty(StringGrid1DBBandedTableView1.DataController.Values[Row,
        StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('TelefonTyp').Index]);

      KontaktLoad.Telefon.Nummern := StringGrid1DBBandedTableView1.DataController.Values[Row,
        StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('Telefon').Index];

      KontaktLoad.Telefon.ComboboxT2 := KonvertNullToEmpty(StringGrid1DBBandedTableView1.DataController.Values[Row,
        StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('TelefonTyp2').Index]);

      KontaktLoad.Telefon.Nummerzwei := StringGrid1DBBandedTableView1.DataController.Values[Row,
        StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('Telefon 2').Index];

      KontaktLoad.Telefon.ComboboxT3 := KonvertNullToEmpty(StringGrid1DBBandedTableView1.DataController.Values[Row,
        StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('TelefonTyp3').Index]);

      KontaktLoad.Telefon.Nummerdrei := StringGrid1DBBandedTableView1.DataController.Values[Row,
        StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('Telefon 3').Index];

      // Email
        KontaktLoad.Email.ComboboxE1 := KonvertNullToEmpty(StringGrid1DBBandedTableView1.DataController.Values[Row,
        StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('EmailTyp').Index]);

      KontaktLoad.Email.Emails := StringGrid1DBBandedTableView1.DataController.Values[Row,
        StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('Email').Index];

      KontaktLoad.Email.ComboboxE2 := KonvertNullToEmpty(StringGrid1DBBandedTableView1.DataController.Values[Row,
        StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('EmailTyp2').Index]);

      KontaktLoad.Email.Emailzwei := StringGrid1DBBandedTableView1.DataController.Values[Row,
        StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('Email 2').Index];

      KontaktLoad.Email.ComboboxE3 := KonvertNullToEmpty(StringGrid1DBBandedTableView1.DataController.Values[Row,
        StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('EmailTyp3').Index]);

      KontaktLoad.Email.Emaildrei := StringGrid1DBBandedTableView1.DataController.Values[Row,
        StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('Email 3').Index];

      // Adresse
      KontaktLoad.Adresse.PLZ := StringGrid1DBBandedTableView1.DataController.Values[Row,
            StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('PLZ').Index];

      KontaktLoad.Adresse.Ort := StringGrid1DBBandedTableView1.DataController.Values[Row,
            StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('Ort').Index];

      KontaktLoad.Adresse.Strasse := StringGrid1DBBandedTableView1.DataController.Values[Row,
            StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('Strasse').Index];

      KontaktLoad.Adresse.Hausnummer := StringGrid1DBBandedTableView1.DataController.Values[Row,
            StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('Hausnummer').Index];


      KontaktForm.ComboBoxAnrede.Text := KontaktLoad.AnredeTitel[0];
      KontaktForm.ComboBoxTitel.Text := KontaktLoad.AnredeTitel[1];
      KontaktForm.EditName.Text := KontaktLoad.Name;
      KontaktForm.EditVorname.Text := KontaktLoad.Vorname;
      KontaktForm.exEditGeburtsdatum.Text := DateToStr(KontaktLoad.Geburtsdatum);

      KontaktForm.cxComboBoxTelefon.Text := KontaktLoad.Telefon.ComboboxT1;
      KontaktForm.EditTelefon.Text := KontaktLoad.Telefon.Nummern;
      KontaktForm.cxComboBoxTelefonzwei.Text := KontaktLoad.Telefon.ComboboxT2;
      KontaktForm.EditTelefonzwei.Text := KontaktLoad.Telefon.Nummerzwei;
      KontaktForm.cxComboBoxTelefondrei.Text := KontaktLoad.Telefon.ComboboxT3;
      KontaktForm.EditTelefondrei.Text := KontaktLoad.Telefon.Nummerdrei;

      // Email
      KontaktForm.cxComboBoxEmail.Text := KontaktLoad.Email.ComboboxE1;
      KontaktForm.EditEmail.Text := KontaktLoad.Email.Emails;
      KontaktForm.cxComboBoxEmailzwei.Text := KontaktLoad.Email.ComboboxE2;
      KontaktForm.EditEmailzwei.Text := KontaktLoad.Email.Emailzwei;
      KontaktForm.cxComboBoxEmaildrei.Text := KontaktLoad.Email.ComboboxE3;
      KontaktForm.EditEmaildrei.Text := KontaktLoad.Email.Emaildrei;

      // Adresse
      KontaktForm.EditPLZ.Text := KontaktLoad.Adresse.PLZ;
      KontaktForm.EditOrt.Text := KontaktLoad.Adresse.Ort;
      KontaktForm.EditStrasse.Text := KontaktLoad.Adresse.Strasse;
      KontaktForm.EditHausnummer.Text := KontaktLoad.Adresse.Hausnummer;
      // Image

     BildQuery := TMSQuery.Create(nil);
            try
              BildQuery.Connection := MyQuerykontakt.Connection;
              BildQuery.SQL.Text := 'SELECT Bild FROM Kontakt WHERE PersonID = :ID';
              BildQuery.ParamByName('ID').AsString := BenutzerID;
              BildQuery.Open;

              if not BildQuery.IsEmpty then begin
               // LoadImageFromDB(BildQuery, 'Bild', KontaktForm.cxImage1.Picture);
              end else begin
                KontaktForm.cxImage1.Picture.Assign(nil);
              end;
            finally
              BildQuery.Free;
            end;

      KontaktForm.cxBenutzerID.Text := BenutzerID;
      KontaktForm.Caption:= '[Bearbeiten] Kontakt';

//      if Trim(KontaktForm.EditNotizen.Text) <> '' then
//          KontaktForm.cxTabSheetNotizen.Caption := KontaktForm.cxTabSheetNotizen.Caption + ' *';

//      if not KontaktForm.cxGridNotizenDBTableViewNotizen.DataController.DataSetRecordCount <> 0 then begin
//        KontaktForm.cxTabSheetNotizen.Caption := KontaktForm.cxTabSheetNotizen.Caption + ' *';
//      end;

//      if Trim(KontaktForm.EditNotizen.Text) <> '' then
//          KontaktForm.cxTabSheetDokumenten.Caption := KontaktForm.cxTabSheetDokumenten.Caption + ' *';


      UpdateStatus('Status: Bearbeiten');
      KontaktForm.SetPersonID(StrToInt(BenutzerID));

      if KontaktForm.ShowModal = mrOk then begin
        StringGrid1DBBandedTableView1.DataController.Values[Row, 1] := KontaktForm.ComboBoxAnrede.Text;
        StringGrid1DBBandedTableView1.DataController.Values[Row, 2] := KontaktForm.ComboBoxTitel.Text;
        StringGrid1DBBandedTableView1.DataController.Values[Row, 3] := KontaktForm.EditName.Text;
        StringGrid1DBBandedTableView1.DataController.Values[Row, 4] := KontaktForm.EditVorname.Text;
        StringGrid1DBBandedTableView1.DataController.Values[Row, 5] := KontaktForm.exEditGeburtsdatum.Text;
        // Telefons
        StringGrid1DBBandedTableView1.DataController.Values[Row, 6] := KontaktForm.cxComboBoxTelefon.Text;
        StringGrid1DBBandedTableView1.DataController.Values[Row, 7] := KontaktForm.EditTelefon.Text;
        StringGrid1DBBandedTableView1.DataController.Values[Row, 8] := KontaktForm.cxComboBoxTelefonzwei.Text;
        StringGrid1DBBandedTableView1.DataController.Values[Row, 9] := KontaktForm.EditTelefonzwei.Text;
        StringGrid1DBBandedTableView1.DataController.Values[Row, 10] := KontaktForm.cxComboBoxTelefondrei.Text;
        StringGrid1DBBandedTableView1.DataController.Values[Row, 11] := KontaktForm.EditTelefondrei.Text;
        // Emails
        StringGrid1DBBandedTableView1.DataController.Values[Row, 12] := KontaktForm.cxComboBoxEmail.Text;
        StringGrid1DBBandedTableView1.DataController.Values[Row, 13] := KontaktForm.EditEmail.Text;
        StringGrid1DBBandedTableView1.DataController.Values[Row, 14] := KontaktForm.cxComboBoxEmailzwei.Text;
        StringGrid1DBBandedTableView1.DataController.Values[Row, 15] := KontaktForm.EditEmailzwei.Text;
        StringGrid1DBBandedTableView1.DataController.Values[Row, 16] := KontaktForm.cxComboBoxEmaildrei.Text;
        StringGrid1DBBandedTableView1.DataController.Values[Row, 17] := KontaktForm.EditEmaildrei.Text;
        // Аdresse
        StringGrid1DBBandedTableView1.DataController.Values[Row, 18] := KontaktForm.EditPLZ.Text;
        StringGrid1DBBandedTableView1.DataController.Values[Row, 19] := KontaktForm.EditOrt.Text;
        StringGrid1DBBandedTableView1.DataController.Values[Row, 20] := KontaktForm.EditStrasse.Text;
        StringGrid1DBBandedTableView1.DataController.Values[Row, 21] := KontaktForm.EditHausnummer.Text;
        // Bild
           if not KontaktForm.cxImage1.Picture.Graphic.Empty then begin
                      Base64Str := ImageToBase64(KontaktForm.cxImage1);
                      StringGrid1DBBandedTableView1.DataController.Values[Row, 23] := Base64Str;
           end else
                      StringGrid1DBBandedTableView1.DataController.Values[Row, 23] := '';

        MyQueryKontakt.Refresh;
      end;
    finally
      KontaktLoad.Free;
    end;
  finally
    KontaktForm.Free;
  end;
 UpdateStatus('');
end;


{Print}
procedure TStartListe.dxBarLargeButDruckenClick(Sender: TObject);
var
    AReportLink: TBasedxReportLink;
begin
  if StringGrid1DBBandedTableView1.DataController.RecordCount = 0 then  begin
    ShowMessage('Keine Datensätze zum Drucken vorhanden.');
    Exit;
  end;

  // dxComponentPrinter1
    AReportLink := dxComponentPrinter1.AddEmptyLinkEx(TdxGridReportLink, StringGrid1);
    AReportLink.Component := StringGrid1;

  if AReportLink <> nil then  begin
     AReportLink.ReportDocument.Caption := 'Kontakte Liste';
     AReportLink.Preview;
  end;
end;

{SuchenClick ->}
procedure TStartListe.Suchen1Click(Sender: TObject);
begin
  dxBarLargeButSuchenClick(Sender);
end;

{Timer}
procedure TStartListe.StartListeTimerTimer(Sender: TObject);
begin
  cxBarEditItemInfo.EditValue := '';
  StartListeTimer.Enabled := False;
end;

{AddContact ->}
procedure TStartListe.AcArchivierenExecute(Sender: TObject);
begin
  dxBarLargeButArchivierenClick(Sender);
end;

{Bearbeiten ->}
procedure TStartListe.AcBearbeitenExecute(Sender: TObject);
begin
  BearbeiteKontakt;
end;


procedure TStartListe.AcDatenqualitaetExecute(Sender: TObject);
begin
  dxBarLargeButQualitydatensClick(Sender);
end;


{Drucken->}
procedure TStartListe.AcDruckenExecute(Sender: TObject);
begin
  dxBarLargeButDruckenClick(Sender);
end;


{Kopieren ->}
procedure TStartListe.AcKalenderExecute(Sender: TObject);
begin
 dxBarLargeButtonKkalenderClick(Sender);
end;

procedure TStartListe.AcKopierenExecute(Sender: TObject);
begin
   KopierenClick(Sender);
end;

{Löschen ->}
procedure TStartListe.AcLoeschenExecute(Sender: TObject);
begin
  dxBarLargeButLoeschenClick(Sender);
end;

{Neu ->}
procedure TStartListe.AcNeuExecute(Sender: TObject);
begin
  dxBarLargeButNeuClick(Sender);
end;

{Schließen ->}
procedure TStartListe.SchliessenExecute(Sender: TObject);
begin
  dxBarLargeButSchliessenClick(Sender);
end;

{Suchen ->}
procedure TStartListe.AcSuchenExecute(Sender: TObject);
begin
  dxBarLargeButSuchenClick(Sender);
end;

{Zurücksetzen ->}
procedure TStartListe.AcZurueckExecute(Sender: TObject);
begin
  dxBarLargeButZuruckClick(Sender);
end;

{Add Kontakt to Grid}
//////////////////////////////////////////////////
//  ist schon nicht mehr nötig                  //
//////////////////////////////////////////////////
procedure TStartListe.AddKontaktToGrid(
  const Anrede, Titel, Name, Vorname, Geburtsdatum, ComboboxT1, Telefons,
  ComboboxT2, Telefonzwei, ComboboxT3, Telefondrei,
  ComboboxE1, Email, ComboboxE2, Emailzwei, ComboboxE3, Emaildrei,
  PLZ, Ort, Strasse, Hausnummer,  BildBase64: string);
var
  Telefon: TTelefon;
  EmailObj: TEmail;
  Adresse: TAdresse;
  Kontakt: TPerson;
  GeburtsdatumDate: TDateTime;
begin
  try
    GeburtsdatumDate := StrToDate(Geburtsdatum);
  except
    on E: EConvertError do begin
      MessageDlg('Das Geburtsdatum hat ein ungültiges Format.', mtError, [mbOK], 0);
      Exit;
    end;
  end;

  Telefon := TTelefon.Create(ComboboxT1, Telefons, ComboboxT2, Telefonzwei, ComboboxT3, Telefondrei);
  EmailObj := TEmail.Create(ComboboxE1, Email, ComboboxE2, Emailzwei, ComboboxE3, Emaildrei);
  Adresse := TAdresse.Create(PLZ, Ort, Strasse, Hausnummer);

  try
    Kontakt := TPerson.Create(
      [Anrede, Titel],   // AnredeTitel
      Name,              // Name
      Vorname,           // Vorname
      Telefon,           // Telefon
      EmailObj,          // Email
      Adresse,           // Adresse
      GeburtsdatumDate);
    Refresh;
    Kontakt.AddToGridWithImage(StringGrid1DBBandedTableView1, BildBase64);
  except
    on E: Exception do begin
      MessageDlg('Fehler beim Hinzufügen des Kontakts: ' + E.Message, mtError, [mbOK], 0);
    end;
  end;

  Telefon.Free;
  EmailObj.Free;
  Adresse.Free;
end;

{Druck}
procedure TStartListe.Listendruck1Click(Sender: TObject);
begin
  dxBarLargeButDruckenClick(Sender);
end;

{Zurücksetzen <->}
procedure TStartListe.dxBarLargeButZuruckClick(Sender: TObject);
begin
  if TTSuchen = TtGlobal then begin
   ResetGlobal;
//   UpdateCaptions;
  end else begin
   ResetLokal;
//   UpdateCaptionsLokal;
  end;
end;

{Reset Lokal}
procedure TStartListe.ResetLokal;
begin
  EditName.Text := '';
  EditVorname.Text := '';
  EditID.Text := '';
  EditStrasse.Text := '';
  EditPLZ.Text := '';
  EditOrt.Text := '';
  DateGeburtsdatum.Clear;

  StringGrid1DBBandedTableView1.DataController.Filter.Clear;
  StringGrid1DBBandedTableView1.DataController.Filter.Active := False;

  cxBarEditItemInfo.EditValue := 'Die Kontakte wurden zurückgesetzt...';
  StartlisteTimer.Enabled := True;
  cxBarEdititemStatus.ShowCaption := False;
end;




{Reset Global}
procedure TStartListe.ResetGlobal;
begin
  TTSuchen :=TtGlobal;
  EditName.Text := '';
  EditVorname.Text := '';
  EditID.Text := '';
  EditStrasse.Text := '';
  EditPLZ.Text := '';
  EditOrt.Text := '';
  DateGeburtsdatum.Clear;

  cxTextEditNotizenAutor.Text:='';
  cxImageComboBoxKategorie.ItemIndex:=-1;
  cxDateEditNotizErstellungsdatum.Clear;
  cxDateEditNotizLetzteAenderung.Clear;
  cxMemoNotizen.Clear;

  AcBearbeiten.Enabled:=false;
  AcArchivieren.Enabled:=false;
  Acloeschen.Enabled:=false;
  AcArchivieren.Enabled:=false;
  AcDrucken.Enabled:=false;
  AcKopieren.Enabled:=false;
  dxBarLargeButtonKalender.Enabled:=false;
  dxBarLargeButQualityDaten.Enabled:=false;
  cxBarEditItemGefunden.EditValue:=Null;
 // cxRadioButton1Click(Sender);
  cxBarEditItemModus.CanSelect:=true;
  StringGrid1DBBandedTableView1.DataController.RecordCount := 0;
  MyDataSourceKontakt.DataSet := nil;


  with MyQueryKontakt do begin
    Close;
    SQL.Text := '';
  end;

  // "Aktuell"
  cxComboBoxArchiv.ItemIndex := 0;

  dxBarLargeButSuchen.Enabled:=true;
  dxLayoutGroup2.CaptionOptions.Text := 'Kontaktdaten';

              cxBarEditItemInfo.EditValue:='Die Kontakte wurden zurückgesetzt...';
              StartlisteTimer.Enabled := True ;
              cxBarEdititemStatus.ShowCaption:=false;
end;

{Löschen ->}
procedure TStartListe.Lschen1Click(Sender: TObject);
begin
 dxBarLargeButLoeschenClick(Sender);
end;

{ADD Kontakt ->}
procedure TStartListe.NeueKontakt1Click(Sender: TObject);
begin
 dxBarLargeButNeuClick(Sender);
end;

{Schließen}
procedure TStartListe.dxBarLargeButSchliessenClick(Sender: TObject);
begin
  close;
end;

{Update Column Headers}
function TStartListe.UpdateColumnCaptions(FilterCondition: string): Integer;
begin
  Result := MyQueryKontakt.RecordCount;
  if Assigned(dxLayoutGroup2) then
    dxLayoutGroup2.CaptionOptions.Text := Format('Kontaktdaten (%d)', [Result]);
end;

{Status Update}
procedure TStartliste.UpdateStatus(StatusText: string);
begin
  cxBarEditItemStatus.EditValue := ' ' + StatusText;
end;

{Email ->}
procedure TStartListe.OpenEmail(const Email, Anrede, Titel, Name: string);
var
  Body, Subject: string;

     function EncodeURL(const Value: string): string;
      var
        I: Integer;
        Ch: Char;
        Encoded: string;
        Bytes: TBytes;
      begin
        Result := '';
        for I := 1 to Length(Value) do begin
          Ch := Value[I];
          if CharInSet(Ch, ['A'..'Z', 'a'..'z', '0'..'9', '-', '_', '.', '~']) then begin
            Result := Result + Ch;
          end else begin
            // UTF-8  %XX
            Bytes := TEncoding.UTF8.GetBytes(Ch);
            Encoded := '';
            for var B in Bytes do
              Encoded := Encoded + '%' + IntToHex(B, 2);
            Result := Result + Encoded;
          end;
        end;
      end;

begin
  if Email <> '' then begin
    ShellExecute(0, 'open', PChar('mailto:' + Email + '?subject=' + Subject + '&body=' + Body), nil, nil, SW_SHOWNORMAL);
  end;
end;

{ShowContacts(Status)}
procedure TStartListe.ShowContacts(Status: string);
var
  QueryFeld: TMSQuery;
  FeldList: TStringList;
  FullnessFilter, ArchivFilter, QueryString, FeldName: string;

  function JoinConditions(List: TStringList; const Delimiter: string): string;
  var
    i: Integer;
    ResultStr: string;
  begin
    ResultStr := '';
    for i := 0 to List.Count - 1 do  begin
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
    QueryFeld.Connection := MyConnection;
    QueryFeld.SQL.Text := 'SELECT Feldname FROM KontaktFeldEinstellungen WHERE Aktiv = 1 AND Modus = :Modus';
    QueryFeld.ParamByName('Modus').AsString := 'vollständig';
    QueryFeld.Open;

    while not QueryFeld.Eof do  begin
      FeldName := QueryFeld.FieldByName('Feldname').AsString;

      if Status = 'vollständig' then
        FeldList.Add(Format('(%s IS NOT NULL AND %s <> '''')', [FeldName, FeldName]))
      else if Status = 'unvollständig' then
        FeldList.Add(Format('(%s IS NULL OR %s = '''')', [FeldName, FeldName]));
        QueryFeld.Next;
    end;
    if Status = 'vollständig' then
      FullnessFilter := '(' + JoinConditions(FeldList, 'AND') + ')'
    else
      FullnessFilter := '(' + JoinConditions(FeldList, 'OR') + ')';
  finally
    QueryFeld.Free;
    FeldList.Free;
  end;

  case cxComboBoxArchiv.ItemIndex of
    0: ArchivFilter := 'IsArchived = 0';
    1: ArchivFilter := '1=1';
    2: ArchivFilter := 'IsArchived = 1';
  else
    ArchivFilter := '1=1';
  end;

  QueryString := 'SELECT * FROM Kontaktview WHERE ' + FullnessFilter + ' AND ' + ArchivFilter;

  with MyQueryKontakt do  begin
    Close;
    SQL.Text := QueryString;
    Open;
  end;

  MyDataSourceKontakt.DataSet := MyQueryKontakt;
  //FoundCount := UpdateColumnCaptions('1=1');
  cxBarEditItemGefunden.EditValue := 'Gefundene Kontakte: ' + IntToStr(MyQueryKontakt.RecordCount);
  FFullnessFilterStatus := Status;
end;

{GetContactQualityCount}
function TStartListe.GetContactQualityCount: TContactQuality;
var
  QueryFeld: TMSQuery;
  FeldListVoll, FeldListUnvoll: TStringList;
  SQLVoll, SQLUnvoll: string;
  Q: TMSQuery;
begin
  FeldListVoll := TStringList.Create;
  FeldListUnvoll := TStringList.Create;
  QueryFeld := TMSQuery.Create(nil);
  try
    QueryFeld.Connection := MyConnection;
    QueryFeld.SQL.Text := 'SELECT Feldname FROM KontaktFeldEinstellungen WHERE Aktiv = 1';
    QueryFeld.Open;

    while not QueryFeld.Eof do begin
      FeldListVoll.Add(Format('(%s IS NOT NULL AND %s <> '''')', [QueryFeld.FieldByName('Feldname').AsString, QueryFeld.FieldByName('Feldname').AsString]));
      FeldListUnvoll.Add(Format('(%s IS NULL OR %s = '''')', [QueryFeld.FieldByName('Feldname').AsString, QueryFeld.FieldByName('Feldname').AsString]));
      QueryFeld.Next;
    end;

    SQLVoll := 'SELECT COUNT(*) FROM Kontaktview WHERE ' + StringReplace(FeldListVoll.Text, sLineBreak, ' AND ', [rfReplaceAll]) + ' AND IsArchived = 0';
    SQLUnvoll := 'SELECT COUNT(*) FROM Kontaktview WHERE ' + StringReplace(FeldListUnvoll.Text, sLineBreak, ' OR ', [rfReplaceAll]) + ' AND IsArchived = 0';

    Q := TMSQuery.Create(nil);
    try
      Q.Connection := MyConnection;
      Q.SQL.Text := SQLVoll;
      Q.Open;
      Result.Vollstaendig := Q.Fields[0].AsInteger;

      Q.SQL.Text := SQLUnvoll;
      Q.Open;
      Result.Unvollstaendig := Q.Fields[0].AsInteger;
    finally
      Q.Free;
    end;

  finally
    QueryFeld.Free;
    FeldListVoll.Free;
    FeldListUnvoll.Free;
  end;
end;



{Qualität -> öffnen}
procedure TStartListe.dxBarLargeButQualitydatensClick(Sender: TObject);
var TKontaktQ:TTKontaktQ;
 begin
    TKontaktQ:=TTKontaktQ.Create(Nil);
     try
       TKontaktQ.ShowModal;
     finally
       TKontaktQ.free;
     end;
 end;


{Skins}
procedure TStartListe.dxBarSubItemSkinsClick(Sender: TObject);
var
  ASkinName: string;
  I: Integer;
  ItemLink: TdxBarItemLink;
  Btn: TdxBarButton;
begin
  if Sender is TdxBarButton then begin
    for I := 0 to dxBarSubItemSkins.ItemLinks.Count - 1 do begin
      ItemLink := dxBarSubItemSkins.ItemLinks[I];
      if ItemLink.Item is TdxBarButton then begin
        Btn := TdxBarButton(ItemLink.Item);
        Btn.Down := (Btn = Sender);
      end;
    end;

    ASkinName := TdxBarButton(Sender).Caption;

    // cxLookAndFeel
    cxLookAndFeelController1.Kind := lfFlat;
    cxLookAndFeelController1.NativeStyle := False;
    cxLookAndFeelController1.SkinName := ASkinName;

    //  dxBarManager
    dxBarManagerStartliste.LookAndFeel.Kind := lfFlat;
    dxBarManagerStartliste.LookAndFeel.NativeStyle := False;
    dxBarManagerStartliste.LookAndFeel.SkinName := ASkinName;
    if not Assigned(MyPapierkorb.Papierkorb) then
      MyPapierkorb.Papierkorb := TPapierkorb.Create(Application);

    // dxLayoutCxLookAndFeelMain
    if Assigned(MyPapierkorb.dxLayoutCxLookAndFeelMain) then begin
      MyPapierkorb.dxLayoutCxLookAndFeelMain.LookAndFeel.Kind := lfFlat;
      MyPapierkorb.dxLayoutCxLookAndFeelMain.LookAndFeel.NativeStyle := False;
      MyPapierkorb.dxLayoutCxLookAndFeelMain.LookAndFeel.SkinName := ASkinName;
    end;
    if Assigned(MyPapierkorb.Papierkorb) then begin
      MyPapierkorb.Papierkorb.SetGlobalLayoutSkin(ASkinName);
    end;
    // Layout
    UpdateLayoutControls(ASkinName);
    Application.ProcessMessages;
    Invalidate;
  end;
end;
procedure TStartListe.dxBarSubItemSkinsSClick(Sender: TObject);
var
  ASkinName: string;
  I: Integer;
  ItemLink: TdxBarItemLink;
  Btn: TdxBarButton;
begin
  if Sender is TdxBarButton then begin

    for I := 0 to dxBarSubItemSkins.ItemLinks.Count - 1 do begin
      ItemLink := dxBarSubItemSkins.ItemLinks[I];
      if ItemLink.Item is TdxBarButton then begin
        Btn := TdxBarButton(ItemLink.Item);
        Btn.Down := (Btn = Sender);
      end;
    end;

    ASkinName := TdxBarButton(Sender).Caption;


    cxLookAndFeelController1.Kind := lfFlat;
    cxLookAndFeelController1.SkinName := ASkinName;
    dxBarManagerStartliste.LookAndFeel.SkinName := ASkinName;

    if not Assigned(MyPapierkorb.Papierkorb) then
      MyPapierkorb.Papierkorb := TPapierkorb.Create(Application);

    if Assigned(MyPapierkorb.Papierkorb) then begin
      MyPapierkorb.Papierkorb.SetGlobalLayoutSkin(ASkinName);
    end;

    UpdateLayoutControls(ASkinName);
    Application.ProcessMessages;
    Invalidate;
  end;
end;

{Update Layout}
procedure TStartListe.UpdateLayoutControls(const ASkinName: string);
var
  I, J: Integer;
  Component: TComponent;
  LayoutControl: TdxLayoutControl;
  Form: TForm;
begin
  //LookAndFeel
  if Assigned(MyPapierkorb.dxLayoutCxLookAndFeelMain) then begin
    MyPapierkorb.dxLayoutCxLookAndFeelMain.LookAndFeel.Kind := lfFlat;
    MyPapierkorb.dxLayoutCxLookAndFeelMain.LookAndFeel.NativeStyle := False;
    MyPapierkorb.dxLayoutCxLookAndFeelMain.LookAndFeel.SkinName := ASkinName;
  end;

  // Layout
  for I := 0 to ComponentCount - 1 do begin
    Component := Components[I];
    if Component is TdxLayoutControl then begin
      LayoutControl := TdxLayoutControl(Component);
      LayoutControl.BeginUpdate;
      try
        LayoutControl.LookAndFeel := nil;
        LayoutControl.LookAndFeel := MyPapierkorb.dxLayoutCxLookAndFeelMain;
      finally
        LayoutControl.EndUpdate;
      end;
    end;
  end;

  // Layout
  for I := 0 to Screen.FormCount - 1 do begin
    Form := Screen.Forms[I];
    for J := 0 to Form.ComponentCount - 1 do begin
      if Form.Components[J] is TdxLayoutControl then begin
        LayoutControl := TdxLayoutControl(Form.Components[J]);
        LayoutControl.BeginUpdate;
        try

          LayoutControl.LookAndFeel := nil;
          LayoutControl.LookAndFeel := MyPapierkorb.dxLayoutCxLookAndFeelMain;
        finally
          LayoutControl.EndUpdate;
        end;
      end;
    end;
    Form.Invalidate;
  end;
  Application.ProcessMessages;
end;



{Anrede}
procedure TStartListe.dxBarLargeButtonAnredeClick(Sender: TObject);
begin
  ShowOptionForm(ttAnrede);
end;

{Telefontyp}
procedure TStartListe.dxBarLargeButtonTelefontypenClick(Sender: TObject);
begin
  ShowOptionForm(ttTelefontypen)
end;

{Titel}
procedure TStartListe.dxBarLargeButtonTitelClick(Sender: TObject);
begin
   ShowOptionForm(ttTitel);
end;



{Email}
procedure TStartListe.dxBarLargeButtonEmailtypenClick(Sender: TObject);
begin
  ShowOptionForm(ttEmailtypen);
end;


{OptionForm}
procedure TStartListe.ShowOptionForm(TableType: TTableType);
var
  OptionMenu: TOptionForm;
begin
  OptionMenu := TOptionForm.Create(Self);
  try
    OptionMenu.SetActiveTableName(TableNames[TableType]);
    OptionMenu.LoadTable(TableNames[TableType]);
    OptionMenu.UpdateColumnCaptions;
    OptionMenu.ShowModal;
  finally
    OptionMenu.Free;
  end;
end;

{Listendruck}
procedure TStartListe.dxBarLargeButListendruckClick(Sender: TObject);
var
  PersonIDs: TList<Integer>;
  i: Integer;
begin
  if StringGrid1DBBandedTableView1.Controller.SelectedRowCount = 0 then  begin
    ShowMessage('Bitte wählen Sie mindestens einen Kontakt aus.');
    Exit;
  end;
  PersonIDs := TList<Integer>.Create;
  try
    for i := 0 to StringGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do  begin
      PersonIDs.Add(
        StringGrid1DBBandedTableView1.Controller.SelectedRecords[i].Values[
          StringGrid1DBBandedTableView1.GetColumnByFieldName('PersonID').Index]
      );
    end;

    MyReport := TMyReport.Create(Application);
    try
      MyReport.SetReportData('Kontakte', PersonIDs, 'Kontaktliste');
      MyReport.ShowModal;
    finally
      MyReport.Free;
    end;

  finally
    PersonIDs.Free;
  end;
end;


{Auto Archivieren}
procedure TStartListe.AutoArchiveInactiveContacts(Connection: TMSConnection);
var
  Query: TMSQuery;
  UpdateQuery: TMSQuery;
  ContactID: Integer;
  LastActiveDate: TDate;
  DaysInactiveMax: Integer;
  DaysInactive: Integer;
  Enabled: Boolean;
begin
  Query := TMSQuery.Create(nil);
  UpdateQuery := TMSQuery.Create(nil);
  try
    Query.Connection :=Connection;
    UpdateQuery.Connection := Connection;


    Query.SQL.Text :=
      'SELECT K.PersonID, KA.Enabled, KA.LastActiveDate, KA.DaysInactiveMax, K.IsArchived ' +
      'FROM Kontakt K ' +
      'JOIN KontaktAutoArchiv KA ON K.PersonID = KA.PersonID ' +
      'WHERE K.IsArchived = 0 AND KA.Enabled = 1';

    Query.Open;

    while not Query.Eof do  begin
      ContactID := Query.FieldByName('PersonID').AsInteger;
      LastActiveDate := Query.FieldByName('LastActiveDate').AsDateTime;
      DaysInactiveMax := Query.FieldByName('DaysInactiveMax').AsInteger;
      Enabled := Query.FieldByName('Enabled').AsBoolean;

      DaysInactive := -1;
      if not Query.FieldByName('LastActiveDate').IsNull then
       if Date > LastActiveDate then
        DaysInactive := DaysBetween(LastActiveDate, Date)
       else
        DaysInactive := 0;

      if (DaysInactive >= DaysInactiveMax) and (DaysInactive >= 0) then begin
        UpdateQuery.SQL.Text := 'UPDATE Kontakt SET IsArchived = 1 WHERE PersonID = :PersonID';
        ShowMessage('Kontakt wurde archiviert:'+IntToStr(ContactID));
        UpdateQuery.Params.ParamByName('PersonID').AsInteger := ContactID;
        UpdateQuery.ExecSQL;
      end;
      Query.Next;
    end;
  finally
    Query.Free;
    UpdateQuery.Free;
  end;
end;

{Update LastActiveDate}
procedure TStartListe.UpdateLastActiveDate(Connection: TMSConnection; PersonID: Integer);
var
  Q: TMSQuery;
begin
  Q := TMSQuery.Create(nil);
  try
    Q.Connection := Connection;
    Q.SQL.Text := 'UPDATE KontaktAutoArchiv SET LastActiveDate = GETDATE() WHERE PersonID = :PersonID';
    Q.ParamByName('PersonID').AsInteger := PersonID;
    Q.ExecSQL;
  finally
    Q.Free;
  end;
end;


{Exportieren ->}
procedure TStartListe.ExportToExcel(const FileName: string);
begin
  if StringGrid1DBBandedTableView1.DataController.RecordCount = 0 then begin
    ShowMessage('Keine Daten zum Exportieren.');
    Exit;
  end;

  ExportGridToExcel(FileName, StringGrid1, True, True, True, 'xlsx');
  ShowMessage('Export erfolgreich.');
end;

procedure TStartListe.ExportzuDocxClick(Sender: TObject);
begin
 dxBarLargeButExportDocsClick(Sender);
end;


procedure TStartListe.ExportzuExcelClick(Sender: TObject);
begin
 dxBarLargeButExcelClick(Sender);
end;

procedure TStartListe.ExportzuRasterImageClick(Sender: TObject);
begin
 dxBarLargeButRasterImageClick(Sender);
end;

{Export to Excel}
procedure TStartListe.dxBarLargeButExcelClick(Sender: TObject);
var
  SaveDialog: TSaveDialog;
  FileName: string;
begin
  if StringGrid1DBBandedTableView1.DataController.RecordCount = 0 then begin
    ShowMessage('Keine Datensätze zum Exportieren vorhanden.');
    Exit;
  end;
  SaveDialog := TSaveDialog.Create(nil);
  try
    SaveDialog.Title := 'Speichern unter';
    SaveDialog.Filter := 'Excel-Dateien (*.xlsx)|*.xlsx|Alle Dateien (*.*)|*.*';
    SaveDialog.DefaultExt := 'xlsx';
    SaveDialog.FileName := 'Exportiertedata.xlsx';
    SaveDialog.Options := [ofOverwritePrompt];

    if SaveDialog.Execute then begin
      FileName := SaveDialog.FileName;

      ExportGridToExcel(FileName, StringGrid1, True, True, True, 'xls');

      cxBarEditItemInfo.EditValue := 'Die Kontakte wurden erfolgreich exportiert';
    end else begin
      cxBarEditItemInfo.EditValue := 'Exportieren wurde abgebrochen...';
    end;

    StartlisteTimer.Enabled := True;
  finally
    SaveDialog.Free;
  end;
  MyQueryKontakt.Open;
end;


{Export To Docx}
procedure TStartListe.dxBarLargeButExportDocsClick(Sender: TObject);
var
  SaveDialog: TSaveDialog;
  FileName: string;
begin
  if StringGrid1DBBandedTableView1.DataController.RecordCount = 0 then begin
    ShowMessage('Keine Datensätze zum Exportieren vorhanden.');
    Exit;
  end;


  SaveDialog := TSaveDialog.Create(nil);
  try
    SaveDialog.Title := 'Speichern unter';
    SaveDialog.Filter := 'Word-Dokumente (*.docx)|*.docx|Alle Dateien (*.*)|*.*';
    SaveDialog.DefaultExt := 'docx';
    SaveDialog.FileName := 'ExportierteDaten.docx';
    SaveDialog.Options := [ofOverwritePrompt];

    if SaveDialog.Execute then  begin
      FileName := SaveDialog.FileName;

      ExportGridDataToXLSX(FileName, StringGrid1, True, True, True);

      cxBarEditItemInfo.EditValue := 'Die Kontakte wurden erfolgreich nach Word exportiert';
    end    else    begin
      cxBarEditItemInfo.EditValue := 'Exportieren wurde abgebrochen...';
    end;

    StartlisteTimer.Enabled := True;
  finally
    SaveDialog.Free;
  end;
  MyQueryKontakt.Open;
end;


procedure TStartListe.dxBarLargeButInfoClick(Sender: TObject);
var AboutBox: TAboutBox;
begin
    AboutBox:=TAboutBox.Create(self);
    try
      AboutBox.ShowModal;
    finally
      AboutBox.Free;
    end;

end;

{Export to Raster Image}
procedure TStartListe.dxBarLargeButRasterImageClick(Sender: TObject);
var
  SaveDialog: TSaveDialog;
  FileName: string;
begin
  if StringGrid1DBBandedTableView1.DataController.RecordCount = 0 then
  begin
    ShowMessage('Keine Datensätze zum Exportieren vorhanden.');
    Exit;
  end;

  SaveDialog := TSaveDialog.Create(nil);
  try
    SaveDialog.Title := 'Speichern unter';
    SaveDialog.Filter := 'PNG-Bilder (*.png)|*.png|JPEG-Bilder (*.jpg)|*.jpg|Alle Dateien (*.*)|*.*';
    SaveDialog.DefaultExt := 'png';
    SaveDialog.FileName := 'ExportierteDaten.png';
    SaveDialog.Options := [ofOverwritePrompt];

    if SaveDialog.Execute then   begin
      FileName := SaveDialog.FileName;

      ExportGridDataToXML(FileName, StringGrid1, True, True);

      cxBarEditItemInfo.EditValue := 'Die Kontakte wurden erfolgreich als Bild exportiert';
    end    else    begin
      cxBarEditItemInfo.EditValue := 'Exportieren wurde abgebrochen...';
    end;

    StartlisteTimer.Enabled := True;
  finally
    SaveDialog.Free;
  end;

  MyQueryKontakt.Open;
end;


{Descriptions}
procedure TStartListe.LoadCategoryDescriptions;
//var
//  SQLQuery: TMSQuery;
begin
//  FCatDescriptions := TDictionary<Integer, string>.Create;
//
//  SQLQuery := TMSQuery.Create(nil);
//  try
//    SQLQuery.Connection := MyConnection;
//    SQLQuery.SQL.Text := 'SELECT KategorieID, Beschreibung FROM KontaktKategorie';
//    SQLQuery.Open;
//
//    while not SQLQuery.Eof do begin
//      FCatDescriptions.AddOrSetValue(
//        SQLQuery.FieldByName('KategorieID').AsInteger,
//        SQLQuery.FieldByName('Beschreibung').AsString
//      );
//      SQLQuery.Next;
//    end;
//  finally
//    SQLQuery.Free;
//  end;
end;

{Ausblenden Action}
procedure TStartListe.AcAusblendenExecute(Sender: TObject);
begin
  dxBarButtonNurTabelleClick(Sender);
end;

{AutoArchiv}
procedure TStartListe.AcAutoarchivExecute(Sender: TObject);
var
  ColPersonID, ColEnabled: Integer;
  PersonID: Integer;
  IsEnabled: Boolean;
  Sql: TMSQuery;
  Rec: TcxCustomGridRecord;
  ColPerson, ColEnabledCol: TcxGridColumn;
begin
  Rec := StringGrid1DBBandedTableView1.Controller.FocusedRecord;
  if (Rec = nil) or not Rec.IsData then Exit;

  ColPerson := StringGrid1DBBandedTableView1.GetColumnByFieldName('PersonID');
  ColEnabledCol := StringGrid1DBBandedTableView1.GetColumnByFieldName('Enabled');

  if (ColPerson = nil) or (ColEnabledCol = nil) then begin
    ShowMessage('Kolumnen PersonID oder Enabled nicht gefunden!');
    Exit;
  end;

  ColPersonID := ColPerson.Index;
  ColEnabled := ColEnabledCol.Index;

  PersonID := Integer(Rec.Values[ColPersonID]);

  if PersonID = 0 then begin
    ShowMessage('PersonID ist 0. Bitte eine gültige Zeile auswählen.');
    Exit;
  end;
  IsEnabled := Boolean(Rec.Values[ColEnabled]);
  IsEnabled := not IsEnabled;

  Sql := TMSQuery.Create(nil);
  try
    Sql.Connection := MyConnection;
    Sql.SQL.Text := 'UPDATE KontaktAutoArchiv SET Enabled = :Enabled WHERE PersonID = :PersonID';

    if IsEnabled then
      Sql.ParamByName('Enabled').AsInteger := 1
    else
      Sql.ParamByName('Enabled').AsInteger := 0;

    Sql.ParamByName('PersonID').AsInteger := PersonID;
    Sql.ExecSQL;

    AcAutoarchiv.Checked := IsEnabled;
    if IsEnabled then
      AcAutoarchiv.Caption := 'Autoarchiv deaktivieren'
    else
      AcAutoarchiv.Caption := 'Autoarchiv aktivieren';

  finally
    Sql.Free;
  end;

  StringGrid1DBBandedTableView1.DataController.Refresh;
  MyQueryKontakt.Refresh;
end;



{FindTabKategorie}
function TStartListe.FindTabByCategory(CategoryID: Integer): TcxTabSheet;
var
  i: Integer;
begin
  Result := nil;
  for i := 0 to cxFTabControl.PageCount - 1 do  begin
    if cxFTabControl.Pages[i].Tag = CategoryID then begin
      Result := cxFTabControl.Pages[i];
      Break;
    end;
  end;
end;

{Kunde}
procedure TStartListe.dxBarLargeButtonKundeClick(Sender: TObject);
begin
  ShowCategoryTab(2);
end;

{Lieferant}
procedure TStartListe.dxBarLargeButtonLieferantClick(Sender: TObject);
begin
  ShowCategoryTab(4);
end;

{Partner}
procedure TStartListe.dxBarLargeButtonPartnerClick(Sender: TObject);
begin
  ShowCategoryTab(5);
end;

{Interessent}
procedure TStartListe.dxBarLargeButtonInteressenteClick(Sender: TObject);
begin
  ShowCategoryTab(6);
end;

{Intern}
procedure TStartListe.dxBarLargeButtonInternClick(Sender: TObject);
begin
  ShowCategoryTab(9);
end;

{Extern}
procedure TStartListe.dxBarLargeButtonExterneClick(Sender: TObject);
begin
  ShowCategoryTab(3);
end;

{Sontiges}
procedure TStartListe.dxBarLargeButtonSontigesClick(Sender: TObject);
begin
  ShowCategoryTab(7);
end;

{Standart Kunden}
procedure TStartListe.dxBarLargeButtonStandardKundenClick(Sender: TObject);
begin
  ShowCategoryTab(2);
end;

{VIPs}
procedure TStartListe.dxBarLargeButtonVIPsClick(Sender: TObject);
var
  VipTab: TcxTabSheet;
begin
  VipTab := FindTabByCategory(1);
  if Assigned(VipTab) then
  ShowCategoryTab(1);
end;

{Frame Create}
procedure TStartListe.FramCreateKunden;
begin
  if not Assigned(cxFTabControl.ActivePage) then  begin
    ShowMessage('FramCreateKunden: ActivePage is nil');
    Exit;
  end;

  if (cxFTabControl.ActivePage.Tag = 1) then begin
    if dxLayoutControlKategorien.Parent <> cxFTabControl.ActivePage then begin
      dxLayoutControlKategorien.Parent := cxFTabControl.ActivePage;
      dxLayoutControlKategorien.Align := alTop;
      dxLayoutControlKategorien.Height := 200;
    end;

    if not Assigned(FCurrentFrame) then begin
      FCurrentFrame := TFrameKundeVIP.Create(Self);
      FCurrentFrame.Parent := dxLayoutControlKategorien;
      FCurrentFrame.Align := alClient;
      FCurrentFrame.Width := 1416;
      FCurrentFrame.Visible := True;
    end;
  end;
end;

{Alle}
procedure TStartListe.dxBarLargeButtonAlleClickClick(Sender: TObject);
begin
 //SwitchToCategory(0);
 ShowCategoryTab(0);
end;

{Move To Grid}
procedure TStartListe.MoveGridToTab(TargetTab: TcxTabSheet; CategoryID: Integer);
begin
  if StringGrid1.Parent <> TargetTab then begin
    StringGrid1.Parent := TargetTab;
    if CategoryID = 1 then begin
      StringGrid1.Align := alNone;
      StringGrid1.Top := 200;
      StringGrid1.Left := 0;
      StringGrid1.Width := TargetTab.ClientWidth;
      StringGrid1.Height := TargetTab.ClientHeight - 200;
      StringGrid1.Anchors := [akLeft, akTop, akRight, akBottom];
    end  else
     StringGrid1.Align := alClient;
     FCurrentTabWithGrid := TargetTab;
  end;

  cxFTabControl.ActivePage := TargetTab;
  FCurrentCategoryID := CategoryID;
//  FSelectedKategorieID := CategoryID;
  SuchenGlobal;
end;

{GetCategoryFilter}
function TStartListe.GetCategoryFilter: string;
begin
  Result := '1=1';
  if FSelectedKategorieID > 0 then begin
    Result := 'EXISTS (SELECT 1 FROM KontaktKategorieZuordnung kkz ' +
              'WHERE kkz.PersonID = k.PersonID AND kkz.KategorieID = ' +
              IntToStr(FSelectedKategorieID) + ')';
  end;
end;

{TabControlChange}
procedure TStartListe.TabControlChange(Sender: TObject);
begin
  if Assigned(cxFTabControl.ActivePage) then  begin
    SwitchToCategory(cxFTabControl.ActivePage.Tag);
  end;
end;

{Create Category Tabs}
procedure TStartListe.CreateCategoryTabs;
var
  VipTab, MitarbeiterTab, KundenTab, LieferantTab, PartnerTab, InteressentTab, SonstigesTab, InterneTab, OhneTab: TcxTabSheet;
begin
  // Alle Kontakte
  cxTabSheet1.Caption := GetTabCaptionWithCount('Alle Kontakte', 0);
  cxTabSheet1.Tag := 0;
  cxTabSheet1.TabVisible := True;
  FTabsCache.AddOrSetValue(0, cxTabSheet1);
  FTabsVisible.AddOrSetValue(0, True);

  // VIP
  VipTab := TcxTabSheet.Create(cxFTabControl);
  VipTab.PageControl := cxFTabControl;
  VipTab.Caption := GetTabCaptionWithCount('VIP-Kunden', 1);
  VipTab.Tag := 1;
  VipTab.TabVisible := False;
  FTabsCache.AddOrSetValue(1, VipTab);
  FTabsVisible.AddOrSetValue(1, False);

  // Standard-Kunden
  KundenTab := TcxTabSheet.Create(cxFTabControl);
  KundenTab.PageControl := cxFTabControl;
  KundenTab.Caption := GetTabCaptionWithCount('Standard-Kunden', 2);
  KundenTab.Tag := 2;
  KundenTab.TabVisible := False;
  FTabsCache.AddOrSetValue(2, KundenTab);
  FTabsVisible.AddOrSetValue(2, False);

  // Externe Mitarbeiter
  MitarbeiterTab := TcxTabSheet.Create(cxFTabControl);
  MitarbeiterTab.PageControl := cxFTabControl;
  MitarbeiterTab.Caption := GetTabCaptionWithCount('Externe Mitarbeiter', 3);
  MitarbeiterTab.Tag := 3;
  MitarbeiterTab.TabVisible := False;
  FTabsCache.AddOrSetValue(3, MitarbeiterTab);
  FTabsVisible.AddOrSetValue(3, False);

  LieferantTab := TcxTabSheet.Create(cxFTabControl);
  LieferantTab.PageControl := cxFTabControl;
  LieferantTab.Caption := GetTabCaptionWithCount('Lieferanten', 4);
  LieferantTab.Tag := 4;
  LieferantTab.TabVisible := False;
  FTabsCache.AddOrSetValue(4, LieferantTab);
  FTabsVisible.AddOrSetValue(4, False);

  PartnerTab := TcxTabSheet.Create(cxFTabControl);
  PartnerTab.PageControl := cxFTabControl;
  PartnerTab.Caption := GetTabCaptionWithCount('Partner', 5);
  PartnerTab.Tag := 5;
  PartnerTab.TabVisible := False;
  FTabsCache.AddOrSetValue(5, PartnerTab);
  FTabsVisible.AddOrSetValue(5, False);

  InteressentTab := TcxTabSheet.Create(cxFTabControl);
  InteressentTab.PageControl := cxFTabControl;
  InteressentTab.Caption := GetTabCaptionWithCount('Interessenten-Kunden', 6);
  InteressentTab.Tag := 6;
  InteressentTab.TabVisible := False;
  FTabsCache.AddOrSetValue(6, InteressentTab);
  FTabsVisible.AddOrSetValue(6, False);

  SonstigesTab := TcxTabSheet.Create(cxFTabControl);
  SonstigesTab.PageControl := cxFTabControl;
  SonstigesTab.Caption := GetTabCaptionWithCount('Sonstiges', 7);
  SonstigesTab.Tag := 7;
  SonstigesTab.TabVisible := False;
  FTabsCache.AddOrSetValue(7, SonstigesTab);
  FTabsVisible.AddOrSetValue(7, False);

  OhneTab := TcxTabSheet.Create(cxFTabControl);
  OhneTab.PageControl := cxFTabControl;
  OhneTab.Caption := GetTabCaptionWithCount('Ohne', 8);
  OhneTab.Tag := 8;
  OhneTab.TabVisible := False;
  FTabsCache.AddOrSetValue(8, OhneTab);
  FTabsVisible.AddOrSetValue(8, False);

  InterneTab := TcxTabSheet.Create(cxFTabControl);
  InterneTab.PageControl := cxFTabControl;
  InterneTab.Caption := GetTabCaptionWithCount('Interne Mitarbeiter', 9);
  InterneTab.Tag := 9;
  InterneTab.TabVisible := False;
  FTabsCache.AddOrSetValue(9, InterneTab);
  FTabsVisible.AddOrSetValue(9, False);

  StringGrid1.Parent := cxTabSheet1;
  StringGrid1.Align := alClient;
  FCurrentTabWithGrid := cxTabSheet1;
  cxFTabControl.OnChange := cxFTabControlChange;
end;

{GetTabCaption}
function TStartListe.GetTabCaptionWithCount(const BaseName: string; CategoryID: Integer): string;
var
  Count: Integer;
//  Query: TMSQuery;
  CurrentActiveTab: TcxTabSheet;
begin
  Count := 0;

  CurrentActiveTab := cxFTabControl.ActivePage;
  if Assigned(CurrentActiveTab) and (FTabsCache.ContainsValue(CurrentActiveTab)) then  begin
    var ActiveCategoryID: Integer := -1;
    for var KVPair in FTabsCache do  begin
      if KVPair.Value = CurrentActiveTab then begin
        ActiveCategoryID := KVPair.Key;
        Break;
      end;
    end;

    if ActiveCategoryID = CategoryID then  begin
      Count := StringGrid1DBBandedTableView1.DataController.RecordCount;
      Result := Format('%s (%d)', [BaseName, Count]);
      Exit;

    end;
  end;

//  Query := TMSQuery.Create(nil);
//  try
//    Query.Connection := MyConnection;
//
//    if CategoryID = 0 then
//      WhereClause := 'IsArchived = 0'
//    else
//      WhereClause := Format('KategorieID = %d AND IsArchived = 0', [CategoryID]);
//
//    Query.SQL.Text := Format('SELECT COUNT(*) as Total FROM Kontakt WHERE %s', [WhereClause]);
//    Query.Open;
//
//    if not Query.IsEmpty then
//      Count := Query.FieldByName('Total').AsInteger;
//  finally
//    Query.Free;
//  end;

  Result := Format('%s (%d)', [BaseName, Count]);
end;

{ControlChange}
procedure TStartListe.cxFTabControlChange(Sender: TObject);
begin
  if FUsedContactsMode then begin
    ApplyUsedContactsFilter;
  end  else  begin
     if Assigned(cxFTabControl) and Assigned(cxFTabControl.ActivePage) then
      FramCreateKunden;
      MoveGridToTab(cxFTabControl.ActivePage, cxFTabControl.ActivePage.Tag);
      //cxBarEditItemStatus.EditValue:=cxFTabControl.ActivePage.Caption;
      UpdateTabColor;
  end;
end;



{Initialize}
procedure TStartListe.InitializeCategoryTabs;
begin
//  FCategoryTabs[0].CategoryID := 0;
//  FCategoryTabs[0].TabName := 'Alle Kontakte';
//  FCategoryTabs[0].Filter := '1=1';
//
//  FCategoryTabs[1].CategoryID := 1;
//  FCategoryTabs[1].TabName := 'VIP-Kunden';
//  FCategoryTabs[1].Filter := 'KategorieID = 1';
//
//  FCategoryTabs[2].CategoryID := 2;
//  FCategoryTabs[2].TabName := 'Standard-Kunden';
//  FCategoryTabs[2].Filter := 'KategorieID = 2';
//
//  FCategoryTabs[3].CategoryID := 3;
//  FCategoryTabs[3].TabName := 'Externe Mitarbeiter';
//  FCategoryTabs[3].Filter := 'KategorieID = 3';
//
//  FCategoryTabs[4].CategoryID := 4;
//  FCategoryTabs[4].TabName := 'Lieferanten';
//  FCategoryTabs[4].Filter := 'KategorieID = 4';
//
//  FCategoryTabs[5].CategoryID := 5;
//  FCategoryTabs[5].TabName := 'Partner';
//  FCategoryTabs[5].Filter := 'KategorieID = 5';
//
//  FCategoryTabs[6].CategoryID := 6;
//  FCategoryTabs[6].TabName := 'Interessenten';
//  FCategoryTabs[6].Filter := 'KategorieID = 6';
//
//  FCategoryTabs[7].CategoryID := 7;
//  FCategoryTabs[7].TabName := 'Sonstiges';
//  FCategoryTabs[7].Filter := 'KategorieID = 7';
//
//  FCategoryTabs[8].CategoryID := 8;
//  FCategoryTabs[8].TabName := 'Ohne';
//  FCategoryTabs[8].Filter := 'KategorieID = 8';
//
//  FCategoryTabs[9].CategoryID := 9;
//  FCategoryTabs[9].TabName := 'Interne Mitarbeiter';
//  FCategoryTabs[9].Filter := 'KategorieID = 9';
end;

{TabsDeaktiv}
procedure TStartListe.TabsDeaktiv;
begin
  if TTStartListe = ttDeaktiv then begin
    // "Alle Kontakte"
    if Assigned(OhneTab) then OhneTab.TabVisible := False;
    if Assigned(VipTab) then VipTab.TabVisible := False;
    if Assigned(KundenTab) then KundenTab.TabVisible := False;
    if Assigned(MitarbeiterTab) then MitarbeiterTab.TabVisible := False;
    if Assigned(LieferantTab) then LieferantTab.TabVisible := False;
    if Assigned(PartnerTab) then PartnerTab.TabVisible := False;
    if Assigned(InterneTab) then InterneTab.TabVisible := False;
    if Assigned(SonstigesTab) then SonstigesTab.TabVisible := False;
    if Assigned(InteressentTab) then InteressentTab.TabVisible := False;
  end else if TTStartListe = ttAktiv then begin
    if Assigned(OhneTab) then OhneTab.TabVisible := True;
    if Assigned(VipTab) then VipTab.TabVisible := True;
    if Assigned(KundenTab) then KundenTab.TabVisible := True;
    if Assigned(MitarbeiterTab) then MitarbeiterTab.TabVisible := True;
    if Assigned(LieferantTab) then LieferantTab.TabVisible := True;
    if Assigned(PartnerTab) then PartnerTab.TabVisible := True;
    if Assigned(InterneTab) then InterneTab.TabVisible := True;
    if Assigned(SonstigesTab) then SonstigesTab.TabVisible := True;
    if Assigned(InteressentTab) then InteressentTab.TabVisible := True;
  end;
end;

{Apply Used Contact}
procedure TStartListe.ApplyUsedContactsFilter;
var
  BezeichnungList, SQLCondition: string;
  i: Integer;
begin
  SetTabMode(TtDeaktiv);
 //  StringGrid1DBBandedTableView1.OnDblClick:=nil;
  cxLabelFarbe.Visible:=False;
  with MyQueryKontakt do begin
    Close;

    if Length(FUsedContactsBezeichnungen) = 1 then   begin
      SQL.Text := 'SELECT * FROM KontaktView ' +
                  'WHERE Anrede = :Bezeichnung OR Titel = :Bezeichnung OR ' +
                  'Telefontyp = :Bezeichnung OR Telefontyp2 = :Bezeichnung OR Telefontyp3 = :Bezeichnung OR ' +
                  'Emailtyp = :Bezeichnung OR Emailtyp2 = :Bezeichnung OR Emailtyp3 = :Bezeichnung';
      ParamByName('Bezeichnung').AsString := FUsedContactsBezeichnungen[0];
    end else    begin
      BezeichnungList := '';
      for i := 0 to High(FUsedContactsBezeichnungen) do begin
         if i > 0 then BezeichnungList := BezeichnungList + ', ';
        BezeichnungList := BezeichnungList + QuotedStr(FUsedContactsBezeichnungen[i]);
      end;

      SQLCondition := Format(
        '(Anrede IN (%s) OR Titel IN (%s) OR ' +
        'Telefontyp IN (%s) OR Telefontyp2 IN (%s) OR Telefontyp3 IN (%s) OR ' +
        'Emailtyp IN (%s) OR Emailtyp2 IN (%s) OR Emailtyp3 IN (%s))',
        [BezeichnungList, BezeichnungList, BezeichnungList, BezeichnungList, BezeichnungList, BezeichnungList, BezeichnungList, BezeichnungList]);

      SQL.Text := 'SELECT * FROM KontaktView WHERE ' + SQLCondition;
    end;

    Open;
  end;
  if Assigned(dxLayoutGroup2) then
    dxLayoutGroup2.CaptionOptions.Text := Format('Kontaktdaten (%d)', [MyQueryKontakt.RecordCount]);

  if Length(FUsedContactsBezeichnungen) = 1 then
    Caption := Format('Kontaktliste [Nicht löschbare %s : %s]', [FUsedContactsTableName, FUsedContactsBezeichnungen[0]])
  else
    Caption := Format('Kontaktliste [Nicht löschbare %s: %s]', [FUsedContactsTableName, String.Join(', ', FUsedContactsBezeichnungen)]);
end;


{Update Color}
procedure TStartListe.UpdateTabColor;
begin
  if not Assigned(cxFTabControl.ActivePage) then Exit;

  case cxFTabControl.ActivePage.Tag of
    0: cxLabelFarbe.Style.Color := clWhite;                 // Alle Kontakte
    1: cxLabelFarbe.Style.Color := clWebOrange;            // VIP
    2: cxLabelFarbe.Style.Color := clGray;                // Standard-Kunden
    3: cxLabelFarbe.Style.Color := clWebCrimson;         // Externe Mitarbeiter //clWebCrimson
    4: cxLabelFarbe.Style.Color := clWebDeepskyBlue;    // Lieferant
    5: cxLabelFarbe.Style.Color := clWebLimeGreen;     // Partner
    6: cxLabelFarbe.Style.Color := clWebHotPink;      // Interessent
    7: cxLabelFarbe.Style.Color := clBlack;          // Sonstiges
    8: cxLabelFarbe.Style.Color := clWhite;         // Ohne
    9: cxLabelFarbe.Style.Color := clWebDodgerBlue;// Interne Mitarbeiter
  end;
end;


{Set Tab}
procedure TStartListe.SetTabMode(Mode: TTabMode);
begin
  TTStartListe := Mode;
  TabsDeaktiv;
end;

{Hide All Category}
procedure TStartListe.HideAllCategoryTabs;
var
  i: Integer;
begin
  for i := 1 to cxFTabControl.PageCount - 1 do  begin
    cxFTabControl.Pages[i].TabVisible := False;
  end;
end;

{Show Category}
procedure TStartListe.ShowCategoryTab(CategoryID: Integer);
var
  TabSheet: TcxTabSheet;
begin
  if FTabsCache.ContainsKey(CategoryID) then begin
    TabSheet := FTabsCache[CategoryID];
    TabSheet.TabVisible := True;
    FTabsVisible.AddOrSetValue(CategoryID, True);
    MoveGridToTab(TabSheet, CategoryID);
  end;
end;

{Hide Category}
procedure TStartListe.HideCategoryTab(CategoryID: Integer);
var
  TabSheet: TcxTabSheet;
begin
  if FTabsCache.ContainsKey(CategoryID) then begin
    TabSheet := FTabsCache[CategoryID];
    TabSheet.TabVisible := False;
    FTabsVisible.AddOrSetValue(CategoryID, False);

    if cxFTabControl.ActivePage = TabSheet then  begin
      ShowCategoryTab(0); // "Alle Kontakte"
    end;
  end;
end;

{Tab Control}
procedure TStartListe.TabControlCanCloseEx(Sender: TObject; ATabIndex: Integer; var ACanClose: Boolean);
var
  TabSheet: TcxTabSheet;
  CategoryID: Integer;
begin
  TabSheet := cxFTabControl.Pages[ATabIndex];
  CategoryID := TabSheet.Tag;
  ACanClose := False;
  if CategoryID <> 0 then // "Alle"
    HideCategoryTab(CategoryID);
end;

{Update}
procedure TStartListe.UpdateTabCaptions;
var
  CategoryID: Integer;
  TabSheet: TcxTabSheet;
  BaseName: string;
begin
  for CategoryID in FTabsCache.Keys do  begin
    TabSheet := FTabsCache[CategoryID];
    case CategoryID of
      0: BaseName := 'Alle Kontakte';
      1: BaseName := 'VIP-Kunden';
      2: BaseName := 'Standard-Kunden';
      3: BaseName := 'Externe Mitarbeiter';
      4: BaseName := 'Lieferanten';
      5: BaseName := 'Partner';
      6: BaseName := 'Interessenten-Kunden';
      7: BaseName := 'Sonstiges';
      8: BaseName := 'Ohne';
      9: BaseName := 'Interne Mitarbeiter';
    else
      BaseName := 'Unbekannt';
    end;
    TabSheet.Caption := GetTabCaptionWithCount(BaseName, CategoryID);
  end;
end;


{UpdateCaptionsLokal}
procedure TStartListe.UpdateCaptionsLokal;
var RowCount:integer;
begin
  RowCount := StringGrid1DBBandedTableView1.DataController.RecordCount;
  if Assigned(cxTabSheet1) then begin
    cxTabSheet1.Caption := Format('Alle Kontakte (%d)', [RowCount]);
  end;
end;

{Show Message}
procedure TStartListe.ShowMessageAutoArchiv;
var
  Sql: TMSQuery;
  MsgText, ContactList: string;
  UserChoice: Integer;
begin
  Sql := TMSQuery.Create(nil);
  Sql.Connection := MyConnection;
  try
    Sql.SQL.Text :=
      'SELECT K.PersonID, K.Name, K.Vorname ' +
      'FROM Kontaktview K ' +
      'JOIN KontaktAutoArchiv KA ON K.PersonID = KA.PersonID ' +
      'WHERE KA.Enabled = 1 ' +
      '  AND DATEDIFF(DAY, GETDATE(), DATEADD(DAY, KA.DaysInactiveMax, KA.LastActiveDate)) = 1';
    Sql.Open;

    if not Sql.IsEmpty then  begin
      ContactList := '';
      Sql.First;
      while not Sql.Eof do begin
        ContactList := ContactList +
          Format('Id%d %s %s', [Sql.FieldByName('PersonID').AsInteger,
                                Sql.FieldByName('Name').AsString,
                                Sql.FieldByName('Vorname').AsString]) + sLineBreak;
        Sql.Next;
      end;
      MsgText := Format('Achtung! %d Kontakt(e) werden morgen autoarchiviert:'#13#10#13#10'%s',
                        [Sql.RecordCount, ContactList]);

      with TMyMesBox.Create(nil) do
      try
        Caption := 'Autoarchiv';
        UserChoice := ShowMessage(MsgText, mtWarning, [mbOK]);
      finally
        Free;
      end;
    end;

  finally
    Sql.Free;
  end;
end;

{UpdateLabelColor}
procedure TStartListe.UpdateLabelColor(AGroup: TcxGridGroupRow);
var
  GroupValue: string;
begin
  if not Assigned(AGroup) then Exit;

  GroupValue := VarToStr(AGroup.Values[0]);

  if GroupValue = 'VIP-Kunden' then
    cxLabelFarbe.Style.Color := clWebOrange
  else if GroupValue = 'Standard-Kunden' then
    cxLabelFarbe.Style.Color := clGray
  else if GroupValue = 'Externe Mitarbeiter' then
    cxLabelFarbe.Style.Color := clWebCrimson
  else if GroupValue = 'Lieferant' then          //
    cxLabelFarbe.Style.Color := clWebDeepskyBlue
  else if GroupValue = 'Partner' then
    cxLabelFarbe.Style.Color := clWebLimeGreen
  else if GroupValue = 'Interessent' then
    cxLabelFarbe.Style.Color := clWebHotPink  //
  else if GroupValue = 'Sonstiges' then
    cxLabelFarbe.Style.Color := clBlack
  else if GroupValue = 'Ohne' then
    cxLabelFarbe.Style.Color := clWhite
  else if GroupValue = 'Interne Mitarbeiter' then     //
    cxLabelFarbe.Style.Color := clWebDodgerBlue       //
  else
    cxLabelFarbe.Style.Color := clWhite;

  cxLabelFarbe.Repaint;
end;

{Alle Felder anzeigen}
procedure TStartListe.AlleFelderanzeigen1Click(Sender: TObject);
begin
    AlleFelderanzeigen1.RadioItem:=True;
    StringGrid1DBBandedTableView1AnredeIcon.Caption:='Anredeicon';
    StringGrid1DBBandedTableView1TitelIcon.Caption:='Titelicon';
    StringGrid1DBBandedTableView1TelefonIcon.Caption:='Typicon';
    StringGrid1DBBandedTableView1Telefon2Icon.Caption:='Typicon';
    StringGrid1DBBandedTableView1Telefon3Icon.Caption:='Typicon';
    StringGrid1DBBandedTableView1EmailIcon.Caption:='Typicon';
    StringGrid1DBBandedTableView1Email2Icon.Caption:='Typicon';
    StringGrid1DBBandedTableView1Email3Icon.Caption:='Typicon';
    StringGrid1DBBandedTableView1Anrede.Visible := True;
    StringGrid1DBBandedTableView1Titel.Visible := True;
    StringGrid1DBBandedTableView1Telefontyp1.Visible := True;
    StringGrid1DBBandedTableView1Telefontyp2.Visible := True;
    StringGrid1DBBandedTableView1Telefontyp3.Visible := True;
    StringGrid1DBBandedTableView1Emailtyp1.Visible := True;
    StringGrid1DBBandedTableView1Emailtyp2.Visible := True;
    StringGrid1DBBandedTableView1Emailtyp3.Visible := True;
    StringGrid1DBBandedTableView1AnredeIcon.Visible := True;
    StringGrid1DBBandedTableView1TitelIcon.Visible := True;
    StringGrid1DBBandedTableView1TelefonIcon.Visible := True;
    StringGrid1DBBandedTableView1Telefon2Icon.Visible := True;
    StringGrid1DBBandedTableView1Telefon3Icon.Visible := True;
    StringGrid1DBBandedTableView1EmaiLIcon.Visible := True;
    StringGrid1DBBandedTableView1Email2Icon.Visible := True;
    StringGrid1DBBandedTableView1Email3Icon.Visible := True;
end;

{Alle Felder ohne Icons anzeigen}
procedure TStartListe.AlleFelderohneIconsanzeigen1Click(Sender: TObject);
begin
    AlleFelderohneIconsanzeigen1.RadioItem:=True;
    StringGrid1DBBandedTableView1AnredeIcon.Caption:='Anredeicon';
    StringGrid1DBBandedTableView1TitelIcon.Caption:='Titelicon';
    StringGrid1DBBandedTableView1TelefonIcon.Caption:='Typicon';
    StringGrid1DBBandedTableView1Telefon2Icon.Caption:='Typicon';
    StringGrid1DBBandedTableView1Telefon3Icon.Caption:='Typicon';
    StringGrid1DBBandedTableView1EmailIcon.Caption:='Typicon';
    StringGrid1DBBandedTableView1Email2Icon.Caption:='Typicon';
    StringGrid1DBBandedTableView1Email3Icon.Caption:='Typicon';
    StringGrid1DBBandedTableView1Anrede.Visible := True;
    StringGrid1DBBandedTableView1Titel.Visible := True;
    StringGrid1DBBandedTableView1Telefontyp1.Visible := True;
    StringGrid1DBBandedTableView1Telefontyp2.Visible := True;
    StringGrid1DBBandedTableView1Telefontyp3.Visible := True;
    StringGrid1DBBandedTableView1Emailtyp1.Visible := True;
    StringGrid1DBBandedTableView1Emailtyp2.Visible := True;
    StringGrid1DBBandedTableView1Emailtyp3.Visible := True;
    StringGrid1DBBandedTableView1AnredeIcon.Visible := False;
    StringGrid1DBBandedTableView1TitelIcon.Visible := False;
    StringGrid1DBBandedTableView1TelefonIcon.Visible := False;
    StringGrid1DBBandedTableView1Telefon2Icon.Visible := False;
    StringGrid1DBBandedTableView1Telefon3Icon.Visible := False;
    StringGrid1DBBandedTableView1EmaiLIcon.Visible := False;
    StringGrid1DBBandedTableView1Email2Icon.Visible := False;
    StringGrid1DBBandedTableView1Email3Icon.Visible := False;
end;

{Alle Felder mit Icons anzeigen}
procedure TStartListe.FeldermitIconsanzeigen1Click(Sender: TObject);
begin
    FeldermitIconsanzeigen1.RadioItem:=True;
    StringGrid1DBBandedTableView1AnredeIcon.Caption:='Anrede';
    StringGrid1DBBandedTableView1TitelIcon.Caption:='Titel';
    StringGrid1DBBandedTableView1TelefonIcon.Caption:='Typ';
    StringGrid1DBBandedTableView1Telefon2Icon.Caption:='Typ';
    StringGrid1DBBandedTableView1Telefon3Icon.Caption:='Typ';
    StringGrid1DBBandedTableView1EmailIcon.Caption:='Typ';
    StringGrid1DBBandedTableView1Email2Icon.Caption:='Typ';
    StringGrid1DBBandedTableView1Email3Icon.Caption:='Typ';
    StringGrid1DBBandedTableView1Anrede.Visible := False;
    StringGrid1DBBandedTableView1Titel.Visible := False;
    StringGrid1DBBandedTableView1Telefontyp1.Visible := False;
    StringGrid1DBBandedTableView1Telefontyp2.Visible := False;
    StringGrid1DBBandedTableView1Telefontyp3.Visible := False;
    StringGrid1DBBandedTableView1Emailtyp1.Visible := False;
    StringGrid1DBBandedTableView1Emailtyp2.Visible := False;
    StringGrid1DBBandedTableView1Emailtyp3.Visible := False;
    StringGrid1DBBandedTableView1AnredeIcon.Visible := True;
    StringGrid1DBBandedTableView1TitelIcon.Visible := True;
    StringGrid1DBBandedTableView1TelefonIcon.Visible := True;
    StringGrid1DBBandedTableView1Telefon2Icon.Visible := True;
    StringGrid1DBBandedTableView1Telefon3Icon.Visible := True;
    StringGrid1DBBandedTableView1EmaiLIcon.Visible := True;
    StringGrid1DBBandedTableView1Email2Icon.Visible := True;
    StringGrid1DBBandedTableView1Email3Icon.Visible := True;
end;

{Draw Kategorie}
procedure TStartListe.DrawKategorienCell(  ACanvas: TcxCanvas;  AViewInfo: TcxGridTableDataCellViewInfo;  const AKategorienText: string;  const AKategorieIDs: string;
  AImageList: TCustomImageList);
const
  ICON_SIZE = 16;
  ICON_SPACING = 4;
  TEXT_MARGIN = 6;
  ICON_TEXT_GAP = 4;
var
  KatIDList: TStringList;
  KatNameList: TStringList;
  i: Integer;
  CurrentX, CurrentY: Integer;
  IconRect: TRect;
  TextRect: TRect;
  IconIndex: Integer;
  KatID: Integer;
  KatName: string;
  TextWidth: Integer;

  function GetIconIndexByKategorieID(AKatID: Integer): Integer;
  begin
    case AKatID of
      1: Result := 1;  // VIP-Kunden
      2: Result := 2;  // Standard-Kunden
      3: Result := 3;  // Externe-Mitarbeiter
      4: Result := 4;  // Lieferant
      5: Result := 5;  // Partner
      6: Result := 6;  // Interessenten-Kunden
      7: Result := 7;  // Sonstiges
      8: Result := 8;  // Ohne
      9: Result := 9;  // Interne-Mitarbeiter
    else
      Result := -1;
    end;
  end;

begin
  if (AKategorienText = '') or (AKategorieIDs = '') or (not Assigned(AImageList)) then begin
    ACanvas.Brush.Color := AViewInfo.Params.Color;
    ACanvas.FillRect(AViewInfo.ContentBounds);
    Exit;
  end;

  KatIDList := TStringList.Create;
  KatNameList := TStringList.Create;
  try
    KatIDList.Delimiter := ',';
    KatIDList.StrictDelimiter := True;
    KatIDList.DelimitedText := AKategorieIDs;

    KatNameList.Delimiter := ';';
    KatNameList.StrictDelimiter := True;
    KatNameList.DelimitedText := AKategorienText;

    if KatIDList.Count <> KatNameList.Count then
      Exit;
    ACanvas.Brush.Color := AViewInfo.Params.Color;
    ACanvas.FillRect(AViewInfo.ContentBounds);

    CurrentX := AViewInfo.ContentBounds.Left + TEXT_MARGIN;
    CurrentY := AViewInfo.ContentBounds.Top +
                ((AViewInfo.ContentBounds.Bottom - AViewInfo.ContentBounds.Top - ICON_SIZE) div 2);

    for i := 0 to KatIDList.Count - 1 do  begin
      if CurrentX >= AViewInfo.ContentBounds.Right - TEXT_MARGIN then
        Break;

      KatID := StrToIntDef(Trim(KatIDList[i]), 0);
      KatName := Trim(KatNameList[i]);
      IconIndex := GetIconIndexByKategorieID(KatID);

      if IconIndex >= 0 then begin
        IconRect := Rect(CurrentX, CurrentY, CurrentX + ICON_SIZE, CurrentY + ICON_SIZE);

        if IconRect.Right <= AViewInfo.ContentBounds.Right - TEXT_MARGIN then   begin
          AImageList.Draw(ACanvas.Canvas, CurrentX, CurrentY, IconIndex);
          CurrentX := IconRect.Right + ICON_TEXT_GAP;
        end
        else
          Break;
      end;

      TextWidth := ACanvas.TextWidth(KatName);
      TextRect := Rect(
        CurrentX,
        AViewInfo.ContentBounds.Top,
        CurrentX + TextWidth,
        AViewInfo.ContentBounds.Bottom
      );

      if TextRect.Right <= AViewInfo.ContentBounds.Right - TEXT_MARGIN then  begin
        ACanvas.Brush.Style := bsClear;
        ACanvas.Font := AViewInfo.Params.Font;
        ACanvas.DrawText(KatName, TextRect, cxAlignVCenter or cxAlignLeft);
        CurrentX := TextRect.Right + ICON_SPACING;
      end
      else
        Break;
    end;

  finally
    KatIDList.Free;
    KatNameList.Free;
  end;
end;

{Custom Draw Cell}
procedure TStartListe.StringGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  KategorieName: string;
  KategorieID: Integer;
  IconIndex: Integer;
  IconRect: TRect;
  TextRect: TRect;
  IconSize: Integer;
  TextMargin: Integer;

  function GetIconIndexByKategorieID(AKatID: Integer): Integer;
  begin
    case AKatID of
      1: Result := 1;
      2: Result := 2;
      3: Result := 3;
      4: Result := 4;
      5: Result := 5;
      6: Result := 6;
      7: Result := 7;
      8: Result := 8;
      9: Result := 9;
    else
      Result := -1;
    end;
  end;

begin
  if AViewInfo.Item <> StringGrid1DBBandedTableView1Kategoriename then
    Exit;

  KategorieName := VarToStrDef(AViewInfo.GridRecord.DisplayTexts[AViewInfo.Item.Index], '');
  if KategorieName = '' then
    Exit;

  if Assigned(StringGrid1DBBandedTableView1KategorieID) then
  begin
    var V := AViewInfo.GridRecord.Values[StringGrid1DBBandedTableView1KategorieID.Index];
    if not VarIsNull(V) and not VarIsEmpty(V) then
      KategorieID := V
    else
      KategorieID := 0;
  end
  else
    KategorieID := 0;

  ACanvas.Brush.Color := AViewInfo.Params.Color;
  ACanvas.FillRect(AViewInfo.ContentBounds);

  IconSize := 16;
  TextMargin := 6;
  IconIndex := GetIconIndexByKategorieID(KategorieID);

  if (IconIndex >= 0) and Assigned(cxImageListStartlistKategorie) then
  begin
    IconRect := AViewInfo.ContentBounds;
    IconRect.Left := IconRect.Left + TextMargin;
    IconRect.Top := IconRect.Top + ((IconRect.Bottom - IconRect.Top - IconSize) div 2);
    IconRect.Right := IconRect.Left + IconSize;
    IconRect.Bottom := IconRect.Top + IconSize;

    cxImageListStartlistKategorie.Draw(ACanvas.Canvas, IconRect.Left, IconRect.Top, IconIndex);
  end;

  TextRect := AViewInfo.ContentBounds;
  if IconIndex >= 0 then
    TextRect.Left := TextRect.Left + TextMargin + IconSize + 4
  else
    TextRect.Left := TextRect.Left + TextMargin;

  ACanvas.Brush.Style := bsClear;
  ACanvas.Font := AViewInfo.Params.Font;
  ACanvas.DrawText(KategorieName, TextRect, cxAlignVCenter or cxAlignLeft);

  ADone := True;
end;



{VIP Privilegien}
procedure TStartListe.dxBarLargeButVIPPrivilegienClick(Sender: TObject);
var
  VIPstatusAnzeigen: TMyFStatusHistory;
begin
    VIPstatusAnzeigen := TMyFStatusHistory.Create(Application);
  try
      VIPstatusAnzeigen.LoadHistoryAll(ttPrivilegien);
      VIPstatusAnzeigen.Caption := 'VIP-Privilegien';
      VIPstatusAnzeigen.ShowModal;
  finally
      VIPstatusAnzeigen.Free;
  end;
end;

{VIPStatus  History}
procedure TStartListe.dxBarLargeButVIPStatusClick(Sender: TObject);
var
  VIPstatusAnzeigen: TMyFStatusHistory;
begin
    VIPstatusAnzeigen := TMyFStatusHistory.Create(Application);
  try
      VIPstatusAnzeigen.LoadHistoryAll(ttStatusHistory);
      VIPstatusAnzeigen.Caption := 'VIP-Status Historie';
      VIPstatusAnzeigen.ShowModal;
  finally
      VIPstatusAnzeigen.Free;
  end;
end;

{VIP -Transaktionen}
procedure TStartListe.dxBarLargeButVIPTransaktionenClick(Sender: TObject);
var
  VIPTransaktionen: TFormVIPinfo;
begin
    VIPTransaktionen := TFormVIPinfo.Create(Application);
  try
      VIPTransaktionen.Caption := 'VIP-Transaktionen';
      VIPTransaktionen.ShowModal;
  finally
      VIPTransaktionen.Free;
  end;
end;

{VIP-Status}
procedure TStartListe.dxBarLargeButtonVIPStatusClick(Sender: TObject);
var
  VIPStatus: TKontaktVIPStatus;
begin
    VIPStatus := TKontaktVIPStatus.Create(Application);
  try
      VIPStatus.ShowModal;
  finally
      VIPStatus.Free;
  end;
end;

{Rechnung}
procedure TStartListe.Rechnung1Click(Sender: TObject);
var
  PersonIDs: TList<Integer>;
  KontaktNames: TStringList;
  i: Integer;
  PersonID: Integer;
  KontaktName: string;
  SelectedCount: Integer;

  function GetPersonIDFromRow(RowIndex: Integer): Integer;
  var
    ColPersonID: Integer;
  begin
    Result := 0;
    try
      ColPersonID := StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('PersonID').Index;
      Result := StringGrid1DBBandedTableView1.DataController.Values[RowIndex, ColPersonID];
    except
      Result := 0;
    end;
  end;

  function GetKontaktNameFromRow(RowIndex: Integer): string;
  var
    Name, Vorname: string;
  begin
    Result := '';
    try
      Name := VarToStr(StringGrid1DBBandedTableView1.DataController.Values[
        RowIndex,
        StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('Name').Index
      ]);
      Vorname := VarToStr(StringGrid1DBBandedTableView1.DataController.Values[
        RowIndex,
        StringGrid1DBBandedTableView1.DataController.GetItemByFieldName('Vorname').Index
      ]);
      Result := Trim(Name + ' ' + Vorname);
    except
      Result := '';
    end;
  end;

begin
  SelectedCount := StringGrid1DBBandedTableView1.Controller.SelectedRowCount;

  if SelectedCount = 0 then begin
    ShowMessage('Bitte wählen Sie einen oder mehrere Kontakte aus der Liste aus.');
    Exit;
  end;

  PersonIDs := TList<Integer>.Create;
  KontaktNames := TStringList.Create;
  try
    if SelectedCount > 1 then begin
      for i := 0 to StringGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
        PersonID := GetPersonIDFromRow(StringGrid1DBBandedTableView1.Controller.SelectedRecords[i].RecordIndex);
        if PersonID > 0 then begin
          PersonIDs.Add(PersonID);
          KontaktName := GetKontaktNameFromRow(StringGrid1DBBandedTableView1.Controller.SelectedRecords[i].RecordIndex);
          KontaktNames.Add(KontaktName);
        end;
      end;

      if PersonIDs.Count = 0 then begin
        ShowMessage('Keine gültigen Kontakte ausgewählt.');
        Exit;
      end;
      RechnungFenster := TRechnungform.Create(Application);
      RechnungFenster.SetMultipleKontaktFilter(PersonIDs, KontaktNames);
      RechnungFenster.Show;

    end else begin
      PersonID := GetPersonIDFromRow(StringGrid1DBBandedTableView1.Controller.FocusedRecordIndex);
      if PersonID = 0 then begin
        ShowMessage('Bitte wählen Sie einen gültigen Kontakt aus.');
        Exit;
      end;

      KontaktName := GetKontaktNameFromRow(StringGrid1DBBandedTableView1.Controller.FocusedRecordIndex);

      RechnungFenster := TRechnungform.Create(Application);
      RechnungFenster.SetKontaktFilter(PersonID, KontaktName);
      RechnungFenster.Show;
    end;
  finally
    KontaktNames.Free;
    PersonIDs.Free;
  end;
end;


{Rechnungen}
procedure TStartListe.dxBarLargeButRechnungenClick(Sender: TObject);
var RechnungFenster: TRechnungform;
begin
   RechnungFenster := TRechnungform.Create(Application);
  try
      RechnungFenster.Caption:='Rechnungen';

      RechnungFenster.Show;
  finally
      //RechnungFenster.Free;
  end;
end;

{Kategorie Auswählen}
procedure TStartListe.Kategorie1Click(Sender: TObject);
var
  PersonID: Integer;
  Query: TMSQuery;
  Rec: TcxCustomGridRecord;
  i: Integer;
  KategorieIDs: TList<Integer>;
begin
  Rec := StringGrid1DBBandedTableView1.Controller.FocusedRecord;
  if (Rec = nil) or not Rec.IsData then Exit;

  PersonID := Integer(Rec.Values[StringGrid1DBBandedTableView1.GetColumnByFieldName('PersonID').Index]);
  if PersonID = 0 then Exit;
  ExterneMitarbeiter1.Checked := False;
  InterneMitarbeiter1.Checked := False;
  Lieferant1.Checked := False;
  Ohne1.Checked := False;
  Partner1.Checked := False;
  Sontiges1.Checked := False;
  Interessenten1.Checked := False;
  StandartKunden1.Checked := False;
  VIPKunden1.Checked := False;
  KategorieIDs := TList<Integer>.Create;
  Query := TMSQuery.Create(nil);
  try
    Query.Connection := MyConnection;
    Query.SQL.Text :=
      'SELECT KategorieID FROM KontaktKategorieZuordnung WHERE PersonID = :PersonID';
    Query.ParamByName('PersonID').AsInteger := PersonID;
    Query.Open;
    while not Query.Eof do begin
      KategorieIDs.Add(Query.FieldByName('KategorieID').AsInteger);
      Query.Next;
    end;
    if KategorieIDs.Contains(ExterneMitarbeiter1.Tag) then ExterneMitarbeiter1.Checked := True;
    if KategorieIDs.Contains(InterneMitarbeiter1.Tag) then InterneMitarbeiter1.Checked := True;
    if KategorieIDs.Contains(Lieferant1.Tag) then Lieferant1.Checked := True;
    if KategorieIDs.Contains(Ohne1.Tag) then Ohne1.Checked := True;
    if KategorieIDs.Contains(Partner1.Tag) then Partner1.Checked := True;
    if KategorieIDs.Contains(Sontiges1.Tag) then Sontiges1.Checked := True;
    if KategorieIDs.Contains(Interessenten1.Tag) then Interessenten1.Checked := True;
    if KategorieIDs.Contains(StandartKunden1.Tag) then StandartKunden1.Checked := True;
    if KategorieIDs.Contains(VIPKunden1.Tag) then VIPKunden1.Checked := True;

  finally
    Query.Free;
    KategorieIDs.Free;
  end;
end;

{KategorieMenuItem}
procedure TStartListe.KategorieMenuItemClick(Sender: TObject);
var
  MenuItem: TMenuItem;
  KategorieID: Integer;
begin
  if not (Sender is TMenuItem) then Exit;

  MenuItem := TMenuItem(Sender);
  KategorieID := MenuItem.Tag;

  if KategorieID = 0 then begin
    ShowMessage('Fehler: Tag ist nicht gesetzt für ' + MenuItem.Caption);
    Exit;
  end;

  MenuItem.Checked := not MenuItem.Checked;
  UpdateKategorie(KategorieID, MenuItem.Checked);
end;

{UpdateKategorie}
procedure TStartListe.UpdateKategorie(KategorieID: Integer; IsChecked: Boolean);
var
  PersonID: Integer;
  Query: TMSQuery;
  Rec: TcxCustomGridRecord;
begin
  Rec := StringGrid1DBBandedTableView1.Controller.FocusedRecord;
  if (Rec = nil) or not Rec.IsData then Exit;

  PersonID := Integer(Rec.Values[StringGrid1DBBandedTableView1.GetColumnByFieldName('PersonID').Index]);
  if PersonID = 0 then Exit;

  Query := TMSQuery.Create(nil);
  try
    Query.Connection := MyConnection;

    if IsChecked then begin
      Query.SQL.Text :=
        'IF NOT EXISTS (SELECT 1 FROM KontaktKategorieZuordnung WHERE PersonID = :PersonID AND KategorieID = :KategorieID) ' +
        'INSERT INTO KontaktKategorieZuordnung (PersonID, KategorieID) VALUES (:PersonID, :KategorieID)';
    end else begin
      Query.SQL.Text :=
        'DELETE FROM KontaktKategorieZuordnung WHERE PersonID = :PersonID AND KategorieID = :KategorieID';
    end;

    Query.ParamByName('PersonID').AsInteger := PersonID;
    Query.ParamByName('KategorieID').AsInteger := KategorieID;
    Query.ExecSQL;
    StringGrid1DBBandedTableView1.DataController.Refresh;
    MyQueryKontakt.Refresh;
  finally
    Query.Free;
  end;
end;

{PopupMenuStartlistePopup}
procedure TStartListe.PopupMenuStartlistePopup(Sender: TObject);
begin
  LoadKategorienForCurrentContact;
end;

{LoadKategorienForCurrentContact}
procedure TStartListe.LoadKategorienForCurrentContact;
var
  PersonID: Integer;
  Query: TMSQuery;
  Rec: TcxCustomGridRecord;
  KategorieIDs: TList<Integer>;
begin
  Rec := StringGrid1DBBandedTableView1.Controller.FocusedRecord;
  if (Rec = nil) or not Rec.IsData then Exit;

  PersonID := Integer(Rec.Values[StringGrid1DBBandedTableView1.GetColumnByFieldName('PersonID').Index]);
  if PersonID = 0 then Exit;

  ExterneMitarbeiter1.Checked := False;
  InterneMitarbeiter1.Checked := False;
  Lieferant1.Checked := False;
  Ohne1.Checked := False;
  Partner1.Checked := False;
  Sontiges1.Checked := False;
  Interessenten1.Checked := False;
  StandartKunden1.Checked := False;
  VIPKunden1.Checked := False;
  KategorieIDs := TList<Integer>.Create;
  Query := TMSQuery.Create(nil);
  try
    Query.Connection := MyConnection;
    Query.SQL.Text :=
      'SELECT KategorieID FROM KontaktKategorieZuordnung WHERE PersonID = :PersonID';
    Query.ParamByName('PersonID').AsInteger := PersonID;
    Query.Open;

    while not Query.Eof do begin
      KategorieIDs.Add(Query.FieldByName('KategorieID').AsInteger);
      Query.Next;
    end;
    if KategorieIDs.Contains(ExterneMitarbeiter1.Tag) then ExterneMitarbeiter1.Checked := True;
    if KategorieIDs.Contains(InterneMitarbeiter1.Tag) then InterneMitarbeiter1.Checked := True;
    if KategorieIDs.Contains(Lieferant1.Tag) then Lieferant1.Checked := True;
    if KategorieIDs.Contains(Ohne1.Tag) then Ohne1.Checked := True;
    if KategorieIDs.Contains(Partner1.Tag) then Partner1.Checked := True;
    if KategorieIDs.Contains(Sontiges1.Tag) then Sontiges1.Checked := True;
    if KategorieIDs.Contains(Interessenten1.Tag) then Interessenten1.Checked := True;
    if KategorieIDs.Contains(StandartKunden1.Tag) then StandartKunden1.Checked := True;
    if KategorieIDs.Contains(VIPKunden1.Tag) then VIPKunden1.Checked := True;
  finally
    Query.Free;
    KategorieIDs.Free;
  end;
end;

end.

