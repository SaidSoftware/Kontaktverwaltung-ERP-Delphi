unit FBesondereNotiz;

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
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, dxPanel,MyPapierkorb,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, dxLayoutContainer, cxTextEdit,
  cxMemo, cxClasses, dxLayoutControl,MyMemoForm;

type
  TFBesondereNotizen = class(TFrame)
    dxPanelBesondereNotiz: TdxPanel;
    dxLayoutControlBesondereNotizGroup_Root: TdxLayoutGroup;
    dxLayoutControlBesondereNotiz: TdxLayoutControl;
    cxMemoBesondereNotiz: TcxMemo;
    dxLayoutItemMemo: TdxLayoutItem;
    dxLayoutGroupMemo: TdxLayoutGroup;
    procedure dxLayoutGroupMemoButton0Click(Sender: TObject);
  private
     procedure MemoFormCloseHandler(Sender: TObject; var Action: TCloseAction);
  public
    { Public-Deklarationen }
  end;

implementation

{$R *.dfm}

{Memo Button}
procedure TFBesondereNotizen.dxLayoutGroupMemoButton0Click(Sender: TObject);
var
  MemoForm: TMemoForm;
begin
  try
    MemoForm := TMemoForm.Create(Application);
    MemoForm.Tag := NativeInt(Self);
    MemoForm.OnClose := MemoFormCloseHandler;
      if Assigned(MemoForm.cxMemoKomponent) then
        MemoForm.cxMemoKomponent.Text := cxMemoBesondereNotiz.Text;
        MemoForm.Caption := 'Besondere Notizen bearbeiten';
        MemoForm.Show;
//    if Assigned(MemoForm.cxMemoKomponent) then begin
//        cxMemoBesondereNotiz.Text := MemoForm.cxMemoKomponent.Text;
//    end;
  finally
      //MemoForm.Free;
  end;
end;

procedure TFBesondereNotizen.MemoFormCloseHandler(Sender: TObject; var Action: TCloseAction);
var
  MemoForm: TMemoForm;
begin
  MemoForm := Sender as TMemoForm;
  if MemoForm.ModalResult = mrOk then begin
    if Assigned(MemoForm.cxMemoKomponent) then begin
      cxMemoBesondereNotiz.Text := MemoForm.cxMemoKomponent.Text;
    end;
  end;
  Action := caFree;
end;

end.
