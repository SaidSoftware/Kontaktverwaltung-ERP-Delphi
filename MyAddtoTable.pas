unit MyaddToTable;

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
  cxContainer, cxEdit, dxLayoutContainer, cxTextEdit, cxClasses,
  dxLayoutControl, dxPanel, cxLabel, dxBar, cxBarEditItem, System.ImageList,
  Vcl.ImgList, cxImageList, dxLayoutLookAndFeels,System.UITypes,SharedData,KVDatamodule,
  Data.DB, MemDS, DBAccess, MSAccess,MyPapierKorb, System.Actions, Vcl.ActnList,
  cxMemo, dxToggleSwitch,tools,MyMessageBox, dxColorEdit, cxCheckGroup,
  cxCheckBox, cxMaskEdit, cxDropDownEdit,cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxImageComboBox,StrUtils;

type
  TFormMode = (fmAdd, fmEdit);   //Add //Edit

type
  TAddToTable = class(TForm)

    dxPanelHinzu: TdxPanel;
    dxLayoutControlHinzuGroup_Root: TdxLayoutGroup;
    dxLayoutControlHinzu: TdxLayoutControl;
    cxTextEditbezeichnung: TcxTextEdit;
    dxLayoutItemBeziech: TdxLayoutItem;
    dxBarManagerAddform: TdxBarManager;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeBtSchliessen: TdxBarLargeButton;
    dxBarLargeButtLoschen: TdxBarLargeButton;
    dxBarLargeButtonSave: TdxBarLargeButton;
    dxBarLargeButPruefen: TdxBarLargeButton;
    dxLayoutItemID: TdxLayoutItem;
    cxTextID: TcxTextEdit;
    dxBarLargeButSchliessen: TdxBarLargeButton;
    MSQuery1: TMSQuery;
    dxLayoutGroup1: TdxLayoutGroup;
    cxImageListAddEdit: TcxImageList;
    cxImageComboBoxKategorie: TcxImageComboBox;
    dxLayoutItem1: TdxLayoutItem;

    procedure dxBarLargeButtonSaveClick(Sender: TObject);
    procedure cxTextIDPropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cxTextEditbezeichnungPropertiesChange(Sender: TObject);
    procedure cxTextEditbezeichnungExit(Sender: TObject);
    procedure ActionSpeichernExecute(Sender: TObject);


  private
  FTableName:string;
    FMode: TFormMode;
    FID: Integer;
    HasChanges: Boolean;



    { Private-Deklarationen }
  public
   constructor Create(AOwner: TComponent; AMode: TFormMode;const ATableName: string; AID: Integer = 0); reintroduce;
//blendet eine Methode oder Eigenschaft mit demselben Namen aus der Basisklasse aus, überschreibt sie jedoch nicht

    procedure LoadDataForEdit;
    procedure SetWindowIcon(AIconIndex: Integer);
    function GetTypByTableName(const TableName: string): string;
    procedure FilterComboBoxItems;
    { Public-Deklarationen }
end;

var
  AddToTable: TAddToTable;

implementation


{$R *.dfm}


procedure TAddToTable.ActionSpeichernExecute(Sender: TObject);
begin
  dxBarLargeButtonSaveClick(Sender);
end;

{Construcor}
constructor TAddToTable.Create(AOwner: TComponent; AMode: TFormMode; const ATableName: string; AID: Integer = 0);
begin
  inherited Create(AOwner);
  FMode := AMode;
  FTableName := ATableName;
  FID := AID;

  if FMode = fmEdit then begin
    cxTextID.Properties.ReadOnly:= true;
    LoadDataForEdit; // Load to Edit
  end else begin
    cxTextID.Properties.ReadOnly:= false;
  end;
  FilterComboBoxItems;
end;


{Test}
procedure TAddToTable.SetWindowIcon(AIconIndex: Integer);
begin
  if Assigned(cxImageListAddEdit) and (AIconIndex >= 0) then
    cxImageListAddEdit.GetIcon(AIconIndex, Self.Icon);
end;

{Bearbeiten}
procedure TAddToTable.LoadDataForEdit;
var
  QueryTyp: string;
  IconIndex: Integer;
begin
  if FID = -1 then
    raise Exception.Create('fehler.');
  if FTableName = '' then
    raise Exception.Create('fehler.');

  QueryTyp := GetTypByTableName(FTableName);

  with TGlobalData.TMSQuery1 do begin
    Close;
    SQL.Text := 'SELECT WertID AS ID, Bezeichnung, IconIndex AS Icon FROM Kombinierttabelle WHERE WertID = :ID AND Typ = :Typ';
    ParamByName('ID').AsInteger := FID;
    ParamByName('Typ').AsString := QueryTyp;
    Open;
    IconIndex := FieldByName('Icon').AsInteger;

    if RecordCount = 0 then
      raise Exception.Create('Nicht gefunden.');

    cxTextID.Text := FieldByName('ID').AsString;
    cxTextEditBezeichnung.Text := FieldByName('Bezeichnung').AsString;


    if (IconIndex >= 0) and (IconIndex < cxImageComboBoxKategorie.Properties.Items.Count) then
      cxImageComboBoxKategorie.ItemIndex := IconIndex;

    Close;
  end;
end;



procedure TAddToTable.cxTextEditbezeichnungExit(Sender: TObject);
begin
 BuchstabenGrossSchreiben(TWinControl(Sender));
end;

procedure TAddToTable.cxTextEditbezeichnungPropertiesChange(Sender: TObject);
begin
  HasChanges := True;
  cxTextEditbezeichnungExit(Sender);
end;

procedure TAddToTable.cxTextIDPropertiesChange(Sender: TObject);
begin
  cxTextID.Style.Color := clBtnFace;
end;

{Schließen}
//procedure TAddToTable.dxBarLargeButSchliessenClick(Sender: TObject);
//var
//  UserResponse: Integer;
//  UserText: string;
//begin
//  UserText := Trim(cxTextEditBezeichnung.Text);
//
//  if FMode = fmEdit then begin
//    if HasChanges then begin
//      MyMesBox.Caption:='Bestätigen';
//      UserResponse := MyMesBox.ShowMessage(
//        'Soll dieser geänderte Bezeichnung verworfen werden?' + sLineBreak +
//        'Ihre Änderungen gehen verloren.',
//        mtConfirmation,
//        [mbYes, mbNo]
//      );
//      if UserResponse = mrYes then begin
//        Self.Close;
//      end;
//    end else begin
//      Close;
//      Exit;
//    end;
//  end else begin
//    if HasChanges then begin
//      MyMesBox.Caption:='Bestätigen';
//      UserResponse := MyMesBox.ShowMessage(
//        'Soll dieser neu angelegte  Bezeichnung "' + UserText + ' "' + sLineBreak +
//        ' verworfen werden? Ihre Änderungen gehen verloren.',
//        mtConfirmation,
//        [mbYes, mbNo]
//      );
//
//      if UserResponse = mrYes then begin
//        Self.Close;
//      end;
//    end else begin
//      Close;
//      Exit;
//    end;
//  end;
//end;

{Save}
procedure TAddToTable.dxBarLargeButtonSaveClick(Sender: TObject);
var
  Typ: string;
  WertID: string;
  Bezeichnung: string;
  SelectedValue: Integer;
  SelectedIndex: Integer;
  NewID: Integer;
begin
  WertID := cxTextID.Text;
  Bezeichnung := cxTextEditBezeichnung.Text;
  HasChanges := False;

  if Bezeichnung = '' then  begin
    cxTextEditBezeichnung.Style.BorderColor := clRed;
    MyMesBox.Caption := 'Fehler';
    MyMesBox.ShowMessage('Bitte füllen Sie das Feld aus!', mtError, [mbYes]);
    Exit;
  end  else
    cxTextEditBezeichnung.Style.BorderColor := clWindowFrame;


  if cxImageComboBoxKategorie.ItemIndex = -1 then  begin
    cxImageComboBoxKategorie.Style.BorderColor := clRed;
    MyMesBox.Caption := 'Fehler';
    MyMesBox.ShowMessage('Bitte wählen Sie eine Kategorie aus!', mtError, [mbYes]);
    Exit;
  end else
    cxImageComboBoxKategorie.Style.BorderColor := clDefault;
  try
    Typ := GetTypByTableName(FTableName);
  except
    on E: Exception do begin
      ShowMessage('Fehler: ' + E.Message);
      Exit;
    end;
  end;

  SelectedIndex := cxImageComboBoxKategorie.ItemIndex;
  if SelectedIndex >= 0 then
    SelectedValue := cxImageComboBoxKategorie.Properties.Items[SelectedIndex].Value
  else
    SelectedValue := -1;

  with TGlobalData.TMSQuery1 do   begin
    SQL.Text :=
      'EXEC SaveKombinierttabelle ' +
      '@ID = :ID, ' +
      '@Bezeichnung = :Bezeichnung, ' +
      '@Typ = :Typ, ' +
      '@IconIndex = :IconIndex, ' +
      '@Mode = :Mode, ' +
      '@OutID = :OutID OUTPUT';

    ParamByName('ID').AsInteger := FID;
    ParamByName('Bezeichnung').AsString := Bezeichnung;
    ParamByName('Typ').AsString := Typ;
    ParamByName('IconIndex').AsInteger := SelectedValue;
    if FMode = fmEdit then
      ParamByName('Mode').AsString := 'edit'
    else
      ParamByName('Mode').AsString := 'insert';

    ParamByName('OutID').ParamType := ptOutput;

    ExecSQL;
    TGlobalData.TMSQuery1.Connection.Commit;

    NewID := ParamByName('OutID').AsInteger;
    FID := NewID;
  end;

  ModalResult := mrOk;
end;


procedure TAddToTable.FilterComboBoxItems;
var
  i: Integer;
  AllowedValues: array of string;
begin
  if SameText(FTableName, 'Anrede') then
    AllowedValues := ['0', '1', '2','3'] // Mann, Frau, Divers ,Default
  else if SameText(FTableName, 'Titel') then
    AllowedValues := ['4', '5', '6','7'] // Assistent, Prof, Doctor ,Default
  else if SameText(FTableName, 'Telefontypen') then
    AllowedValues := ['8', '9', '10','11'] // Privat, Geschäftlich, Haus ,Default
  else if SameText(FTableName, 'Emailtypen') then
    AllowedValues := ['12', '13', '14','15'] // Privat, Geschäftlich, Haus,Default
  else
    AllowedValues := [];

  cxImageComboboxKategorie.Properties.Items.BeginUpdate;
  try
    for i := cxImageComboboxKategorie.Properties.Items.Count - 1 downto 0 do begin
      if not AnsiMatchStr(cxImageComboboxKategorie.Properties.Items[i].Value, AllowedValues) then
        cxImageComboboxKategorie.Properties.Items.Delete(i);
    end;
  finally
    cxImageComboboxKategorie.Properties.Items.EndUpdate;
  end;
end;


{Get TYP Tablename}
function TAddToTable.GetTypByTableName(const TableName: string): string;
begin
  if SameText(TableName, 'Anrede') then
    Result := 'ANR'
  else if SameText(TableName, 'Titel') then
    Result := 'TIT'
  else if SameText(TableName, 'Telefontypen') then
    Result := 'TEL'
  else if SameText(TableName, 'Emailtypen') then
    Result := 'EMA'
  else
    raise Exception.Create('Unbekannte Tabelle: ' + TableName);
end;


procedure TAddToTable.FormCreate(Sender: TObject);
begin
    if FMode = fmAdd then begin
      dxLayoutItemID.Visible:= false;
    end else begin
      dxLayoutItemID.Visible:=true;
    end;
    HasChanges:=false;
end;



{KeyDown}
procedure TAddToTable.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 //Strg +S  Speiechern + Schliessen
  if (Key = Ord('S')) and (ssCtrl in Shift) and (ssAlt in Shift) then begin
    dxBarLargeButtonSaveClick(Sender);
    Key := 0;
  end;
    // ESC = Close
//  if (Key = VK_ESCAPE) then begin
//    dxBarlargeButSchliessenClick(Sender);
//    Key := 0;
//  end;

end;

end.
