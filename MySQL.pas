unit MySQL;

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
  dxLayoutLookAndFeels,System.NetEncoding, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

function GetIDFromDescription(const TableName, IDField, DescriptionField, TypField, Typ, Description: string; Connection: TMSConnection): Integer;

procedure SaveKontaktToDatabase(TMSConnection: TMSConnection; StringGrid: TcxGridDBTableView);

implementation

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

procedure SaveKontaktToDatabase(TMSConnection: TMSConnection; StringGrid: TcxGridDBTableView);
var
  MyQuery: TMSQuery;
  i, ColumnCount: Integer;
  Geburtsdatum: TDateTime;
begin
  if not TMSConnection.Connected then
  begin
    try
      TMSConnection.Connect;
    except
      on E: Exception do
      begin
        ShowMessage('Fehler beim Herstellen einer Verbindung mit der Datenbank: ' + E.Message);
        Exit;
      end;
    end;
  end;

  ColumnCount := StringGrid.DataController.ItemCount;

  if ColumnCount < 23 then begin
    ShowMessage('Das StringGrid hat weniger als 23 Spalten, die Daten können nicht verarbeitet werden');
    Exit;
  end;

  MyQuery := TMSQuery.Create(nil);
  try
    MyQuery.Connection := TMSConnection;
    MyQuery.SQL.Text :=
      'INSERT INTO Kontakt (Anrede, Titel, Vorname, Name, Geburtsdatum, ' +
      'Telefontyp, Telefon, Telefontyp2, [Telefon 2], Telefontyp3, [Telefon 3], ' +
      'Emailtyp, Email, Emailtyp2, [Email 2], Emailtyp3, [Email 3], PLZ, Ort, ' +
      'Strasse, Notizen, Bild) ' +
      'VALUES (:Anrede, :Titel, :Vorname, :Name, :Geburtsdatum, :Telefontyp, :Telefon, ' +
      ':Telefontyp2, :Telefon2, :Telefontyp3, :Telefon3, :Emailtyp, :Email, :Emailtyp2, ' +
      ':Email2, :Emailtyp3, :Email3, :PLZ, :Ort, :Strasse, :Notizen, :Bild)';



    TMSConnection.StartTransaction;

    try
      for i := 0 to StringGrid.DataController.RecordCount - 1 do begin
        try
          // ID für Anrede
          if ColumnCount > 1 then begin
            MyQuery.ParamByName('Anrede').AsInteger :=
              GetIDFromDescription('Kombinierttabelle', 'WertID', 'Bezeichnung', 'Typ', 'ANR',
                StringGrid.DataController.Values[i, 1], TMSConnection);
          end;


          if ColumnCount = 1  then begin
            MyQuery.ParamByName('Anrede').AsInteger := GetIDFromDescription('kombinierttabelle', 'WertID','Bezeichnung',
            'Typ','ANR',StringGrid.DataController.Values[i,1], TMSConnection);
          end;

          // ID für Titel
          if ColumnCount > 2 then begin
            MyQuery.ParamByName('Titel').AsInteger :=
              GetIDFromDescription('Kombinierttabelle', 'WertID', 'Bezeichnung', 'Typ', 'TIT',
                StringGrid.DataController.Values[i, 2], TMSConnection);
          end;

          // Vorname и Name
          MyQuery.ParamByName('Vorname').AsString := StringGrid.DataController.Values[i, 3];
          MyQuery.ParamByName('Name').AsString := StringGrid.DataController.Values[i, 4];

          // Geburtsdatum
          if ColumnCount > 5 then begin
            Geburtsdatum := StrToDateDef(StringGrid.DataController.Values[i, 5], 0);
            if Geburtsdatum > 0 then  begin
              MyQuery.ParamByName('Geburtsdatum').AsDate := Geburtsdatum
            end else  begin
              MyQuery.ParamByName('Geburtsdatum').Clear;
            end;
          end;


          // Telefon Typen
          if ColumnCount > 6 then begin
            MyQuery.ParamByName('Telefontyp').AsInteger :=
              GetIDFromDescription('Kombinierttabelle', 'WertID', 'Bezeichnung', 'Typ', 'TEL',
                StringGrid.DataController.Values[i, 6], TMSConnection);
          MyQuery.ParamByName('Telefon').AsString := StringGrid.DataController.Values[i, 6];
          end;
          if ColumnCount > 7 then begin
            MyQuery.ParamByName('Telefontyp2').AsInteger :=
              GetIDFromDescription('Kombinierttabelle', 'WertID', 'Bezeichnung', 'Typ', 'TEL',
                StringGrid.DataController.Values[i, 7], TMSConnection);
          MyQuery.ParamByName('Telefon2').AsString := StringGrid.DataController.Values[i, 7];
          end;
          if ColumnCount > 8 then begin
            MyQuery.ParamByName('Telefontyp3').AsInteger :=
              GetIDFromDescription('Kombinierttabelle', 'WertID', 'Bezeichnung', 'Typ', 'TEL',
                StringGrid.DataController.Values[i, 8], TMSConnection);
          MyQuery.ParamByName('Telefon3').AsString := StringGrid.DataController.Values[i, 8];
          end;
          // Email Typen
          if ColumnCount > 9  then begin
             MyQuery.ParamByName('Emailtyp').AsInteger:=
             GetIDFromDescription('Kombinierttabelle','WertID','Bezeichnung','Typ','EMA',
               StringGrid.DataController.Values[i,9], TMSConnection);
          MyQuery.ParamByName('Email').AsString := StringGrid.DataController.Values[i,9];
          end;
          if ColumnCount > 10 then begin
            MyQuery.ParamByName('Emailtyp').AsInteger :=
              GetIDFromDescription('Kombinierttabelle', 'WertID', 'Bezeichnung', 'Typ', 'EMA',
                StringGrid.DataController.Values[i, 10], TMSConnection);
          MyQuery.ParamByName('Email').AsString := StringGrid.DataController.Values[i, 10];
          end;
          if ColumnCount > 11 then begin
            MyQuery.ParamByName('Emailtyp2').AsInteger :=
              GetIDFromDescription('Kombinierttabelle', 'WertID', 'Bezeichnung', 'Typ', 'EMA',
                StringGrid.DataController.Values[i, 11], TMSConnection);
          MyQuery.ParamByName('Email2').AsString := StringGrid.DataController.Values[i, 11];
          end;
          if ColumnCount> 12 then begin
            MyQuery.ParamByName('Emailtyp3').AsInteger :=
              GetIDFromDescription('Kombinierttabelle','WertID','Bezeichnung','Typ','EMA',
              StringGrid.DataController.Values[i,12], TMSConnection);
          MyQuery.ParamByName('Email3').AsString := StringGrid.DataController.Values[i,12];

          end;
          if ColumnCount > 13  then begin
            MyQuery.ParamByName('Emailtyp3').AsInteger :=
              GetIDFromDescription('Kombinierttabelle', 'WertID', 'Bezeichnung', 'Typ', 'EMA',
                StringGrid.DataController.Values[i, 13], TMSConnection);
          MyQuery.ParamByName('Email3').AsString := StringGrid.DataController.Values[i, 13];
          end;

          if ColumnCount = 13  then begin
            MyQuery.ParamByName('Emailtyp4').AsInteger:=
              GetIDFromDescription('Kombiniertabelle','WertID','Bezeichnung','Typ','EMA',
                StringGrid.DataController.Values[i,14], TMSConnection);
          MyQuery.ParamByName('Email4').AsString := StringGrid.DataController.Values[i,14]

          end;
          // Adresse иnd Notizen
          MyQuery.ParamByName('PLZ').AsString := StringGrid.DataController.Values[i, 14];
          MyQuery.ParamByName('Ort').AsString := StringGrid.DataController.Values[i, 15];
          MyQuery.ParamByName('Strasse').AsString := StringGrid.DataController.Values[i,16];
          MyQuery.ParamByName('Notizen').AsString := StringGrid.DataController.Values[i, 17];
          // Bild
          if ColumnCount > 22 then begin
//            BildData := StringGrid.DataController.Values[i, 22];
//            if BildData <> '' then begin
//              Bytes := TNetEncoding.Base64.DecodeStringToBytes(BildData);
//              MyQuery.ParamByName('Bild').AsBytes := Bytes;
//            end else begin
//              MyQuery.ParamByName('Bild').Clear;
//            end
          end;
          MyQuery.ExecSQL;
        except
          on E: Exception do begin
            ShowMessage('Fehler beim Einfügen eines Datensatzes ' + IntToStr(i) + ': ' + E.Message);
            Continue;
          end;
        end;
      end;

      TMSConnection.Commit;
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
