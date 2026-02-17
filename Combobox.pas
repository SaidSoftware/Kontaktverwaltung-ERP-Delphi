unit Combobox;

interface

uses
  System.SysUtils, System.Generics.Collections,System.Classes, Vcl.Grids, Winapi.Windows, Winapi.Messages,  System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit,
  cxDropDownEdit;

  procedure SetGridUpdater(StringGrid: TStringGrid);
  function  GetGridColumnHeader(ColumnIndex: Integer): string;
  procedure UpdateComboBoxSelection(ComboBox: TcxComboBox; ColumnIndex: Integer);
  procedure UpdateGridColumnHeaderFromComboBox(ComboBox: TcxComboBox; ColumnIndex: Integer);

implementation

{ TComboboxes }

var
  GlobalStringGrid: TStringGrid = nil;
  OriginalHeaders: array of string;


procedure SetGridUpdater(StringGrid: TStringGrid);
begin
  GlobalStringGrid := StringGrid;
  SetLength(OriginalHeaders, GlobalStringGrid.ColCount);
  for var i := 0 to GlobalStringGrid.ColCount - 1 do
    OriginalHeaders[i] := GlobalStringGrid.Cells[i, 0];
end;

procedure UpdateGridColumnHeaderFromComboBox(ComboBox: TcxComboBox; ColumnIndex: Integer);
var
  NewHeader: string;
begin
  if Assigned(GlobalStringGrid) and (ColumnIndex >= 0) and (ColumnIndex < GlobalStringGrid.ColCount) then begin
    NewHeader := ComboBox.Text;
    GlobalStringGrid.Cells[ColumnIndex, 0] := NewHeader;
  end;
end;

function GetGridColumnHeader(ColumnIndex: Integer): string;
begin
  if Assigned(GlobalStringGrid) and (ColumnIndex >= 0) and (ColumnIndex < GlobalStringGrid.ColCount) then
    Result := GlobalStringGrid.Cells[ColumnIndex, 0]
  else
    Result := '';
end;

procedure UpdateComboBoxSelection(ComboBox: TcxComboBox; ColumnIndex: Integer);
begin
  if Assigned(GlobalStringGrid) and (ColumnIndex >= 0) and (ColumnIndex < GlobalStringGrid.ColCount) then
    ComboBox.Text := GlobalStringGrid.Cells[ColumnIndex, 0];
end;


end.

