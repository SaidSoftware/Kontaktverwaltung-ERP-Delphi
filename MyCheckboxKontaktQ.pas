unit MyCheckboxKontaktQ;

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
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, dxPanel, cxContainer, cxEdit,
  Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxBar, cxClasses,
  dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox,
  Vcl.StdCtrls, cxButtons, cxCheckBox, dxLayoutControl,MyPapierkorb, Data.DB,
  MemDS, DBAccess, MSAccess,KVDatamodule, dxCoreGraphics, cxButtonEdit,System.Generics.Collections,KontaktFeldDefinition;


type
  TKontatkQZustand = class(TForm)
    dxPanelDatenq: TdxPanel;
    dxLayoutControlCheck: TdxLayoutControl;
    cxCheckBoxGeburtsdatum: TcxCheckBox;
    cxCheckBoxName: TcxCheckBox;
    cxCheckBoxVorname: TcxCheckBox;
    cxCheckBoxTitel: TcxCheckBox;
    cxCheckBoxAnrede: TcxCheckBox;
    cxCheckBoxPLZ: TcxCheckBox;
    cxCheckBoxOrt: TcxCheckBox;
    cxCheckBoxStrasse: TcxCheckBox;
    cxCheckBoxHausnummer: TcxCheckBox;
    cxCheckBoxNummer1: TcxCheckBox;
    cxCheckBoxNummer2: TcxCheckBox;
    cxCheckBoxNummer3: TcxCheckBox;
    cxCheckBoxEmail1: TcxCheckBox;
    cxCheckBoxEmail2: TcxCheckBox;
    cxCheckBoxEmail3: TcxCheckBox;
    cxCheckBoxNotizen: TcxCheckBox;
    cxCheckBoxBild: TcxCheckBox;
    cxCheckBoxDatei: TcxCheckBox;
    dxLayoutControlCheckGroup_Root: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButtonSave: TdxBarLargeButton;
    dxBarLargeButtonZurueck: TdxBarLargeButton;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    MSQuery1: TMSQuery;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxTextEditZustand: TcxTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    procedure dxBarLargeButtonSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButtonZurueckClick(Sender: TObject);
    procedure cxTextEditComboBoxZustandPropertiesChange(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }

    procedure LoadFeldSettings(Modus: string);
   var
    CheckBoxList: array[0..17] of TcxCheckBox;



  end;

var
  KontaktQZustand: TKontatkQZustand;

implementation

uses KontaktQuality;

{$R *.dfm}

{Speichern}
procedure TKontatkQZustand.dxBarLargeButtonSaveClick(Sender: TObject);
var
  Query: TMSQuery;
  Modus: string;
begin
  Modus := cxTextEditZustand.Text;

  Query := TMSQuery.Create(nil);
  try
    Query.Connection := Mydatamodule.MyConnections;
    try
      Query.Connection.StartTransaction;

      Query.SQL.Text := 'DELETE FROM KontaktFeldEinstellungen WHERE Modus = :Modus';
      Query.ParamByName('Modus').AsString := Modus;
      Query.ExecSQL;

      for var FeldDef in KontaktFeldListe do     begin
        var cb := TcxCheckBox(FindComponent(FeldDef.CheckBoxName));
        if Assigned(cb) then    begin
          Query.SQL.Text := 'INSERT INTO KontaktFeldEinstellungen (Modus, Feldname, Aktiv) ' +
                            'VALUES (:Modus, :Feldname, :Aktiv)';
          Query.ParamByName('Modus').AsString := Modus;
          Query.ParamByName('Feldname').AsString := FeldDef.DBFieldName;
          Query.ParamByName('Aktiv').AsBoolean := cb.Checked;
          Query.ExecSQL;
        end;
      end;

      Query.Connection.Commit;

      if Assigned(TKontaktQ) then  begin
        TKontaktQ.AktualisiereDiagramm;
      end;

    except
      on E: Exception do
      begin
        Query.Connection.Rollback;
        ShowMessage('Fehler beim Speichern: ' + E.Message);
      end;
    end;
     close;
  finally
    Query.Free;
  end;
end;

{Zurücksetzen}
procedure TKontatkQZustand.dxBarLargeButtonZurueckClick(Sender: TObject);
begin
   cxCheckboxAnrede.Checked:=false;
   cxCheckboxTitel.Checked:=false;
   cxCheckboxNummer2.Checked:=false;
   cxCheckboxNummer3.Checked:=false;
      cxCheckboxEmail1.Checked:=false;
      cxCheckboxEmail2.Checked:=false;
      cxCheckboxEmail3.Checked:=false;
  cxCheckboxNotizen.Checked:=false;
  cxCheckboxBild.Checked:=False;
  cxCheckBoxDatei.Checked:=False;
end;

{Create}
procedure TKontatkQZustand.FormCreate(Sender: TObject);
begin
  LoadFeldSettings('vollständig');
end;


{LoadFeld}
procedure TKontatkQZustand.LoadFeldSettings(Modus: string);
var
  Query: TMSQuery;
begin
  Query := TMSQuery.Create(nil);
  try
    Query.Connection := mydatamodule.MyConnections;
    Query.SQL.Text :=
      'SELECT Feldname, Aktiv FROM KontaktFeldEinstellungen WHERE Modus = :Modus';
    Query.ParamByName('Modus').AsString := Modus;
    Query.Open;

    for var FeldDef in KontaktFeldListe do    begin
      var cb := TcxCheckBox(FindComponent(FeldDef.CheckBoxName));
      if Assigned(cb) then  begin
        cb.Checked := False;
        if Query.Locate('Feldname', FeldDef.DBFieldName, []) then
          cb.Checked := Query.FieldByName('Aktiv').AsBoolean;
      end;
    end;
  finally
    Query.Free;
  end;
end;


{Edit onChange}
procedure TKontatkQZustand.cxTextEditComboBoxZustandPropertiesChange(
  Sender: TObject);
begin
 LoadFeldSettings(cxTextEditZustand.Text);
end;

end.
