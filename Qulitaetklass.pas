unit Qulitaetklass;

interface

uses   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  MemDS, DBAccess, MSAccess,KVDatamodule, dxCoreGraphics, cxButtonEdit,KontaktQuality,System.Generics.Collections;

type
  TFeldEinstellungen = class
  private
    FModus: string;
    FAktiveFelder: TDictionary<string, Boolean>;
  public
    constructor Create(const AModus: string);
    destructor Destroy; override;

    procedure LadeVonKomponenten(AOwner: TComponent);
    procedure SpeichernZurDatenbank(Query: TMSQuery);
    procedure LadeAusDatenbank(Query: TMSQuery);

    function IstVollstaendig: Boolean;
    property Modus: string read FModus write FModus;
    property AktiveFelder: TDictionary<string, Boolean> read FAktiveFelder;
  end;


implementation

const
  VOLLSTAENDIG_FELDER: array[0..3] of string = ('chkAnrede', 'chkTitel', 'chkName', 'chkVorname');

constructor TFeldEinstellungen.Create(const AModus: string);
begin
  FModus := AModus;
  FAktiveFelder := TDictionary<string, Boolean>.Create;
end;

destructor TFeldEinstellungen.Destroy;
begin
  FAktiveFelder.Free;
  inherited;
end;

procedure TFeldEinstellungen.LadeVonKomponenten(AOwner: TComponent);
var
  i: Integer;
  cb: TcxCheckBox;
begin
  FAktiveFelder.Clear;

  for i := 0 to AOwner.ComponentCount - 1 do
  begin
    if AOwner.Components[i] is TcxCheckBox then
    begin
      cb := TcxCheckBox(AOwner.Components[i]);
      FAktiveFelder.AddOrSetValue(cb.Name, cb.Checked);
    end;
  end;
end;

procedure TFeldEinstellungen.SpeichernZurDatenbank(Query: TMSQuery);
var
  Feldname: string;
  Aktiv: Boolean;
begin
  Query.SQL.Text := 'DELETE FROM KontaktFeldEinstellungen WHERE Modus = :Modus';
  Query.ParamByName('Modus').AsString := FModus;
  Query.ExecSQL;

  for Feldname in FAktiveFelder.Keys do  begin
    Aktiv := FAktiveFelder[Feldname];

    Query.SQL.Text :=
      'INSERT INTO KontaktFeldEinstellungen (Modus, Feldname, Aktiv) ' +
      'VALUES (:Modus, :Feldname, :Aktiv)';
    Query.ParamByName('Modus').AsString := FModus;
    Query.ParamByName('Feldname').AsString := Feldname;
    Query.ParamByName('Aktiv').AsBoolean := Aktiv;
    Query.ExecSQL;
  end;
end;

procedure TFeldEinstellungen.LadeAusDatenbank(Query: TMSQuery);
begin
  FAktiveFelder.Clear;

  Query.SQL.Text := 'SELECT Feldname, Aktiv FROM KontaktFeldEinstellungen WHERE Modus = :Modus';
  Query.ParamByName('Modus').AsString := FModus;
  Query.Open;

  while not Query.Eof do
  begin
    FAktiveFelder.AddOrSetValue(Query.FieldByName('Feldname').AsString,
                                 Query.FieldByName('Aktiv').AsBoolean);
    Query.Next;
  end;
end;

function TFeldEinstellungen.IstVollstaendig: Boolean;
var
  Pflichtfeld: string;
begin
  for Pflichtfeld in VOLLSTAENDIG_FELDER do  begin
    if not FAktiveFelder.ContainsKey(Pflichtfeld) or (not FAktiveFelder[Pflichtfeld]) then
      Exit(False);
  end;
  Result := True;
end;


end.


