unit Test;

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
  dxLayoutLookAndFeels,System.NetEncoding, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage,cxMemo;

function SaveKontaktFromForm(TMSConnection: TMSConnection; cxBenutzerID: TcxTextEdit;
  AnredeCombo: TcxComboBox; TitelCombo: TcxComboBox; VornameEdit: TcxTextEdit;
  NameEdit: TcxTextEdit; GeburtsdatumEdit: TcxDateEdit;
  TelefontypCombo: TcxComboBox; TelefonEdit: TcxTextEdit; TelefontypCombozwei: TcxComboBox; TelefonEditzwei: TcxTextEdit;
  TelefontypCombodrei: TcxComboBox; TelefonEditdrei: TcxTextEdit;
  EmailtypCombo: TcxComboBox; EmailEdit: TcxTextEdit; EmailtypCombozwei: TcxComboBox; EmailEditzwei: TcxTextEdit;
  EmailtypCombodrei: TcxComboBox; EmailEditdrei: TcxTextEdit;
  PLZEdit: TcxTextEdit; OrtEdit: TcxTextEdit; StrasseEdit, HausnummerEdit: TcxTextEdit;
  Notizen: TcxMemo; BildData: TcxImage):integer;

function GetIDFromDescription(const TableName, IDField, DescriptionField, TypField, Typ, Description: string; Connection: TMSConnection): Integer;

implementation
uses StartList;

function GetIDFromDescription(const TableName, IDField, DescriptionField, TypField, Typ, Description: string; Connection: TMSConnection): Integer;
var
  Query: TMSQuery;
begin
  Result := -1;
  if Trim(Description) = '' then
    Exit;

  Query := TMSQuery.Create(nil);
  try
    Query.Connection := Connection;
    Query.SQL.Text := Format(
      'SELECT %s FROM %s WHERE %s = :Description AND %s = :Typ',
      [IDField, TableName, DescriptionField, TypField]);
    Query.ParamByName('Description').AsString := Description;
    Query.ParamByName('Typ').AsString := Typ;
    Query.Open;

    if not Query.IsEmpty then
      Result := Query.Fields[0].AsInteger;
  finally
    Query.Free;
  end;
end;


function SaveKontaktFromForm(TMSConnection: TMSConnection; cxBenutzerID: TcxTextEdit;
  AnredeCombo: TcxComboBox; TitelCombo: TcxComboBox; VornameEdit: TcxTextEdit;
  NameEdit: TcxTextEdit; GeburtsdatumEdit: TcxDateEdit;
  TelefontypCombo: TcxComboBox; TelefonEdit: TcxTextEdit; TelefontypCombozwei: TcxComboBox; TelefonEditzwei: TcxTextEdit;
  TelefontypCombodrei: TcxComboBox; TelefonEditdrei: TcxTextEdit;
  EmailtypCombo: TcxComboBox; EmailEdit: TcxTextEdit; EmailtypCombozwei: TcxComboBox; EmailEditzwei: TcxTextEdit;
  EmailtypCombodrei: TcxComboBox; EmailEditdrei: TcxTextEdit;
  PLZEdit: TcxTextEdit; OrtEdit: TcxTextEdit; StrasseEdit, HausnummerEdit: TcxTextEdit;
  Notizen: TcxMemo; BildData: TcxImage): integer;
var
  MyQuery: TMSQuery;
  MemoryStream: TMemoryStream;
  Bytes: TBytes;
  PersonID: Integer;

begin
  Result := -1;

  if not TMSConnection.Connected then  begin
    try
      TMSConnection.Connect;
    except
      on E: Exception do  begin
        ShowMessage('Fehler beim Herstellen einer Verbindung mit der Datenbank: ' + E.Message);
        Exit;
      end;
    end;
  end;

  MyQuery := TMSQuery.Create(nil);
  try
    MyQuery.Connection := TMSConnection;
    MyQuery.SQL.Text := 'EXEC SaveKontakt :PersonID OUTPUT, :AnredeID, :TitelID, :Vorname, :Name, :Geburtsdatum, ' +
                        ':TelefontypID, :Telefon, :Telefontyp2ID, :Telefon2, :Telefontyp3ID, :Telefon3, ' +
                        ':EmailtypID, :Email, :Emailtyp2ID, :Email2, :Emailtyp3ID, :Email3, ' +
                        ':PLZ, :Ort, :Strasse, :Hausnummer, :Notizen, :Bild';

    // PersonID
    if Trim(cxBenutzerID.Text) <> '' then
      PersonID := StrToIntDef(cxBenutzerID.Text, -1)
    else
      PersonID := -1;

    MyQuery.ParamByName('PersonID').AsInteger := PersonID;
    MyQuery.ParamByName('PersonID').ParamType := ptInputOutput;
    MyQuery.ParamByName('AnredeID').AsInteger := GetIDFromDescription('Kombinierttabelle', 'WertID', 'Bezeichnung', 'Typ', 'ANR', AnredeCombo.Text, TMSConnection);
    MyQuery.ParamByName('TitelID').AsInteger := GetIDFromDescription('Kombinierttabelle', 'WertID', 'Bezeichnung', 'Typ', 'TIT', TitelCombo.Text, TMSConnection);
    MyQuery.ParamByName('Vorname').AsString := VornameEdit.Text;
    MyQuery.ParamByName('Name').AsString := NameEdit.Text;

      if not VarIsNull(GeburtsdatumEdit.EditValue) then  begin
        MyQuery.ParamByName('Geburtsdatum').AsDate := GeburtsdatumEdit.Date;
      end   else   begin
        MyQuery.ParamByName('Geburtsdatum').Clear;

      end;


    if Trim(TelefontypCombo.Text) <> '' then
      MyQuery.ParamByName('TelefontypID').AsInteger := GetIDFromDescription('Kombinierttabelle', 'WertID', 'Bezeichnung', 'Typ', 'TEL', TelefontypCombo.Text, TMSConnection)
    else
      MyQuery.ParamByName('TelefontypID').Clear;
    MyQuery.ParamByName('Telefon').AsString := TelefonEdit.Text;

    if Trim(TelefontypCombozwei.Text) <> '' then
      MyQuery.ParamByName('Telefontyp2ID').AsInteger := GetIDFromDescription('Kombinierttabelle', 'WertID', 'Bezeichnung', 'Typ', 'TEL', TelefontypCombozwei.Text, TMSConnection)
    else
      MyQuery.ParamByName('Telefontyp2ID').Clear;
    MyQuery.ParamByName('Telefon2').AsString := TelefonEditzwei.Text;

    if Trim(TelefontypCombodrei.Text) <> '' then
      MyQuery.ParamByName('Telefontyp3ID').AsInteger := GetIDFromDescription('Kombinierttabelle', 'WertID', 'Bezeichnung', 'Typ', 'TEL', TelefontypCombodrei.Text, TMSConnection)
    else
      MyQuery.ParamByName('Telefontyp3ID').Clear;
    MyQuery.ParamByName('Telefon3').AsString := TelefonEditdrei.Text;

    MyQuery.ParamByName('EmailtypID').AsInteger := GetIDFromDescription('Kombinierttabelle', 'WertID', 'Bezeichnung', 'Typ', 'EMA', EmailtypCombo.Text, TMSConnection);
    MyQuery.ParamByName('Email').AsString := EmailEdit.Text;

    if Trim(EmailtypCombozwei.Text) <> '' then
      MyQuery.ParamByName('Emailtyp2ID').AsInteger := GetIDFromDescription('Kombinierttabelle', 'WertID', 'Bezeichnung', 'Typ', 'EMA', EmailtypCombozwei.Text, TMSConnection)
    else
      MyQuery.ParamByName('Emailtyp2ID').Clear;
    MyQuery.ParamByName('Email2').AsString := EmailEditzwei.Text;

    if Trim(EmailtypCombodrei.Text) <> '' then
      MyQuery.ParamByName('Emailtyp3ID').AsInteger := GetIDFromDescription('Kombinierttabelle', 'WertID', 'Bezeichnung', 'Typ', 'EMA', EmailtypCombodrei.Text, TMSConnection)
    else
      MyQuery.ParamByName('Emailtyp3ID').Clear;

    MyQuery.ParamByName('Email3').AsString := EmailEditdrei.Text;
    MyQuery.ParamByName('PLZ').AsString := PLZEdit.Text;
    MyQuery.ParamByName('Ort').AsString := OrtEdit.Text;
    MyQuery.ParamByName('Strasse').AsString := StrasseEdit.Text;
    MyQuery.ParamByName('Hausnummer').AsString := HausnummerEdit.Text;
    MyQuery.ParamByName('Notizen').AsString := Notizen.Text;

    if not BildData.Picture.Graphic.Empty then  begin
      MemoryStream := TMemoryStream.Create;
      try
        BildData.Picture.Graphic.SaveToStream(MemoryStream);
        MemoryStream.Position := 0;
        SetLength(Bytes, MemoryStream.Size);
        MemoryStream.ReadBuffer(Bytes[0], MemoryStream.Size);
        MyQuery.ParamByName('Bild').AsBytes := Bytes;
        MyQuery.ParamByName('Notizen')
      finally
        MemoryStream.Free;
      end;
    end
    else
      MyQuery.ParamByName('Bild').Clear;

    TMSConnection.StartTransaction;
    try
      MyQuery.ExecSQL;
      TMSConnection.Commit;
      Result := MyQuery.ParamByName('PersonID').AsInteger;
      ShowMessage('Die Daten wurden erfolgreich gespeichert.');
    except
      on E: Exception do begin
        TMSConnection.Rollback;
        ShowMessage('Fehler beim Speichern von Daten: ' + E.Message);
      end;
    end;


  finally
    MyQuery.Free;
  end;
end;


end.
