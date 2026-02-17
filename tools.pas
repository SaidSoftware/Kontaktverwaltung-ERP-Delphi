unit Tools;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  cxDropDownEdit,System.RegularExpressions,cxImageComboBox;

  function IsLeerString(Text: String): Boolean;

  procedure NumberOnly(AEdit: TcxTextEdit; AOnKeyPress: TKeyPressEvent);

  procedure BuchstabenGrossSchreiben(Control: TWinControl);

implementation


{LeerStrings}
function IsLeerString(Text: String): Boolean;
begin
  result := True;
  if Trim(Text) = '' then begin
    result := False;
  end;
end;

{NumbersOnly}
procedure EditKeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key, ['0'..'9', #8]) then begin
    Key := #0;
  end;
end;

procedure NumberOnly(AEdit: TcxTextEdit; AOnKeyPress: TKeyPressEvent);
begin
  AEdit.OnKeyPress := AOnKeyPress;
end;

{Capital a-A}
procedure BuchstabenGrossSchreiben(Control: TWinControl);
var
  TextStr, NewText: string;
  Edit: TcxTextEdit;
  OldHandler: TNotifyEvent;
  CursorPos, i: Integer;
  PrevChar: Char;
  ManuallyEditedPos: Integer;
  FirstLetterModified: Boolean;
begin
  if not (Control is TcxTextEdit) then Exit;

  Edit := TcxTextEdit(Control);
  TextStr := Edit.Text;

  if TextStr = '' then begin
    Edit.Tag := 0;
  end;

  if TextStr = '' then Exit;

  CursorPos := Edit.SelStart;
  OldHandler := Edit.Properties.OnEditValueChanged;
  Edit.Properties.OnEditValueChanged := nil;
  ManuallyEditedPos := CursorPos;
  FirstLetterModified := Edit.Tag = 1;

  try
    NewText := TextStr;
    if (Length(TextStr) > 0) and(FirstLetterModified = False) and(TextStr[1] = LowerCase(TextStr[1])) then begin
      NewText[1] := UpperCase(TextStr[1])[1];
    end;

    if (Length(TextStr) > 0) and (TextStr[1] = LowerCase(TextStr[1])) and (ManuallyEditedPos = 1) then begin
      Edit.Tag := 1;
//      FirstLetterModified := True;
    end;

    PrevChar := #0;
    for i := 2 to Length(TextStr) do begin
      if (PrevChar = ' ') and
         (TextStr[i] = LowerCase(TextStr[i])) and
         (i <> ManuallyEditedPos) and
         (i < ManuallyEditedPos) then
        NewText[i] := UpperCase(TextStr[i])[1];
      PrevChar := TextStr[i];
    end;

    if NewText <> TextStr then begin
      Edit.Text := NewText;
      Edit.SelStart := CursorPos;
    end;
  finally
    Edit.Properties.OnEditValueChanged := OldHandler;
  end;
end;


end.



