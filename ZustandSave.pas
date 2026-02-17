unit ZustandSave;

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

type
  TMSSettings = class
  public
    class procedure LoadSettings(Query: TMSQuery;
      out SkinName, ViewMode,AnsichtModus: string);
    class procedure SaveSettings(Query: TMSQuery;
  SkinName, ViewMode, AnsichtModus: string);
  class procedure SaveView2Mode(Query: TMSQuery; const View2Mode: string);
  class procedure LoadView2Mode(Query: TMSQuery; out View2Mode: string);
  end;

implementation


class procedure TMSSettings.SaveSettings(Query: TMSQuery;
  SkinName, ViewMode, AnsichtModus: string);
var
  SkinNameNum, ViewModeNum, AnsichtModusNum: Integer;
begin
  if SkinName = 'Light' then
    SkinNameNum := 0
  else if SkinName = 'Dark' then
    SkinNameNum := 1
  else
    SkinNameNum := -1;

  if ViewMode = 'Alle' then
    ViewModeNum := 0
  else if ViewMode = 'Nur Tabelle' then
    ViewModeNum := 1
  else
    ViewModeNum := -1;

  if AnsichtModus = 'Alle Felder anzeigen' then
    AnsichtModusNum := 0
  else if AnsichtModus = 'Felder mit Icons anzeigen' then
    AnsichtModusNum := 1
  else if AnsichtModus = 'Alle Felder ohne Icons anzeigen' then
    AnsichtModusNum := 2
  else
    AnsichtModusNum := -1;


  Query.SQL.Text := 'UPDATE ProgrammSettings ' +
                    'SET SkinName = :Skin, ViewMode = :View, AnsichtModus = :Ansicht';

  Query.ParamByName('Skin').AsInteger := SkinNameNum;
  Query.ParamByName('View').AsInteger := ViewModeNum;
  Query.ParamByName('Ansicht').AsInteger := AnsichtModusNum;
  Query.ExecSQL;
end;

class procedure TMSSettings.LoadSettings(Query: TMSQuery;
  out SkinName, ViewMode, AnsichtModus: string);
var
  SkinNameNum, ViewModeNum, AnsichtModusNum: Integer;
begin
  Query.SQL.Text := 'SELECT SkinName, ViewMode, AnsichtModus FROM ProgrammSettings';
  Query.Open;

  if not Query.IsEmpty then begin
    SkinNameNum := Query.FieldByName('SkinName').AsInteger;
    ViewModeNum := Query.FieldByName('ViewMode').AsInteger;
    AnsichtModusNum := Query.FieldByName('AnsichtModus').AsInteger;

    case SkinNameNum of
      0: SkinName := 'Light';
      1: SkinName := 'Dark';
    else
      SkinName := 'Light';
    end;

    case ViewModeNum of
      0: ViewMode := 'Alle';
      1: ViewMode := 'Nur Tabelle';
    else
      ViewMode := 'Alle';
    end;

    case AnsichtModusNum of
      0: AnsichtModus := 'Alle Felder anzeigen';
      1: AnsichtModus := 'Felder mit Icons anzeigen';
      2: AnsichtModus := 'Alle Felder ohne Icons anzeigen';
    else
      AnsichtModus := 'Alle Felder anzeigen';
    end;
  end else begin
    SkinName := 'Light';
    ViewMode := 'Alle';
    AnsichtModus := 'Alle Felder anzeigen';
  end;

  Query.Close;
end;


class procedure TMSSettings.LoadView2Mode(Query: TMSQuery; out View2Mode: string);
var
  View2ModeNum: Integer;
begin
  Query.SQL.Text := 'SELECT View2Mode FROM ProgrammSettings';
  Query.Open;
  try
    if not Query.IsEmpty then
    begin
      View2ModeNum := Query.FieldByName('View2Mode').AsInteger;
      case View2ModeNum of
        0: View2Mode := 'Alle';
        1: View2Mode := 'Nur Tabelle';
      else
        View2Mode := 'Alle';
      end;
    end
    else
      View2Mode := 'Alle';
  finally
    Query.Close;
  end;
end;

class procedure TMSSettings.SaveView2Mode(Query: TMSQuery; const View2Mode: string);
var
  View2ModeNum: Integer;
begin
  if View2Mode = 'Alle' then
    View2ModeNum := 0
  else if View2Mode = 'Nur Tabelle' then
    View2ModeNum := 1
  else
    View2ModeNum := 0;

  Query.SQL.Text := 'UPDATE ProgrammSettings SET View2Mode = :View2';
  Query.ParamByName('View2').AsInteger := View2ModeNum;
  Query.ExecSQL;
end;

end.

