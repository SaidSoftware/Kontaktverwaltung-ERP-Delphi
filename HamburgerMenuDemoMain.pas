unit HamburgerMenuDemoMain;

{$I cxVer.inc}

interface

uses
{$IFDEF EXPRESSSKINS}
  dxSkinsForm,
{$ENDIF}
  Windows, Messages, SysUtils, Forms, ComCtrls, ImgList, Controls, Classes, Buttons, ExtCtrls, Graphics, SkinDemoUtils,
  cxControls, cxLookAndFeels, dxGDIPlusClasses, cxClasses, cxEdit, dxForms, cxGraphics, cxLookAndFeelPainters,
  dxLayoutContainer, dxNavBarCollns, dxNavBar, dxNavBarBase, dxSkinsdxNavBarHamburgerMenuPainter, dxLayoutControl,
  cxImageList, dxLayoutLookAndFeels, Types, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, System.ImageList,Kontakt,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBAccess, MSAccess,
  MemDS, cxGridLevel, cxGridCustomView, cxGrid, dxLayoutcxEditAdapters,
  cxContainer, cxImage, dximctrl, cxGridWinExplorerView, cxGridDBWinExplorerView,
  cxGridBandedTableView, cxGridDBBandedTableView;

type
  TfrmHamburgerMenuDemo = class(TdxForm)
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    ilMedium: TcxImageList;
    dxNavBar1: TdxNavBar;
    nbgContact: TdxNavBarGroup;
    nbgScheduler: TdxNavBarGroup;
    nbgMail: TdxNavBarGroup;
    nbgSettings: TdxNavBarGroup;
    Contacts: TdxNavBarGroup;
    nbgFilterContacts: TdxNavBarGroup;
    nbgDevExpressAccount: TdxNavBarGroup;
    nbgMicrosoftAccount: TdxNavBarGroup;
    nbgAccount: TdxNavBarGroup;
    nbgFilterMailList: TdxNavBarGroup;
    nbInplaceManageAccounts: TdxNavBarItem;
    nbInplacePersonalization: TdxNavBarItem;
    nbInplaceAutomaticReplies: TdxNavBarItem;
    nbInplaceFocusedInbox: TdxNavBarItem;
    nbInplaceMessageList: TdxNavBarItem;
    nbInplaceReadingPane: TdxNavBarItem;
    nbInplaceSingature: TdxNavBarItem;
    nbInplaceNotifications: TdxNavBarItem;
    nbInplaceAbout: TdxNavBarItem;
    nbiNewContact: TdxNavBarItem;
    nbiFilterContactsAll: TdxNavBarItem;
    nbiFilterContactsSales: TdxNavBarItem;
    nbiFilterContactsSupport: TdxNavBarItem;
    nbiFilterContactsShipping: TdxNavBarItem;
    nbiFilterContactsEngineering: TdxNavBarItem;
    nbiFilterContactsHumanResources: TdxNavBarItem;
    nbiFilterContactsManagement: TdxNavBarItem;
    nbiFilterContactsIT: TdxNavBarItem;
    nbiSchedulerNewEvent: TdxNavBarItem;
    nbiSchedulerCalendar: TdxNavBarItem;
    nbiSchedulerBithDate: TdxNavBarItem;
    nbiSchedulerMSCalendar: TdxNavBarItem;
    nbiMailNew: TdxNavBarItem;
    nbiMailAccount1: TdxNavBarItem;
    nbiMailAccount2: TdxNavBarItem;
    nbiMailAccount3: TdxNavBarItem;
    nbiFileterMailAll: TdxNavBarItem;
    nbiFileterMailRead: TdxNavBarItem;
    nbiFileterMailToday: TdxNavBarItem;
    nbiFileterMailYesterday: TdxNavBarItem;
    nbiFileterMailImportance: TdxNavBarItem;
    dxNavBarItem1: TdxNavBarItem;
    dxNavBarItem2: TdxNavBarItem;
    dxNavBarItem3: TdxNavBarItem;
    dxNavBarItem4: TdxNavBarItem;
    dxNavBar1Item1: TdxNavBarItem;
    dxNavBar1Item2: TdxNavBarItem;
    dxNavBar1Item3: TdxNavBarItem;
    ilSmall: TcxImageList;
    ilLarge: TcxImageList;
    lcbAllowAnimation: TdxLayoutCheckBoxItem;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    lrgNavigationPaneModeCompact: TdxLayoutRadioButtonItem;
    lrgNavigationPaneModeFull: TdxLayoutRadioButtonItem;
    lrgNavigationPaneModeNone: TdxLayoutRadioButtonItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    lrgImagesSizeSmall: TdxLayoutRadioButtonItem;
    lrgImagesSizeMedium: TdxLayoutRadioButtonItem;
    lrgImagesSizeLarge: TdxLayoutRadioButtonItem;
    lrgImagesSizeNone: TdxLayoutRadioButtonItem;
    dxLayoutGroup4: TdxLayoutGroup;
    lrgDisplayModeInline: TdxLayoutRadioButtonItem;
    lrgDisplayModeOverlay: TdxLayoutRadioButtonItem;
    lrgDisplayModeMinimal: TdxLayoutRadioButtonItem;
    dxLayoutGroup3: TdxLayoutGroup;
    lrgSelectedPopupModeDocked: TdxLayoutRadioButtonItem;
    lrgSelectedPopupModeUndocked: TdxLayoutRadioButtonItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    MSQuery1: TMSQuery;
    MSDataSource1: TMSDataSource;
    cxGrid1DBTableView1PersonID: TcxGridDBColumn;
    cxGrid1DBTableView1Enabled: TcxGridDBColumn;
    cxGrid1DBTableView1Anrede: TcxGridDBColumn;
    cxGrid1DBTableView1AnredeIconIndex: TcxGridDBColumn;
    cxGrid1DBTableView1Titel: TcxGridDBColumn;
    cxGrid1DBTableView1TitelIconIndex: TcxGridDBColumn;
    cxGrid1DBTableView1Name: TcxGridDBColumn;
    cxGrid1DBTableView1Vorname: TcxGridDBColumn;
    cxGrid1DBTableView1Geburtsdatum: TcxGridDBColumn;
    cxGrid1DBTableView1Telefontyp: TcxGridDBColumn;
    cxGrid1DBTableView1TelefontypIconIndex: TcxGridDBColumn;
    cxGrid1DBTableView1Telefon: TcxGridDBColumn;
    cxGrid1DBTableView1Telefontyp2: TcxGridDBColumn;
    cxGrid1DBTableView1Telefontyp2IconIndex: TcxGridDBColumn;
    cxGrid1DBTableView1Telefon2: TcxGridDBColumn;
    cxGrid1DBTableView1Telefontyp3: TcxGridDBColumn;
    cxGrid1DBTableView1Telefontyp3IconIndex: TcxGridDBColumn;
    cxGrid1DBTableView1Telefon3: TcxGridDBColumn;
    cxGrid1DBTableView1Emailtyp: TcxGridDBColumn;
    cxGrid1DBTableView1EmailtypIconIndex: TcxGridDBColumn;
    cxGrid1DBTableView1Email: TcxGridDBColumn;
    cxGrid1DBTableView1Emailtyp2: TcxGridDBColumn;
    cxGrid1DBTableView1Emailtyp2IconIndex: TcxGridDBColumn;
    cxGrid1DBTableView1Email2: TcxGridDBColumn;
    cxGrid1DBTableView1Emailtyp3: TcxGridDBColumn;
    cxGrid1DBTableView1Emailtyp3IconIndex: TcxGridDBColumn;
    cxGrid1DBTableView1Email3: TcxGridDBColumn;
    cxGrid1DBTableView1PLZ: TcxGridDBColumn;
    cxGrid1DBTableView1Ort: TcxGridDBColumn;
    cxGrid1DBTableView1Strasse: TcxGridDBColumn;
    cxGrid1DBTableView1Hausnummer: TcxGridDBColumn;
    cxGrid1DBTableView1Notizen: TcxGridDBColumn;
    cxGrid1DBTableView1Bild: TcxGridDBColumn;
    cxGrid1DBTableView1IsArchived: TcxGridDBColumn;
    cxGrid1DBTableView1Datei: TcxGridDBColumn;
    MSConnection1: TMSConnection;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1PersonID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Enabled: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Anrede: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AnredeIconIndex: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Titel: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TitelIconIndex: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Vorname: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Geburtsdatum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Telefontyp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TelefontypIconIndex: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Telefon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Telefontyp2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Telefontyp2IconIndex: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Telefon2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Telefontyp3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Telefontyp3IconIndex: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Telefon3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Emailtyp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1EmailtypIconIndex: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Email: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Emailtyp2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Emailtyp2IconIndex: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Email2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Emailtyp3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Emailtyp3IconIndex: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Email3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PLZ: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Ort: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Strasse: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Hausnummer: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Notizen: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Bild: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1IsArchived: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Datei: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure dxNavBar1OnCustomDrawLinkSelection(Sender: TObject; ACanvas: TCanvas; AViewInfo: TdxNavBarLinkViewInfo;
      var AHandled: Boolean);
    procedure rgImagesTypePropertiesChange(Sender: TObject);
    procedure rgImagesSizePropertiesChange(Sender: TObject);
    procedure dxNavBar1GetOverlaySize(Sender: TObject; var  AWidth, AHeight: Integer);
    procedure lrgDisplayModeInlineClick(Sender: TObject);
    procedure lrgSelectedPopupModeDockedClick(Sender: TObject);
    procedure lrgNavigationPaneModeCompactClick(Sender: TObject);
    procedure lrgImagesTypeSVGClick(Sender: TObject);
    procedure lrgImagesSizeSmallClick(Sender: TObject);
    procedure lcbAllowAnimationClick(Sender: TObject);
    procedure dxNavBar1LinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
    procedure nbgMailSelectedLinkChanged(Sender: TObject);
    procedure nbgSchedulerSelectedLinkChanged(Sender: TObject);
    procedure nbgContactSelectedLinkChanged(Sender: TObject);
    procedure nbiNewContactClick(Sender: TObject);
    procedure ContactsClick(Sender: TObject);
  private
  {$IFDEF EXPRESSSKINS}
    FSkinController: TdxSkinController;
  {$ENDIF}
    function GetLayoutRadioButtonTag(Sender: TObject): Integer;
    procedure InitializeLookAndFeel;
    procedure UpdateImages;
  end;

var
  frmHamburgerMenuDemo: TfrmHamburgerMenuDemo;

implementation

uses
   Dialogs;

{$R *.dfm}

procedure TfrmHamburgerMenuDemo.nbiNewContactClick(Sender: TObject);
var KontaktMenuFenster:TKontaktMenu;
begin
  KontaktMenuFenster:=TKontaktMenu.Create(Self);
  try
    KontaktMenuFenster.ShowModal;
  finally
  end;
end;

{ TfrmHamburgerMenuDemo }

procedure TfrmHamburgerMenuDemo.lcbAllowAnimationClick(Sender: TObject);
begin
  dxNavBar1.OptionsBehavior.Common.AllowExpandAnimation := lcbAllowAnimation.Checked;
end;

procedure TfrmHamburgerMenuDemo.lrgDisplayModeInlineClick(Sender: TObject);
var
  ADisplayMode: TdxNavBarHamburgerMenuDisplayMode;
begin
  ADisplayMode := TdxNavBarHamburgerMenuDisplayMode(GetLayoutRadioButtonTag(Sender));
  if ADisplayMode = dmOverlayMinimal then
  begin
    dxNavBar1.OptionsBehavior.HamburgerMenu.DisplayMode := ADisplayMode;
    dxNavBar1.Align := alTop;
  end
  else
  begin
    dxNavBar1.Align := alLeft;
    dxNavBar1.OptionsBehavior.HamburgerMenu.DisplayMode := ADisplayMode;
  end;
end;

procedure TfrmHamburgerMenuDemo.lrgImagesSizeSmallClick(Sender: TObject);
begin
  UpdateImages;
end;

procedure TfrmHamburgerMenuDemo.lrgImagesTypeSVGClick(Sender: TObject);
begin
  UpdateImages;
end;

procedure TfrmHamburgerMenuDemo.lrgNavigationPaneModeCompactClick(Sender: TObject);
begin
  dxNavBar1.OptionsView.HamburgerMenu.NavigationPaneMode :=
    TdxNavBarHamburgerMenuNavigationPaneMode(GetLayoutRadioButtonTag(Sender));
end;

procedure TfrmHamburgerMenuDemo.UpdateImages;
begin
  if lrgImagesSizeSmall.Checked then
    dxNavBar1.OptionsImage.SmallImages := ilSmall
  else
    if lrgImagesSizeLarge.Checked then
      dxNavBar1.OptionsImage.SmallImages := ilLarge
    else
      if lrgImagesSizeMedium.Checked then
        dxNavBar1.OptionsImage.SmallImages := ilMedium
      else
        dxNavBar1.OptionsImage.SmallImages := nil;
end;

procedure TfrmHamburgerMenuDemo.rgImagesSizePropertiesChange(Sender: TObject);
begin
  UpdateImages;
end;

procedure TfrmHamburgerMenuDemo.rgImagesTypePropertiesChange(Sender: TObject);
begin
  UpdateImages;
end;

procedure TfrmHamburgerMenuDemo.FormCreate(Sender: TObject);
begin
  lcbAllowAnimation.Checked := True;
  lrgDisplayModeInline.Checked := True;
  lrgSelectedPopupModeDocked.Checked := True;
  lrgNavigationPaneModeCompact.Checked := True;
  lrgImagesSizeMedium.Checked := True;
  InitializeLookAndFeel;
end;

function TfrmHamburgerMenuDemo.GetLayoutRadioButtonTag(Sender: TObject): Integer;
begin
  Result := (Sender as TdxLayoutRadioButtonItem).Tag;
end;

procedure TfrmHamburgerMenuDemo.InitializeLookAndFeel;
begin
{$IFDEF EXPRESSSKINS}
  FSkinController := TdxSkinController.Create(Self);
  FSkinController.NativeStyle := False;
  FSkinController.SkinName := 'Basic';
{$ENDIF}
end;

procedure TfrmHamburgerMenuDemo.lrgSelectedPopupModeDockedClick(Sender: TObject);
begin
  dxNavBar1.OptionsBehavior.HamburgerMenu.SelectedGroupPopupMode :=
    TdxNavBarHamburgerMenuSelectedGroupPopupMode(GetLayoutRadioButtonTag(Sender));
end;

procedure TfrmHamburgerMenuDemo.nbgContactSelectedLinkChanged(Sender: TObject);
begin
  nbgContact.SelectedLinkIndex := -1;
end;

procedure TfrmHamburgerMenuDemo.nbgMailSelectedLinkChanged(Sender: TObject);
begin
  nbgMail.SelectedLinkIndex := -1;
end;

procedure TfrmHamburgerMenuDemo.nbgSchedulerSelectedLinkChanged(Sender: TObject);
begin
  nbgScheduler.SelectedLinkIndex := -1;
end;



procedure TfrmHamburgerMenuDemo.ContactsClick(Sender: TObject);
begin
  cxGrid1.Visible:=true;
end;

procedure TfrmHamburgerMenuDemo.dxNavBar1GetOverlaySize(Sender: TObject; var AWidth, AHeight: Integer);
begin
  AHeight := ClientHeight;
end;

procedure TfrmHamburgerMenuDemo.dxNavBar1LinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
begin
  ShowMessage('OnLinkClick: ' + ALink.Item.Caption);
end;

procedure TfrmHamburgerMenuDemo.dxNavBar1OnCustomDrawLinkSelection(Sender: TObject; ACanvas: TCanvas;
  AViewInfo: TdxNavBarLinkViewInfo; var AHandled: Boolean);
var
  R: TRect;
  AStates: TdxNavBarObjectStates;
  APainter: TdxNavBarHamburgerMenuPainter;
begin
  APainter := AViewInfo.ViewInfo.Painter as TdxNavBarHamburgerMenuPainter;
  AStates := AViewInfo.State;
  AHandled := sSelected in AStates;
  if AHandled then
  begin
    Exclude(AStates, sSelected);
    APainter.DrawItemState(AViewInfo, AViewInfo.SelectionRect, AStates);
    R := AViewInfo.Rect;
    R.Right := R.Left + 3;
    ACanvas.Brush.Color := clWhite;
    ACanvas.FillRect(R);
  end;
end;

end.
