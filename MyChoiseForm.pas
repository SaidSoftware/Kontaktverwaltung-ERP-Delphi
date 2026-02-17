unit MyChoiseForm;

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
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, dxPanel,MyPapierkorb,
  cxClasses, dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxLabel, cxImage, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, dxGDIPlusClasses,ShellAPI,System.Win.ComObj;
type
  TAppSendOption = (asNone, asOutlook, asGmail, asWhatsApp, asTeams, asAndere,asCopy);
type
  TFormAuswahl = class(TForm)
    dxPanelWahl: TdxPanel;
    dxLayoutControlWahlGroup_Root: TdxLayoutGroup;
    dxLayoutControlWahl: TdxLayoutControl;
    dxLayoutItemGmail: TdxLayoutItem;
    cxImageGmail: TcxImage;
    dxLayoutItemTeams: TdxLayoutItem;
    cxImageTeams: TcxImage;
    cxImageOutlook: TcxImage;
    dxLayoutItemWhatsapp: TdxLayoutItem;
    cxImageWhatsApp: TcxImage;
    dxLayoutItemAndere: TdxLayoutItem;
    cxImageAndere: TcxImage;
    dxLayoutGroup1: TdxLayoutGroup;
    cxButtonWhatsapp: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxButtonOutlook: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    cxButtonTeams: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    cxButtonGmail: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxButtonAndere: TcxButton;
    dxLayoutGroupWhatsApp: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroupTeams: TdxLayoutGroup;
    dxLayoutGroupOutlook: TdxLayoutGroup;
    dxLayoutGroupGmail: TdxLayoutGroup;
    dxLayoutGroupAnder: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    cxButtonCopy: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem8: TdxLayoutItem;
    cxImageCopy: TcxImage;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    procedure cxButtonWhatsappClick(Sender: TObject);
    procedure cxButtonOutlookClick(Sender: TObject);
    procedure cxButtonTeamsClick(Sender: TObject);
    procedure cxButtonGmailClick(Sender: TObject);
    procedure cxButtonAndereClick(Sender: TObject);
    procedure cxButtonCopyClick(Sender: TObject);
private
    FSelectedOption: TAppSendOption;
    procedure EnableButtonsFor(const Kontakt: string);

public

  function ShowForKontakt(const Kontakt: string; out Selected: TAppSendOption): Boolean;
  procedure NurOutlookZeigen;
end;

var
  FormAuswahl: TFormAuswahl;

implementation

{$R *.dfm}


procedure TFormAuswahl.EnableButtonsFor(const Kontakt: string);
var
  IsEmail: Boolean;
begin
  IsEmail := Pos('@', Kontakt) > 0;

  dxLayoutGroupOutlook.Visible := IsEmail;
  dxLayoutGroupGmail.Visible := IsEmail;
  dxLayoutGroupTeams.Visible := IsEmail;
  dxLayoutGroupWhatsApp.Visible := not IsEmail;

  dxLayoutGroupOutlook.Enabled := IsEmail;
  dxLayoutItemGmail.Enabled := False;
  dxLayoutItemTeams.Enabled := False;
  dxLayoutItemWhatsapp.Enabled := False;

  dxLayoutAutoCreatedGroup3.Enabled := True;    //kopieren
  cxButtonAndere.Enabled := True;


  if IsEmail then  begin
    Self.ClientHeight := 280;
    Self.Caption := 'App zum Versenden auswählen';
  end  else  begin
    Self.ClientHeight := 192;
    Self.Caption := 'App zum Anrufen auswählen';
  end;
end;


procedure TFormAuswahl.NurOutlookZeigen;
begin
  dxLayoutGroupWhatsApp.Visible:=False;
  dxLayoutGroupGmail.Visible:=False;
  dxLayoutGroupTeams.Visible:=False;
  dxLayoutItemAndere.Enabled:=False;
  Self.ClientHeight:=184;
end;


function TFormAuswahl.ShowForKontakt(const Kontakt: string; out Selected: TAppSendOption): Boolean;
begin
  EnableButtonsFor(Kontakt);
  FSelectedOption := asNone;
  Result := ShowModal = mrOk;
  Selected := FSelectedOption;
end;



{Outlook}
procedure TFormAuswahl.cxButtonOutlookClick(Sender: TObject);
begin
  FSelectedOption := asOutlook;
  ModalResult := mrOk;
end;



{Whats App}
procedure TFormAuswahl.cxButtonWhatsappClick(Sender: TObject);
begin
  FSelectedOption := asWhatsApp;
  ModalResult := mrOk;
end;


{Teams}
procedure TFormAuswahl.cxButtonTeamsClick(Sender: TObject);
begin
  FSelectedOption := asTeams;
  ModalResult := mrOk;
end;



{Kopieren}
procedure TFormAuswahl.cxButtonCopyClick(Sender: TObject);
begin
  FSelectedOption := asCopy;
  ModalResult := mrOk;
end;

{Gmail}
procedure TFormAuswahl.cxButtonGmailClick(Sender: TObject);
begin
  FSelectedOption := asGmail;
  ModalResult := mrOk;
end;

{Andere}
procedure TFormAuswahl.cxButtonAndereClick(Sender: TObject);
begin
  FSelectedOption := asAndere;
  ModalResult := mrOk;
end;










end.
