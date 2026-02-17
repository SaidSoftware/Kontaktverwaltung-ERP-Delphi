unit Optionenmenu;

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
  MemDS, DBAccess, MSAccess,MyAddtoTable,System.UITypes,Suchen, Vcl.Menus,SharedData,
  cxMaskEdit, cxDropDownEdit,Clipbrd,MyGlobalDaten, dxRatingControl,MyPapierkorb,
  System.Actions, Vcl.ActnList, cxMemo, dxToggleSwitch, Vcl.ExtCtrls,MessageBoxHelfer,MyMessageBox,
  dxColorEdit, cxCheckGroup, cxCheckBox, cxButtonEdit, cxImage,cxImageComboBox,
  dxRibbon, dxRibbonGallery, cxRadioGroup;

type
  TOptionform = class(TForm)
    dxPanelMenu: TdxPanel;
    cxGridMenu: TcxGrid;
    cxGridMenuDBTableView1: TcxGridDBTableView;
    cxGridMenuLevel1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeBtSchliessen: TdxBarLargeButton;
    dxBarSubItemOptionen: TdxBarSubItem;
    dxLayoutControlOptionsformGroup_Root: TdxLayoutGroup;
    dxLayoutControlOptionsform: TdxLayoutControl;
    EditId: TcxTextEdit;
    dxLayoutItemWert: TdxLayoutItem;
    dxLayoutItemBezeichnung: TdxLayoutItem;
    Editname: TcxTextEdit;
    dxBarLargeButNeu: TdxBarLargeButton;
    dxBarLargeButSuchen: TdxBarLargeButton;
    MSConnection1: TMSConnection;
    MSDataSource1: TMSDataSource;
    dxBarLargeButtonSave: TdxBarLargeButton;
    dxBarLargeButtonLoeschen: TdxBarLargeButton;
    PopupMenu1: TPopupMenu;
    Neuhinzufuegen: TMenuItem;
    Suchen: TMenuItem;
    Loeschen: TMenuItem;
    Schliessen: TMenuItem;
    TMSQueryforGrid: TMSQuery;
    dxBarLargeButZurueck: TdxBarLargeButton;
    dxBarLargeButBearbeiten: TdxBarLargeButton;
    MSQuery1: TMSQuery;
    dxBarLargeButArchivieren: TdxBarLargeButton;
    cxComboBoxArchiv: TcxComboBox;
    dxLayoutItemArchiev: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    Archivieren1: TMenuItem;
    Bearbeiten1: TMenuItem;
    Zurcksetzen1: TMenuItem;
    Kopieren1: TMenuItem;
    cxGridMenuDBTableView1ID: TcxGridDBColumn;
    cxGridMenuDBTableView1Bezeichnung1: TcxGridDBColumn;
    cxGridMenuDBTableView1Archiv: TcxGridDBColumn;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    ActionListOptionMenu: TActionList;
    AcSuchen: TAction;
    AcZurueck: TAction;
    AcBearbeiten: TAction;
    AcNeu: TAction;
    AcArchivieren: TAction;
    AcLoeschen: TAction;
    AcSchliessen: TAction;
    AcKopieren: TAction;
    dxBarManager1Bar1: TdxBar;
    cxBarEditItemGefunden: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    cxBarEditItemStatus: TcxBarEditItem;
    cxBarEditItemInfo: TcxBarEditItem;
    Timer1: TTimer;
    cxGridMenuDBTableView1Kategorie: TcxGridDBColumn;
    cxGridMenuDBTableView2: TcxGridDBTableView;
    cxBarEditItemWahlen: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxRibbonDropDownGalleryOptionForm: TdxRibbonDropDownGallery;
    dxBarSubItem1: TdxBarSubItem;
    dxBarLargeButAusblenden: TdxBarLargeButton;


    procedure dxBarLargeButNeuClick(Sender: TObject);
    procedure dxBarLargeButSuchenClick(Sender: TObject);
    procedure dxBarLargeButtonLoeschenClick(Sender: TObject);
    procedure NeuhinzufuegenClick(Sender: TObject);
    procedure SuchenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButZurueckClick(Sender: TObject);
    procedure dxBarLargeButBearbeitenClick(Sender: TObject);
    procedure cxGridMenuDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure LoeschenClick(Sender: TObject);
    procedure dxBarLargeButArchivierenClick(Sender: TObject);
    procedure cxComboBoxArchivPropertiesChange(Sender: TObject);
    procedure Bearbeiten1Click(Sender: TObject);
    procedure Archivieren1Click(Sender: TObject);
    procedure Zurcksetzen1Click(Sender: TObject);
    procedure Kopieren1Click(Sender: TObject);

    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dxLayoutControlOptionsformKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridMenuDBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure AcSuchenExecute(Sender: TObject);
    procedure AcZurueckExecute(Sender: TObject);
    procedure AcBearbeitenExecute(Sender: TObject);
    procedure AcNeuExecute(Sender: TObject);
    procedure AcArchivierenExecute(Sender: TObject);
    procedure AcLoeschenExecute(Sender: TObject);
    procedure AcKopierenExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cxGridMenuDBTableView1SelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure cxGridMenuExit(Sender: TObject);
    procedure cxGridMenuDBTableView1KategorieGetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarLargeButAusblendenClick(Sender: TObject);



 private
  FViewMode:string;
  FTableName: string;                  //TableName
  FActiveTableName: string;            //Für Tabellename zu finden
  FIsReaktivierenMode: Boolean; // True = Reaktivieren, False = Archivieren
 public

  procedure LoadTable(const TableName: string);  //Load
  procedure SetActiveTableName(const ATableName: string);    //Setter
  property ActiveTableName: string read FActiveTableName write SetActiveTableName;
  procedure HandleAddOrEdit(AAction: TFormMode); //Add oder Edit
  function GetTypByTableName(const TableName: string): string;
  procedure UpdateColumnCaptions;
  procedure RefreshGridData;
  procedure ConfigureIconColumn(AColumn: TcxGridDBColumn);


end;


var
  Optionform: TOptionform;

implementation


{$R *.dfm}

uses constant, Startlist,ZustandSave;

{Set Table Name Activ}
procedure TOptionForm.SetActiveTableName(const ATableName: string);
begin
  FActiveTableName := ATableName;
  Caption := Format('%s ', [ATableName]);
end;




{ArchivProperties}
procedure TOptionform.cxComboBoxArchivPropertiesChange(Sender: TObject);
//var
//  FilterCondition, TypCondition: string;
begin
//  case TcxComboBox(Sender).ItemIndex of
//    0: // "Aktuell"
//      begin
//        FilterCondition := 'IsArchived = 0';
//        FIsReaktivierenMode := False;
//        dxBarLargeButArchivieren.Caption := 'Archivieren';
//        dxBarLargeButArchivieren.LargeImageIndex := 18;
//        Archivieren1.Caption := 'Archivieren';
//        Archivieren1.ImageIndex := 18;
//          cxBarEditItemInfo.EditValue := 'Aktuelle Werte';
//
//      end;
//    1: // "Alle"
//      begin
//        FilterCondition := '1 = 1';
//        FIsReaktivierenMode := False;
//        dxBarLargeButArchivieren.Caption := 'Archivieren';
//
//          cxBarEditItemInfo.EditValue := 'Alle Werte';
//
//      end;
//
//    2: // "Archiviert"
//      begin
//        FilterCondition := 'IsArchived = 1';
//        FIsReaktivierenMode := True;
//        dxBarLargeButArchivieren.Caption := 'Reaktivieren';
//        dxBarLargeButArchivieren.LargeImageIndex := 19;
//        Archivieren1.Caption := 'Reaktivieren';
//        Archivieren1.ImageIndex := 19;
//          cxBarEditItemInfo.EditValue := 'Archivierte Werte';
//
//      end;
//  else
//    FilterCondition := '1 = 1';
//    FIsReaktivierenMode := False;
//    dxBarLargeButArchivieren.Caption := 'Archivieren';
//  end;
//
//  if FTableName = 'Anrede' then
//    TypCondition := 'Typ = ''ANR'''  // 'ANR'
//  else if FTableName = 'Titel' then
//    TypCondition := 'Typ = ''TIT'''  // 'TIT'
//  else if FTableName = 'Telefontypen' then
//    TypCondition := 'Typ = ''TEL'''  // 'TEL'
//  else if FTableName = 'Emailtypen' then
//    TypCondition := 'Typ = ''EMA'''  // 'EMA'
//  else
//    TypCondition := '1 = 1';  // Typ
//
//  TMSQueryforGrid.Close;
//  TMSQueryforGrid.SQL.Text := Format(
//    'SELECT WertID as ID, Bezeichnung, Typ, IsArchived AS Archiv FROM Kombinierttabelle WHERE %s AND %s',
//    [FilterCondition, TypCondition]
//  );
//  TMSQueryforGrid.Open;
//  cxGridMenuDBTableView1.DataController.Refresh;

  UpdateColumnCaptions();
end;


{Archivieren}
procedure TOptionform.AcArchivierenExecute(Sender: TObject);
begin
  dxBarLargeButArchivierenClick(Sender);
end;

procedure TOptionform.AcBearbeitenExecute(Sender: TObject);
begin
 HandleAddOrEdit(fmEdit);
end;

procedure TOptionform.AcKopierenExecute(Sender: TObject);
begin
  Kopieren1Click(Sender);
end;

procedure TOptionform.AcLoeschenExecute(Sender: TObject);
begin
  dxBarLargeButtonLoeschenClick(Sender);
end;

procedure TOptionform.AcNeuExecute(Sender: TObject);
begin
 HandleAddOrEdit(fmAdd);
end;


procedure TOptionform.AcSuchenExecute(Sender: TObject);
begin
 dxBarLargeButSuchenClick(Sender);
end;

procedure TOptionform.AcZurueckExecute(Sender: TObject);
begin
 dxBarLargeButZurueckClick(Sender);
end;

procedure TOptionform.Archivieren1Click(Sender: TObject);
begin
  dxBarLargeButArchivierenClick(Sender);
end;

procedure TOptionForm.ConfigureIconColumn(AColumn: TcxGridDBColumn);
begin
//  if not Assigned(AColumn) then Exit;
//  if not Assigned(MyPapierKorb.cxImageListKategorie) then Exit;
//
//  try
//    AColumn.PropertiesClassName := 'TcxImageComboBoxProperties';
//
//   if Assigned(AColumn.Properties) then begin
//        TcxImageComboBoxProperties(AColumn.Properties).Images := MyPapierKorb.cxImageListKategorie;
//        TcxImageComboBoxProperties(AColumn.Properties).Items.Clear;
//
//
//    with TcxImageComboBoxProperties(AColumn.Properties).Items do begin
//      Clear;
//      with Add do begin ImageIndex := 0; Value := 0; end; // Mann
//      with Add do begin ImageIndex := 1; Value := 1; end; // Frau
//      with Add do begin ImageIndex := 2; Value := 2; end; // Divers
//      with Add do begin ImageIndex := 3; Value := 3; end; // Assistent
//      with Add do begin ImageIndex := 4; Value := 4; end; // Professor
//      with Add do begin ImageIndex := 5; Value := 5; end; // Doktor
//      with Add do begin ImageIndex := 6; Value := 6; end; // Privat
//      with Add do begin ImageIndex := 7; Value := 7; end; // Geschäftlich
//      with Add do begin ImageIndex := 8; Value := 8; end; // Haus
//    end;
//
//   end;
//  except
//    on E: Exception do
//    begin
//      ShowMessage('Fehler bei der Konfiguration der Symbolspalte: ' + E.Message);
//    end;
//  end;
end;


{Load is the main void}
procedure TOptionForm.LoadTable(const TableName: string);
const
  AllowedTables: array[0..3] of string = ('Anrede', 'Titel', 'Telefontypen', 'Emailtypen');
var
  IsValidTable: Boolean;
  I: Integer;
  FilterTyp: string;
  FilterCondition: string;
begin
  IsValidTable := False;
  for I := Low(AllowedTables) to High(AllowedTables) do begin
    if SameText(TableName, AllowedTables[I]) then begin
      IsValidTable := True;
      Break;
    end;
  end;

  if not IsValidTable then
    raise Exception.Create('Ungültiger Tabellenname: ' + TableName);
  if TableName = 'Anrede' then
    FilterTyp := 'ANR'
  else if TableName = 'Titel' then
    FilterTyp := 'TIT'
  else if TableName = 'Telefontypen' then
    FilterTyp := 'TEL'
  else if TableName = 'Emailtypen' then
    FilterTyp := 'EMA'
  else
    raise Exception.Create('Unbekannter Tabellenname: ' + TableName);

  FTableName := TableName;
  FilterCondition := 'IsArchived = 0';

  TMSQueryForGrid.Close;
  TMSQueryForGrid.SQL.Text :=
    'SELECT WertID AS ID, Bezeichnung, IconIndex AS Icon, IsArchived AS Archiv ' +
    'FROM Kombinierttabelle ' +
    'WHERE Typ = :FilterTyp AND ' + FilterCondition + ' ' +
    'ORDER BY ID ASC';
  TMSQueryForGrid.ParamByName('FilterTyp').AsString := FilterTyp;
  TMSQueryForGrid.Open;

  MSDataSource1.DataSet := TMSQueryForGrid;
  cxGridMenuDBTableView1.DataController.DataSource := MSDataSource1;

  for I := 0 to cxGridMenuDBTableView1.ColumnCount - 1 do begin
    cxGridMenuDBTableView1.Columns[I].DataBinding.FieldName := '';
  end;

  while cxGridMenuDBTableView1.ColumnCount < 4 do
    cxGridMenuDBTableView1.CreateColumn;

  cxGridMenuDBTableView1.Columns[0].DataBinding.FieldName := 'ID';
  cxGridMenuDBTableView1.Columns[0].Caption := 'Wert';

  cxGridMenuDBTableView1.Columns[1].DataBinding.FieldName := 'Bezeichnung';
  cxGridMenuDBTableView1.Columns[1].Caption := 'Bezeichnung';

  cxGridMenuDBTableView1.Columns[2].DataBinding.FieldName := 'Icon';
  cxGridMenuDBTableView1.Columns[2].Caption := 'Icon';

  cxGridMenuDBTableView1.Columns[3].DataBinding.FieldName := 'Archiv';
  cxGridMenuDBTableView1.Columns[3].Caption := 'Archiv';
end;





{Bearbeiten}
procedure TOptionform.dxBarLargeButBearbeitenClick(Sender: TObject);
begin
 HandleAddOrEdit(fmEdit);
end;

{Zurück}
procedure TOptionform.dxBarLargeButZurueckClick(Sender: TObject);
begin
  EditID.Clear;
  EditName.Clear;
  cxGridMenuDBTableView1.DataController.RecordCount:=0;
  cxComboBoxArchiv.ItemIndex := 0;
  AcBearbeiten.Enabled:=false;
  AcArchivieren.Enabled:=false;
  AcLoeschen.Enabled:=false;
  dxLayoutGroup1.CaptionOptions.Text := 'Menü Werte';
  cxBarEditItemInfo.EditValue:='Die Werte wurden zurückgesetzt';
  Timer1.Enabled:=true;
//  cxBarEditItemInfo.EditValue:='';
  cxBarEditItemGefunden.EditValue:='';
  cxBarEditItemStatus.EditValue:='';
  dxBarLargeButAusblendenClick(Sender);

end;

{Suchen KeyDown}
procedure TOptionform.dxLayoutControlOptionsformKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //Neu (F)
//  if (Key = Ord('F')) and (ssCtrl in Shift ) then begin
//    dxBarLargeButSuchenClick(Sender);
//    Key := 0;
//  end;
end;

{Neu add}
procedure TOptionForm.dxBarLargeButNeuClick(Sender: TObject);
begin
  HandleAddOrEdit(fmAdd);
end;

{Form}
procedure TOptionForm.HandleAddOrEdit(AAction: TFormMode);
var
  SelectedID: Integer;
  TableName: string;
  AddToTableForm: TAddToTable;
begin
  if AAction = fmEdit then begin
    if not Assigned(cxGridMenuDBTableView1.Controller.FocusedRow) then begin
      cxBarEditItemInfo.EditValue := 'Fehler';
      Exit;
    end;
  end;

  TableName := FTableName;
  //AddToTableForm := TAddToTable.Create(Self, fmAdd, TableName);


  if AAction = fmEdit then begin
    cxBarEditItemStatus.EditValue := 'Status: Bearbeiten';

    SelectedID := TMSQueryforGrid.FieldByName('ID').AsInteger;
    AddToTableForm := TAddToTable.Create(Self, fmEdit, TableName, SelectedID);
    try
      AddToTableForm.SetWindowIcon(1);
      AddToTableForm.Caption := '[Bearbeiten] ' + TableName;
      if AddToTableForm.ShowModal = mrOk then begin
        RefreshGridData;
      end;
    finally
      AddToTableForm.Free;
      cxBarEditItemStatus.EditValue := ' ';
    end;
  end else begin
    cxBarEditItemStatus.EditValue := 'Status: Neu';
    AddToTableForm := TAddToTable.Create(Self, fmAdd, TableName);

    try
      AddToTableForm.SetWindowIcon(2);
      AddToTableForm.Caption := '[Neu] ' + TableName;

      if AddToTableForm.ShowModal = mrOk then begin
        RefreshGridData;
      end;
    finally
      AddToTableForm.Free;
      cxBarEditItemStatus.EditValue := ' ';
    end;
  end;
end;

{Kopieren}
procedure TOptionform.Kopieren1Click(Sender: TObject);
var
  ClipboardText: string;
  i, j: Integer;
  GridView: TcxGridTableView;
begin
  if (cxGridMenu.FocusedView is TcxGridTableView) then begin
    GridView := TcxGridTableView(cxGridMenu.FocusedView);
    for i := 0 to GridView.Controller.SelectedRecordCount - 1 do begin
      for j := 0 to GridView.ColumnCount - 1 do begin
        ClipboardText := ClipboardText +
          VarToStr(GridView.Controller.SelectedRecords[i].Values[GridView.Columns[j].Index]);
        if j < GridView.ColumnCount - 1 then
          ClipboardText := ClipboardText + #9;
      end;
      ClipboardText := ClipboardText + sLineBreak;
    end;
    Clipboard.AsText := ClipboardText;
  end else begin
    ShowMessage('Wählen Sie die Tabelle aus, in der die Daten kopiert werden sollen.');
  end;
end;

{Löschen}
procedure TOptionform.LoeschenClick(Sender: TObject);
begin
  dxBarLargeButtonLoeschenClick(Sender);
end;

{Bearbeiten}
procedure TOptionform.Bearbeiten1Click(Sender: TObject);
begin
  dxBarLargeButBearbeitenClick(Sender);
end;

{Bearbeiten}
procedure TOptionform.cxGridMenuDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
 Row: Integer;
  ArchivColumnIndex: Integer;
  Archiv: boolean;
begin
  Row := ACellViewInfo.GridRecord.Index;
  if Row < 0 then
    Exit;
  ArchivColumnIndex := cxGridMenuDBTableView1.GetColumnByFieldName('Archiv').Index;
  Archiv := cxGridMenuDBTableView1.DataController.Values[Row, ArchivColumnIndex] = '1';

  if Archiv then begin
    MessageDlg('Dieser Wert ist archiviert und kann nicht bearbeitet werden.', mtWarning, [mbOK], 0);
    AHandled := True;
  end else begin
    dxBarLargeButBearbeitenClick(Sender);
  end;
end;

{FocesedRecord}
procedure TOptionform.cxGridMenuDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  IsArchived: Boolean;
  Col: TcxGridColumn;
begin
  if AFocusedRecord = nil then
    Exit;

  Col := cxGridMenuDBTableView1.GetColumnByFieldName('Archiv');
  if Col = nil then
    Exit;

  try
    IsArchived := AFocusedRecord.Values[Col.Index];
  except
    Exit;
  end;

  if IsArchived then begin
    dxBarLargeButArchivieren.Caption := 'Reaktivieren';
    dxBarLargeButArchivieren.LargeImageIndex := 19;
    Archivieren1.Caption := 'Reaktivieren';
    Archivieren1.ImageIndex := 19;
    FIsReaktivierenMode := True;
    dxBarLargeButBearbeiten.Enabled := False;
    Bearbeiten1.Enabled := False;
  end else begin
    dxBarLargeButArchivieren.Caption := 'Archivieren';
    dxBarLargeButArchivieren.LargeImageIndex := 18;
    Archivieren1.Caption := 'Archivieren';
    Archivieren1.ImageIndex := 18;
    FIsReaktivierenMode := False;
    dxBarLargeButBearbeiten.Enabled := True;
    Bearbeiten1.Enabled := True;
  end;
end;



procedure TOptionform.cxGridMenuDBTableView1KategorieGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
  if ACellViewInfo.Value = '0' then begin
      AHintText := 'Man';
  end;
    if ACellViewInfo.Value = '1' then begin
      AHintText := 'Frau';
  end;
  if ACellViewInfo.Value = '2' then begin
      AHintText := 'Divers';
  end;
    if ACellViewInfo.Value = '3' then begin
      AHintText := 'Andere';
  end;

  if ACellViewInfo.Value = '4' then begin
      AHintText := 'Assistent';
  end;
    if ACellViewInfo.Value = '5' then begin
      AHintText := 'Professor';
  end;
  if ACellViewInfo.Value = '6' then begin
      AHintText := 'Doktor';
  end;
    if ACellViewInfo.Value = '7' then begin
      AHintText := 'Andere';
  end;

    if ACellViewInfo.Value = '8' then begin
      AHintText := 'Privat';
  end;
    if ACellViewInfo.Value = '9' then begin
      AHintText := 'Geshäftlich';
  end;
  if ACellViewInfo.Value = '10' then begin
      AHintText := 'Haus';
  end;
    if ACellViewInfo.Value = '11' then begin
      AHintText := 'Andere';
  end;

  if ACellViewInfo.Value = '12' then begin
      AHintText := 'Privat';
  end;
    if ACellViewInfo.Value = '13' then begin
      AHintText := 'Geschäftlich';
  end;
  if ACellViewInfo.Value = '14' then begin
      AHintText := 'Haus';
  end;
    if ACellViewInfo.Value = '15' then begin
      AHintText := 'Andere';
  end;



end;

procedure TOptionform.cxGridMenuDBTableView1SelectionChanged(
  Sender: TcxCustomGridTableView);
var
  SelectedRowCount: Integer;
begin
  SelectedRowCount := cxGridMenuDBTableView1.Controller.SelectedRecordCount;

  // cxBarEditItemInfo
  if SelectedRowCount > 0 then
    cxBarEditItemWahlen.EditValue := 'Zeilen ausgewählt: ' + IntToStr(SelectedRowCount)
  else
    cxBarEditItemWahlen.EditValue := ' ';
end;


procedure TOptionform.cxGridMenuExit(Sender: TObject);
begin
  cxGridMenuDBTableView1.Controller.ClearSelection;
end;

{SelectData}
procedure GetSelectedData(AGridView: TcxGridDBTableView; ASelectedIDs: TList<Integer>);
var
  i, RecIndex: Integer;
  DataController: TcxCustomDataController;
begin
  ASelectedIDs.Clear;
  DataController := AGridView.DataController;

  for i := 0 to AGridView.Controller.SelectedRowCount - 1 do begin
    RecIndex := AGridView.Controller.SelectedRecords[i].RecordIndex;
    ASelectedIDs.Add(DataController.Values[RecIndex, AGridView.GetColumnByFieldName('ID').Index]);
  end;
end;


{Archivieren}
procedure TOptionForm.dxBarLargeButArchivierenClick(Sender: TObject);
var
  SelectedIDs: TList<Integer>;
  SelectedNames: TList<string>;
  Action, ActionCapitalized, MsgText: string;
  I: Integer;
  Query: TMSQuery;
  UserChoice: Integer;
  WertID, Bezeichnung, IDListStr: string;
  MyMesBox: TMyMesBox;
begin
  SelectedIDs := TList<Integer>.Create;
  SelectedNames := TList<string>.Create;
  try
    GetSelectedData(cxGridMenuDBTableView1, SelectedIDs);

    if SelectedIDs.Count = 0 then begin
      MyMesBox := TMyMesBox.Create(nil);
      try
        MyMesBox.Caption := 'Fehler';
        MyMesBox.ShowMessage(_KeineDatensaetzevorhanden, mtError, [mbOK]);
      finally
        MyMesBox.Free;
      end;
      cxBarEditItemInfo.EditValue := 'Es sind keine Datensätze für die Aktion vorhanden';
      Timer1.Enabled := true;
      Exit;
    end;

    Query := TMSQuery.Create(nil);
    try
      Query.Connection := MsConnection1;

      if FIsReaktivierenMode then
        Action := 'reaktivieren'
      else
        Action := 'archivieren';

      ActionCapitalized := AnsiUpperCase(Copy(Action, 1, 1)) + Copy(Action, 2, Length(Action) - 1);

      for I := 0 to SelectedIDs.Count - 1 do begin
        Query.SQL.Text := 'SELECT Bezeichnung, WertID FROM Kombinierttabelle WHERE WertID = :ID';
        Query.ParamByName('ID').AsInteger := SelectedIDs[I];
        Query.Open;

        if not Query.IsEmpty then begin
          Bezeichnung := Query.FieldByName('Bezeichnung').AsString;
          WertID := Query.FieldByName('WertID').AsString;
        end else begin
          Bezeichnung := '(Unbekannt)';
          WertID := '(Unbekannt)';
        end;
        Query.Close;

        SelectedNames.Add(Bezeichnung);
      end;

      IDListStr := FormatIDList(SelectedIDs, SelectedNames, 5);
      if SelectedIDs.Count = 1 then
       MsgText := Format('Wollen Sie den ausgewählten Bezeichnung mit der folgenden %s"Wert" wirklich %s?' + SLineBreak + '[%s]',
      [SLineBreak, Action, IDListStr])

      else
      MsgText := Format('Wollen Sie die ausgewählten Bezeichnungen mit den folgenden %s"Werte" wirklich %s?' + SLineBreak + '[%s]',
      [SLineBreak, Action, IDListStr]);

      MyMesBox := TMyMesBox.Create(nil);
      try
        if FIsReaktivierenMode then
          MyMesBox.Caption := 'Reaktivieren'
        else
          MyMesBox.Caption := 'Archivieren';

        UserChoice := MyMesBox.ShowMessage(MsgText, mtConfirmation, [mbYes, mbNo]);
      finally
        MyMesBox.Free;
      end;

      if UserChoice = mrYes then begin
        cxBarEditItemInfo.EditValue := 'Die Werte wurden ' + Action;
        Timer1.Enabled := true;

        for I := 0 to SelectedIDs.Count - 1 do begin
          Query.SQL.Text := 'UPDATE Kombinierttabelle SET IsArchived = :Archiv WHERE WertID = :ID';
          Query.ParamByName('Archiv').AsInteger := Integer(not FIsReaktivierenMode);
          Query.ParamByName('ID').AsInteger := SelectedIDs[I];
          Query.ExecSQL;
        end;

        RefreshGridData;
      end else begin
        cxBarEditItemInfo.EditValue := 'Die Archivierung wurde abgebrochen';
        Timer1.Enabled := true;
      end;
    finally
      Query.Free;
    end;
  finally
    SelectedIDs.Free;
    SelectedNames.Free;
  end;
end;

{Ausblenden}
procedure TOptionform.dxBarLargeButAusblendenClick(Sender: TObject);
begin
   if dxBarLargeButAusblenden.Caption ='Ausblenden'  then begin
    dxLayoutGroup2.Visible := False;
    dxLayoutGroup1.Visible := True;
    dxLayoutControlOptionsformGroup_Root.AlignVert := avClient;
    dxLayoutControlOptionsformGroup_Root.AlignHorz := ahClient;
    dxLayoutControlOptionsformGroup_Root.UpdateAction(Action);
    FViewMode := 'Nur Tabelle';
    dxBarLargeButAusblenden.Caption:= 'Einblenden';
   end else begin
    dxLayoutGroup2.Visible := True;
    dxLayoutGroup1.Visible := True;
    FViewMode := 'Alle Tabelle';
    dxBarLargeButAusblenden.Caption:= 'Ausblenden';
   end;

end;

{Suchen}
procedure TOptionform.dxBarLargeButSuchenClick(Sender: TObject);
var
  Suchbegriffe: array[0..1] of string;
  SQLQuery: string;
  FilterTyp: string;
  FilterCondition: string;
  FoundCount: Integer;
begin
  if FTableName = '' then begin
    MessageDlg('Tabelle nicht angegeben!', mtError, [mbOK], 0);
    Exit;
  end;

  AcBearbeiten.Enabled := True;
  AcArchivieren.Enabled := True;
  AcLoeschen.Enabled := True;

  // FilterTyp bestimmen
  if FTableName = 'Anrede' then
    FilterTyp := 'ANR'
  else if FTableName = 'Titel' then
    FilterTyp := 'TIT'
  else if FTableName = 'Telefontypen' then
    FilterTyp := 'TEL'
  else if FTableName = 'Emailtypen' then
    FilterTyp := 'EMA'
  else
    raise Exception.Create('Unbekannter Tabellenname: ' + FTableName);

  Suchbegriffe[0] := Trim(EditID.Text);
  Suchbegriffe[1] := Trim(EditName.Text);

  // Archiv-Filter setzen
  case cxComboBoxArchiv.ItemIndex of
    0: begin
         FilterCondition := 'IsArchived = 0';
         FIsReaktivierenMode := False;
         dxBarLargeButArchivieren.Caption := 'Archivieren';
         dxBarLargeButArchivieren.LargeImageIndex := 18;
         Archivieren1.Caption := 'Archivieren';
         Archivieren1.ImageIndex := 18;
         cxBarEditItemInfo.EditValue := 'Aktuelle Werte';
       end;
    1: begin
         FilterCondition := '1 = 1';
         FIsReaktivierenMode := False;
         dxBarLargeButArchivieren.Caption := 'Archivieren';
         cxBarEditItemInfo.EditValue := 'Alle Werte';
       end;
    2: begin
         FilterCondition := 'IsArchived = 1';
         FIsReaktivierenMode := True;
         dxBarLargeButArchivieren.Caption := 'Reaktivieren';
         dxBarLargeButArchivieren.LargeImageIndex := 19;
         Archivieren1.Caption := 'Reaktivieren';
         Archivieren1.ImageIndex := 19;
         cxBarEditItemInfo.EditValue := 'Archivierte Werte';
       end;
    else FilterCondition := '1 = 1';
  end;

  // SQL-Abfrage zusammenstellen
  SQLQuery := Format(
    'SELECT WertID AS ID, Bezeichnung,IconIndex AS Icon, IsArchived AS Archiv FROM Kombinierttabelle WHERE Typ = :FilterTyp AND %s',
    [FilterCondition]
  );

  if Suchbegriffe[0] <> '' then
    SQLQuery := SQLQuery + ' AND WertID = :WertID';

  if Suchbegriffe[1] <> '' then
    SQLQuery := SQLQuery + ' AND Bezeichnung LIKE :Bezeichnung';

  try
    TGlobalData.TMSQuery1.Close;
    TGlobalData.TMSQuery1.SQL.Text := SQLQuery;
    TGlobalData.TMSQuery1.ParamByName('FilterTyp').AsString := FilterTyp;

    if Suchbegriffe[0] <> '' then
      TGlobalData.TMSQuery1.ParamByName('WertID').AsString := Suchbegriffe[0];

    if Suchbegriffe[1] <> '' then
      TGlobalData.TMSQuery1.ParamByName('Bezeichnung').AsString := '%' + Suchbegriffe[1] + '%';

    TGlobalData.TMSQuery1.Open;
    FoundCount := TGlobalData.TMSQuery1.RecordCount;

    if FoundCount > 0 then begin
      TMSQueryForGrid.Close;
      TMSQueryForGrid.SQL.Text := SQLQuery;
      TMSQueryForGrid.ParamByName('FilterTyp').AsString := FilterTyp;

      if Suchbegriffe[0] <> '' then
        TMSQueryForGrid.ParamByName('WertID').AsString := Suchbegriffe[0];

      if Suchbegriffe[1] <> '' then
        TMSQueryForGrid.ParamByName('Bezeichnung').AsString := '%' + Suchbegriffe[1] + '%';

      TMSQueryForGrid.Open;
      cxBarEditItemInfo.EditValue := 'Die Werte wurden gesucht...';
      Timer1.Enabled := True;
    end else begin
      cxBarEditItemInfo.EditValue := 'Keine Übereinstimmungen gefunden.';
      TMSQueryForGrid.Close;
    end;

    UpdateColumnCaptions;

  except
    on E: Exception do begin
      MessageDlg('Fehler bei der Suche: ' + E.Message, mtError, [mbOK], 0);
    end;
  end;
end;


{Create}
procedure TOptionForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  View2Mode: string;
begin
  View2Mode := FViewMode;
  TMSSettings.SaveView2Mode(MSQuery1, View2Mode);
end;


procedure TOptionform.FormCreate(Sender: TObject);
begin
  TGlobalData.TMSQuery1 :=  MSQuery1;
  cxGridMenuDBTableView1.DataController.RecordCount := 0;
  GlobalArchivComboBox(cxComboBoxArchiv);
end;

{KeyDown}
procedure TOptionform.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //Strg + N  Neu
//  if (Key=Ord('N')) and  (ssCtrl in Shift ) then begin
//    dxBarlargeButNeuClick(Sender);
//    Key:=0;
//  end;
//
// //Strg + Z Zurücksetzen
//  if (Key=Ord('Z')) and  (ssCtrl in Shift ) then begin
//    dxBarlargeButNeuClick(Sender);
//    Key:=0;
//  end;
// // STRG + Entf = Löschen
//  if (Key = ord('D')) and (ssCtrl in Shift) and not (ssShift in Shift) then begin
//    dxBarlargeButtonLoeschenClick(Sender);
//    Key := 0;
//  end;
//  // STRG + ALT + P = Drücken
//  if (Key = Ord('P')) and (ssCtrl in Shift) and (ssAlt in Shift) then begin
//    Key := 0;
//  end;
//  // Umschalt + Entf = Archivieren
//  if (Key = VK_DELETE) and (ssShift in Shift) and not (ssCtrl in Shift) then begin
//    dxBarlargeButArchivierenClick(Sender);
//    Key := 0;
//  end;
//  // ESC = Close
//  if (Key = VK_ESCAPE) then begin
//    dxBarlargeBtSchliessenClick(Sender);
//    Key := 0;
//  end;
end;

{Neu daten hinzufügen}
procedure TOptionform.NeuhinzufuegenClick(Sender: TObject);
begin
 dxBarLargeButNeuClick(Sender);
end;

{Suchen}
procedure TOptionform.SuchenClick(Sender: TObject);
begin
  dxBarLargeButSuchenClick(Sender);
end;

procedure TOptionform.Timer1Timer(Sender: TObject);
begin
  cxBarEditItemInfo.EditValue := '';
  Timer1.Enabled := False;
end;

{Zurück}
procedure TOptionform.Zurcksetzen1Click(Sender: TObject);
begin
  dxBarLargeButZurueckClick(Sender);
end;

{ShowUsedContacts}
procedure ShowUsedContacts(const WertIDs: TArray<Integer>; const Bezeichnungen: TArray<String>; const TableName: String);
var
  Startliste: TStartliste;
  BezeichnungList, SQLCondition: string;
  i: Integer;
begin
  if Length(Bezeichnungen) = 0 then Exit;

  Startliste := TStartliste.Create(nil);
  Startliste.FUsedContactsMode := True;
  Startliste.FUsedContactsBezeichnungen := Bezeichnungen;
  Startliste.FUsedContactsTableName := TableName;

  try
    with Startliste.MyQueryKontakt do begin
      Close;

      if Length(Bezeichnungen) = 1 then begin

        SQL.Text := 'SELECT * FROM KontaktView ' +
                    'WHERE Anrede = :Bezeichnung OR Titel = :Bezeichnung OR ' +
                    'Telefontyp = :Bezeichnung OR Telefontyp2 = :Bezeichnung OR Telefontyp3 = :Bezeichnung OR ' +
                    'Emailtyp = :Bezeichnung OR Emailtyp2 = :Bezeichnung OR Emailtyp3 = :Bezeichnung';
        ParamByName('Bezeichnung').AsString := Bezeichnungen[0];
      end else begin

        BezeichnungList := '';
        for i := 0 to High(Bezeichnungen) do begin
          if i > 0 then BezeichnungList := BezeichnungList + ', ';
          BezeichnungList := BezeichnungList + QuotedStr(Bezeichnungen[i]);
        end;

        SQLCondition := Format(
          '(Anrede IN (%s) OR Titel IN (%s) OR ' +
          'Telefontyp IN (%s) OR Telefontyp2 IN (%s) OR Telefontyp3 IN (%s) OR ' +
          'Emailtyp IN (%s) OR Emailtyp2 IN (%s) OR Emailtyp3 IN (%s))',
          [BezeichnungList, BezeichnungList, BezeichnungList, BezeichnungList, BezeichnungList, BezeichnungList, BezeichnungList, BezeichnungList]);

        SQL.Text := 'SELECT * FROM KontaktView WHERE ' + SQLCondition;
      end;

      Open;

      if RecordCount = 0 then begin
        ShowMessage('Fehler: Keine Daten gefunden.');
        Exit;
      end;

      Refresh;
    end;

    if Assigned(Startliste.dxLayoutGroup2) then
      Startliste.dxLayoutGroup2.CaptionOptions.Text := Format('Kontaktdaten (%d)', [Startliste.MyQueryKontakt.RecordCount]);

    if Length(Bezeichnungen) = 1 then
      StartListe.Caption := Format('Kontaktliste [Nicht löschbare %s : %s]', [TableName, Bezeichnungen[0]])
    else
      StartListe.Caption := Format('Kontaktliste [Nicht löschbare %s: %s]', [TableName, String.Join(', ', Bezeichnungen)]);

    Startliste.StartListeTimer.Enabled := False;
    StartListe.cxBarEditItemGefunden.EditValue := Format('Gefundene Kontaktdaten: %d', [Startliste.MyQueryKontakt.RecordCount]);

    Startliste.StringGrid1DBBandedTableView1.OptionsData.Editing := False;
    StartListe.cxComboBoxArchiv.ItemIndex := 1;
    Startliste.cxComboboxArchiv.Enabled := False;
    StartListe.AcNeu.Enabled := False;
    StartListe.AcBearbeiten.Enabled := False;
    StartListe.AcSuchen.Enabled := False;
    StartListe.AcZurueck.Enabled := False;
    StartListe.AcArchivieren.Enabled := False;
    Startliste.AcLoeschen.Enabled := False;
    StartListe.dxBarLargeButQualityDaten.Enabled :=False;
    Startliste.EnableDblClick := False;
//  StartListe.dxLayoutGroup1.Visible := False;
    StartListe.cxPageControlSuchParameter.Visible:=False;
    StartListe.dxLayoutControlKategorie.Visible:=True;

    StartListe.cxLabelFarbe.Visible:=False;
    Startliste.SetTabMode(TtDeaktiv);
    StartListe.dxBarLargeButAusblenden.Enabled:=False;
    StartListe.dxBarLargeButtonKalender.Enabled:=False;
    StartListe.dxBarSubItemOption.Enabled:=False;
    StartListe.Height := StartListe.Height - Startliste.cxPageControlSuchParameter.Height - 135;
    Startliste.cxBarEditItemStatus.EditValue := 'Archivzustand: Alle';
    Startliste.ShowModal;
  finally
    Startliste.EnableDblClick := True;
    Startliste.Free;
  end;
end;


{Löschen}
procedure TOptionForm.dxBarLargeButtonLoeschenClick(Sender: TObject);
var
  SelectedIDs, UnableToDelete, DeletableIDs: TList<Integer>;
  SelectedNames, DeletableNames, NotDeletableNames: TList<string>;
  NotDeletableDetails: TList<string>;
  MsgText, IDListStr: string;
  CountCheck, I, UserChoice: Integer;
  Query: TMSQuery;
  Bezeichnung: string;
  IsSingle: Boolean;
  MyMesBox: TMyMesBox;
begin
  SelectedIDs := TList<Integer>.Create;
  UnableToDelete := TList<Integer>.Create;
  DeletableIDs := TList<Integer>.Create;
  SelectedNames := TList<string>.Create;
  DeletableNames := TList<string>.Create;
  NotDeletableNames := TList<string>.Create;
  NotDeletableDetails := TList<string>.Create;

  try
    GetSelectedData(cxGridMenuDBTableView1, SelectedIDs);

    if SelectedIDs.Count = 0 then begin
      MyMesBox := TMyMesBox.Create(nil);
      try
        MyMesBox.Caption := 'Fehler';
        MyMesBox.ShowMessage(_KeineDatensaetzevorhanden, mtError, [mbOK]);
      finally
        MyMesBox.Free;
      end;
      cxBarEditItemInfo.EditValue := 'Es sind keine Datensätze für die Aktion vorhanden';
      Timer1.Enabled := true;
      Exit;
    end;

    Query := TMSQuery.Create(nil);
    try
      Query.Connection := MsConnection1;

      for I := 0 to SelectedIDs.Count - 1 do begin
        Query.SQL.Text := 'SELECT Bezeichnung FROM Kombinierttabelle WHERE WertID = :ID';
        Query.ParamByName('ID').AsInteger := SelectedIDs[I];
        Query.Open;

        if not Query.IsEmpty then
          Bezeichnung := Query.FieldByName('Bezeichnung').AsString
        else
          Bezeichnung := '(Unbekannt)';
        Query.Close;

        SelectedNames.Add(Bezeichnung);

        Query.SQL.Text := 'SELECT COUNT(*) FROM Kontakt ' +
                          'WHERE ANREDEID = :WertID OR TITELID = :WertID OR ' +
                          'TelefontypID = :WertID OR Telefontyp2ID = :WertID OR Telefontyp3ID = :WertID OR ' +
                          'EmailtypID = :WertID OR Emailtyp2ID = :WertID OR Emailtyp3ID = :WertID';
        Query.ParamByName('WertID').AsInteger := SelectedIDs[I];
        Query.Open;
        CountCheck := Query.Fields[0].AsInteger;
        Query.Close;

        if CountCheck > 0 then begin
          UnableToDelete.Add(SelectedIDs[I]);
          NotDeletableNames.Add(Bezeichnung);
          NotDeletableDetails.Add(Format('%s(%d)', [Bezeichnung, SelectedIDs[I]]));
        end else begin
          DeletableIDs.Add(SelectedIDs[I]);
          DeletableNames.Add(Bezeichnung);
        end;
      end;

      if DeletableIDs.Count > 0 then begin
        IsSingle := DeletableIDs.Count = 1;
        IDListStr := FormatIDList(DeletableIDs, DeletableNames, 5);

                if IsSingle then
        MsgText := Format('Möchten Sie die ausgewählte Bezeichnung mit der folgenden "Wert" wirklich löschen?' + SLineBreak + '[%s]',
                          [IDListStr])
      else
        MsgText := Format('Möchten Sie die ausgewählten Bezeichnungen mit den folgenden "Werte" wirklich löschen?' + SLineBreak + '[%s]',
                          [IDListStr]);
        MyMesBox := TMyMesBox.Create(nil);
        try
          MyMesBox.Caption := 'Löschen';
          UserChoice := MyMesBox.ShowMessage(MsgText, mtConfirmation, [mbYes, mbNo]);
        finally
          MyMesBox.Free;
        end;

        if UserChoice = mrYes then begin
          for I := 0 to DeletableIDs.Count - 1 do begin
            Query.SQL.Text := 'DELETE FROM Kombinierttabelle WHERE WertID = :ID';
            Query.ParamByName('ID').AsInteger := DeletableIDs[I];
            Query.ExecSQL;
          end;

          cxBarEditItemInfo.EditValue := 'Die Werte wurden gelöscht';
          Timer1.Enabled := true;
          RefreshGridData;
        end else begin
          cxBarEditItemInfo.EditValue := 'Die Löschung wurde abgebrochen';
          Timer1.Enabled := true;
        end;
      end;

      if UnableToDelete.Count > 0 then begin
        IsSingle := UnableToDelete.Count = 1;
       if isSingle then

        MsgText := Format('Die folgende Bezeichnung %s kann nicht gelöscht werden, da sie verwendet werden!' + SLineBreak +
                  'Möchten Sie die betroffenen Kontakte anzeigen?',
                  [String.Join(', ', NotDeletableDetails.ToArray)])
        else
        MsgText := Format('Die folgenden Bezeichnungen %s können nicht gelöscht werden, da sie verwendet werden!' + SLineBreak +
                  'Möchten Sie die betroffenen Kontakte anzeigen?',
                  [String.Join(', ', NotDeletableDetails.ToArray)]);


        MyMesBox := TMyMesBox.Create(nil);
        try
          MyMesBox.Caption := 'Kontakte anzeigen';
          UserChoice := MyMesBox.ShowMessage(MsgText, mtConfirmation, [mbYes, mbNo]);
        finally
          MyMesBox.Free;
        end;

        if UserChoice = mrYes then
          ShowUsedContacts(UnableToDelete.ToArray, NotDeletableNames.ToArray, FActiveTableName);
      end;

      if DeletableIDs.Count = 0 then begin
        cxBarEditItemInfo.EditValue := 'Kein Eintrag kann gelöscht werden!';
        Timer1.Enabled:=true;
        Exit;
      end;

    finally
      Query.Free;
    end;
  finally
    SelectedIDs.Free;
    UnableToDelete.Free;
    DeletableIDs.Free;
    SelectedNames.Free;
    DeletableNames.Free;
    NotDeletableNames.Free;
    NotDeletableDetails.Free;
  end;
end;

{Tabelle zu finden}
function TOptionForm.GetTypByTableName(const TableName: string): string;
begin
  if SameText(TableName, 'Anrede') then
    Result := 'ANR'
  else if SameText(TableName, 'Titel') then
    Result := 'TIT'
  else if SameText(TableName, 'Telefontypen') then
    Result := 'TEL'
  else if SameText(TableName, 'Emailtypen') then
    Result := 'EMA'
  else
    raise Exception.Create('Unbekannte Tabelle: ' + TableName);
end;


procedure TOptionform.UpdateColumnCaptions;
var
  RowCount: Integer;
begin
  if Assigned(TMSQueryforGrid) and TMSQueryforGrid.Active then begin
    TMSQueryforGrid.Last;
    RowCount := TMSQueryforGrid.RecordCount
  end else
    RowCount := 0;

  if Assigned(dxLayoutGroup1) then
    dxLayoutGroup1.CaptionOptions.Text := Format('Menü Werte (%d)', [ RowCount]);
    cxBarEditItemGefunden.EditValue:='Gefundene Werte: '+ intTostr(RowCount);
end;



procedure TOptionForm.RefreshGridData;
var
  RemainingCount: Integer;
begin
  TMSQueryforGrid.Refresh;

  RemainingCount := TMSQueryforGrid.RecordCount;

  cxBarEditItemGefunden.EditValue := Format('Gefundene Werte: %d', [RemainingCount]);
  dxLayoutGroup1.CaptionOptions.Text := Format('Menü Werte (%d)', [RemainingCount]);

  cxBarEditItemInfo.EditValue := 'Daten aktualisiert';
  Timer1.Enabled := True;
end;


end.


