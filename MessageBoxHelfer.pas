unit MessageBoxHelfer;


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
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, dxLayoutContainer,
  dxLayoutControl, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox,
  dxPanel, cxLabel, dxBar, cxBarEditItem, System.ImageList, Vcl.ImgList,
  cxImageList, dxLayoutcxEditAdapters,System.Generics.Collections, cxTextEdit, dxLayoutLookAndFeels,
  MemDS, DBAccess, MSAccess,System.UITypes,Suchen, Vcl.Menus,SharedData,
  cxMaskEdit, cxDropDownEdit,Clipbrd,MyGlobalDaten, dxRatingControl,
  System.Actions, Vcl.ActnList, cxMemo, dxToggleSwitch, Vcl.ExtCtrls,vcl.stdCtrls;

type
  TDialogType = (dtError, dtWarning, dtInfo, dtConfirmation);

function ShowCustomDialogWithIcon(const MsgText, Caption: string; IconType: TMsgDlgType; Buttons: TMsgDlgButtons): Integer;
function FormatIDList(IDs: TList<Integer>; Names: TList<string>; MaxPerLine: Integer = 5): string;



implementation

function ShowCustomDialogWithIcon(const MsgText, Caption: string; IconType: TMsgDlgType; Buttons: TMsgDlgButtons): Integer;
var
  Dialog: TForm;
  I: Integer;
begin
  Dialog := CreateMessageDialog(MsgText, IconType, Buttons);
  try
    Dialog.Caption := Caption;

    for I := 0 to Dialog.ComponentCount - 1 do begin
      if Dialog.Components[I] is TButton then begin

      end;
    end;

    Result := Dialog.ShowModal;
  finally
    Dialog.Free;
  end;
end;

function FormatIDList(IDs: TList<Integer>; Names: TList<string>; MaxPerLine: Integer = 5): string;
var
  I: Integer;
  LineCount: Integer;
begin
  Result := '';
  LineCount := 0;
  for I := 0 to IDs.Count - 1 do begin
    Result := Result + Format('%d (%s)', [IDs[I], Names[I]]);
    Inc(LineCount);

    if (I < IDs.Count - 1) then begin
      if (LineCount >= MaxPerLine) then  begin
        Result := Result + SLineBreak;
        LineCount := 0;
      end else
        Result := Result + ', ';
    end;
  end;
end;



//class procedure ErrorMessage(const text: string; Caption: String = '');
//var Dialog: TForm;
//begin
//  if Trim(Caption) = '' then begin
//    Application.ProcessMessages;
//
//    Application.NormalizeAllTopMosts;
//    MessageDlg(text, mtError, [mbOK], 0);
//    Application.RestoreTopMosts;
//  end else begin
//    Dialog := CreateMessageDialog(text, mtError, [mbOK]);
//    try
//      Dialog.Caption := Caption;
//      Dialog.ShowModal;
//    finally
//      Dialog.Free;
//    end;
//  end;
//end;


end.



