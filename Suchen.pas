unit Suchen;

interface

uses
  Vcl.Grids, Vcl.StdCtrls, Vcl.Dialogs, Vcl.ComCtrls, System.SysUtils, Math,
  cxTextEdit, cxDropDownEdit, cxCalendar,System.Variants, DateUtils,Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,  cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid,SharedData,KVDataModule,MSAccess, DBAccess,MemDS,cxGridBandedTableView, cxGridDBBandedTableView;



procedure FilterGrid(
  AGrid: TcxGridDBBandedTableView;
   EditID, EditName, EditVorname, EditStrasse, EditPLZ, EditOrt: TcxTextEdit;DateGeburtsdatum:TcxDateEdit);



implementation

uses StartList;

procedure FilterGrid(
  AGrid: TcxGridDBBandedTableView;
   EditID, EditName, EditVorname, EditStrasse, EditPLZ, EditOrt: TcxTextEdit;DateGeburtsdatum:TcxDateEdit);
var
  Filter: TcxDataFilterCriteria;
  Column: TcxGridDBBandedColumn;
begin
  Filter := AGrid.DataController.Filter;
  Filter.Root.BoolOperatorKind := fboAnd;
  Filter.Root.Clear;

  if EditID.Text <> '' then  begin
    Column := AGrid.GetColumnByFieldName('PersonID');
    if Assigned(Column) then
      Filter.Root.AddItem(Column, foEqual, EditID.Text, EditID.Text);
  end;

  if EditName.Text <> '' then  begin
    Column := AGrid.GetColumnByFieldName('Name');
    if Assigned(Column) then
      Filter.Root.AddItem(Column, foLike, '%' + EditName.Text + '%', '%' + EditName.Text + '%');
  end;

  if EditVorname.Text <> '' then  begin
    Column := AGrid.GetColumnByFieldName('Vorname');
    if Assigned(Column) then
      Filter.Root.AddItem(Column, foLike, '%' + EditVorname.Text + '%', '%' + EditVorname.Text + '%');
  end;

    if DateGeburtsdatum.Text <> '' then   begin
      Column := AGrid.GetColumnByFieldName('Geburtsdatum');
      if Assigned(Column) then
        Filter.Root.AddItem(Column, foEqual, VarFromDateTime(StrToDate(DateGeburtsdatum.Text)), DateGeburtsdatum.Text);
    end;

  if EditStrasse.Text <> '' then  begin
    Column := AGrid.GetColumnByFieldName('Strasse');
    if Assigned(Column) then
      Filter.Root.AddItem(Column, foLike, '%' + EditStrasse.Text + '%', '%' + EditStrasse.Text + '%');
  end;

  if EditPLZ.Text <> '' then  begin
    Column := AGrid.GetColumnByFieldName('PLZ');
    if Assigned(Column) then
      Filter.Root.AddItem(Column, foLike, '%' + EditPLZ.Text + '%', '%' + EditPLZ.Text + '%');
  end;

  if EditOrt.Text <> '' then  begin
    Column := AGrid.GetColumnByFieldName('Ort');
    if Assigned(Column) then
      Filter.Root.AddItem(Column, foLike, '%' + EditOrt.Text + '%', '%' + EditOrt.Text + '%');
  end;

  Filter.Active := True;

end;




end.

