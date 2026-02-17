unit Mydatenqframe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, dxPanel,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, dxLayoutContainer, cxCheckBox,
  cxClasses, dxLayoutControl, dxBarBuiltInMenu, cxPC, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox,myPapierkorb, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.ComCtrls, Vcl.ToolWin, MemDS,
  DBAccess, MSAccess, cxMemo,KVDataModule,MyNotizform,MyMessageBox, dxBar;

type
  TFrameDatenq = class(TFrame)
    dxPanelDatenq: TdxPanel;
    dxLayoutControlCheck: TdxLayoutControl;
    dxLayoutControlCheckGroup_Root1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    cxGridNotizen: TcxGrid;
    cxGridNotizenDBTableViewNotizen: TcxGridDBTableView;
    cxGridNotizenDBTableViewNotizenNotizID: TcxGridDBColumn;
    cxGridNotizenDBTableViewNotizenPersonID: TcxGridDBColumn;
    cxGridNotizenDBTableViewNotizenAutor: TcxGridDBColumn;
    cxGridNotizenDBTableViewNotizenKategorie: TcxGridDBColumn;
    cxGridNotizenDBTableViewNotizenInhalt: TcxGridDBColumn;
    cxGridNotizenDBTableViewNotizenErstellungsdatum: TcxGridDBColumn;
    cxGridNotizenDBTableViewNotizenLetzteAenderung: TcxGridDBColumn;
    cxGridNotizenLevel1: TcxGridLevel;
    dxLayoutGroupNotizen: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    ToolBarInfo: TToolBar;
    cxTextEditGefunden: TcxTextEdit;
    cxTextEditInfo: TcxTextEdit;
    MSQueryNotizen: TMSQuery;
    MSDataSourceNotizen: TMSDataSource;
    MyConnectionNotizen: TMSConnection;
    EditNotizen: TcxMemo;
    ToolBar1: TToolBar;
    dxLayoutItem3: TdxLayoutItem;
    ToolButtonNeu: TToolButton;
    ToolButtonBearbeiten: TToolButton;
    ToolButtonLoeschen: TToolButton;
    ToolButtonExport: TToolButton;
    procedure cxGridNotizenDBTableViewNotizenSelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure cxGridNotizenDBTableViewNotizenCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ToolButtonNeuClick(Sender: TObject);
    procedure ToolButtonBearbeitenClick(Sender: TObject);
    procedure ToolButtonLoeschenClick(Sender: TObject);
    procedure ToolButtonExportClick(Sender: TObject);
  private

  FPersonID: Integer;
  FReadOnlyMode: Boolean;
  FOwnerTab: TcxTabSheet;

  public
      function UpdateColumnCaptions: Integer;
      procedure InitPerson(APersonID: Integer);
      procedure LadeNotizenFuerKontakt(const APersonID: Integer);
      procedure SetPersonID(AID: Integer);
      procedure OpenNotizForm(ANotizID: Integer; IsNew: Boolean);
      procedure OpenNotizBearbeitenForm;
      procedure SetOwnerTab(ATab: TcxTabSheet);
      procedure UpdateTabCaption(const BaseTitle: string; ItemCount: Integer);
      property ReadOnlyMode: Boolean read FReadOnlyMode write FReadOnlyMode;

      var FoundCount:integer;
  end;

implementation

uses Kontakt;

{$R *.dfm}

procedure TFrameDatenq.SetOwnerTab(ATab: TcxTabSheet);
begin
  FOwnerTab := ATab;
end;

procedure TFrameDatenq.UpdateTabCaption(const BaseTitle: string; ItemCount: Integer);
begin
  if Assigned(FOwnerTab) then
    FOwnerTab.Caption := Format('%s (%d)', [BaseTitle, ItemCount]);
end;


{SetPersonID}
procedure TFrameDatenq.SetPersonID(AID: Integer);
begin
    FPersonID := AID;
end;


{Bearbeiten}
procedure TFrameDatenq.cxGridNotizenDBTableViewNotizenCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   OpenNotizBearbeitenForm;
   AHandled := True;
end;

{Bearbeiten}
procedure TFrameDatenq.OpenNotizBearbeitenForm;
var
  NotizID, PersonID: Variant;
  RowIndex, ColIndex: Integer;
  MyFormNotizen: TFormNotiz;
begin
  RowIndex := cxGridNotizenDBTableViewNotizen.Controller.FocusedRecordIndex;
  if RowIndex < 0 then begin
    ShowMessage('Bitte wählen Sie eine Notiz aus.');
    Exit;
  end;

  ColIndex := cxGridNotizenDBTableViewNotizen.GetColumnByFieldName('NotizID').Index;
  if ColIndex < 0 then begin
    ShowMessage('Spalte "NotizID" nicht gefunden.');
    Exit;
  end;
  NotizID := cxGridNotizenDBTableViewNotizen.DataController.Values[RowIndex, ColIndex];
  if VarIsNull(NotizID) then begin
    ShowMessage('Ungültige NotizID.');
    Exit;
  end;

  ColIndex := cxGridNotizenDBTableViewNotizen.GetColumnByFieldName('PersonID').Index;
  if ColIndex < 0 then begin
    ShowMessage('Spalte "PersonID" nicht gefunden.');
    Exit;
  end;
  PersonID := cxGridNotizenDBTableViewNotizen.DataController.Values[RowIndex, ColIndex];
  if VarIsNull(PersonID) then begin
    ShowMessage('Ungültige PersonID.');
    Exit;
  end;

  MyFormNotizen := TFormNotiz.Create(Self);
  try
    MyFormNotizen.Caption := '[Notizen] Bearbeiten';
    MyFormNotizen.InitPersonAndNotiz(PersonID, NotizID);
    MyFormNotizen.ReadOnlyMode := FReadOnlyMode;
    MyFormNotizen.ShowModal;
  finally
    MyFormNotizen.Free;
  end;
    cxGridNotizenDBTableViewNotizen.DataController.DataSet.Close;
    cxGridNotizenDBTableViewNotizen.DataController.DataSet.Open;
    cxGridNotizenDBTableViewNotizen.DataController.Refresh;
end;

{Selection Changed}
procedure TFrameDatenq.cxGridNotizenDBTableViewNotizenSelectionChanged(
  Sender: TcxCustomGridTableView);
var
  SelectedRowCount: Integer;
begin
  SelectedRowCount := cxGridNotizenDBTableViewNotizen.Controller.SelectedRecordCount;
  if (SelectedRowCount > 0) and (cxGridNotizenDBTableViewNotizen.Controller.FocusedRecordIndex <> -1) then
    cxTextEditInfo.EditValue := 'Zeilen ausgewählt: ' + IntToStr(SelectedRowCount)
  else
    cxTextEditInfo.EditValue := '';
end;


procedure TFrameDatenq.InitPerson(APersonID: Integer);
begin

end;

{Update ColumnCaptoins}
function TFrameDatenq.UpdateColumnCaptions: Integer;
begin
  Result := MSQueryNotizen.RecordCount;
end;

{ladeNotizen}
procedure TFrameDatenq.LadeNotizenFuerKontakt(const APersonID: Integer);
var NotizenCount:integer;
begin
  MSQueryNotizen.Close;
  MSQueryNotizen.SQL.Text :=
    'SELECT NotizID, Inhalt, Autor, Kategorie, Erstellungsdatum, LetzteAenderung, PersonID ' +
    'FROM KontaktNotizen WHERE PersonID = :PersonID';
  MSQueryNotizen.ParamByName('PersonID').AsInteger := APersonID;
  MSQueryNotizen.Open;

//  if Owner is TKontaktMenu then
//    TKontaktMenu(Owner).LadeNotizenFuerKontakt(APersonID);

  NotizenCount := MSQueryNotizen.RecordCount;
  UpdateTabCaption('Notizen', NotizenCount);
  FoundCount := UpdateColumnCaptions;
  cxTextEditGefunden.EditValue := 'Gefundene Kontaktnotizen: ' + IntToStr(FoundCount);
end;


{Button Neu}
procedure TFrameDatenq.ToolButtonNeuClick(Sender: TObject);
var
  FormNotiz: TFormNotiz;
begin
  if FPersonID <= 0 then  begin
    ShowMessage('Kein gültiger Kontakt ausgewählt.');
    Exit;
  end;
  FormNotiz := TFormNotiz.Create(Self);
  try
      FormNotiz.InitPersonAndNotiz(FPersonID, 0);
    FormNotiz.Caption := 'Neu [Notizen]';

    if FormNotiz.ShowModal = mrOk then  begin
      LadeNotizenFuerKontakt(FPersonID);
    end;
  finally
    FormNotiz.Free;
  end;
end;

{Bearbeiten}
procedure TFrameDatenq.ToolButtonBearbeitenClick(Sender: TObject);
begin
   OpenNotizBearbeitenForm;
end;

{Löschen}
procedure TFrameDatenq.ToolButtonLoeschenClick(Sender: TObject);
  var
  i: Integer;
  NotizID: Integer;
  qryDelete: TMSQuery;
  SelCount: Integer;
  MyMesBox: TMyMesBox;
  UserChoice: Integer;
  MsgText: string;
begin
  SelCount := cxGridNotizenDBTableViewNotizen.Controller.SelectedRowCount;

  MyMesBox := TMyMesBox.Create(nil);

  if SelCount = 0 then  begin
      MyMesBox.Caption := 'Fehler';
      MyMesBox.ShowMessage('Keine Notizen zum Löschen ausgewählt.', mtError, [mbYes]);
    Exit;
  end;

  MsgText := Format('Möchten Sie die %d ausgewählten Notizen wirklich löschen?', [SelCount]);

  try
    MyMesBox.Caption := 'Löschen';
    UserChoice := MyMesBox.ShowMessage(MsgText, mtConfirmation, [mbYes, mbNo]);
  finally
    MyMesBox.Free;
  end;

  if UserChoice <> mrYes then
    Exit;

  qryDelete := TMSQuery.Create(nil);
  try
    qryDelete.Connection := MyDataModule.MyConnections;
    qryDelete.SQL.Text := 'DELETE FROM KontaktNotizen WHERE NotizID = :ID';

    for i := 0 to SelCount - 1 do    begin
      NotizID := cxGridNotizenDBTableViewNotizen.DataController.Values[
        cxGridNotizenDBTableViewNotizen.Controller.SelectedRows[i].RecordIndex,
        cxGridNotizenDBTableViewNotizen.GetColumnByFieldName('NotizID').Index
      ];

      qryDelete.ParamByName('ID').AsInteger := NotizID;
      qryDelete.ExecSQL;
    end;

    //LadeNotizenFuerKontakt(FPersonID);
    LadeNotizenFuerKontakt(FPersonID);
  finally
    qryDelete.Free;
  end;
end;



procedure TFrameDatenq.ToolButtonExportClick(Sender: TObject);
  var
  SaveDialog: TSaveDialog;
  CSVFile: TextFile;
  i: Integer;
  Zeile: string;
begin
  if  MSQueryNotizen.IsEmpty then begin
      MyMesBox := TMyMesBox.Create(nil);
      try
        MyMesBox.Caption := 'Fehler';
        MyMesBox.ShowMessage('Es gibt keine Notizen zum Exportieren', mtConfirmation, [mbYes, mbNo]);
      finally
        MyMesBox.Free;
      end;
  Exit;
  end;

  SaveDialog := TSaveDialog.Create(nil);
  try
    SaveDialog.Filter := 'CSV-Dateien (*.csv)|*.csv';
    SaveDialog.DefaultExt := 'csv';
    SaveDialog.Title := 'Exportieren nach...';
    SaveDialog.FileName := 'NotizenExport.csv';

    if SaveDialog.Execute then begin
      AssignFile(CSVFile, SaveDialog.FileName);
      Rewrite(CSVFile);
      // Schreibe Header-Zeile
      Zeile := '';
      for i := 0 to MSQueryNotizen.FieldCount - 1 do begin
        Zeile := Zeile + MSQueryNotizen.Fields[i].FieldName;
        if i < MSQueryNotizen.FieldCount - 1 then
          Zeile := Zeile + ';';
      end;
      Writeln(CSVFile, Zeile);

      // Schreibe Datenzeilen
      MSQueryNotizen.First;
      while not MSQueryNotizen.Eof do begin
        Zeile := '';
        for i := 0 to MSQueryNotizen.FieldCount - 1 do begin
          Zeile := Zeile + MSQueryNotizen.Fields[i].AsString;
          if i < MSQueryNotizen.FieldCount - 1 then
            Zeile := Zeile + ';';
        end;
        Writeln(CSVFile, Zeile);
        MSQueryNotizen.Next;
      end;

      while not MSQueryNotizen.Eof do begin
        Zeile :='';
        for i := 0 to MSQueryNotizen.FieldCount -1  do begin
          Zeile :=Zeile + MSQueryNotizen.Fields[i].AsString;
          if i < MSQueryNotizen.FieldCount -1 then
          Zeile := Zeile + ';';
        end;
         Writeln(CSVFile,Zeile);
         MSQueryNotizen.Next;
      end;

      CloseFile(CSVFile);
    end;
  finally
    SaveDialog.Free;
  end;

end;

procedure TFrameDatenq.OpenNotizForm(ANotizID: Integer; IsNew: Boolean);
var
  PersonID: Integer;
  FormNotiz: TFormNotiz;
begin
//  if not TryStrToInt(cxBenutzerID.Text, PersonID) or (PersonID = 0) then  begin
//     MyMesBox := TMyMesBox.Create(nil);
//      MyMesBox.Caption := 'Fehler';
//      MyMesBox.ShowMessage('Kein gültiger Kontakt ausgewählt.', mtError, [mbYes]);
//      MyMesBox.Free;
//      Exit;
//  end;

  FormNotiz := TFormNotiz.Create(Self);
  try
    FormNotiz.InitPersonAndNotiz(PersonID, ANotizID);
    FormNotiz.ReadOnlyMode := Self.ReadOnlyMode;

    if IsNew then begin
      FormNotiz.SetWindowIcon(0);
      FormNotiz.NeueNotiz;
      FormNotiz.Caption := 'Neu [Notizen]';
    end else    begin
      FormNotiz.SetWindowIcon(1);
      FormNotiz.LadeNotiz;
      FormNotiz.Caption := 'Bearbeiten [Notizen]';
    end;

    if FormNotiz.ShowModal = mrOk then  begin
      MSQueryNotizen.Close;
      MSQueryNotizen.Open;
    end;
  finally
    FormNotiz.Free;
  end;

end;



end.
