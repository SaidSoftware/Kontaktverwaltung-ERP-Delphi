unit uKontaktValidator;


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,System.UITypes, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXPanels, Vcl.Grids,
  dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxBar, cxClasses, System.ImageList, Vcl.ImgList,
  cxImageList, cxGraphics,KontaktKlassen, Vcl.Menus, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Buttons,  cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, cxDateUtils, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel,cxImage, cxGroupBox,
  cxBarEditItem, cxButtonEdit, dxRibbon, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, DBAccess, MSAccess, MemDS, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl,
  dxLayoutLookAndFeels,System.NetEncoding, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage,cxMemo,System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent;

  const telefonnummerlaenge =13;
        PLZlaenge=5;
        StrasseLaenge=25;
type
  TKontaktValidator = class
  public

  class function ValidateAllFields(
      EditName, EditVorname, EditStrasse, EditPLZ, EditOrt, EditHausnummer,
      EditTelefon, EditTelefonzwei, EditTelefondrei,
      EditEmail, EditEmailzwei, EditEmaildrei:TcxTextEdit;exEditGeburtsdatum: TcxDateEdit;
      CxComboboxTelefon, CxComboboxTelefonzwei, CxComboboxTelefondrei,
      CxComboboxEmail, CxComboboxEmailZwei, CxComboboxEmailDrei: TcxComboBox): string;

  class function ValidateEmails(
    EditEmail, EditEmailzwei, EditEmaildrei: TcxTextEdit;
    CxComboboxEmail, CxComboboxEmailZwei, CxComboboxEmailDrei: TcxComboBox): TStringList;


  end;

   procedure FillCityFromPLZGlobal(const PLZ: string; OrtEdit: TcxTextEdit);


procedure SetBorderColorForEmptyField(Edit: TcxTextEdit; Valid: Boolean);
procedure SetBorderColorForEmptyComboBox(Combo: TcxComboBox; Valid: Boolean);
procedure SetBorderColorForEmptyDateEdit(Edit: TcxDateEdit; Valid: Boolean);
procedure SetBorderColorForEmailField(Edit: TcxTextEdit; const Email: string);

implementation

uses
  System.DateUtils,Test,System.RegularExpressions,Optionenmenu,MyPapierkorb,
  System.Actions, Vcl.ActnList,MyMessageBox,IdHTTP,System.JSON, System.Generics.Collections;

procedure SetBorderColorForEmptyField(Edit: TcxTextEdit; Valid: Boolean);
begin
  if Valid then
    Edit.Style.BorderColor := clGray
  else
    Edit.Style.BorderColor := clRed;
end;

procedure SetBorderColorForEmptyComboBox(Combo: TcxComboBox; Valid: Boolean);
begin
  if Valid then
    Combo.Style.BorderColor := clGray
  else
    Combo.Style.BorderColor := clRed;
end;

procedure SetBorderColorForEmptyDateEdit(Edit: TcxDateEdit; Valid: Boolean);
begin
  if Valid then
    Edit.Style.BorderColor := clGray
  else
    Edit.Style.BorderColor := clRed;
end;

procedure SetBorderColorForEmailField(Edit: TcxTextEdit; const Email: string);
var
  IsValid: Boolean;
begin
  IsValid := TRegEx.IsMatch(Email, '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$');
  SetBorderColorForEmptyField(Edit, IsValid);
end;

{ TKontaktValidator }
class function TKontaktValidator.ValidateAllFields(
  EditName, EditVorname, EditStrasse, EditPLZ, EditOrt, EditHausnummer,
  EditTelefon, EditTelefonzwei, EditTelefondrei,
  EditEmail, EditEmailzwei, EditEmaildrei:TcxTextEdit;exEditGeburtsdatum: TcxDateEdit;
  CxComboboxTelefon, CxComboboxTelefonzwei, CxComboboxTelefondrei,
  CxComboboxEmail, CxComboboxEmailZwei, CxComboboxEmailDrei: TcxComboBox): string;
var
  Errors: TStringList;
  DummyDate: TDateTime;

begin
  Errors := TStringList.Create;
  try
    SetBorderColorForEmptyField(EditName, EditName.Text <> '');
    if EditName.Text = '' then Errors.Add('Name fehlt.');

    SetBorderColorForEmptyField(EditVorname, EditVorname.Text <> '');
    if EditVorname.Text = '' then Errors.Add('Vorname fehlt.');

    if EditStrasse.Text = '' then begin
      SetBorderColorForEmptyField(EditStrasse, False);
      Errors.Add('Straße fehlt.');
    end else if Length(EditStrasse.Text) >  StrasseLaenge then begin
      SetBorderColorForEmptyField(EditStrasse, False);
      Errors.Add('Straßenname darf höchstens 25 Zeichen lang sein.');
    end else begin
      SetBorderColorForEmptyField(EditStrasse, True);
    end;

    if EditPLZ.Text = '' then begin
      SetBorderColorForEmptyField(EditPLZ, False);
      Errors.Add('PLZ fehlt.');
    end else if Length(EditPLZ.Text) <>  PLZlaenge then begin
      SetBorderColorForEmptyField(EditPLZ, False);
      Errors.Add('PLZ muss genau 5 Stellen haben.');
    end else begin
      SetBorderColorForEmptyField(EditPLZ, True);
    end;

    SetBorderColorForEmptyField(EditOrt, EditOrt.Text <> '');
    if EditOrt.Text = '' then Errors.Add('Ort fehlt.');
    SetBorderColorForEmptyField(EditHausnummer, EditHausnummer.Text <> '');
    if EditHausnummer.Text = '' then Errors.Add('Hausnummer fehlt.');

      if exEditGeburtsdatum.Date <> 0 then begin
        if not TryStrToDate(exEditGeburtsdatum.Text, DummyDate) then begin
          SetBorderColorForEmptyDateEdit(exEditGeburtsdatum, False);
          Errors.Add('Ungültiges Geburtsdatum.');
        end else if DummyDate > Date then begin
          SetBorderColorForEmptyDateEdit(exEditGeburtsdatum, False);
          Errors.Add('Geburtsdatum kann nicht in der Zukunft liegen.');
        end else begin
          SetBorderColorForEmptyDateEdit(exEditGeburtsdatum, True);
        end;
      end else begin
        SetBorderColorForEmptyDateEdit(exEditGeburtsdatum, False);
      end;


    // Telefon 1
    if EditTelefon.Text = '' then  begin
      SetBorderColorForEmptyField(EditTelefon, False);
      Errors.Add('Telefon fehlt.');
    end else begin
      if Length(EditTelefon.Text) > telefonnummerlaenge then Errors.Add('Telefonnummer darf 13 Ziffern nicht überschreiten.');
      if not TRegEx.IsMatch(EditTelefon.Text, '^\d+$') then Errors.Add('Telefon darf nur aus Ziffern bestehen.');
      SetBorderColorForEmptyField(EditTelefon, True);
    end;

    SetBorderColorForEmptyComboBox(CxComboboxTelefon, CxComboboxTelefon.ItemIndex <> -1);
    if CxComboboxTelefon.ItemIndex = -1 then Errors.Add('Telefontyp fehlt.');

    // Telefon 2 und 3
    if EditTelefonzwei.Text <> '' then begin
      SetBorderColorForEmptyComboBox(CxComboboxTelefonzwei, CxComboboxTelefonzwei.ItemIndex <> -1);
      if CxComboboxTelefonzwei.ItemIndex = -1 then Errors.Add('Zweiter Telefontyp fehlt.');
    end;

    if EditTelefondrei.Text <> '' then begin
      SetBorderColorForEmptyComboBox(CxComboboxTelefondrei, CxComboboxTelefondrei.ItemIndex <> -1);
      if CxComboboxTelefondrei.ItemIndex = -1 then Errors.Add('Dritter Telefontyp fehlt.');
    end;

    // E-Mail
     Errors.AddStrings(ValidateEmails(EditEmail, EditEmailzwei, EditEmaildrei,
                                      CxComboboxEmail, CxComboboxEmailZwei, CxComboboxEmailDrei));
    Result := Errors.Text;
  finally
    Errors.Free;
  end;
end;

class function TKontaktValidator.ValidateEmails(
  EditEmail, EditEmailzwei, EditEmaildrei: TcxTextEdit;
  CxComboboxEmail, CxComboboxEmailZwei, CxComboboxEmailDrei: TcxComboBox): TStringList;
var
  Errors: TStringList;

  function ValidateEmail(const Email: string): Boolean;
  begin
    Result := TRegEx.IsMatch(Email, '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$');
  end;

  procedure ValidateEmailField(EditEmailField: TcxTextEdit; ComboBox: TcxComboBox; const Email: string);
  begin
    if Email <> '' then begin
      if not ValidateEmail(Email) then begin
        SetBorderColorForEmptyField(EditEmailField, False);
        Errors.Add('Email-Format ist ungültig.');
      end else begin
        SetBorderColorForEmptyField(EditEmailField, True);
        if ComboBox.ItemIndex = -1 then  begin
          SetBorderColorForEmptyComboBox(ComboBox, False);
          Errors.Add('E-Mail-Typ fehlt.');
        end else
          SetBorderColorForEmptyComboBox(ComboBox, True);
      end;
    end
    else if ComboBox.ItemIndex <> -1 then begin
      SetBorderColorForEmptyField(EditEmailField, False);
      Errors.Add('E-Mail-Adresse fehlt.');
    end else
      SetBorderColorForEmptyField(EditEmailField, True);
  end;

begin
  Errors := TStringList.Create;
  try
    ValidateEmailField(EditEmail, CxComboboxEmail, EditEmail.Text);

    if EditEmailzwei.Text <> '' then begin
      ValidateEmailField(EditEmailzwei, CxComboboxEmailZwei, EditEmailzwei.Text);
    end;


    if EditEmaildrei.Text <> '' then begin
      ValidateEmailField(EditEmaildrei, CxComboboxEmailDrei, EditEmaildrei.Text);
    end;

    Result := Errors;
  finally
    if Errors.Count = 0 then
      Errors.Free;
  end;
end;

procedure FillCityFromPLZGlobal(const PLZ: string; OrtEdit: TcxTextEdit);
var
  HTTP: TIdHTTP;
  Response: string;
  JSONResponse: TJSONObject;
  City, Region: string;
begin
  if Trim(PLZ) = '' then
    Exit;

  HTTP := TIdHTTP.Create(nil);
  try
    try
      try
        Response := HTTP.Get('http://api.zippopotam.us/de/' + PLZ);
      except
        on E: EIdHTTPProtocolException do
          Exit;
      end;

      if Response = '' then
        Exit;

      JSONResponse := TJSONObject.ParseJSONValue(Response) as TJSONObject;
      if Assigned(JSONResponse) then  begin
        try
          City := JSONResponse
            .GetValue<TJSONArray>('places')
            .Items[0]
            .GetValue<string>('place name');

          Region := JSONResponse
            .GetValue<TJSONArray>('places')
            .Items[0]
            .GetValue<string>('state');

          if Assigned(OrtEdit) then
            OrtEdit.Text := City;
        finally
          JSONResponse.Free;
        end;
      end;
    except
      on E: Exception do
        ShowMessage('Fehler: ' + E.Message);
    end;
  finally
    HTTP.Free;
  end;
end;



end.
