unit MyMessageBox;

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
  dxLayoutControlAdapters, cxContainer, cxEdit, Vcl.Menus, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMemo, cxClasses, dxLayoutControl,
  dxPanel,MyPapierKorb, cxLabel, cxImage, System.ImageList, Vcl.ImgList,
  cxImageList, dxGDIPlusClasses, cxCustomListBox, cxListBox, cxCheckBox;
 type
  TMessageBoxType = (mbtInfo, mbtWarning, mbtError, mbtQuestion, mbtSuccess);
  TMessageBoxButtons = set of (mbbOk, mbbYes, mbbNo, mbbCancel, mbbRetry, mbbAbort);
  TMessageBoxResult = (mbrNone, mbrOk, mbrYes, mbrNo, mbrCancel, mbrRetry, mbrAbort);

type
  TMyMesBox = class(TForm)
    dxPanelMessBox: TdxPanel;
    dxLayoutControlMessBoxGroup_Root: TdxLayoutGroup;
    dxLayoutControlMessBox: TdxLayoutControl;
    btnYes: TcxButton;
    btnNo: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    ImgIcon: TcxImage;
    dxLayoutItem4: TdxLayoutItem;
    cxImageList1: TcxImageList;
    dxPanel1: TdxPanel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    btnAbbrechen: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxCheckBoxMemo: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    cxMemoMessage: TcxMemo;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxImageList64: TcxImageList;
    procedure btnNoClick(Sender: TObject);
    procedure btnYesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAbbrechenClick(Sender: TObject);
    procedure cxCheckBoxMemoPropertiesChange(Sender: TObject);
  private
    { Private-Deklarationen }
    FResult: Integer;
    procedure SetDialogIcon(AIconType: TMsgDlgType);
  public
    { Public-Deklarationen }

    function  ShowMessage(const AText: string; AIconType: TMsgDlgType; AButtons: TMsgDlgButtons): Integer;
    procedure SetMessageText(const AText: string);
    procedure WrapTextToLines(const AText: string; MaxWidth: Integer; AList: TStringList);
    procedure RemoveIcon;
    procedure MemoChecked;
end;

var
  MyMesBox: TMyMesBox;

implementation

{$R *.dfm}

procedure TMyMesBox.btnYesClick(Sender: TObject);
begin
  FResult := mrYes;
  Close;
end;

procedure TMyMesBox.cxCheckBoxMemoPropertiesChange(Sender: TObject);
begin
 MemoChecked;
end;


procedure TMyMesBox.RemoveIcon;
begin
  SendMessage(Handle, WM_SETICON, ICON_SMALL, 0);
  SendMessage(Handle, WM_SETICON, ICON_BIG, 0);
  SetWindowLong(Handle, GWL_STYLE, GetWindowLong(Handle, GWL_STYLE) and not WS_SYSMENU);
end;

procedure TMyMesBox.FormCreate(Sender: TObject);
begin
  cxMemoMessage.Clear;
  cxMemoMessage.Lines.Text := '';
  RemoveIcon;
end;

procedure TMyMesBox.btnAbbrechenClick(Sender: TObject);
begin
 FResult:= mrCancel;
 Close;
end;

procedure TMyMesBox.btnNoClick(Sender: TObject);
begin
  FResult := mrNo;
  Close;
end;

procedure TMyMesBox.SetDialogIcon(AIconType: TMsgDlgType);
begin
  if Assigned(cxImageList64) then begin
    case AIconType of
      mtConfirmation: cxImageList64.GetBitmap(0, ImgIcon.Picture.Bitmap);
      mtWarning: cxImageList64.GetBitmap(1, ImgIcon.Picture.Bitmap);
      mtError:
      begin
        cxImageList64.GetBitmap(2, ImgIcon.Picture.Bitmap);
        ImgIcon.Visible := True;
      end;
    else
      ImgIcon.Picture.Assign(nil);
      ImgIcon.Visible := False;
    end;
  end else
    ImgIcon.Visible := False;
end;

function TMyMesBox.ShowMessage(const AText: string; AIconType: TMsgDlgType; AButtons: TMsgDlgButtons): Integer;
const
  ButtonWidth = 90;
  ButtonHeight = 28;
begin
  cxMemoMessage.Lines.Text := AText;
  SetDialogIcon(AIconType);

//   cxListBoxMessage.Styles.Item.Normal.TextAlign := taLeftJustify;
//   cxListBoxMessage.Repaint;


  if (AIconType in [mtWarning, mtError]) then begin
    btnYes.Visible := True;
    btnYes.Caption := 'OK';
    btnYes.Align := alNone;
    btnYes.Width := ButtonWidth;
    btnYes.Height := ButtonHeight;
    btnYes.Constraints.MinWidth := ButtonWidth;
    btnYes.Constraints.MaxWidth := ButtonWidth;
    btnYes.Constraints.MinHeight := ButtonHeight;
    btnYes.Constraints.MaxHeight := ButtonHeight;

    // "OK"
    btnYes.Left := (dxPanel1.ClientWidth div 2) - (btnYes.Width div 2);
    btnYes.Top := btnNo.Top;
    dxLayoutItem2.AlignHorz :=ahCenter;
    btnYes.Anchors := [akTop];

    //  "Nein"
    btnNo.Visible := False;
    dxLayoutItem3.Visible:=False;

    //Abbrechen
    btnAbbrechen.Visible:=False;
    dxLayoutItem5.Visible:=false;
  end  else begin
    btnYes.Visible := mbYes in AButtons;
    btnYes.Caption := 'Ja';
    btnYes.Align := alNone;

    btnNo.Visible := mbNo in AButtons;
    btnNo.Caption := 'Nein';

    btnAbbrechen.Visible:= mbCancel in AButtons;
    btnAbbrechen.Caption := 'Abbrechen';

    btnYes.Width := ButtonWidth;
    btnYes.Height := ButtonHeight;
    btnYes.Constraints.MinWidth := ButtonWidth;
    btnYes.Constraints.MaxWidth := ButtonWidth;
    btnYes.Constraints.MinHeight := ButtonHeight;
    btnYes.Constraints.MaxHeight := ButtonHeight;

    btnNo.Width := ButtonWidth;
    btnNo.Height := ButtonHeight;
    btnNo.Constraints.MinWidth := ButtonWidth;
    btnNo.Constraints.MaxWidth := ButtonWidth;
    btnNo.Constraints.MinHeight := ButtonHeight;
    btnNo.Constraints.MaxHeight := ButtonHeight;

    btnAbbrechen.Width := ButtonWidth;
    btnAbbrechen.Height := ButtonHeight;
    btnAbbrechen.Constraints.MinWidth := ButtonWidth;
    btnAbbrechen.Constraints.MaxWidth := ButtonWidth;
    btnAbbrechen.Constraints.MinHeight := ButtonHeight;
    btnAbbrechen.Constraints.MaxHeight := ButtonHeight;

    btnYes.Top := btnNo.Top;
    btnAbbrechen.Top:=btnYes.Top;
  end;

  ShowModal;
  Result := FResult;
end;


procedure AdjustLabelAndForm(AMemoMessage: TcxMemo; AForm: TForm);
var
  MaxWidth, NewHeight, NewFormHeight, i: Integer;
begin
  if AMemoMessage.Lines.Count = 0 then Exit;

  MaxWidth := AForm.ClientWidth - 40;
  AMemoMessage.Width := MaxWidth;

  NewHeight := 0;
  for i := 0 to AMemoMessage.Lines.Count - 1 do
    NewHeight := NewHeight + AMemoMessage.Canvas.TextHeight(AMemoMessage.Lines[i]) + 4;

  AMemoMessage.Height := NewHeight;

  NewFormHeight := AMemoMessage.Top + NewHeight + 50;
  if NewFormHeight > AForm.Height then begin
    AForm.Constraints.MinHeight := NewFormHeight;
    AForm.Height := NewFormHeight;
  end;

  AForm.Realign;
  AForm.Repaint;
end;

function GetTextWidthCX(AControl: TcxMemo; const AText: string): Integer;
var
  ScreenCanvas: TcxScreenCanvas;
begin
  ScreenCanvas := TcxScreenCanvas.Create;
  try
    ScreenCanvas.Font.Assign(AControl.Style.Font);
    Result := ScreenCanvas.TextWidth(AText);
  finally
    ScreenCanvas.Free;
  end;
end;

procedure TMyMesBox.WrapTextToLines(const AText: string; MaxWidth: Integer; AList: TStringList);
var
  Lines: TStringList;
  Words: TStringList;
  CurrentLine, TestLine, Word: string;
  i, j, TextWidth, SpaceWidth: Integer;
  RemainingWord: string;
begin
  Lines := TStringList.Create;
  Words := TStringList.Create;
  try
    Lines.Text := AText;
    SpaceWidth := GetTextWidthCX(cxMemoMessage, ' ');
    for j := 0 to Lines.Count - 1 do begin
      if Lines[j] = '' then begin
        AList.Add('');
        Continue;
      end;

      Words.Clear;
      Words.Delimiter := ' ';
      Words.StrictDelimiter := True;
      Words.DelimitedText := Lines[j];
      CurrentLine := '';
      for i := 0 to Words.Count - 1 do begin
        Word := Words[i];
        while GetTextWidthCX(cxMemoMessage, Word) > MaxWidth do begin
          RemainingWord := Word;
          TestLine := '';
          while (Length(TestLine) < Length(RemainingWord)) and
                (GetTextWidthCX(cxMemoMessage, TestLine + RemainingWord[Length(TestLine) + 1]) <= MaxWidth) do begin
            TestLine := TestLine + RemainingWord[Length(TestLine) + 1];
          end;

          if TestLine <> '' then begin
            if CurrentLine <> '' then begin
              AList.Add(CurrentLine);
              CurrentLine := '';
            end;
            AList.Add(TestLine + '-');
            Delete(Word, 1, Length(TestLine));
          end else begin
            AList.Add(Copy(Word, 1, 1));
            Delete(Word, 1, 1);
          end;
        end;
        if CurrentLine = '' then
          TestLine := Word
        else
          TestLine := CurrentLine + ' ' + Word;

        TextWidth := GetTextWidthCX(cxMemoMessage, TestLine);

        if (TextWidth > MaxWidth) and (CurrentLine <> '') then begin
          AList.Add(CurrentLine);
          CurrentLine := Word;
        end else begin
          CurrentLine := TestLine;
        end;
      end;
      if CurrentLine <> '' then
        AList.Add(CurrentLine);
    end;

  finally
    Words.Free;
    Lines.Free;
  end;
end;
procedure TMyMesBox.SetMessageText(const AText: string);
var
  WrappedText: TStringList;
begin
  cxMemoMessage.Lines.Clear;
  WrappedText := TStringList.Create;
  try
    WrapTextToLines(AText, cxMemoMessage.ClientWidth - 20, WrappedText);
    cxMemoMessage.Lines.Assign(WrappedText);

    //   cxMemoMessage
    AdjustLabelAndForm(cxMemoMessage, Self);
  finally
    WrappedText.Free;
  end;
end;

procedure TMyMesBox.MemoChecked;
begin
  if cxCheckBoxMemo.Checked=true then begin
     cxMemoMessage.Height:=300;
//     MyMesBox.Height:=537;
     MyMesBox.ClientHeight:=298;
  end else begin
     cxMemoMessage.Height:=75;
//     MyMesBox.Height:=237;
     MyMesBox.ClientHeight:=198;

  end;
end;

end.
