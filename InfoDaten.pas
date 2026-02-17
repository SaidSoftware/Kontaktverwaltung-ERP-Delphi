unit InfoDaten;

interface
 uses Winapi.Windows, Winapi.Messages, System.SysUtils,System.UITypes, System.Variants, System.Classes, Vcl.Graphics,
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
  cxImageList, cxGraphics,KontaktKlassen,Kontakt, Vcl.Menus, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Buttons,  cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, cxDateUtils, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel,cxImage, cxGroupBox,
  cxBarEditItem, cxButtonEdit, dxRibbon, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, DBAccess, MSAccess, MemDS, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl,
  dxLayoutLookAndFeels,System.NetEncoding;


//procedure LoadData;
//procedure SaveData;

var
Anrede:array of integer;
Titel :array of integer;
Emailtypen:array of integer;
Telefontypen: array of integer;

implementation



//procedure LoadData;
//begin
//  TMSQueryKontakt.SQL.Text := 'SELECT * FROM Kontaktverwaltungstabelle';
//  TMSQueryKontakt.Open;
//
//  TMSQueryKontakt.First;
//  while not FDQuery1.Eof do begin
//    for var i := 0 to FDQuery1.FieldCount - 1 do begin
//      if FDQuery1.Fields[i].DataType = ftInteger then begin
//        StringGrid1.Cells[i, FDQuery1.RecNo] := IntToStr(FDQuery1.Fields[i].AsInteger);
//      end else begin
//        StringGrid1.Cells[i, FDQuery1.RecNo] := FDQuery1.Fields[i].AsString;
//      end;
//    end;
//    FDQuery1.Next;
//  end;
//end;
//
//procedure SaveData;
//begin
//  FDQuery1.First;
//  FDQuery1.Edit;
//
//  while not FDQuery1.Eof do begin
//    for var i := 0 to FDQuery1.FieldCount - 1 do begin
//      if FDQuery1.Fields[i].DataType = ftInteger then begin
//        FDQuery1.Fields[i].AsInteger := StrToInt(StringGrid1.Cells[i, FDQuery1.RecNo]);
//      end else begin
//        FDQuery1.Fields[i].AsString := StringGrid1.Cells[i, FDQuery1.RecNo];
//      end;
//    end;
//    FDQuery1.Post;
//    FDQuery1.Next;
//  end;
//end;


end.
