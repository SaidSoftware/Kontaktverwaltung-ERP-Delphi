unit Kontakt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.DateUtils,
  Vcl.Menus, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, cxImage, System.ImageList, Vcl.ImgList, cxImageList,System.UITypes,
  Vcl.Buttons, Vcl.WinXPanels, KontaktKlassen, Tools, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxBar,
  cxClasses, dxBarBuiltInMenu, cxPC, Vcl.WinXPickers, cxGroupBox,
  cxLabel,Bild, cxButtons, Vcl.ExtDlgs, dxCoreGraphics, cxButtonEdit,Combobox,
  dxGDIPlusClasses, cxGeometry, dxFramedControl, dxPanel, cxMemo,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl,
  dxLayoutLookAndFeels,Data.DB, MemDS, DBAccess, MSAccess,MySQl,Test,System.RegularExpressions,Optionenmenu,MyPapierkorb,
  System.Actions, Vcl.ActnList,MyMessageBox,IdHTTP,System.JSON, Vcl.ToolWin,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxHyperLinkEdit, cxCheckBox, cxImageComboBox,MydatenqFrame,MyDokuFrame,MyAnhangform,MyChoiseForm,MyDateiChoise,uNachrichtSender,
  dxRibbon, dxRibbonGallery, cxRadioGroup, dxToggleSwitch,
  dxColorEdit, cxCheckGroup, cxBarEditItem, cxSpinEdit,System.Generics.Collections,
  dxLayoutControlAdapters,FVIPPrioritaet,FLieferant, dxtree, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer;
type
  TFormMode = (fmAdd, fmEdit);   //Add //Edit
var
  IsChanged: Boolean = False;

type
  TKontaktMenu = class(TForm)
    PopupMenuKontakt: TPopupMenu;
    Speichern: TMenuItem;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButSpeichernSchliessen: TdxBarLargeButton;
    dxBarLargeButZurueck: TdxBarLargeButton;
    OpenPictureDialog1: TOpenPictureDialog;
    cxPageControlMenu: TcxPageControl;
    cxTabSheetBenutzer: TcxTabSheet;
    dxLayoutControlKontakt: TdxLayoutControl;
    ComboBoxAnrede: TcxComboBox;
    ComboBoxTitel: TcxComboBox;
    EditName: TcxTextEdit;
    EditVorname: TcxTextEdit;
    exEditGeburtsdatum: TcxDateEdit;
    EditStrasse: TcxTextEdit;
    Edithausnummer: TcxTextEdit;
    EditPLZ: TcxTextEdit;
    EditOrt: TcxTextEdit;
    dxLayoutControlKontaktGroup_Root: TdxLayoutGroup;
    dxLayoutItemAnrede: TdxLayoutItem;
    dxLayoutItemTitel: TdxLayoutItem;
    dxLayoutItemName: TdxLayoutItem;
    dxLayoutItemVorname: TdxLayoutItem;
    dxLayoutItemGeburtsdatum: TdxLayoutItem;
    dxLayoutItemStrasse: TdxLayoutItem;
    dxLayoutItemHausnummer: TdxLayoutItem;
    dxLayoutItemPLZ: TdxLayoutItem;
    dxLayoutItemOrt: TdxLayoutItem;
    dxLayoutGroupName: TdxLayoutGroup;
    dxLayoutGroupAdresse: TdxLayoutGroup;
    cxTabSheetNotizen: TcxTabSheet;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItemImage: TdxLayoutItem;
    cxImage1: TcxImage;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxComboBoxTelefon: TcxComboBox;
    dxLayoutItemComboTel: TdxLayoutItem;
    cxComboBoxTelefonzwei: TcxComboBox;
    dxLayoutItemComboTelzwei: TdxLayoutItem;
    cxComboBoxTelefondrei: TcxComboBox;
    dxLayoutItemCombodrei: TdxLayoutItem;
    EditTelefon: TcxTextEdit;
    dxLayoutItemEditTel: TdxLayoutItem;
    EditTelefonzwei: TcxTextEdit;
    dxLayoutItemEditTelzwei: TdxLayoutItem;
    EditTelefondrei: TcxTextEdit;
    dxLayoutItemEditTeldrei: TdxLayoutItem;
    cxComboBoxEmail: TcxComboBox;
    dxLayoutItemComboEmail: TdxLayoutItem;
    cxComboBoxEmailzwei: TcxComboBox;
    dxLayoutItemComboEmailzwei: TdxLayoutItem;
    cxComboBoxEmaildrei: TcxComboBox;
    dxLayoutItemComboEmaildrei: TdxLayoutItem;
    EditEmail: TcxTextEdit;
    dxLayoutItemEditEmail: TdxLayoutItem;
    EditEmailzwei: TcxTextEdit;
    dxLayoutItemEditEmailzwei: TdxLayoutItem;
    EditEmaildrei: TcxTextEdit;
    dxLayoutItemEditEmaildrei: TdxLayoutItem;
    dxLayoutGroupKontaktDaten: TdxLayoutGroup;
    dxLayoutGroupEmail: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxBarLargeButSpeichern: TdxBarLargeButton;
    MyConnection: TMSConnection;
    MSDataSourceNotizen: TMSDataSource;
    zurcksetzen1: TMenuItem;
    dxPanelMenu: TdxPanel;
    cxBenutzerID: TcxTextEdit;
    dxLayoutItemID: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    EditNotizen: TcxMemo;
    cxTabSheetDokumenten: TcxTabSheet;
    MSQueryNotizen: TMSQuery;
    cxImageMap: TcxImage;
    dxLayoutItem1: TdxLayoutItem;
    cxImageEmail: TcxImage;
    dxLayoutItemEmail: TdxLayoutItem;
    cxImageEmailzwei: TcxImage;
    dxLayoutItemEmailzwei: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    cxImageEmaildrei: TcxImage;
    dxLayoutItemEmaildrei: TdxLayoutItem;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2: TdxLayoutControl;
    N1: TMenuItem;
    dxLayoutControl2Group_Root1: TdxLayoutGroup;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxBarLargeButNachricht: TdxBarLargeButton;
    cxImagenummer: TcxImage;
    dxLayoutItem2: TdxLayoutItem;
    cxImagenummerzwei: TcxImage;
    dxLayoutItem3: TdxLayoutItem;
    cxImagenummerdrei: TcxImage;
    dxLayoutItem4: TdxLayoutItem;
    cxCheckBoxAutoArchivieren: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    cxTextEdit1: TcxTextEdit;
    dxLayoutItemInforAutoArchivieren: TdxLayoutItem;
    cxSpinEditArchiv: TcxSpinEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    cxImageListKontaktmenuIcon: TcxImageList;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    cxTreeListKategorie: TcxTreeList;
    dxLayoutItem7: TdxLayoutItem;
    cxTreeListKategorieColumnID: TcxTreeListColumn;
    cxTreeListKategorieColumnGroup: TcxTreeListColumn;
    cxTreeListKategorieColumnAusgewaehlt: TcxTreeListColumn;
    cxLabelColor: TcxLabel;
    Kategorie1: TMenuItem;
    Kategorie2: TMenuItem;
    Intern1: TMenuItem;
    Extern1: TMenuItem;
    Kunde1: TMenuItem;
    VIP1: TMenuItem;
    Standard1: TMenuItem;
    Interessent1: TMenuItem;
    Ohne1: TMenuItem;
    Sontiges1: TMenuItem;
    Lieferant1: TMenuItem;
    Partner1: TMenuItem;
    ActionListKontaktMenu: TActionList;
    AcSpeichernundSchliessen: TAction;
    AcZuruecksetzen: TAction;
    AcLieferant: TAction;
    AcIntern: TAction;
    AcExtern: TAction;
    AcVIP: TAction;
    AcStandard: TAction;
    AcInteressent: TAction;
    AcOhne: TAction;
    AcSontiges: TAction;
    AcPartner: TAction;
    Autoarchivieren1: TMenuItem;
    AcAutoarchivieren: TAction;
    Aktivieren1: TMenuItem;
    Deaktivieren1: TMenuItem;
    AcAktivieren: TAction;
    AcDeaktivieren: TAction;
    VIPVerwaltung: TMenuItem;
    VIPPrivilegien1: TMenuItem;
    Transaktionen1: TMenuItem;
    N2: TMenuItem;
    VIPHistory: TMenuItem;
    LieferungVerwaltung1: TMenuItem;
    LieferungVerwaltung2: TMenuItem;
    Bewettungssystem1: TMenuItem;
    ProdukteDiensleistungen1: TMenuItem;
    Lieferbedingungen1: TMenuItem;
    cxTreeListKategorieColumnGroup2: TcxTreeListColumn;
    AcAutoArchivCheck: TAction;
    AcVIPHistory: TAction;
    AcVIPprivilegien: TAction;
    AcTransaktion: TAction;
    cxTabSheetLieferantVerwaltung: TcxTabSheet;
    cxTabSheetVIPVerwaltung: TcxTabSheet;
    dxLayoutControlVIPGroup_Root: TdxLayoutGroup;
    dxLayoutControlVIP: TdxLayoutControl;
    dxLayoutGroupVIP: TdxLayoutGroup;
    dxLayoutControlLieferantGroup_Root: TdxLayoutGroup;
    dxLayoutControlLieferant: TdxLayoutControl;
    dxLayoutGroupLieferant: TdxLayoutGroup;

    procedure FormCreate(Sender: TObject);
    procedure EditNameKeyPress(Sender: TObject; var Key: Char);
    procedure SpeichernClick(Sender: TObject);
    procedure SchliessenClick(Sender: TObject);
    procedure dxBarLargeButSpeichernSchliessenClick(Sender: TObject);
    procedure ComboBoxAnredeExit(Sender: TObject);
    procedure EditNameExit(Sender: TObject);
    procedure dxBarLargeButZurueckClick(Sender: TObject);
    procedure cxImage1DblClick(Sender: TObject);
    procedure cxComboBoxEmailDblClick(Sender: TObject);
    procedure cxComboBoxTelefonDblClick(Sender: TObject);
    procedure ComboBoxAnredeDblClick(Sender: TObject);
    procedure ComboBoxTitelDblClick(Sender: TObject);
    procedure zurcksetzen1Click(Sender: TObject);
    procedure EditVornamePropertiesChange(Sender: TObject);
    procedure EditNamePropertiesChange(Sender: TObject);
    procedure EditStrassePropertiesChange(Sender: TObject);
    procedure EditPLZPropertiesChange(Sender: TObject);
    procedure EditOrtPropertiesChange(Sender: TObject);
    procedure EdithausnummerPropertiesChange(Sender: TObject);
    procedure EditTelefonPropertiesChange(Sender: TObject);
    procedure EditTelefonzweiPropertiesChange(Sender: TObject);
    procedure EditTelefondreiPropertiesChange(Sender: TObject);
    procedure EditEmailPropertiesChange(Sender: TObject);
    procedure EditEmailzweiPropertiesChange(Sender: TObject);
    procedure EditEmaildreiPropertiesChange(Sender: TObject);
    procedure EditNotizensKeyPress(Sender: TObject; var Key: Char);
    procedure EditPLZExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButNotizDeleteClick(Sender: TObject);
    procedure cxPageControlMenuPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure dxBarLargeButSpeichernClick(Sender: TObject);
    procedure cxImageMapClick(Sender: TObject);
    procedure cxImageEmailClick(Sender: TObject);
    procedure cxImageEmailzweiClick(Sender: TObject);
    procedure cxImageEmaildreiClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxGridDBTableViewDokumentenColumn1PropertiesEditValueChanged(
      Sender: TObject);
    procedure cxGridNotizenDBTableViewNotizenKategorieGetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure cxImagenummerClick(Sender: TObject);
    procedure cxImagenummerzweiClick(Sender: TObject);
    procedure cxImagenummerdreiClick(Sender: TObject);
    procedure cxSpinEditArchivPropertiesChange(Sender: TObject);
    procedure dxLayoutGroup6Button0Click(Sender: TObject);
    procedure dxLayoutGroup6Button1Click(Sender: TObject);
    procedure cxTreeListKategorieEditValueChanged(Sender: TcxCustomTreeList;
      AColumn: TcxTreeListColumn);
    procedure AcZuruecksetzenExecute(Sender: TObject);
    procedure AcSpeichernundSchliessenExecute(Sender: TObject);
    procedure AcAktivierenExecute(Sender: TObject);
    procedure AcDeaktivierenExecute(Sender: TObject);
    procedure cxCheckBoxAutoArchivierenPropertiesEditValueChanged(
      Sender: TObject);
    procedure AcVIPHistoryExecute(Sender: TObject);
    procedure AcVIPprivilegienExecute(Sender: TObject);
    procedure AcTransaktionExecute(Sender: TObject);
    procedure cxPageControlMenuChange(Sender: TObject);

private
     FrameDoku: TFrameDoku;
     FrameNotizen:TFrameDatenq;
     FIsArchived: Boolean;
     FFramePrioritaet: TFramePrioritaet;
     FFrameLieferant: TFrameLieferant;
var
    VorherigeWerte: array[0..12] of string;
    CanCloseForm: Boolean;
    VorherigeComboBoxTitelIndex: Integer;
    VorherigeComboBoxAnredeIndex: Integer;
    VorherigeComboBoxTelefonIndex: Integer;
    VorherigeComboBoxTelefonzweiIndex: Integer;
    VorherigeComboBoxTelefondreiIndex: Integer;
    VorherigeComboBoxEmailIndex: Integer;
    VorherigeComboBoxEmailzweiIndex: Integer;
    VorherigeComboBoxEmaildreiIndex: Integer;
    VorherigeGeburtsdatum: string;

    function  ValidateEingabe: string;
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure WMDropFiles(var Msg: TWMDropFiles); message WM_DROPFILES;
    function  GetAllSelectedKategorieIDs: TList<Integer>;

public
 FPersonID: Integer;
        procedure SetArchiviert(Value: Boolean);
        property Active;
        property Action;

     property Archiviert: Boolean write SetArchiviert;
     procedure SetReadOnlyMode(ReadOnly: Boolean);
     procedure LoadKontakt(APersonID: Integer);

    procedure SetPersonID(const AID: Integer);
    procedure LoadTelefonTypen;
    procedure LoadEmailTypen;
    procedure LoadAnrede;
    procedure LoadTitel;
    procedure LoadDataByType(Typ: string);
    procedure LoadComboBoxDataSets(const Combos: array of TcxComboBox; const ASQL, DisplayField, IDField: string);
    procedure UpdateComboBox;
    procedure HandleComboBoxDblClick(const TableName: string);
    function  GetComboBoxType(ComboBox: TcxComboBox): string;
    procedure SendeEmailWennGueltig(AEmailControl: TcxTextEdit);
    function  SpeichernKontaktdaten: Boolean;
    procedure HandleDokumentSenden(Sender: TObject);
  //  procedure LoadDataByType(Typ: string);

    procedure CheckAndCloseForm;
    procedure FilterActiveItems(Sender: TObject);
    procedure CheckName;
    procedure ResetFieldBorders;

    procedure LadeNotizenFuerKontakt(const APersonID: Integer);
    procedure LadeDokuFuerKontakt(const APersonID: Integer);
    function  GetNotizIDForPerson(APersonID: Integer): Integer;
    function  GetNotizCountForPerson(APersonID: Integer): Integer;
    function  GetDokuCountForPerson(APersonID: Integer): Integer;
    function  UpdateTabCaptions:integer;
    procedure AktualisiereNotizenStatus;
    procedure CountNotizDatei;
    procedure HandleNachricht(const Kontaktwert, Name: string);
    procedure LoadKategorienWithSelection(APersonID: Integer);
    procedure SaveAutoArchivSettings(Connection: TMSConnection; PersonID: Integer; Enabled: Boolean);
    procedure SpeichereAutoArchivDaten(PersonID: Integer);
    procedure LadeAutoArchivDaten(PersonID: Integer);
    procedure Prioritaetauswahl;
    procedure SetWindowIcon(AIconIndex: Integer);
    procedure LieferantAuswahl;
    procedure ClearFrames;
    procedure InitializeKategorieTreeList;
    procedure UpdateLabelColor;
    function  IsKategorieChecked(AKategorieID: Integer): Boolean;
    procedure SaveAllKategorienFromTreeList(APersonID: Integer);
    procedure SaveKategorieSelection(APersonID, AKategorieID: Integer; IsChecked: Boolean);
    procedure CreateKategorienTabs;
    function  FindKategorieTab(const ATabName: string): TcxTabSheet;
    procedure RemoveVIPTab;
    procedure RemoveLieferantTab;
    procedure ShowVIPTab;
    procedure HideVIPTab;
    procedure ShowLieferantTab;
    procedure HideLieferantTab;
    procedure ClearTabSheet(ATabSheet: TcxTabSheet);
    procedure InitializeKategorienSystem;
    procedure ClearLayoutGroup(ALayoutGroup: TdxLayoutGroup);
    procedure ColorFuerTab;


    var FoundCountNotizen:integer;
    var FoundCount:integer;
    var FoundCountDoku:integer;
    var HasChanges: Boolean;
    var CheckBoxSelected: Boolean;
end;


var
  KontaktMenu: TKontaktMenu;

implementation

uses KVDatamodule,StartList, System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent, System.NetEncoding,uKontaktValidator,MyNotizForm,MyDokuform,ShellAPI,System.Win.ComObj;


{$R *.dfm}

{s-S}
procedure TKontaktMenu.ComboBoxAnredeExit(Sender: TObject);
begin
  BuchstabenGrossSchreiben(TWinControl(Sender));
end;

procedure TKontaktMenu.SetArchiviert(Value: Boolean);
begin
  FIsArchived := Value;
  cxPageControlMenu.Enabled := not Value;
  dxLayoutControlKontaktGroup_Root.Enabled := not Value;
end;

procedure TKontaktMenu.EditEmaildreiPropertiesChange(Sender: TObject);
begin
 IsChanged := True;
end;

procedure TKontaktMenu.EditEmailPropertiesChange(Sender: TObject);
begin
 IsChanged := True;
end;

procedure TKontaktMenu.EditEmailzweiPropertiesChange(Sender: TObject);
begin
 IsChanged := True;
end;

procedure TKontaktMenu.EdithausnummerPropertiesChange(Sender: TObject);
begin
 IsChanged := True;
end;

procedure TKontaktMenu.EditKeyPress(Sender: TObject; var Key: Char);
begin
   if not CharInSet(Key, ['0'..'9', #8]) then
    Key := #0;
end;

{Bild hinzufügen}
procedure TKontaktMenu.cxImage1DblClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then begin
    try
      LoadImageFromFile(cxImage1, OpenPictureDialog1.FileName);
    except
      on E: Exception do
        MessageDlg('Fehler beim Laden des Bildes: ' + E.Message, mtError, [mbOK], 0);
    end;
  end else begin
   ClearImage(cxImage1);
  end;
end;

{Map}
procedure TKontaktMenu.cxImageMapClick(Sender: TObject);
 var
  Adresse, URL: string;
begin
    if EditPLZ.Text ='' then begin
      exit
    end;
  Adresse := Format('%s %s, %s %s',
    [Trim(EditStrasse.Text),
     Trim(EditHausnummer.Text),
     Trim(EditPLZ.Text),
     Trim(EditOrt.Text)]);
  Adresse := StringReplace(Adresse, ' ', '+', [rfReplaceAll]);
  URL := 'https://www.google.com/maps/search/?api=1&query=' + Adresse;

  ShellExecute(0, 'open', PChar(URL), nil, nil, SW_SHOWNORMAL);
end;



{Get ID für Notiz}
function TKontaktMenu.GetNotizIDForPerson(APersonID: Integer): Integer;
var
  Qry: TMSQuery;
begin
  Result := 0;
  Qry := TMSQuery.Create(nil);
  try
    Qry.Connection := MyConnection;
    Qry.SQL.Text := 'SELECT TOP 1 NotizID FROM KontaktNotizen WHERE PersonID = :PersonID ORDER BY NotizID DESC';
    Qry.ParamByName('PersonID').AsInteger := APersonID;
    Qry.Open;
    if not Qry.Eof then
      Result := Qry.FieldByName('NotizID').AsInteger;
  finally
      Qry.Free;
  end;

end;


{PageChanging}
procedure TKontaktMenu.cxPageControlMenuChange(Sender: TObject);
begin
  ColorFuerTab;
end;

procedure TKontaktMenu.cxPageControlMenuPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
var
  Fehlerbeschreibung: string;
  NeuerPersonID, PersonID: Integer;
  MsgForm: TMyMesBox;

begin
  AllowChange := True;
  if (NewPage = cxTabSheetNotizen) or (NewPage = cxTabSheetDokumenten) then begin

    Fehlerbeschreibung := ValidateEingabe;
    if Fehlerbeschreibung <> '' then  begin
      MsgForm := TMyMesBox.Create(nil);
      try
        MsgForm.Caption := 'Fehler';
        MsgForm.ShowMessage('Bitte füllen Sie alle erforderlichen Felder korrekt aus:' + sLineBreak + Fehlerbeschreibung, mtError, [mbOk]);
        cxPageControlMenu.ActivePageIndex:=0;
      finally
        MsgForm.Free;
      end;
      AllowChange := False;
      Exit;
    end;

    if Trim(cxBenutzerID.Text) = '' then  begin
      MsgForm := TMyMesBox.Create(nil);
      try
        MsgForm.Caption := 'Speichern';
        if MsgForm.ShowMessage(
          'Daten müssen zuerst gespeichert werden. Möchten Sie fortfahren?',
          mtConfirmation, [mbYes, mbNo]) = mrYes
        then  begin
          NeuerPersonID := SaveKontaktFromForm(MyConnection,
            cxBenutzerID,
            ComboboxAnrede,
            ComboboxTitel,
            EditVorname,
            EditName,
            exEditGeburtsdatum,
            cxComboboxTelefon,
            EditTelefon,
            cxComboboxTelefonzwei,
            EditTelefonzwei,
            cxComboboxTelefondrei,
            EditTelefondrei,
            cxComboboxEmail,
            EditEmail,
            cxComboboxEmailzwei,
            EditEmailzwei,
            cxComboboxEmaildrei,
            EditEmaildrei,
            EditPLZ,
            EditOrt,
            EditStrasse,
            EditHausnummer,
            EditNotizen,
            cxImage1);

          if NeuerPersonID > 0 then  begin
            SetPersonID(NeuerPersonID);
            PersonID := NeuerPersonID;
          end    else   begin
            MsgForm.Caption := 'Fehler';
            MsgForm.ShowMessage('Speichern fehlgeschlagen. Sie können keine Notizen oder Dokumente hinzufügen.', mtError, [mbOk]);
            AllowChange := False;
            Exit;
          end;
        end  else   begin
          AllowChange := False;
          Exit;
        end;
      finally
        MsgForm.Free;
      end;
    end else  begin
      PersonID := StrToInt(cxBenutzerID.Text);
      Self.Caption := Format('Kontakt: %s %s %s [%s]',
         [Trim(ComboboxAnrede.Text), Trim(EditVorname.Text), Trim(EditName.Text), Trim(cxBenutzerId.Text)]);
    end;

    UpdateTabCaptions;
    //  Validierung
    if AllowChange then begin
      if NewPage = cxTabSheetNotizen then   begin
        if not Assigned(FrameNotizen) then begin
         FrameNotizen := TFrameDatenq.Create(Self);
         FrameNotizen.Parent := dxLayoutControl1;
         FrameNotizen.Align := alClient;
        end;
        FrameNotizen.SetOwnerTab(cxTabSheetNotizen);
        FrameNotizen.LadeNotizenFuerKontakt(PersonID);
        FrameNotizen.SetPersonID(FPersonID);

      end else if NewPage = cxTabSheetDokumenten then begin
      //  LadeDokumentenFuerKontakt(PersonID);
        if not Assigned(FrameDoku) then begin
          FrameDoku := TFrameDoku.Create(Self);
          FrameDoku.Parent := dxLayoutControl2;
          FrameDoku.Align := alClient;
        end;
          FrameDoku.SetOwnerTab(cxTabSheetDokumenten);
          FrameDoku.LoadDokumente(PersonID);
          FrameDoku.SetPersonID(FPersonID);
      end;
    end;
  end;
//  ColorFuerTab;
end;

{Check}
procedure TKontaktMenu.CheckName;
var
  Query: TMSQuery;
  nameInput, vornameInput: string;
  geburtsdatumInput: TDate;
  infoText: string;
  Zahl: Integer;
begin
  Zahl := 0;
  Query := MyDataModule.MyQueries;
  nameInput := Trim(EditName.Text);
  vornameInput := Trim(EditVorname.Text);
  geburtsdatumInput := exEditGeburtsdatum.Date;

  Query.SQL.Text :=
    'SELECT NAME, VORNAME, GEBURTSDATUM ' +
    'FROM KONTAKTVIEW ' +
    'WHERE NAME = :name OR VORNAME = :vorname OR GEBURTSDATUM = :geburtsdatum';

  Query.ParamByName('name').AsString := nameInput;
  Query.ParamByName('vorname').AsString := vornameInput;
  Query.ParamByName('geburtsdatum').AsDate := geburtsdatumInput;
  Query.Open;

  while not Query.Eof do begin
    if (CompareText(Query.FieldByName('NAME').AsString, nameInput) = 0) and
       (CompareText(Query.FieldByName('VORNAME').AsString, vornameInput) = 0) and
       (Query.FieldByName('GEBURTSDATUM').AsDateTime = geburtsdatumInput) then

    begin
      Inc(Zahl);
    end;
    Query.Next;
  end;


  while not Query.Eof do begin
    if (CompareText(Query.FieldByName('Name').AsString, nameInput) =0) and
    (CompareText(Query.FieldByName('Vorname').AsString, vornameInput)=0) and
    (Query.FieldByName('Geburtsdatum').AsDateTime= geburtsdatumInput) then

    begin
      Inc(Zahl);
    end;
    Query.Next;
  end;

  if Zahl > 0 then begin
    infoText := 'Es existieren bereits '+ IntToStr(Zahl)+' ähnliche Kontakte'
  end else begin
    infoText := '';
  end;
//  cxLabelInfo.Caption := infoText;
//  ShowMessage(cxLabelInfo.Caption);

  Query.Close;
end;

{Speichern}
function TKontaktMenu.SpeichernKontaktdaten: Boolean;
var
  Fehlerbeschreibung: string;
  MsgForm: TMyMesBox;
  NeuerPersonID: Integer;
  KategorieIDs: TList<Integer>;
  Q: TMSQuery;
  i: Integer;
  IsVIP: Boolean;
begin
  Fehlerbeschreibung := ValidateEingabe;
  Result := False;

  if Fehlerbeschreibung = '' then begin
    NeuerPersonID := SaveKontaktFromForm(
      MyConnection,
      cxBenutzerID,
      ComboboxAnrede,
      ComboboxTitel,
      EditVorname,
      EditName,
      exEditGeburtsdatum,
      cxComboboxTelefon,
      EditTelefon,
      cxComboboxTelefonzwei,
      EditTelefonzwei,
      cxComboboxTelefondrei,
      EditTelefondrei,
      cxComboboxEmail,
      EditEmail,
      cxComboboxEmailzwei,
      EditEmailzwei,
      cxComboboxEmaildrei,
      EditEmaildrei,
      EditPLZ,
      EditOrt,
      EditStrasse,
      EditHausnummer,
      EditNotizen,
      cxImage1
    );

    if NeuerPersonID > 0 then begin
      cxBenutzerID.Text := IntToStr(NeuerPersonID);
      FPersonID := NeuerPersonID; // FPersonID

      SaveAutoArchivSettings(MyDataModule.MyConnections, NeuerPersonID, cxCheckBoxAutoArchivieren.Checked);
      SpeichereAutoArchivDaten(NeuerPersonID);
      KategorieIDs := GetAllSelectedKategorieIDs;
      try
        Q := TMSQuery.Create(nil);
        try
          Q.Connection := MyDataModule.MyConnections;
          Q.SQL.Text := 'DELETE FROM KontaktKategorieZuordnung WHERE PersonID = :PersonID';
          Q.ParamByName('PersonID').AsInteger := NeuerPersonID;
          Q.ExecSQL;

          IsVIP := False;
          for i := 0 to KategorieIDs.Count - 1 do   begin
            Q.SQL.Text :=
              'INSERT INTO KontaktKategorieZuordnung (PersonID, KategorieID, ErstelltAm, ErstelltVon) ' +
              'VALUES (:PersonID, :KategorieID, GETDATE(), :ErstelltVon)';
            Q.ParamByName('PersonID').AsInteger := NeuerPersonID;
            Q.ParamByName('KategorieID').AsInteger := KategorieIDs[i];
            Q.ParamByName('ErstelltVon').AsString := 'System';
            Q.ExecSQL;

            // VIP
            if KategorieIDs[i] = 1 then
              IsVIP := True;
          end;


          if IsVIP and Assigned(FFramePrioritaet)  then begin
            try
              FFramePrioritaet.FPersonID := NeuerPersonID;
              FFramePrioritaet.SaveVipData;
            except
              on E: Exception do
                ShowMessage('Fehler beim Speichern der VIP-Daten: ' + E.Message);
            end;
          end;

        finally
          Q.Free;
        end;
      finally
        KategorieIDs.Free;
      end;

      cxTabSheetNotizen.Enabled := True;
      LadeNotizenFuerKontakt(NeuerPersonID);

      if Assigned(MyDataModule.MyQuery) then  begin
        MyDataModule.MyQuery.Close;
        MyDataModule.MyQuery.Open;
      end;

      Result := True;

      if FrameDoku.cxGridDokumenten.FocusedView.DataController.IsEditing then   begin
        FrameDoku.cxGridDokumenten.FocusedView.DataController.Post;
        FrameDoku.cxGridDokumenten.Focused;
      end;
    end;
  end  else  begin
    MsgForm := TMyMesBox.Create(nil);
    try
      MsgForm.Caption := 'Fehler';
      MsgForm.ShowMessage('Bitte füllen Sie alle erforderlichen Felder korrekt aus:' + sLineBreak + Fehlerbeschreibung, mtError, [mbOk]);
    finally
      MsgForm.Free;
    end;
  end;
end;

{Speichern Auto Archivieren}
procedure TKontaktMenu.SpeichereAutoArchivDaten(PersonID: Integer);
var                        {We take a PersonID to save Autoarchiv}
  Q: TMSQuery;
begin
  Q := TMSQuery.Create(nil);
  try
    Q.Connection := MyDataModule.MyConnections;
    Q.SQL.Text :=
      'UPDATE KontaktAutoArchiv SET Enabled = :Enabled, DaysInactiveMax = :Days, LastActiveDate = GETDATE() ' +
      'WHERE PersonID = :PersonID';            {"KontaktAutoArchiv" the name of SQL Table}

    Q.ParamByName('Enabled').AsBoolean := cxCheckBoxAutoArchivieren.Checked;
    Q.ParamByName('Days').AsInteger := cxSpinEditArchiv.Value;
    Q.ParamByName('PersonID').AsInteger := PersonID;
    Q.ExecSQL;
  finally
    Q.Free;
  end;
end;

{SaveAutoArchiv Settings}
procedure TKontaktMenu.SaveAutoArchivSettings(Connection: TMSConnection; PersonID: Integer; Enabled: Boolean);
var
  Q: TMSQuery;
begin
  Q := TMSQuery.Create(nil);
  try
    Q.Connection := Connection;
    Q.SQL.Text := 'SELECT COUNT(*) AS Anzahl FROM KontaktAutoArchiv WHERE PersonID = :PersonID';
    Q.ParamByName('PersonID').AsInteger := PersonID;
    Q.Open;

    if Q.FieldByName('Anzahl').AsInteger > 0 then    begin
      Q.Close;
      Q.SQL.Text := 'UPDATE KontaktAutoArchiv SET Enabled = :Enabled WHERE PersonID = :PersonID';
    end else begin
      Q.Close;
      Q.SQL.Text :=
        'INSERT INTO KontaktAutoArchiv (PersonID, Enabled, LastActiveDate) ' +
        'VALUES (:PersonID, :Enabled, GETDATE())';
    end;
    Q.ParamByName('PersonID').AsInteger := PersonID;
    Q.ParamByName('Enabled').AsInteger := Ord(Enabled);
    Q.ExecSQL;
  finally
    Q.Free;
  end;
end;



{Speichern}
procedure TKontaktMenu.dxBarLargeButSpeichernClick(Sender: TObject);
begin
  SpeichernKontaktdaten;    {-> go to main Save function}
end;

{Speichern und Schließen}
procedure TKontaktMenu.dxBarLargeButSpeichernSchliessenClick(Sender: TObject);
begin
  if SpeichernKontaktdaten then     {-> if Valid function is true then close the Window KontaktMenu}
    ModalResult := mrOk;
end;

{Ac AktivierenExecute}
procedure TKontaktMenu.AcAktivierenExecute(Sender: TObject);
begin
  cxCheckBoxAutoArchivieren.Checked := True;     {PopupMenu Shortcut:Aktiv autoarchiv}
  AcAktivieren.Checked := True;
  AcDeaktivieren.Checked := False;
  dxLayoutGroup6.Expanded := True;
end;

{Ac DeaktivierenExecute}
procedure TKontaktMenu.AcDeaktivierenExecute(Sender: TObject);
begin
  cxCheckBoxAutoArchivieren.Checked := False;    {PopupMenu Shortcut:Deaktiv autoarchiv}
  AcAktivieren.Checked := False;
  AcDeaktivieren.Checked := True;
  dxLayoutGroup6.Expanded := False;
end;

{ActionSpeichern}
procedure TKontaktMenu.AcSpeichernundSchliessenExecute(Sender: TObject);
begin
 dxBarLargeButSpeichernSchliessenClick(Sender);
end;

{ActionZuereck}
procedure TKontaktMenu.AcZuruecksetzenExecute(Sender: TObject);
begin
 dxBarLargeButZurueckClick(Sender);
end;

{CheckAndCloseForm}
procedure TKontaktMenu.CheckAndCloseForm;
begin
  if IsChanged then begin
    if MessageBox(Handle,
        PChar('Soll dieser neu angelegte Datensatz verworfen werden?' + sLineBreak +
              'Ihre Änderungen gehen verloren.'),
        'Bestätigen',
        MB_ICONQUESTION or MB_YESNO) = IDYES then
    begin
      CanCloseForm := True;
      Self.Close;
    end else begin
      CanCloseForm := False;
    end;
  end else begin
    CanCloseForm := True;
    Self.Close;
  end;
end;

{Set PersonID}
procedure TKontaktMenu.SetPersonID(const AID: Integer);
begin
  FPersonID := AID;
  cxBenutzerID.Text := IntToStr(AID);
  LadeNotizenFuerKontakt(FPersonID);
  LadeDokuFuerKontakt(FPersonID);
  if Assigned(FFramePrioritaet) then begin
    FFramePrioritaet.FPersonID := AID;
    FFramePrioritaet.LoadVipData;
  end;
end;

{Hat Notizen}
function HatNotizen(PersonID: Integer): Boolean;
var
  Q: TMSQuery;
begin
  Result := False;
  Q := TMSQuery.Create(nil);
  try
    Q.Connection := MyDataModule.MyConnections;
    Q.SQL.Text := 'SELECT TOP 1 1 FROM KontaktNotizen WHERE PersonID = :PID';
    Q.ParamByName('PID').AsInteger := PersonID;
    Q.Open;
    Result := not Q.IsEmpty;
  finally
    Q.Free;
  end;
end;

{Notizen Laden}
procedure TKontaktMenu.LadeNotizenFuerKontakt(const APersonID: Integer);
var
  Q: TMSQuery;
  Wert: Integer;
begin
  if HatNotizen(APersonID) then
    Wert := 1
  else
    Wert := 0;

  //Kontakt
  Q := TMSQuery.Create(nil);
  try
    Q.Connection := MyDataModule.MyConnections;
    Q.SQL.Text := 'UPDATE Kontakt SET Notizen = :WERT WHERE PersonID = :PID';
    Q.ParamByName('WERT').AsInteger := Wert;
    Q.ParamByName('PID').AsInteger := APersonID;
    Q.ExecSQL;
  finally
    Q.Free;
  end;
  if not Assigned(Startliste) then begin
     Startliste := TStartliste.Create(Application);
  end;
  Startliste.StringGrid1DBBandedTableView1Notizen.EditValue := IntToStr(Wert);
end;

{KONTAKT CREATE}
procedure TKontaktMenu.FormCreate(Sender: TObject);
begin
  OpenPictureDialog1.Filter := 'Bilder ( *.jpg; *.jpeg; *.png)|*.jpg;*.jpeg;*.png';
  DragAcceptFiles(Handle, True);
  NumberOnly(EditTelefon,EditKeyPress);
  NumberOnly(EditTelefonzwei,EditKeyPress);
  NumberOnly(EditTelefondrei,EditKeyPress);
  NumberOnly(EditPLZ,EditKeyPress);
    cxBenutzerID.Style.BorderColor := clWindowframe;
    cxBenutzerID.Properties.ReadOnly := True;
  LoadAnrede;
  LoadTitel;
  LoadTelefonTypen;
  LoadEmailTypen;
  IsChanged:=false;
  HasChanges:=false;
  EditNotizen.Clear;
  InitializeKategorieTreeList;
  InitializeKategorienSystem;
end;

{Kontakt FORM Destroy}
procedure TKontaktMenu.FormDestroy(Sender: TObject);
begin
  DragAcceptFiles(Handle, False);
end;

{FormShow TABsheet}
procedure TKontaktMenu.FormShow(Sender: TObject);
begin
   //FoundCountDoku:=UpdateColumnCaptionsDoku;
   UpdateTabCaptions;
end;


{Kontakt Hinzufügen}
procedure TKontaktMenu.SpeichernClick(Sender: TObject);
begin
 dxBarLargeButSpeichernSchliessenClick(Sender);
end;

{Notizen Tools Delete Button}
procedure TKontaktMenu.ToolButNotizDeleteClick(Sender: TObject);
var
  i: Integer;
  NotizID: Integer;
  qryDelete: TMSQuery;
  SelCount: Integer;
  MyMesBox: TMyMesBox;
  UserChoice: Integer;
  MsgText: string;
begin
  SelCount := FrameNotizen.cxGridNotizenDBTableViewNotizen.Controller.SelectedRowCount;

  MyMesBox := TMyMesBox.Create(nil);

  if SelCount = 0 then  begin
      MyMesBox.Caption := 'Fehler';
      MyMesBox.ShowMessage('Keine Notizen zum Löschen ausgewählt.', mtError, [mbYes]);
    Exit;
  end;

  MsgText := Format('Möchten Sie die %d ausgewählten Notizen wirklich löschen?', [SelCount]);

  try
    MyMesBox.Caption := 'Löschen';
    UserChoice := MyMesBox.ShowMessage(MsgText, mtConfirmation, [mbYes, mbNo]);
  finally
    MyMesBox.Free;
  end;

  if UserChoice <> mrYes then
    Exit;

  qryDelete := TMSQuery.Create(nil);
  try
    qryDelete.Connection := MyDataModule.MyConnections;
    qryDelete.SQL.Text := 'DELETE FROM KontaktNotizen WHERE NotizID = :ID';

    for i := 0 to SelCount - 1 do    begin
      NotizID := FrameNotizen.cxGridNotizenDBTableViewNotizen.DataController.Values[
        FrameNotizen.cxGridNotizenDBTableViewNotizen.Controller.SelectedRows[i].RecordIndex,
        FrameNotizen.cxGridNotizenDBTableViewNotizen.GetColumnByFieldName('NotizID').Index
      ];

      qryDelete.ParamByName('ID').AsInteger := NotizID;
      qryDelete.ExecSQL;
    end;
    FrameNotizen.LadeNotizenFuerKontakt(FPersonID);
  finally
    qryDelete.Free;
  end;
  MyMesBox.Free;
end;





{Validateinputs}
function TKontaktMenu.ValidateEingabe: string;
begin
  Result := TKontaktValidator.ValidateAllFields(
    EditName, EditVorname, EditStrasse, EditPLZ, EditOrt, EditHausnummer,
    EditTelefon, EditTelefonzwei, EditTelefondrei,
    EditEmail, EditEmailzwei, EditEmaildrei,
    exEditGeburtsdatum,
    CxComboboxTelefon, CxComboboxTelefonzwei, CxComboboxTelefondrei,
    CxComboboxEmail, CxComboboxEmailZwei, CxComboboxEmailDrei
  );
end;


{Zurücksetzen}
procedure TKontaktMenu.ResetFieldBorders;
var
  Edits: array[0..11] of TcxTextEdit;
  ComboBoxes: array[0..8] of TcxComboBox;
begin
  Edits[0] := EditName;
  Edits[1] := EditVorname;
  Edits[2] := EditOrt;
  Edits[3] := EditStrasse;
  Edits[4] := EditPLZ;
  Edits[5] := EditHausnummer;
  Edits[6] := EditTelefon;
  Edits[7] := EditTelefonzwei;
  Edits[8] := EditTelefondrei;
  Edits[9] := EditEmail;
  Edits[10] := EditEmailzwei;
  Edits[11] := EditEmaildrei;

  ComboBoxes[0] := ComboBoxTitel;
  ComboBoxes[1] := ComboBoxAnrede;
  ComboBoxes[2] := cxComboBoxTelefon;
  ComboBoxes[3] := cxComboBoxTelefonzwei;
  ComboBoxes[4] := cxComboBoxTelefondrei;
  ComboBoxes[5] := cxComboBoxEmail;
  ComboBoxes[6] := cxComboBoxEmailzwei;
  ComboBoxes[7] := cxComboBoxEmaildrei;

  for var EditField in Edits do  begin
    if Assigned(EditField) then
      SetBorderColorForEmptyField(EditField, True);
  end;
  for var ComboBox in ComboBoxes do begin
    if Assigned(ComboBox) then
      SetBorderColorForEmptyComboBox(ComboBox, True);
  end;
end;

procedure TKontaktMenu.dxBarLargeButZurueckClick(Sender: TObject);
var
  Edits: array[0..11] of TcxTextEdit;
begin
  Edits[0] := EditName;
  Edits[1] := EditVorname;
  Edits[2] := EditOrt;
  Edits[3] := EditStrasse;
  Edits[4] := EditPLZ;
  Edits[5] := EditHausnummer;
  Edits[6] := EditTelefon;
  Edits[7] := EditTelefonzwei;
  Edits[8] := EditTelefondrei;
  Edits[9] := EditEmail;
  Edits[10] := EditEmailzwei;
  Edits[11] := EditEmaildrei;

  for var i := 0 to High(Edits) do
    if Assigned(Edits[i]) then
      VorherigeWerte[i] := Edits[i].Text;
  if Assigned(ComboBoxTitel) then
    VorherigeComboBoxTitelIndex := ComboBoxTitel.ItemIndex;
  if Assigned(ComboBoxAnrede) then
    VorherigeComboBoxAnredeIndex := ComboBoxAnrede.ItemIndex;
  if Assigned(cxComboBoxTelefon) then
    VorherigeComboBoxTelefonIndex := cxComboBoxTelefon.ItemIndex;
  if Assigned(cxComboBoxTelefonzwei) then
    VorherigeComboBoxTelefonzweiIndex := cxComboBoxTelefonzwei.ItemIndex;
  if Assigned(cxComboBoxTelefondrei) then
    VorherigeComboBoxTelefondreiIndex := cxComboBoxTelefondrei.ItemIndex;
  if Assigned(cxComboBoxEmail) then
    VorherigeComboBoxEmailIndex := cxComboBoxEmail.ItemIndex;
  if Assigned(cxComboBoxEmailzwei) then
    VorherigeComboBoxEmailzweiIndex := cxComboBoxEmailzwei.ItemIndex;
  if Assigned(cxComboBoxEmaildrei) then
    VorherigeComboBoxEmaildreiIndex := cxComboBoxEmaildrei.ItemIndex;
  if Assigned(exEditGeburtsdatum) then
    VorherigeGeburtsdatum := exEditGeburtsdatum.Text;


  begin
    for var EditField in Edits do
      if Assigned(EditField) then
        EditField.Clear;
    if Assigned(ComboBoxTitel) then
      ComboBoxTitel.ItemIndex := -1;
    if Assigned(ComboBoxAnrede) then
      ComboBoxAnrede.ItemIndex := -1;
    if Assigned(cxComboBoxTelefon) then
      cxComboBoxTelefon.ItemIndex := -1;
    if Assigned(cxComboBoxTelefonzwei) then
      cxComboBoxTelefonzwei.ItemIndex := -1;
    if Assigned(cxComboBoxTelefondrei) then
      cxComboBoxTelefondrei.ItemIndex := -1;
    if Assigned(cxComboBoxEmail) then
      cxComboBoxEmail.ItemIndex := -1;
    if Assigned(cxComboBoxEmailzwei) then
      cxComboBoxEmailzwei.ItemIndex := -1;
    if Assigned(cxComboBoxEmaildrei) then
      cxComboBoxEmaildrei.ItemIndex := -1;
    if Assigned(exEditGeburtsdatum) then
      exEditGeburtsdatum.Clear;
    if Assigned(EditNotizen) then
      EditNotizen.Clear;
    if Assigned(cxImage1) then
      cxImage1.Picture := nil;

     cxPageControlMenu.Activepage:=cxTabSheetBenutzer;

    //ResetFieldBorders;
  end;

end;

procedure TKontaktMenu.zurcksetzen1Click(Sender: TObject);
begin
  dxBarLargeButZurueckClick(Sender);
end;

{Name richtig eingeben}
procedure TKontaktMenu.EditNameExit(Sender: TObject);
begin
  BuchstabenGrossSchreiben(TWinControl(Sender));
end;

procedure TKontaktMenu.EditNameKeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key, ['A'..'Z', 'a'..'z', #8, #32]) then begin
    Key := #0;
  end;
end;

procedure TKontaktMenu.EditNamePropertiesChange(Sender: TObject);
begin
 IsChanged := True;
 EditNameExit(Sender);
end;

procedure TKontaktMenu.EditNotizensKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    Key := #0;
    EditNotizen.SelText := sLineBreak;
  end;
end;

procedure TKontaktMenu.EditOrtPropertiesChange(Sender: TObject);
begin
 IsChanged := True;
 EditNameExit(Sender);
end;

procedure TKontaktMenu.EditPLZExit(Sender: TObject);
begin
   FillCityFromPLZGlobal(EditPLZ.Text, EditOrt);

end;

procedure TKontaktMenu.EditPLZPropertiesChange(Sender: TObject);
begin
 IsChanged := True;
  if EditPLZ.Text = '' then begin
    EditOrt.Clear;
    EditOrt.Enabled := False;
    cxImageMap.Enabled:=False;
  end  else  begin
    EditOrt.Enabled := True;
    cxImageMap.Enabled:=True;
  end;
end;

procedure TKontaktMenu.EditStrassePropertiesChange(Sender: TObject);
begin
 IsChanged := True;
end;

procedure TKontaktMenu.EditTelefondreiPropertiesChange(Sender: TObject);
begin
 IsChanged := True;
end;

procedure TKontaktMenu.EditTelefonPropertiesChange(Sender: TObject);
begin
 IsChanged := True;
end;

procedure TKontaktMenu.EditTelefonzweiPropertiesChange(Sender: TObject);
begin
 IsChanged := True;
end;

procedure TKontaktMenu.EditVornamePropertiesChange(Sender: TObject);
begin
  IsChanged := True;
  HasChanges:= true;
  EditNameExit(Sender);
end;

{close}
procedure TKontaktMenu.SchliessenClick(Sender: TObject);
begin
  close;
end;

//Load To Comboboxes
procedure LoadComboBoxData(AComboBox: TcxComboBox; const ASQL, DisplayField, IDField: string);
var
  ItemDisplay: string;
  ItemID: string;
begin
  try
    MyDataModule.myQuery.SQL.Text := ASQL;
    MyDataModule.myQuery.Open;
    AComboBox.Properties.Items.Clear;

    while not MyDataModule.myQuery.Eof do begin
      // Den Wert für die Anzeige holen
      ItemDisplay := MyDataModule.myQuery.FieldByName(DisplayField).AsString;

      if IDField <> '' then begin
        // Den versteckten Identifikator (ID) holen
        ItemID := MyDataModule.myQuery.FieldByName(IDField).AsString;
        // Ein Element mit ID als Objekt hinzufügen
        AComboBox.Properties.Items.AddObject(ItemDisplay, TObject(StrToIntDef(ItemID, 0)));
      end else begin
        // Nur den Anzeigetext hinzufügen
        AComboBox.Properties.Items.Add(ItemDisplay);
      end;
      MyDataModule.myQuery.Next;
    end;
  finally
      MyDataModule.myQuery.Close;
  end;
end;

procedure TKontaktMenu.LoadComboBoxDataSets(const Combos: array of TcxComboBox; const ASQL, DisplayField, IDField: string);
var
  i: Integer;
begin
  for i := Low(Combos) to High(Combos) do  begin
    LoadComboBoxData(Combos[i], ASQL, DisplayField, IDField);
  end;
end;


function TKontaktMenu.GetComboBoxType(ComboBox: TcxComboBox): string;
begin
  if ComboBox = ComboBoxAnrede then
    Result := 'ANR'
  else if ComboBox = ComboBoxTitel then
    Result := 'TIT'
  else if (ComboBox = cxComboBoxTelefon) or (ComboBox = cxComboBoxTelefonzwei) or (ComboBox = cxComboBoxTelefondrei) then
    Result := 'TEL'
  else if (ComboBox = cxComboBoxEmail) or (ComboBox = cxComboBoxEmailzwei) or (ComboBox = cxComboBoxEmaildrei) then
    Result := 'EMA'
  else
    raise Exception.Create('Unbekannter ComboBox');
end;

procedure TKontaktMenu.FilterActiveItems(Sender: TObject);
var
  ComboBox: TcxComboBox;
  i: Integer;
begin
  ComboBox := Sender as TcxComboBox;

  var SelectedValue := ComboBox.Text;

  ComboBox.Properties.Items.BeginUpdate;
  try
    ComboBox.Properties.Items.Clear;

    var ASQL := Format(
      'SELECT WertID, Bezeichnung FROM Kombinierttabelle WHERE Typ = ''%s'' AND IsArchived = 0 ORDER BY Bezeichnung ASC',
      [GetComboBoxType(ComboBox)]
    );
    LoadComboBoxData(ComboBox, ASQL, 'Bezeichnung', 'WertID');

  finally
    ComboBox.Properties.Items.EndUpdate;
  end;

  i := ComboBox.Properties.Items.IndexOf(SelectedValue);
  if i >= 0 then
    ComboBox.ItemIndex := i
  else
    ComboBox.ItemIndex := -1;
end;


procedure TKontaktMenu.LoadDataByType(Typ: string);
var
  ASQL: string;
begin
  if Typ = 'ANR' then begin
    ASQL := 'SELECT WertID, Bezeichnung FROM Kombinierttabelle WHERE Typ = ''ANR'' ORDER BY Bezeichnung ASC';
    LoadComboBoxData(ComboBoxAnrede, ASQL, 'Bezeichnung', 'WertID');
    ComboBoxAnrede.Properties.OnPopup := FilterActiveItems;
  end else if Typ = 'TIT' then begin
    ASQL := 'SELECT WertID, Bezeichnung FROM Kombinierttabelle WHERE Typ = ''TIT'' ORDER BY Bezeichnung ASC';
    LoadComboBoxData(ComboBoxTitel, ASQL, 'Bezeichnung', 'WertID');
    ComboBoxTitel.Properties.OnPopup := FilterActiveItems;
  end else if Typ = 'TEL' then begin
    ASQL := 'SELECT WertID, Bezeichnung FROM Kombinierttabelle WHERE Typ = ''TEL'' ORDER BY Bezeichnung ASC';
    LoadComboBoxData(cxComboBoxTelefon, ASQL, 'Bezeichnung', 'WertID');
    LoadComboBoxData(cxComboBoxTelefonzwei, ASQL, 'Bezeichnung', 'WertID');
    LoadComboBoxData(cxComboBoxTelefondrei, ASQL, 'Bezeichnung', 'WertID');
    cxComboBoxTelefon.Properties.OnPopup := FilterActiveItems;
    cxComboBoxTelefonzwei.Properties.OnPopup := FilterActiveItems;
    cxComboBoxTelefondrei.Properties.OnPopup := FilterActiveItems;
  end else if Typ = 'EMA' then begin
    ASQL := 'SELECT WertID, Bezeichnung FROM Kombinierttabelle WHERE Typ = ''EMA'' ORDER BY Bezeichnung ASC';
    LoadComboBoxData(cxComboBoxEmail, ASQL, 'Bezeichnung', 'WertID');
    LoadComboBoxData(cxComboBoxEmailzwei, ASQL, 'Bezeichnung', 'WertID');
    LoadComboBoxData(cxComboBoxEmaildrei, ASQL, 'Bezeichnung', 'WertID');
    cxComboBoxEmail.Properties.OnPopup := FilterActiveItems;
    cxComboBoxEmailzwei.Properties.OnPopup := FilterActiveItems;
    cxComboBoxEmaildrei.Properties.OnPopup := FilterActiveItems;
  end else begin
    raise Exception.Create('Unbekannter Typ: ' + Typ);
  end;;

end;


procedure TKontaktMenu.LoadAnrede;
begin
  LoadDataByType('ANR');
end;

procedure TKontaktMenu.LoadTitel;
begin
  LoadDataByType('TIT');
end;

procedure TKontaktMenu.LoadTelefonTypen;
begin
  LoadDataByType('TEL');
end;

procedure TKontaktMenu.LoadEmailTypen;
begin
  LoadDataByType('EMA');
end;

{testen}
procedure TKontaktMenu.HandleComboBoxDblClick(const TableName: string);
var
  OptionMenu: TOptionForm;
begin
  OptionMenu := TOptionForm.Create(Self);
  try
    MyDataModule.MyQuery.Open;
    OptionMenu.SetActiveTableName(TableName);
    OptionMenu.LoadTable(TableName);
    OptionMenu.cxComboboxArchiv.Enabled:=false;
    OptionMenu.RefreshGridData;
    OptionMenu.ShowModal;
  finally
    MyDataModule.MyQuery.Close;
    OptionMenu.Free;
  end;
  UpdateComboBox;
end;

procedure TKontaktMenu.cxGridNotizenDBTableViewNotizenKategorieGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
  if ACellViewInfo.Value = 0 then begin
      AHintText := 'Wichtige Informationen';
  end;
    if ACellViewInfo.Value = 1 then begin
      AHintText := 'Weitere Informationen';
  end;
  if ACellViewInfo.Value = 2 then begin
      AHintText := 'Notizen ohne besondere Priorität';
  end;
  if ACellViewInfo.Value = 3 then begin
      AHintText := 'Erfüllt';
  end;

  if ACellViewInfo.Value = 4 then begin
      AHintText := 'Notizen zur weiteren Diskussion';
  end
end;

procedure TKontaktMenu.cxGridDBTableViewDokumentenColumn1PropertiesEditValueChanged(
  Sender: TObject);
begin
  if FrameDoku.MSQueryDoku.State in [dsEdit, dsInsert] then
    FrameDoku.MSQueryDoku.Post;
end;

procedure TKontaktMenu.cxCheckBoxAutoArchivierenPropertiesEditValueChanged(
  Sender: TObject);
begin
  AcAktivieren.Checked := cxCheckBoxAutoArchivieren.Checked;
  AcDeaktivieren.Checked := not cxCheckBoxAutoArchivieren.Checked;
end;

{Update Emailtypen}
procedure TKontaktMenu.cxComboBoxEmailDblClick(Sender: TObject);
begin
  HandleComboBoxDblClick('Emailtypen');
end;

{Update Telefontypen}
procedure TKontaktMenu.cxComboBoxTelefonDblClick(Sender: TObject);
begin
  HandleComboBoxDblClick('Telefontypen');
end;

{Update Anrde}
procedure TKontaktMenu.ComboBoxAnredeDblClick(Sender: TObject);
begin
  HandleComboBoxDblClick('Anrede');
end;

{Update Titel}
procedure TKontaktMenu.ComboBoxTitelDblClick(Sender: TObject);
begin
  HandleComboBoxDblClick('Titel');
end;

{Update UpdateComboBox}
procedure TKontaktMenu.UpdateComboBox;
var
  SelectedTel, SelectedEmail, SelectedAnrede, SelectedTitel: string;
begin
  SelectedTel := cxComboBoxTelefon.Text;
  SelectedEmail := cxComboBoxEmail.Text;
  SelectedAnrede := ComboBoxAnrede.Text;
  SelectedTitel := ComboBoxTitel.Text;

//  cxComboBoxTelefon.Properties.Items.Clear;
//  cxComboBoxEmail.Properties.Items.Clear;
//  ComboBoxAnrede.Properties.Items.Clear;
//  ComboBoxTitel.Properties.Items.Clear;

  MyDataModule.MyQuery.Close;
  MyDataModule.MyQuery.SQL.Text := 'SELECT Bezeichnung, Typ FROM Kombinierttabelle WHERE IsArchived = 0 ORDER BY Bezeichnung ASC';
  MyDataModule.MyQuery.Open;

  while not MyDataModule.MyQuery.Eof do begin
    if MyDataModule.MyQuery.FieldByName('Typ').AsString = 'TEL' then
      cxComboBoxTelefon.Properties.Items.Add(MyDataModule.MyQuery.FieldByName('Bezeichnung').AsString)
    else if MyDataModule.MyQuery.FieldByName('Typ').AsString = 'EMA' then
      cxComboBoxEmail.Properties.Items.Add(MyDataModule.MyQuery.FieldByName('Bezeichnung').AsString)
    else if MyDataModule.MyQuery.FieldByName('Typ').AsString = 'ANR' then
      ComboBoxAnrede.Properties.Items.Add(MyDataModule.MyQuery.FieldByName('Bezeichnung').AsString)
    else if MyDataModule.MyQuery.FieldByName('Typ').AsString = 'TIT' then
      ComboBoxTitel.Properties.Items.Add(MyDataModule.MyQuery.FieldByName('Bezeichnung').AsString);
     MyDataModule.MyQuery.Next;
//      ComboBoxTitel.Properties.Items.Add(MyDataModule.MyQuery.FieldByName('Notizen').AsString);
  end;

  MyDataModule.MyQuery.Close;
  if cxComboBoxTelefon.Properties.Items.IndexOf(SelectedTel) <> -1 then
    cxComboBoxTelefon.ItemIndex := cxComboBoxTelefon.Properties.Items.IndexOf(SelectedTel);

  if cxComboBoxEmail.Properties.Items.IndexOf(SelectedEmail) <> -1 then
    cxComboBoxEmail.ItemIndex := cxComboBoxEmail.Properties.Items.IndexOf(SelectedEmail);

  if ComboBoxAnrede.Properties.Items.IndexOf(SelectedAnrede) <> -1 then
    ComboBoxAnrede.ItemIndex := ComboBoxAnrede.Properties.Items.IndexOf(SelectedAnrede);

  if ComboBoxTitel.Properties.Items.IndexOf(SelectedTitel) <> -1 then
    ComboBoxTitel.ItemIndex := ComboBoxTitel.Properties.Items.IndexOf(SelectedTitel);
end;


{Email Öffen Gültig}
procedure TKontaktMenu.SendeEmailWennGueltig(AEmailControl: TcxTextEdit);
//var
//  ValidatedEmail: string;
//  MyMesBox: TMyMesBox;
//  AnhangForm: TAnhang;
//  BenutzerID: Integer;
//  FormAuswahl: TFormAuswahl;
//  SelectedOption: TAppSendOption;
//  FullName, PhoneNumber: string;
begin
//  FormAuswahl := TFormAuswahl.Create(Self);
//  try
//    if FormAuswahl.ShowModal = mrOk then
////      SelectedOption := FormAuswahl.SelectedOption
////    else
////      Exit;
//  finally
//    FormAuswahl.Free;
//  end;
//
//  ValidatedEmail := Trim(AEmailControl.Text);
//  FullName := Trim(EditVorname.Text) + ' ' + Trim(EditName.Text);
//  PhoneNumber := Trim(EditTelefon.Text);
//
//  if (ValidatedEmail = '') or (Pos('@', ValidatedEmail) = 0) then begin
//    ShowMessage('Ungültige oder leere E-Mail-Adresse.');
//    Exit;
//  end;
//
//  if not Assigned(cxBenutzerID) then begin
//    ShowMessage('Interner Fehler: cxBenutzerID ist nicht zugewiesen.');
//    Exit;
//  end;
//
//  if not TryStrToInt(cxBenutzerID.Text, BenutzerID) then begin
//    ShowMessage('Benutzer-ID ist ungültig.');
//    Exit;
//  end;
//
//  case SelectedOption of
//    asOutlook, asAndere:
//      ShellExecute(0, 'open',
//        PChar('mailto:' + ValidatedEmail +
//              '?subject=Kontaktaufnahme&body=Sehr geehrte/r ' + FullName + ','),
//        nil, nil, SW_SHOWNORMAL);
//
//    asGmail:
//      ShellExecute(0, 'open',
//        PChar('https://mail.google.com/mail/?view=cm&fs=1&to=' + ValidatedEmail +
//              '&su=Kontaktaufnahme&body=Sehr geehrte/r ' + FullName + ','),
//        nil, nil, SW_SHOWNORMAL);
//
//    asWhatsApp:
//      if PhoneNumber = '' then
//        ShowMessage('Keine Telefonnummer für WhatsApp angegeben.')
//      else
//        ShellExecute(0, 'open',
//          PChar('https://api.whatsapp.com/send?phone=' + PhoneNumber +
//                '&text=Hallo ' + FullName + ', ich kontaktiere Sie bezüglich ...'),
//          nil, nil, SW_SHOWNORMAL);
//
//    asTeams:
//      ShellExecute(0, 'open',
//        PChar('https://teams.microsoft.com/l/chat/0/0?users=' + ValidatedEmail),
//        nil, nil, SW_SHOWNORMAL);
//  end;
//
//  MyMesBox := TMyMesBox.Create(nil);
//  try
//    MyMesBox.Caption := 'Dokumente senden';
//    if MyMesBox.ShowMessage('Wollen Sie Datei zur Auswahl anzeigen und dann senden?',
//                            mtConfirmation, [mbYes, mbNo]) = mrYes then
//    begin
//      AnhangForm := TAnhang.Create(nil);
//      AnhangForm.Caption := 'Datei senden';
//      try
//        AnhangForm.Init(ValidatedEmail, BenutzerID);
//        AnhangForm.ShowModal;
//      finally
//        AnhangForm.Free;
//      end;
//    end;
//  finally
//    MyMesBox.Free;
//  end;
end;




{Email Öffnen}
procedure TKontaktMenu.cxImageEmailClick(Sender: TObject);
begin
 HandleNachricht(EditEmail.Text, EditVorname.Text + ' ' + EditName.Text);
end;

{Email2 Öffnen}
procedure TKontaktMenu.cxImageEmailzweiClick(Sender: TObject);
begin
 HandleNachricht(EditEmailzwei.Text, EditVorname.Text + ' ' + EditName.Text);
end;

{Email3 Öffnen}
procedure TKontaktMenu.cxImageEmaildreiClick(Sender: TObject);
begin
 HandleNachricht(EditEmaildrei.Text, EditVorname.Text + ' ' + EditName.Text);
end;

//procedure TKontaktMenu.WMDropFiles(var Msg: TWMDropFiles);
//var
//  FileName: array[0..MAX_PATH] of Char;
//  Ext: string;
//begin
//  if DragQueryFile(Msg.Drop, 0, FileName, MAX_PATH) > 0 then  begin
//    Ext := LowerCase(ExtractFileExt(FileName));
//    if (Ext = '.jpg') or (Ext = '.jpeg') or (Ext = '.png') then    begin
//      try
//          cxImage1.Picture.LoadFromFile(FileName);
//      except
//        on E: Exception do
//          ShowMessage('Fehler beim Laden des Bildes: ' + E.Message);
//      end;
//    end else begin
//      ShowMessage('Nur Bilder (*.jpg; *.jpeg; *.png) erlaubt!');
//    end;
//  end;
//  DragFinish(Msg.Drop);
//end;


procedure TKontaktMenu.WMDropFiles(var Msg: TWMDropFiles);
var
  FileName: array[0..MAX_PATH] of Char;
  Ext: string;
  FileStream: TMemoryStream;
  FileSize: Int64;
  Query: TMSQuery;
  PersonID: Integer;
begin
  if DragQueryFile(Msg.Drop, 0, FileName, MAX_PATH) > 0 then begin
    Ext := LowerCase(ExtractFileExt(FileName));

    if cxPageControlMenu.ActivePage = cxTabSheetBenutzer then  begin
      if (Ext = '.jpg') or (Ext = '.jpeg') or (Ext = '.png') then  begin

       try
          cxImage1.Picture.LoadFromFile(FileName);
        except
          on E: Exception do
            ShowMessage('Fehler beim Laden des Bildes: ' + E.Message);
        end;
      end  else
        ShowMessage('Nur Bilder (*.jpg; *.jpeg; *.png) erlaubt!');
    end else if cxPageControlMenu.ActivePage = cxTabSheetDokumenten then  begin
      if Trim(cxBenutzerID.Text) = '' then   begin
        ShowMessage('Kein Kontakt ausgewählt!');
        Exit;
      end;

      PersonID := StrToInt(cxBenutzerID.Text);
      FileStream := TMemoryStream.Create;
      try
        FileStream.LoadFromFile(FileName);
        FileSize := FileStream.Size;

        if FileSize > 50 * 1024 * 1024 then begin
          ShowMessage('Datei zu groß. Max. 50 MB.');
          Exit;
        end;

        Query := TMSQuery.Create(nil);
        try
          Query.Connection := MyConnection;
          Query.SQL.Text :=
            'INSERT INTO KontaktDateien (PersonID, FileName, FileSize, FileData, DateUploaded, Versanderlaubt) ' +
            'VALUES (:PersonID, :FileName, :FileSize, :FileData, :DateUploaded, :Versanderlaubt)';

          Query.ParamByName('PersonID').Value := PersonID;
          Query.ParamByName('FileName').Value := ExtractFileName(FileName);
          Query.ParamByName('FileSize').Value := FileSize;
          Query.ParamByName('FileData').LoadFromStream(FileStream, ftBlob);
          Query.ParamByName('DateUploaded').Value := Now;
          Query.ParamByName('Versanderlaubt').Value := True;

          Query.ExecSQL;
          FrameDoku.LoadDokumente(PersonID);

        finally
          Query.Free;
        end;

      finally
        FileStream.Free;
      end;
    end;
  end;
  DragFinish(Msg.Drop);
end;



procedure LoadImageFromDB(Query: TMSQuery; FieldName: string; Picture: TPicture);
var
  MemoryStream: TMemoryStream;
  Bytes: TBytes;
begin
  if not Query.FieldByName(FieldName).IsNull then begin
    Bytes := Query.FieldByName(FieldName).AsBytes;
    if Length(Bytes) > 0 then    begin
      MemoryStream := TMemoryStream.Create;
      try
        MemoryStream.Write(Bytes[0], Length(Bytes));
        MemoryStream.Position := 0;
        Picture.LoadFromStream(MemoryStream);
      finally
        MemoryStream.Free;
      end;
    end  else
      Picture.Assign(nil);
  end  else
    Picture.Assign(nil);
end;

{Load Kontakt}
procedure TKontaktMenu.LoadKontakt(APersonID: Integer);
begin
  FPersonID := APersonID;
  LadeNotizenFuerKontakt(FPersonID);
  if not Assigned(FrameDoku) then  begin
    FrameDoku := TFrameDoku.Create(Self);
    FrameDoku.Parent := cxTabSheetDokumenten;
    FrameDoku.Align := alClient;
  end;

   if not Assigned(FrameNotizen) then begin
    FrameNotizen := TFrameDatenq.Create(Self);
    FrameNotizen.Parent := cxTabSheetNotizen;
    FrameNotizen.Align := alClient;
  end;
  LadeDokuFuerKontakt(FPersonID);

  with MyDataModule.MyQuery do begin
    Close;
    SQL.Text := 'SELECT * FROM KontaktView WHERE PersonID = :ID';
    ParamByName('ID').AsInteger := APersonID;
    Open;

    if not Eof then begin
      EditName.Text := FieldByName('Name').AsString;
      EditVorname.Text := FieldByName('Vorname').AsString;
      cxBenutzerID.Text := FieldByName('PersonID').AsString;
      EditStrasse.Text := FieldByName('Strasse').AsString;
      EditPLZ.Text := FieldByName('PLZ').AsString;
      EditOrt.Text := FieldByName('Ort').AsString;
      EditHausnummer.Text := FieldByName('Hausnummer').AsString;
      exEditGeburtsdatum.Date :=FieldByName('Geburtsdatum').AsDateTime;
        ComboboxAnrede.Text:= FieldByName('Anrede').AsString;
        ComboboxTitel.Text:= FieldByName('Titel').AsString;
       cxComboboxTelefon.Text:= FieldByName('Telefontyp').AsString;
       EditTelefon.Text:= FieldByName('Telefon').AsString;
       EditTelefonzwei.Text:= FieldByName('Telefon 2').AsString;
       EditTelefondrei.Text:= FieldByName('Telefon 3').AsString;

       EditEmail.Text:= FieldByName('Email').AsString;
       EditEmailzwei.Text:= FieldByName('Email 2').AsString;
       EditEmaildrei.Text:= FieldByName('Email 3').AsString;

       cxComboboxTelefonzwei.Text:= FieldByName('Telefontyp2').AsString;
       cxComboboxTelefondrei.Text:= FieldByName('Telefontyp3').AsString;
       cxComboboxEmail.Text:= FieldByName('Emailtyp').AsString;
       cxComboboxEmailzwei.Text:= FieldByName('Emailtyp2').AsString;
       cxComboboxEmaildrei.Text:= FieldByName('Emailtyp3').AsString;
       EditNotizen.Text :=FieldByName('Notizen').AsString;
          try
            MyDataModule.MyQuery.Close;
            MyDataModule.MyQuery.SQL.Text := 'SELECT Bild FROM Kontakt WHERE PersonID = :ID';
            MyDataModule.MyQuery.ParamByName('ID').AsInteger := APersonID;
            MyDataModule.MyQuery.Open;

            if not MyDataModule.MyQuery.IsEmpty and
               not MyDataModule.MyQuery.FieldByName('Bild').IsNull then begin
              LoadImageFromDB(MyDataModule.MyQuery, 'Bild', cxImage1.Picture);
            end else begin
              cxImage1.Picture.Assign(nil);
            end;
          finally
            MyDataModule.MyQuery.Close;
          end;
    end;
  end;
end;


procedure TKontaktMenu.SetReadOnlyMode(ReadOnly: Boolean);
begin
    dxLayoutGroup5.Enabled:= not ReadOnly;
    dxLayoutGroupEmail.Enabled := not ReadOnly;
    dxLayoutGroupKontaktDaten.Enabled := not ReadOnly;
    dxLayoutGroupAdresse.Enabled := not ReadOnly;
    dxLayoutGroup4.Enabled := not ReadOnly;

    dxBarLargeButZurueck.Enabled := not ReadOnly;
    dxBarLargeButSpeichernSchliessen.Enabled := not ReadOnly;
    dxBarLargeButSpeichern.Enabled := not ReadOnly;
    Speichern.Enabled := not ReadOnly;
    zurcksetzen1.Enabled := not ReadOnly;

    FrameNotizen.ToolButtonNeu.Enabled:= not ReadOnly;
    FrameNotizen.ToolButtonLoeschen.Enabled:= not ReadOnly;

    FrameDoku.ToolButtonNeu.Enabled:= not ReadOnly;
    FrameDoku.ToolButtonLoeschen.Enabled:= not ReadOnly;

    FrameDoku.ReadOnlyMode := ReadOnly;
    FrameNotizen.ReadOnlyMode := ReadOnly;

    Caption := 'Archiviert ['+'Kontakt]';

    FrameNotizen.CxtextEditInfo.Text:='Archivierte Kontakte';
    FrameDoku.CxtextEditDokuInformation.Text := 'Archivierte Kontakte';
end;

procedure TKontaktMenu.HandleDokumentSenden(Sender: TObject);
var
  DateiQuery: TMSQuery;
  TempFilePath: string;
  Outlook, MailItem, Attachments: OleVariant;
  AttachStream: TStream;
  TempFileList: TStringList;
begin
  DateiQuery := (Sender as TFrameDoku).MSQueryDoku;
  DateiQuery.First;
  TempFileList := TStringList.Create;
  try
    while not DateiQuery.Eof do
    begin
      if DateiQuery.FieldByName('Versanderlaubt').AsBoolean then  begin
        TempFilePath := IncludeTrailingPathDelimiter(GetEnvironmentVariable('TEMP')) +
                        DateiQuery.FieldByName('FileName').AsString;

        AttachStream := DateiQuery.CreateBlobStream(DateiQuery.FieldByName('FileData'), bmRead);
        with TFileStream.Create(TempFilePath, fmCreate) do
        try
          AttachStream.Position := 0;
          CopyFrom(AttachStream, AttachStream.Size);
        finally
          Free;
          AttachStream.Free;
        end;

        TempFileList.Add(TempFilePath);
      end;
      DateiQuery.Next;
    end;

    if TempFileList.Count > 0 then begin
      Outlook := CreateOleObject('Outlook.Application');
      MailItem := Outlook.CreateItem(0);
      MailItem.Recipients.Add(EditEmail.Text);
      MailItem.Subject := 'Kontaktaufnahme';
      MailItem.Body := 'Sehr geehrte/r...';

      Attachments := MailItem.Attachments;
      for var I := 0 to TempFileList.Count - 1 do
        Attachments.Add(TempFileList[I]);

      MailItem.Display;
    end else
    begin
      ShowMessage('Keine Dokumente mit Versanderlaubt = True gefunden.');
    end;
  finally
    TempFileList.Free;
  end;
end;

{Count Notizen}
function TKontaktMenu.GetNotizCountForPerson(APersonID: Integer): Integer;
var
  Qry: TMSQuery;
begin
  Result := 0;
  if APersonID <= 0 then Exit;

  Qry := TMSQuery.Create(nil);
  try
    Qry.Connection := MyDataModule.MyConnections;
    Qry.SQL.Text := 'SELECT COUNT(NotizID) AS Anzahl FROM KontaktNotizen WHERE PersonID = :ID';
    Qry.ParamByName('ID').AsInteger := APersonID;
    Qry.Open;
    Result := Qry.FieldByName('Anzahl').AsInteger;
  finally
    Qry.Free;
  end;
end;


{Count Dokumenten}
function TKontaktMenu.GetDokuCountForPerson(APersonID: Integer): Integer;
var
  Qry: TMSQuery;
begin
  Result := 0;
  if APersonID <= 0 then Exit;

  Qry := TMSQuery.Create(nil);
  try
    Qry.Connection := MyDataModule.MyConnections;
    Qry.SQL.Text := 'SELECT COUNT(FileID) AS Anzahl FROM KontaktDateien WHERE PersonID = :ID';
    Qry.ParamByName('ID').AsInteger := APersonID;
    Qry.Open;
    Result := Qry.FieldByName('Anzahl').AsInteger;
  finally
    Qry.Free;
  end;
end;


{UpdateTab Captions}
function TKontaktMenu.UpdateTabCaptions: Integer;
var
  NotizCount, DokuCount: Integer;
begin
  NotizCount := GetNotizCountForPerson(FPersonID);
  DokuCount := GetDokuCountForPerson(FPersonID);

  if Assigned(cxTabSheetNotizen) then
    cxTabSheetNotizen.Caption := Format('Notizen (%d)', [NotizCount]);

  if Assigned(cxTabSheetDokumenten) then
    cxTabSheetDokumenten.Caption := Format('Dateien (%d)', [DokuCount]);

  Result := NotizCount + DokuCount;
end;

{Count Notiz}
procedure TKontaktMenu.CountNotizDatei;
begin
  UpdateTabCaptions;
end;

{Aktualisieren}
procedure TKontaktMenu.AktualisiereNotizenStatus;
begin
  if FPersonID > 0 then
    LadeNotizenFuerKontakt(FPersonID);
    LadeDokuFuerKontakt(FPersonID);
end;



{Nummer Click2}
procedure TKontaktMenu.cxImagenummerzweiClick(Sender: TObject);
begin
 HandleNachricht(EditTelefonzwei.Text, EditVorname.Text + ' ' + EditName.Text);
end;

{Nummer Click3}
procedure TKontaktMenu.cxImagenummerdreiClick(Sender: TObject);
begin
  HandleNachricht(EditTelefondrei.Text, EditVorname.Text + ' ' + EditName.Text);
end;

{Nummer Click}
procedure TKontaktMenu.cxImagenummerClick(Sender: TObject);
begin
  HandleNachricht(EditTelefon.Text, EditVorname.Text + ' ' + EditName.Text);
end;



{Handle Nachricht}
procedure TKontaktMenu.HandleNachricht(const Kontaktwert, Name: string);
var
  Auswahl: TFormAuswahl;
  Option: TAppSendOption;
  ValidierungsFehler: string;
  MsgForm: TMyMesBox;
  BenutzerID: integer;
begin
  ValidierungsFehler := ValidateEingabe;

  if ValidierungsFehler <> '' then  begin
    MsgForm := TMyMesBox.Create(nil);
    try
      MsgForm.Caption := 'Fehler';
      MsgForm.ShowMessage('Bitte füllen Sie alle erforderlichen Felder korrekt aus:' + sLineBreak + ValidierungsFehler, mtError, [mbOk]);
    finally
      MsgForm.Free;
    end;
    Exit;
  end;

  if not Assigned(cxBenutzerID) then  begin
    ShowMessage('Interner Fehler: cxBenutzerID ist nicht zugewiesen.');
    Exit;
  end;

  if not TryStrToInt(cxBenutzerID.Text, BenutzerID) then  begin
    ShowMessage('Benutzer-ID ist ungültig.');
    Exit;
  end;
  Auswahl := TFormAuswahl.Create(Self);
  try
    if Auswahl.ShowForKontakt(Kontaktwert, Option) then  begin
      SendeNachricht(Option, Kontaktwert, Name);
    end;
  finally
    Auswahl.Free;
  end;
end;


{Hat Dateien}
function HatDateien(PersonID: Integer): Boolean;
var
  Q: TMSQuery;
begin
  Result := False;
  Q := TMSQuery.Create(nil);
  try
    Q.Connection := MyDataModule.MyConnections;
    Q.SQL.Text := 'SELECT TOP 1 1 FROM KontaktDateien WHERE PersonID = :PID';
    Q.ParamByName('PID').AsInteger := PersonID;
    Q.Open;
    Result := not Q.IsEmpty;
  finally
    Q.Free;
  end;
end;

{Lade Dokument}
procedure TKontaktMenu.LadeDokuFuerKontakt(const APersonID: Integer);
var
  Q: TMSQuery;
  Wert: Integer;
begin
  if HatDateien(APersonID) then
    Wert := 1
  else
    Wert := 0;

  //Kontakt
  Q := TMSQuery.Create(nil);
  try
    Q.Connection := MyDataModule.MyConnections;
    Q.SQL.Text := 'UPDATE Kontakt SET Datei = :WERT WHERE PersonID = :PID';
    Q.ParamByName('WERT').AsInteger := Wert;
    Q.ParamByName('PID').AsInteger := APersonID;
    Q.ExecSQL;
  finally
    Q.Free;
  end;
  Startliste.StringGrid1DBBandedTableView1Dateien.EditValue := IntToStr(Wert);
end;


{Kategorie Edit Value Changed}
procedure TKontaktMenu.cxTreeListKategorieEditValueChanged(
  Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn);
var
  Node, Child: TcxTreeListNode;
  KategorieID: Integer;
  IsChecked: Boolean;
  i: Integer;
begin
  if AColumn.Position.ColIndex <> 3 then Exit;

  Node := Sender.FocusedNode;
  if Node = nil then
  Exit;
  if Node.HasChildren then  begin
    IsChecked := Node.Values[3];

    for i := 0 to Node.Count - 1 do
    begin
      Child := Node.Items[i];
      Child.Values[3] := IsChecked;
      if FPersonID > 0 then      begin
        KategorieID := Child.Values[0];
        SaveKategorieSelection(FPersonID, KategorieID, IsChecked);
      end;
    end;
  end  else  begin
    KategorieID := Node.Values[0];
    IsChecked := Node.Values[3];
    if FPersonID > 0 then begin
      SaveKategorieSelection(FPersonID, KategorieID, IsChecked);
    end;
  end;
  CreateKategorienTabs;
end;


{Laod Kategorie}
procedure TKontaktMenu.LoadKategorienWithSelection(APersonID: Integer);
var
  Q: TMSQuery;
  GroupNode: TcxTreeListNode;
  SelectedIDs: TStringList;

  procedure AddSubNode(AParent: TcxTreeListNode; AID: Integer; ACaption: string; AImageIndex: Integer);
  var
    Node: TcxTreeListNode;
  begin
    Node := cxTreeListKategorie.AddChild(AParent);
    Node.Values[0] := AID;
    Node.Values[2] := ACaption;
    Node.Values[3] := SelectedIDs.IndexOf(IntToStr(AID)) >= 0;
    Node.ImageIndex := AImageIndex;
  end;

begin
  cxTreeListKategorieColumnID.Visible := False;
  cxTreeListKategorie.Clear;
  cxTreeListKategorie.BeginUpdate;
  try
    SelectedIDs := TStringList.Create;
    Q := TMSQuery.Create(nil);
    try
      Q.Connection := MyDataModule.MyConnections;

      if APersonID > 0 then  begin
        Q.SQL.Text := 'SELECT KategorieID FROM KontaktKategorieZuordnung WHERE PersonID = :PersonID';
        Q.ParamByName('PersonID').AsInteger := APersonID;
        Q.Open;
        while not Q.EOF do  begin
          SelectedIDs.Add(Q.FieldByName('KategorieID').AsString);
          Q.Next;
        end;
        Q.Close;
      end else   begin
        SelectedIDs.Add('8');
      end;
      GroupNode := cxTreeListKategorie.Add;
      GroupNode.Values[2] := 'Mitarbeiter';
      GroupNode.Values[3] := False;
      GroupNode.ImageIndex := -1;

      AddSubNode(GroupNode, 9, 'Intern', 9);
      AddSubNode(GroupNode, 3, 'Extern', 3);

      GroupNode := cxTreeListKategorie.Add;
      GroupNode.Values[2] := 'Kunden';
      GroupNode.Values[3] := False;
      GroupNode.ImageIndex := -1;

      AddSubNode(GroupNode, 1, 'VIP', 1);
      AddSubNode(GroupNode, 2, 'Standard', 2);
      AddSubNode(GroupNode, 6, 'Interessent', 6);

      GroupNode := cxTreeListKategorie.Add;
      GroupNode.Values[0] := 7;
      GroupNode.Values[2] := 'Sonstiges';
      GroupNode.Values[3] := SelectedIDs.IndexOf('7') >= 0;
      GroupNode.ImageIndex := 7;

      GroupNode := cxTreeListKategorie.Add;
      GroupNode.Values[0] := 8;
      GroupNode.Values[2] := 'Ohne';
      GroupNode.Values[3] := SelectedIDs.IndexOf('8') >= 0;
      GroupNode.ImageIndex := 8;

      GroupNode := cxTreeListKategorie.Add;
      GroupNode.Values[0] := 4;
      GroupNode.Values[2] := 'Lieferant';
      GroupNode.Values[3] := SelectedIDs.IndexOf('4') >= 0;
      GroupNode.ImageIndex := 4;

      GroupNode := cxTreeListKategorie.Add;
      GroupNode.Values[0] := 5;
      GroupNode.Values[2] := 'Partner';
      GroupNode.Values[3] := SelectedIDs.IndexOf('5') >= 0;
      GroupNode.ImageIndex := 5;

      cxTreeListKategorie.FullExpand;
      CreateKategorienTabs;
    finally
      Q.Free;
      SelectedIDs.Free;
    end;
  finally
    cxTreeListKategorie.EndUpdate;
  end;
end;
{Initalize Kategorie TreeList}
procedure TKontaktMenu.InitializeKategorieTreeList;
begin
  cxTreeListKategorie.Clear;
  cxTreeListKategorie.BeginUpdate;
  try
    cxTreeListKategorie.OptionsView.ColumnAutoWidth := True;
    cxTreeListKategorie.OptionsSelection.MultiSelect := False;
    cxTreeListKategorieColumnID.Visible := False;
    LoadKategorienWithSelection(0);
  finally
    cxTreeListKategorie.EndUpdate;
  end;
end;

{Save Kategorie}
procedure TKontaktMenu.SaveKategorieSelection(APersonID, AKategorieID: Integer; IsChecked: Boolean);
var
  Q: TMSQuery;
begin
  if APersonID <= 0 then Exit;

  Q := TMSQuery.Create(nil);
  try
    Q.Connection := MyDataModule.MyConnections;

    if IsChecked then begin
      Q.SQL.Text :=
        'SELECT COUNT(*) as Cnt FROM KontaktKategorieZuordnung ' +
        'WHERE PersonID = :PersonID AND KategorieID = :KategorieID';
      Q.ParamByName('PersonID').AsInteger := APersonID;
      Q.ParamByName('KategorieID').AsInteger := AKategorieID;
      Q.Open;

      if Q.FieldByName('Cnt').AsInteger = 0 then  begin
        Q.Close;
        Q.SQL.Text :=
          'INSERT INTO KontaktKategorieZuordnung (PersonID, KategorieID, ErstelltAm, ErstelltVon) ' +
          'VALUES (:PersonID, :KategorieID, GETDATE(), :ErstelltVon)';
        Q.ParamByName('PersonID').AsInteger := APersonID;
        Q.ParamByName('KategorieID').AsInteger := AKategorieID;
        Q.ParamByName('ErstelltVon').AsString := 'System';
        Q.ExecSQL;
      end;
    end    else    begin
      Q.SQL.Text :=
        'DELETE FROM KontaktKategorieZuordnung ' +
        'WHERE PersonID = :PersonID AND KategorieID = :KategorieID';
      Q.ParamByName('PersonID').AsInteger := APersonID;
      Q.ParamByName('KategorieID').AsInteger := AKategorieID;
      Q.ExecSQL;
    end;
  finally
    Q.Free;
  end;
end;

{Find ImageIndex}
function FindItemIndexByImageIndex(AComboBox: TcxImageComboBox; AImageIndex: Integer): Integer;
var
  i: Integer;
begin
  Result := -1;
  for i := 0 to AComboBox.Properties.Items.Count - 1 do begin
    if AComboBox.Properties.Items[i].ImageIndex = AImageIndex then begin
      Result := i;
      Exit;
    end;
  end;
end;

{Auto Archiv}
procedure TKontaktMenu.cxSpinEditArchivPropertiesChange(Sender: TObject);
begin
  cxTextEdit1.Text:='Archiviert Kontakte automatisch nach '+cxSpinEditArchiv.Text+' Tagen Inaktivität.';
end;


{Load Archiv}
procedure TKontaktMenu.LadeAutoArchivDaten(PersonID: Integer);
var
  Q: TMSQuery;
begin
  Q := TMSQuery.Create(nil);
  try
    Q.Connection := MyDataModule.MyConnections;
    Q.SQL.Text := 'SELECT Enabled, DaysInactiveMax FROM KontaktAutoArchiv WHERE PersonID = :PersonID';
    Q.ParamByName('PersonID').AsInteger := PersonID;
    Q.Open;
    if not Q.IsEmpty then begin
      cxCheckBoxAutoArchivieren.Checked := Q.FieldByName('Enabled').AsBoolean;
       if cxCheckBoxAutoArchivieren.Checked then begin
        AcAktivieren.Checked := True;
        AcDeaktivieren.Checked := False;
        dxLayoutGroup6.Expanded := True;
       end else begin
        AcAktivieren.Checked := False;
        AcDeaktivieren.Checked := True;
        dxLayoutGroup6.Expanded := False;
       end;
      cxSpinEditArchiv.Value := Q.FieldByName('DaysInactiveMax').AsInteger;
    end;
  finally
    Q.Free;
  end;
end;

{Prioritätsauswahl}
procedure TKontaktMenu.PrioritaetAuswahl;
var
  LayoutItem: TdxLayoutItem;
begin
  ClearFrames;
    FFramePrioritaet := TFramePrioritaet.Create(Self);
    FFramePrioritaet.FPersonID := FPersonID; //  PersonID
    FFramePrioritaet.Visible := True;
    FFramePrioritaet.EnsureBNotizenCreated;
    dxLayoutControlKontakt.BeginUpdate;
    try
      LayoutItem := dxLayoutControlKontakt.CreateItemForControl(FFramePrioritaet);
//      LayoutItem.Parent := dxLayoutGroupPrioritaet;
//      LayoutItem.Parent := dxLayoutGroupFrameKategorien;
      LayoutItem.AlignHorz := ahClient;
      LayoutItem.AlignVert := avClient;
      LayoutItem.CaptionOptions.Visible := False;
      LayoutItem.Visible := True;
    finally
      dxLayoutControlKontakt.EndUpdate;
    end;

    if FPersonID > 0 then begin
      FFramePrioritaet.LoadVipData;
    end;
end;

{LieferantAuswahl}
procedure TKontaktMenu.LieferantAuswahl;
var
  LayoutItem: TdxLayoutItem;
begin
 ClearFrames;
    FFrameLieferant := TFrameLieferant.Create(Self);
//    FFrameLieferant.FPersonID := FPersonID; //  PersonID
    FFrameLieferant.Visible := True;
//    FFrameLieferant.EnsureBNotizenCreated;
    dxLayoutControlKontakt.BeginUpdate;
    try
      LayoutItem := dxLayoutControlKontakt.CreateItemForControl(FFrameLieferant);
//      LayoutItem.Parent := dxLayoutGroupPrioritaet;
//      LayoutItem.Parent := dxLayoutGroupFrameKategorien;
      LayoutItem.AlignHorz := ahClient;
      LayoutItem.AlignVert := avClient;
      LayoutItem.CaptionOptions.Visible := False;
      LayoutItem.Visible := True;
    finally
      dxLayoutControlKontakt.EndUpdate;
    end;

    if FPersonID > 0 then begin
//      FFrameLieferant.LoadVipData;
    end;
end;

{Frame Clear}
procedure TKontaktMenu.ClearFrames;
begin
  if Assigned(FFrameLieferant) then  begin
    FFrameLieferant.Free;
    FFrameLieferant := nil;
  end;

  if Assigned(FFramePrioritaet) then  begin
    FFramePrioritaet.Free;
    FFramePrioritaet := nil;
  end;
end;


{SetWindow Icon}
procedure TKontaktMenu.SetWindowIcon(AIconIndex: Integer);
begin
  if Assigned(cxImageListKontaktmenuIcon) and (AIconIndex >= 0) then
    cxImageListKontaktmenuIcon.GetIcon(AIconIndex, Self.Icon);
end;


{Collapsed}
procedure TKontaktMenu.dxLayoutGroup6Button0Click(Sender: TObject);
begin
 dxLayoutGroup6.Expanded:=true;
end;

{Expanded}
procedure TKontaktMenu.dxLayoutGroup6Button1Click(Sender: TObject);
begin
  dxLayoutGroup6.Expanded:=false;
end;


{IsKategorieChecked}
function TKontaktMenu.IsKategorieChecked(AKategorieID: Integer): Boolean;
var
  i: Integer;
  Node: TcxTreeListNode;
  NodeKatID: Integer;
  IsChecked: Boolean;
begin
  Result := False;
  for i := 0 to cxTreeListKategorie.AbsoluteCount - 1 do begin
    Node := cxTreeListKategorie.AbsoluteItems[i];
    if Node.Values[1] = 'K' then begin
      NodeKatID := Node.Values[0];  // KategorieID
      IsChecked := Node.Values[3];   // CheckBox
      if (NodeKatID = AKategorieID) and IsChecked then  begin
        Result := True;
        Break;
      end;
    end;
  end;
end;


{Update label Color}
procedure TKontaktMenu.UpdateLabelColor;                             /////////////////////////////////////////////////////////////////////
begin
//  cxLabelColor.Transparent := False;
//  cxLabelColor.Style.TransparentBorder := False;
//
//  case VarAsType(cxImageComboBoxKategorieverwaltung.EditValue, varInteger) of
//    0: cxLabelColor.Style.Color := clWhite;
//    1: cxLabelColor.Style.Color := clWebOrange;
//    2: cxLabelColor.Style.Color := clGray;
//    3: cxLabelColor.Style.Color := clWebCrimson;
//    4: cxLabelColor.Style.Color := clWebDeepskyBlue;
//    5: cxLabelColor.Style.Color := clWebLimeGreen;
//    6: cxLabelColor.Style.Color := clWebHotPink;
//    7: cxLabelColor.Style.Color := clBlack;
//    8: cxLabelColor.Style.Color := clWhite;
//    9: cxLabelColor.Style.Color := clWebDodgerBlue;
//  else
//    cxLabelColor.Style.Color := clWhite;
//  end;
//  cxLabelColor.Invalidate;
//  cxLabelColor.Repaint;
end;

{SaveAll Kategorie LIST}
procedure TKontaktMenu.SaveAllKategorienFromTreeList(APersonID: Integer);
var
  i: Integer;
  Node: TcxTreeListNode;
  KatID: Integer;
  IsChecked: Boolean;
  Q: TMSQuery;
begin
  Q := TMSQuery.Create(nil);
  try
    Q.Connection := MyDataModule.MyConnections;
    Q.SQL.Text := 'DELETE FROM KontaktKategorieZuordnung WHERE PersonID = :PersonID';
    Q.ParamByName('PersonID').AsInteger := APersonID;
    Q.ExecSQL;
    for i := 0 to cxTreeListKategorie.AbsoluteCount - 1 do begin
      Node := cxTreeListKategorie.AbsoluteItems[i];
      if Node.Values[1] = 'K' then begin
        IsChecked := Node.Values[3];

        if IsChecked then begin
          KatID := Node.Values[0];
          Q.SQL.Text :=
            'INSERT INTO KontaktKategorieZuordnung (PersonID, KategorieID, ErstelltAm, ErstelltVon) ' +
            'VALUES (:PersonID, :KategorieID, GETDATE(), :ErstelltVon)';
          Q.ParamByName('PersonID').AsInteger := APersonID;
          Q.ParamByName('KategorieID').AsInteger := KatID;
          Q.ParamByName('ErstelltVon').AsString := 'System';
          Q.ExecSQL;
        end;
      end;
    end;
  finally
    Q.Free;
  end;
end;


{GetAllSelectedKategorieIDs}
function TKontaktMenu.GetAllSelectedKategorieIDs: TList<Integer>;
var
  i: Integer;
  Node: TcxTreeListNode;
  KatID: Integer;
  IsChecked: Boolean;
begin
  Result := TList<Integer>.Create;

  for i := 0 to cxTreeListKategorie.AbsoluteCount - 1 do begin
    Node := cxTreeListKategorie.AbsoluteItems[i];
    if VarIsNull(Node.Values[0]) or (Node.Values[0] = 0) then
      Continue;
    IsChecked := Node.Values[3];
    if IsChecked then begin
      KatID := Node.Values[0];
      Result.Add(KatID);
    end;
  end;
  if Result.Count = 0 then
    Result.Add(8);
end;


{FindKategorieTab}
function TKontaktMenu.FindKategorieTab(const ATabName: string): TcxTabSheet;
var
  i: Integer;
begin
  Result := nil;
  for i := 0 to cxPageControlMenu.PageCount - 1 do begin
    if cxPageControlMenu.Pages[i].Name = ATabName then begin
      Result := cxPageControlMenu.Pages[i];
      Break;
    end;
  end;
end;

{RemoveVIPTab}
procedure TKontaktMenu.RemoveVIPTab;
var
  TabSheet: TcxTabSheet;
begin
  TabSheet := FindKategorieTab('VIP_TAB');

  if Assigned(TabSheet) then begin
    if Assigned(FFramePrioritaet) then begin
      FFramePrioritaet.Free;
      FFramePrioritaet := nil;
    end;

    TabSheet.Free;
  end;
end;

{RemoveLieferantTab}
procedure TKontaktMenu.RemoveLieferantTab;
var
  TabSheet: TcxTabSheet;
begin
  TabSheet := FindKategorieTab('LIEFERANT_TAB');

  if Assigned(TabSheet) then begin
    if Assigned(FFrameLieferant) then begin
      FFrameLieferant.Free;
      FFrameLieferant := nil;
    end;
    TabSheet.Free;
  end;
end;


{CreateKategorienTabs}
procedure TKontaktMenu.CreateKategorienTabs;
var
  i: Integer;
  Node: TcxTreeListNode;
  KatID: Integer;
  IsChecked: Boolean;
  HasVIP, HasLieferant: Boolean;
begin
  HasVIP := False;
  HasLieferant := False;
  for i := 0 to cxTreeListKategorie.AbsoluteCount - 1 do begin
    Node := cxTreeListKategorie.AbsoluteItems[i];

    if VarIsNull(Node.Values[0]) or (Node.Values[0] = 0) then
      Continue;
    IsChecked := Node.Values[3];
    if IsChecked then  begin
      KatID := Node.Values[0];
      case KatID of
        1: HasVIP := True;        // VIP
        4: HasLieferant := True;  // Lieferant
      end;
    end;
  end;

  if HasVIP then
    ShowVIPTab
  else
    HideVIPTab;

  if HasLieferant then
    ShowLieferantTab
  else
    HideLieferantTab;
end;


{InitializeKategorienSystem;}
procedure TKontaktMenu.InitializeKategorienSystem;
begin
  if Assigned(cxTabSheetVIPVerwaltung) then
    cxTabSheetVIPVerwaltung.TabVisible := False;
  if Assigned(cxTabSheetLieferantVerwaltung) then
    cxTabSheetLieferantVerwaltung.TabVisible := False;
  InitializeKategorieTreeList;
end;

{ClearTabSheet}
procedure TKontaktMenu.ClearTabSheet(ATabSheet: TcxTabSheet);
var
  i: Integer;
  Component: TComponent;
begin
  if not Assigned(ATabSheet) then
  Exit;
  for i := ATabSheet.ComponentCount - 1 downto 0 do begin
    Component := ATabSheet.Components[i];
    if Component is TControl then  begin
      TControl(Component).Parent := nil;
      Component.Free;
    end;
  end;
end;


{HideLieferantTab}
procedure TKontaktMenu.HideLieferantTab;
begin
  if Assigned(cxTabSheetLieferantVerwaltung) then begin
    cxTabSheetLieferantVerwaltung.TabVisible := False;
    if Assigned(FFrameLieferant) then begin
      FFrameLieferant.Free;
      FFrameLieferant := nil;
    end;
    ClearTabSheet(cxTabSheetLieferantVerwaltung);
  end;
end;

{Show VIP}
procedure TKontaktMenu.ShowVIPTab;
var
  LayoutControl: TdxLayoutControl;
  LayoutGroup: TdxLayoutGroup;
  LayoutItem: TdxLayoutItem;
begin
  if Assigned(cxTabSheetVIPVerwaltung) then  begin
    cxTabSheetVIPVerwaltung.TabVisible := True;
    if not Assigned(FFramePrioritaet) then begin
      ClearLayoutGroup(dxLayoutGroupVIP);
      FFramePrioritaet := TFramePrioritaet.Create(cxTabSheetVIPVerwaltung);
      FFramePrioritaet.FPersonID := FPersonID;
      FFramePrioritaet.Parent := cxTabSheetVIPVerwaltung;
      FFramePrioritaet.Visible := True;
      FFramePrioritaet.EnsureBNotizenCreated;
      if FPersonID > 0 then
        FFramePrioritaet.LoadVipData;
    end  else  begin
      if FPersonID > 0 then
        FFramePrioritaet.LoadVipData;
    end;
  end;
end;

{ShowLieferantTab}
procedure TKontaktMenu.ShowLieferantTab;
var
  LayoutControl: TdxLayoutControl;
  LayoutGroup: TdxLayoutGroup;
  LayoutItem: TdxLayoutItem;
begin
  if Assigned(cxTabSheetLieferantVerwaltung) then  begin
    cxTabSheetLieferantVerwaltung.TabVisible := True;
    if not Assigned(FFrameLieferant) then    begin
      //  Lieferant
      FFrameLieferant := TFrameLieferant.Create(cxTabSheetLieferantVerwaltung);
      FFrameLieferant.FPersonID := FPersonID;
      FFrameLieferant.Parent := cxTabSheetLieferantVerwaltung;
      FFrameLieferant.Visible := True;
      if FPersonID > 0 then      begin
      end;
    end    else    begin
      if FPersonID > 0 then      begin
      end;
    end;
  end;
end;

{ColorFuerTab}
procedure TkontaktMenu.ColorFuerTab;
begin
 if cxPageControlMenu.ActivePage.Caption ='VIP-Verwaltung' then begin
   cxLabelColor.Style.Color := clWebOrange;

 end else if cxPageControlMenu.ActivePage.Caption='Lieferant-Verwaltung' then begin
   cxLabelColor.Style.Color := clWebDeepskyBlue;
 end else begin
   cxLabelColor.Style.Color :=clWhite;
 end;
end;

{HideVIPTab}
procedure TKontaktMenu.HideVIPTab;
begin
  if Assigned(cxTabSheetVIPVerwaltung) then begin
    cxTabSheetVIPVerwaltung.TabVisible := False;
    if Assigned(FFramePrioritaet) then begin
      FFramePrioritaet.Free;
      FFramePrioritaet := nil;
    end;
    ClearTabSheet(cxTabSheetVIPVerwaltung);
  end;
end;

{ClearLayoutGroup}
procedure TKontaktMenu.ClearLayoutGroup(ALayoutGroup: TdxLayoutGroup);
var
  i: Integer;
begin
  if not Assigned(ALayoutGroup) then Exit;

  for i := ALayoutGroup.Count - 1 downto 0 do
    ALayoutGroup.Items[i].Free;
end;

{Transaktion Action}
procedure TKontaktMenu.AcTransaktionExecute(Sender: TObject);
begin
//  FFramePrioritaet.cxButtonTransaktionClick(Sender);
end;

{History Action}
procedure TKontaktMenu.AcVIPHistoryExecute(Sender: TObject);
begin
// FFramePrioritaet.cxButtonViewHistoryClick(Sender);
end;

{Privilegien Action}
procedure TKontaktMenu.AcVIPprivilegienExecute(Sender: TObject);
begin
//  FFramePrioritaet.cxBtVIPPrivilegienClick(Sender);
end;

end.
