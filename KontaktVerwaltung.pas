unit KontaktVerwaltung;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls,StartList, Vcl.StdCtrls,
  Vcl.Buttons, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxBar, cxClasses, cxImageList, cxGraphics, cxButtonEdit,
  cxBarEditItem, cxDropDownEdit,Clipbrd, Vcl.Menus, dxRangeTrackBar,
  Vcl.WinXPanels, Generics.Collections, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxStyles,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  cxDateNavigator, cxLocalization, cxLabel, Optionenmenu,SharedData,
  dxGDIPlusClasses, cxImage,MyPapierkorb,MyMessageBox, cxRadioGroup, dxRibbon,
  dxRibbonGallery, dxCore, dxRibbonSkins, dxRibbonCustomizationForm;
type
  TTableType = (ttAnrede, ttTitel, ttTelefontypen, ttEmailtypen);
const
  TableNames: array[TTableType] of string = ('Anrede', 'Titel', 'Telefontypen', 'Emailtypen');

type
  TKontaktVerwaltungs = class(TForm)

    PanelKontakt: TPanel;
    PopupMenu1: TPopupMenu;
    Neu: TMenuItem;
    Schliessen: TMenuItem;
    cxLocalizer1: TcxLocalizer;
    dxBarManager1: TdxBarManager;
    cxImage1: TcxImage;
    dxRibbonKontaktverwaltungTab1: TdxRibbonTab;
    dxRibbonKontaktverwaltung: TdxRibbon;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButtonKontakt: TdxBarLargeButton;


    procedure Ende1Click(Sender: TObject);
    procedure dxBarLargeButKontaktClick(Sender: TObject);
    procedure NeuClick(Sender: TObject);
    procedure SchliessenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarButtonAnredeClick(Sender: TObject);
    procedure dxBarButtonTelefontypenClick(Sender: TObject);
    procedure dxBarButtonEmailtypenClick(Sender: TObject);
    procedure dxBarLargeButtonTitelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
 private

 public
 procedure ShowOptionForm(TableType: TTableType);

end;


var
  KontaktVerwaltungs: TKontaktVerwaltungs;

implementation

{$R *.dfm}
{$R devex_language_german.RES}

{Kontaktneue hinzufügen}
procedure TKontaktVerwaltungs.NeuClick(Sender: TObject);
begin
  dxBarLargeButKontaktClick(Sender);
end;


{KontaktLöschen}
procedure TKontaktVerwaltungs.SchliessenClick(Sender: TObject);
begin
 close;
end;

{ShowModal}
procedure TKontaktVerwaltungs.ShowOptionForm(TableType: TTableType);
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

{ Anrede }
procedure TKontaktVerwaltungs.dxBarButtonAnredeClick(Sender: TObject);
begin
  ShowOptionForm(ttAnrede);
end;

{Titel}
procedure TKontaktVerwaltungs.dxBarLargeButtonTitelClick(Sender: TObject);
begin
  ShowOptionForm(ttTitel);//Titel
end;

{TelefonTypen}
procedure TKontaktVerwaltungs.dxBarButtonTelefontypenClick(Sender: TObject);
begin
  ShowOptionForm(ttTelefontypen);  //Telefontypen
end;

{EmailTypen}
procedure TKontaktVerwaltungs.dxBarButtonEmailtypenClick(Sender: TObject);
begin
  ShowOptionForm(ttEmailtypen);  //Emailtypen
end;

{KontaktFormular ertellen}
  procedure TKontaktVerwaltungs.dxBarLargeButKontaktClick(Sender: TObject);
    var StartListe: TStartListe;
  begin
    StartListe := TStartListe.Create(Self);
    try
        Startliste.AcBearbeiten.Enabled:=false;
        StartListe.AcArchivieren.Enabled:=false;
        StartListe.AcExportieren.Enabled:=false;
        StartListe.AcDrucken.Enabled:=false;
        Startliste.AcLoeschen.Enabled:=false;
        StartListe.AcKopieren.Enabled:=false;
        StartListe.dxBarLargeButtonKalender.Enabled:=false;
        StartListe.dxBarLargeButQualityDaten.Enabled:=false;

      if StartListe.ShowModal = mrOk then begin

      end;
    finally
      StartListe.Free;
    end;
  end;


{Programmende}
procedure TKontaktVerwaltungs.Ende1Click(Sender: TObject);
begin
  close;
end;


{Create}
procedure TKontaktVerwaltungs.FormCreate(Sender: TObject);
begin
  cxLocalizer1.Active := True;
  cxLocalizer1.Locale := 1031;
end;

procedure TKontaktVerwaltungs.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //N Neukontakt
  if (Key=Ord('N')) and  (ssCtrl in Shift ) then begin
    dxBarlargeButKontaktClick(Sender);
    Key:=0;
  end;

  // ESC = Close
  if (Key = VK_ESCAPE) then begin
    close;
    Key := 0;
  end;

end;

end.
