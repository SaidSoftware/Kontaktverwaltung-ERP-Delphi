unit KontaktFeldDefinition;

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
  MemDS, DBAccess, MSAccess,KVDatamodule, dxCoreGraphics, cxButtonEdit,System.Generics.Collections;


type
   TKontaktFeldDefinition=class

public
    CheckBoxName: string;
    DBFieldName: string;
    DisplayName: string;
    constructor Create(const ACheckBoxName, ADBFieldName, ADisplayName: string);
end;

var
    KontaktFeldListe: TObjectList<TKontaktFeldDefinition>;

    procedure InitKontaktFeldListe;




implementation

{ TKontaktFeldDefinition }

constructor TKontaktFeldDefinition.Create(const ACheckBoxName, ADBFieldName, ADisplayName: string);
begin
  CheckBoxName := ACheckBoxName;
  DBFieldName := ADBFieldName;
  DisplayName := ADisplayName;
end;

procedure InitKontaktFeldListe;
begin
  if Assigned(KontaktFeldListe) then
    Exit;

  KontaktFeldListe := TObjectList<TKontaktFeldDefinition>.Create(True);

  KontaktFeldListe.Add(TKontaktFeldDefinition.Create('cxCheckboxAnrede', 'Anrede', 'Anrede'));
  KontaktFeldListe.Add(TKontaktFeldDefinition.Create('cxCheckboxTitel', 'Titel', 'Titel'));
  KontaktFeldListe.Add(TKontaktFeldDefinition.Create('cxCheckboxVorname', 'Vorname', 'Vorname'));
  KontaktFeldListe.Add(TKontaktFeldDefinition.Create('cxCheckboxName', 'Name', 'Nachname'));
  KontaktFeldListe.Add(TKontaktFeldDefinition.Create('cxCheckboxGeburtsdatum', 'Geburtsdatum', 'Geburtsdatum'));
  KontaktFeldListe.Add(TKontaktFeldDefinition.Create('cxCheckboxPLZ', 'PLZ', 'PLZ'));
  KontaktFeldListe.Add(TKontaktFeldDefinition.Create('cxCheckboxOrt', 'Ort', 'Ort'));
  KontaktFeldListe.Add(TKontaktFeldDefinition.Create('cxCheckboxStrasse', 'Strasse', 'Straﬂe'));
  KontaktFeldListe.Add(TKontaktFeldDefinition.Create('cxCheckboxHausnummer', 'Hausnummer', 'Hausnummer'));
  KontaktFeldListe.Add(TKontaktFeldDefinition.Create('cxCheckboxNummer1', 'Telefon', 'Telefon 1'));
  KontaktFeldListe.Add(TKontaktFeldDefinition.Create('cxCheckboxNummer2', '[Telefon 2]', 'Telefon 2'));
  KontaktFeldListe.Add(TKontaktFeldDefinition.Create('cxCheckboxNummer3', '[Telefon 3]', 'Telefon 3'));
  KontaktFeldListe.Add(TKontaktFeldDefinition.Create('cxCheckboxEmail1', 'Email', 'E-Mail 1'));
  KontaktFeldListe.Add(TKontaktFeldDefinition.Create('cxCheckboxEmail2', '[Email 2]', 'E-Mail 2'));
  KontaktFeldListe.Add(TKontaktFeldDefinition.Create('cxCheckboxEmail3', '[Email 3]', 'E-Mail 3'));
  KontaktFeldListe.Add(TKontaktFeldDefinition.Create('cxCheckboxNotizen', 'Notizen', 'Notizen'));
  KontaktFeldListe.Add(TKontaktFeldDefinition.Create('cxCheckboxDatei', 'Datei', 'Datei'));
  KontaktFeldListe.Add(TKontaktFeldDefinition.Create('cxCheckboxBild', 'Bild', 'Bild'));

end;

initialization
  InitKontaktFeldListe;

finalization
  KontaktFeldListe.Free;


end.



