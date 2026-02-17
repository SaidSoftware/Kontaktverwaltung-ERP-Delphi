unit FLieferant;

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
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, dxPanel, cxClasses,
  dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxTextEdit,MyPapierkorb, dxLayoutControlAdapters, Vcl.Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.StdCtrls, cxButtons, cxCheckBox, Vcl.ComCtrls, Vcl.ToolWin, MemDS,
  DBAccess, MSAccess,KVDataModule;

type
  TFrameLieferant = class(TFrame)
    dxPanelLieferant: TdxPanel;
    dxLayoutControlLieferantGroup_Root: TdxLayoutGroup;
    dxLayoutControlLieferant: TdxLayoutControl;
    cxTextEditLieferantennummer: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxTextEditBankverbindung: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxCheckBoxBankAktiv: TcxCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    cxTextEditSteuernummer: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxGridBestellhistorieDBTableViewBestellhistorie: TcxGridDBTableView;
    cxGridBestellhistorieLevel1: TcxGridLevel;
    cxGridBestellhistorie: TcxGrid;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    ToolBar1: TToolBar;
    dxLayoutItem10: TdxLayoutItem;
    ToolButtonProdukte: TToolButton;
    ToolButtonZahlung: TToolButton;
    ToolButtonBewertung: TToolButton;
    ToolButtonLieferbedingungen: TToolButton;
    MSDataSource1: TMSDataSource;
    MSQuery1: TMSQuery;
    MSConnection1: TMSConnection;
    cxGridBestellhistorieDBTableViewBestellhistorieLieferantID: TcxGridDBColumn;
    cxGridBestellhistorieDBTableViewBestellhistorieLieferantName: TcxGridDBColumn;
    cxGridBestellhistorieDBTableViewBestellhistorieKontaktPerson: TcxGridDBColumn;
    cxGridBestellhistorieDBTableViewBestellhistorieEmail: TcxGridDBColumn;
    cxGridBestellhistorieDBTableViewBestellhistorieTelefon: TcxGridDBColumn;
    cxGridBestellhistorieDBTableViewBestellhistorieAdresse: TcxGridDBColumn;
    cxGridBestellhistorieDBTableViewBestellhistorieBewertung: TcxGridDBColumn;
    cxGridBestellhistorieDBTableViewBestellhistorieAktivStatus: TcxGridDBColumn;
    cxGridBestellhistorieDBTableViewBestellhistorieErstelltAm: TcxGridDBColumn;
    cxGridBestellhistorieDBTableViewBestellhistoriePersonID: TcxGridDBColumn;
    procedure dxLayoutGroup1Button0Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    var FPersonID:integer;

    procedure SetPerson(PersonID: Integer);
  end;

implementation

{$R *.dfm}

procedure TFrameLieferant.dxLayoutGroup1Button0Click(Sender: TObject);
begin
//frame grid öffnen
end;


procedure TFrameLieferant.SetPerson(PersonID: Integer);
begin
  FPersonID := PersonID;
  if PersonID > 0 then begin
  end else begin
  end;
end;

end.
