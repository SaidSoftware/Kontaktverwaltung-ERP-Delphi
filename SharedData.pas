unit SharedData;

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
  cxImageList, dxLayoutcxEditAdapters, cxTextEdit, dxLayoutLookAndFeels,
  MemDS, DBAccess, MSAccess,System.UITypes, Vcl.Menus, cxMaskEdit,
  cxDropDownEdit;

type
  TGlobalData = class

  private
    class var FTMSQuery1: TMSQuery;

    class var FTMSQueryForGrid: TMSQuery;
  public


    class property TMSQuery1: TMSQuery read FTMSQuery1 write  FTMSQuery1;
    class property TMSQueryForGrid: TMSQuery read FTMSQueryForGrid write FTMSQueryForGrid;
  end;


implementation


initialization
   TGlobalData.FTMSQuery1 := TMSQuery.Create(nil);
   TGlobalData.FTMSQueryForGrid := TMSQuery.Create(nil);

finalization
   if assigned(TGlobalData.FTMSQuery1) then freeAndNil(TGlobalData.FTMSQuery1);
   if assigned(TGlobalData.FTMSQueryForGrid) then freeAndNil(TGlobalData.FTMSQueryForGrid);
end.


