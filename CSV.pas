unit CSV;

interface
uses
  System.SysUtils, System.Classes,  Winapi.Windows, Winapi.Messages, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxImageList, cxGraphics, dxRibbon, dxRibbonGallery, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Vcl.Grids, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TStringArray = array of string;
var
  Contacts: TStringList;
  Data: TStringArray;
  i, RowCount: Integer;

  procedure SaveKontaktToCSV(FileName: string; StringGrid: TStringGrid);
  procedure LoadKontaktFromCSV(FileName: string; StringGrid: TStringGrid);

implementation

procedure SaveKontaktToCSV(FileName: string; StringGrid: TStringGrid);
var
  Contacts: TStringList;
  Contact: string;
  i: Integer;
begin
  Contacts := TStringList.Create;
  try
    Contact := Format('%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;',
      [StringGrid.Cells[0, 0],  // ID
       StringGrid.Cells[1, 0],  // AnredeTitel
       StringGrid.Cells[2, 0],  // Anrede
       StringGrid.Cells[3, 0],  // Name
       StringGrid.Cells[4, 0],  // Vorname
       'Geburtsdatum',           // Geburtsdatum
  ////////////////////////////////////////////////////////////////////////////
       StringGrid.Cells[6, 0],   // ComboTelefonnummer
       StringGrid.Cells[7, 0],   // ComboTelefonnummer 2
       StringGrid.Cells[8, 0],   // ComboTelefonnummer 3
       StringGrid.Cells[9, 0],   // Telefonnummer
       StringGrid.Cells[10, 0],   // Telefonnummer 2
       StringGrid.Cells[11, 0],   // Telefonnummer 3
  ////////////////////////////////////////////////////////////////////////////
       StringGrid.Cells[12, 0],   // ComboEmail
       StringGrid.Cells[13, 0],  // ComboEmail 2
       StringGrid.Cells[14, 0],  // ComboEmail 3
       StringGrid.Cells[15, 0],   // Email
       StringGrid.Cells[16, 0],  // Email 2
       StringGrid.Cells[17, 0],  // Email 3
  ////////////////////////////////////////////////////////////////////////////
       StringGrid.Cells[18, 0],  // PLZ
       StringGrid.Cells[19, 0],  // Ort
       StringGrid.Cells[20, 0],   // Straße + Hausnummer
       StringGrid.Cells[21, 0]    //Notizen
      ]);
    Contacts.Add(Contact);

    for i := 1 to StringGrid.RowCount - 1 do begin
      Contact := Format('%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;',
        [StringGrid.Cells[0, i],  // ID
         StringGrid.Cells[1, i],  // AnredeTitel
         StringGrid.Cells[2, i],  // Anrede
         StringGrid.Cells[3, i],  // Name
         StringGrid.Cells[4, i],  // Vorname
         DateToStr(StrToDateDef(StringGrid.Cells[5, i], 0)),  // Geburtsdatum
    ////////////////////////////////////////////////////////////////////////////
         StringGrid.Cells[6, i],   // ComboTelefonnummer
         StringGrid.Cells[7, i],   // ComboTelefonnummer 2
         StringGrid.Cells[8, i],   // ComboTelefonnummer 3
         StringGrid.Cells[9, i],   // Telefonnummer
         StringGrid.Cells[10, i],   // Telefonnummer 2
         StringGrid.Cells[11, i],   // Telefonnummer 3
    ////////////////////////////////////////////////////////////////////////////
         StringGrid.Cells[12, i],   // ComboEmail
         StringGrid.Cells[13, i],  // ComboEmail 2
         StringGrid.Cells[14, i],  // ComboEmail 3
         StringGrid.Cells[15, i],   // Email
         StringGrid.Cells[16, i],  // Email 2
         StringGrid.Cells[17, i],  // Email 3
    ////////////////////////////////////////////////////////////////////////////
         StringGrid.Cells[18, i],  // PLZ
         StringGrid.Cells[19, i],  // Ort
         StringGrid.Cells[20, i],   // Straße + Hausnummer
         StringGrid.Cells[21, i]   // Notizen
        ]);
      Contacts.Add(Contact);
    end;

    Contacts.SaveToFile(FileName);
  finally
    Contacts.Free;
  end;
end;

function SplitString(const S: string; Delimiter: Char): TStringArray;
var
  List: TStringList;
  i: Integer;
begin
  List := TStringList.Create;
  try
    List.Delimiter := Delimiter;
    List.DelimitedText := S;
    SetLength(Result, List.Count);
    for i := 0 to List.Count - 1 do begin
      Result[i] := List[i];
    end;
  finally
    List.Free;
  end;
end;

procedure LoadKontaktFromCSV(FileName: string; StringGrid: TStringGrid);
var
  Contacts: TStringList;
  i, RowCount, ColCount: Integer;
  Data: TArray<string>;
begin
  Contacts := TStringList.Create;
  try
    Contacts.LoadFromFile(FileName);
    RowCount := Contacts.Count;
    StringGrid.RowCount := RowCount;
    StringGrid.FixedRows := 1;

    if RowCount > 0 then begin
      Data := Contacts[0].Split([';']);
      ColCount := Length(Data);
      StringGrid.ColCount := ColCount;
      for i := 0 to ColCount - 1 do
        StringGrid.Cells[i, 0] := Data[i];
    end;

    for i := 1 to RowCount - 1 do begin
      Data := Contacts[i].Split([';']);
      if Length(Data) <= StringGrid.ColCount then begin
        StringGrid.Rows[i].Clear;
        StringGrid.Rows[i].AddStrings(Data);
        while StringGrid.Rows[i].Count < StringGrid.ColCount do
          StringGrid.Rows[i].Add('');
      end else begin
        ShowMessage('Falsche Anzahl von Spalten in einer Zeile ' + IntToStr(i + 1));
      end;
    end;

  finally
    Contacts.Free;
  end;
end;


end.
