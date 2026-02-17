unit MyMemoform;

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
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, dxLayoutContainer, cxTextEdit, cxMemo, cxClasses,
  dxLayoutControl, dxPanel,MyPapierkorb, dxBar,MyMessageBox, Data.DB, MemDS,
  DBAccess, MSAccess,KVDataModule, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons;
type
  TMemoForm = class(TForm)
    dxPanelMemoform: TdxPanel;
    dxLayoutControlMemoGroup_Root: TdxLayoutGroup;
    dxLayoutControlMemo: TdxLayoutControl;
    dxLayoutGroupMemo: TdxLayoutGroup;
    cxMemoKomponent: TcxMemo;
    dxLayoutItem1: TdxLayoutItem;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButtonSave: TdxBarLargeButton;
    dxBarLargeButtonZuruecksetzen: TdxBarLargeButton;
    MSQueryMemo: TMSQuery;
    cxButtonSave: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    procedure dxBarLargeButtonZuruecksetzenClick(Sender: TObject);
    procedure cxButtonSaveClick(Sender: TObject);
  private
  public
      procedure Speichern;
  end;

var
  MemoForm: TMemoForm;

implementation


{$R *.dfm}


{Save and Exit}
procedure TMemoForm.cxButtonSaveClick(Sender: TObject);
begin
 Speichern;
end;


procedure TMemoForm.Speichern;
var
  MemoText: string;
begin
  MemoText := Trim(cxMemoKomponent.Text);
  if MemoText = '' then begin
    MyMesBox.Caption := 'Fehler';
    MyMesBox.ShowMessage('Bitte füllen Sie das Feld aus!', mtError, [mbYes]);
    Exit;
  end;
  ModalResult := mrOk;
  close;
end;


{Zurücksetzen}
procedure TMemoForm.dxBarLargeButtonZuruecksetzenClick(Sender: TObject);
begin
 cxMemoKomponent.Clear;
end;


end.
