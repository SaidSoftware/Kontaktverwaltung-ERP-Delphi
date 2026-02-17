unit MyGlobalDaten;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  cxImageList, dxLayoutcxEditAdapters, cxTextEdit, dxLayoutLookAndFeels,
  MemDS, DBAccess, MSAccess,System.UITypes, Vcl.Menus, cxMaskEdit,
  cxDropDownEdit, cxDateUtils, cxCalendar;

type FModeKontakt=(EditForm,AddForm);

type FModeTable = (Aktiv,Deaktiv);

type
  TFieldClearInfo = record
    EditFields: array of TcxTextEdit;
    DateFields: array of TcxDateEdit;
    Grid: TcxGridDBTableView;
  end;

const
  ArchivComboBoxItems: array[0..2] of string = (
    'Aktuell',
    'Alle',
    'Archiviert'
  );

 procedure GlobalArchivComboBox(ComboBox: TcxComboBox);

implementation

{Field}
procedure ClearFields(FieldInfo: TFieldClearInfo);
var
  I: Integer;
begin
  for I := 0 to High(FieldInfo.EditFields) do
    FieldInfo.EditFields[I].Clear;
  for I := 0 to High(FieldInfo.DateFields) do
    FieldInfo.DateFields[I].Clear;

  FieldInfo.Grid.DataController.RecordCount := 0;
end;

{Global}
procedure GlobalArchivComboBox(ComboBox: TcxComboBox);
var
  Item: string;
begin
  if ComboBox = nil then
    Exit;

  ComboBox.Properties.Items.Clear;
  for Item in ArchivComboBoxItems do begin
    ComboBox.Properties.Items.Add(Item);
  end;
  ComboBox.ItemIndex := 0;
end;

end.
