unit FVIPPrioritaet;

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
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, dxLayoutContainer, cxTextEdit, cxClasses, dxLayoutControl, dxPanel,MyPapierkorb,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCurrencyEdit, cxMemo, Data.DB, MemDS, DBAccess, MSAccess,KVDataModule,cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,cxGridDBBandedTableView,dxPScxGridLayoutViewLnk,cxGridBandedTableView,MyKontaktAuswahl,MyKontaktVIPStatus,
  cxDBEdit,MyFHistoryStatus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData,
  cxCheckBox,System.UITypes,FBesondereNotiz,MyMemoform,MyVIPinfo, Vcl.ComCtrls,
  Vcl.ToolWin, System.ImageList, Vcl.ImgList, cxImageList, System.Actions,
  Vcl.ActnList;
type
  TVipStatus = record
    StatusID: Integer;
    StatusName: string;
    DiscountPercent: Double;
    StatusColor: string;
    MinRevenue: Currency;
end;

type
  TFramePrioritaet = class(TFrame)
    dxPanelPrioritaet: TdxPanel;
    dxLayoutControlPrioritaetGroup_Root: TdxLayoutGroup;
    dxLayoutControlPrioritaet: TdxLayoutControl;
    cxTextPersonalManager: TcxTextEdit;
    dxLayoutItemManager: TdxLayoutItem;
    cxLookupVipStatus: TcxLookupComboBox;
    dxLayoutItemVipStatus: TdxLayoutItem;
    cxCurrencyTotalRevenue: TcxCurrencyEdit;
    dxLayoutItemRevenue: TdxLayoutItem;
    dxLayoutGroupActions: TdxLayoutGroup;
    QueryVipStatus: TMSQuery;
    DataSourceVipStatus: TMSDataSource;
    cxTextEditGrundRabatt: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxCheckBoxAktive: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    MSQueryDiscount: TMSQuery;
    MSDataSourceDiscount: TMSDataSource;
    cxTextEditPrioritaet: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    ToolBar1: TToolBar;
    dxLayoutItem7: TdxLayoutItem;
    ToolButtonViewHistory: TToolButton;
    ToolButtonVIPPrivilegien: TToolButton;
    ToolButtonTransaktion: TToolButton;
    cxImageListPrioritaet: TcxImageList;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    PopupMenu1: TPopupMenu;
    procedure cxButtonZusatzClick(Sender: TObject);
    procedure cxButtonViewHistoryClick(Sender: TObject);
    procedure cxButtonSaveClick(Sender: TObject);
    procedure cxTextPersonalManagerDblClick(Sender: TObject);
    procedure cxLookupVipStatusDblClick(Sender: TObject);
    procedure cxLookupVipStatusPropertiesChange(Sender: TObject);
    procedure cxCheckBoxAktivePropertiesChange(Sender: TObject);
    procedure cxBtVIPPrivilegienClick(Sender: TObject);
    procedure cxButtonTransaktionClick(Sender: TObject);
private

    FCurrentVipStatus: TVipStatus;
    procedure LoadVipStatuses;
    procedure CalculateAutomaticStatus;
    procedure SetupLayout;
    //procedure ShowVipBenefits(StatusID: Integer);
    function  GetDiscountForStatus(StatusID: Integer): Double;
public
    FPersonID: Integer;
    FVipStatusQuery: TMSQuery;
    FVipStatusDataSource: TDataSource;
    BesondereNotizen:TFBesondereNotizen;
    constructor Create(AOwner: TComponent); override;
    procedure   SetPerson(PersonID: Integer);
    property    CurrentVipStatus: TVipStatus read FCurrentVipStatus;
    procedure   SaveVipData;
    procedure   LoadPersonVipData(PersonID: Integer);
    procedure   LoadVipData;
    procedure   CreateDefaultVipStatuses;
    procedure   LoadVipStatusLookup;
    function    IsValidVipStatus(StatusID: Integer): Boolean;
    procedure   ClearVipFields;
    procedure   SaveVipStatusHistory(PersonID, OldStatusID, NewStatusID: Integer);
    destructor  Destroy;  override;
    procedure   AfterConstruction; override;
    procedure   EnsureBNotizenCreated;
    procedure   ShowBesondereNotizen;
    procedure   VIPPrivilegien;
end;

implementation

{$R *.dfm}
//procedure TFramePrioritaet.ShowVipBenefits(StatusID: Integer);
//begin
//
//end;

{Save}
procedure TFramePrioritaet.cxButtonSaveClick(Sender: TObject);
begin
  SaveVipData;
  ShowMessage('VIP-Daten  erfolgreich gespeichert.');
end;



{Create}
constructor TFramePrioritaet.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FPersonID := 0;
  BesondereNotizen := nil;
  try
    LoadVipStatuses;
  except
    on E: Exception do
      ShowMessage('Constructor error: ' + E.Message);
  end;
end;

{After Construction}
procedure TFramePrioritaet.AfterConstruction;
begin
  inherited ;
  SetupLayout;
end;

{Ensure Notizen}
procedure TFramePrioritaet.EnsureBNotizenCreated;
var
  ExistingItem: TdxLayoutItem;
begin
  if Assigned(BesondereNotizen) then
    Exit;
  if not Assigned(dxLayoutControlPrioritaet) then
    Exit;
  try
    BesondereNotizen := TFBesondereNotizen.Create(Self);

    dxLayoutControlPrioritaet.BeginUpdate;
    try
      ExistingItem := dxLayoutControlPrioritaet.FindItem('dxLayoutItemVIPNotiz') as TdxLayoutItem;

      if Assigned(ExistingItem) then  begin
        ExistingItem.Control := BesondereNotizen;
      end else if Assigned(ExistingItem) then begin
            ExistingItem.Control := BesondereNotizen;
      end else  begin
          BesondereNotizen.Parent := dxLayoutControlPrioritaet;
      end;
      BesondereNotizen.Align := alClient;
      BesondereNotizen.Visible := True;
    finally
      dxLayoutControlPrioritaet.EndUpdate;
    end;
  except
    on E: Exception do
    begin
      ShowMessage('EnsureBNotizenCreated error: ' + E.Message);
      if Assigned(BesondereNotizen) then
      begin
        BesondereNotizen.Free;
        BesondereNotizen := nil;
      end;
    end;
  end;
end;

{Setup-layout}
procedure TFramePrioritaet.SetupLayout;
begin
  // Layout-Konfiguration
  dxLayoutGroupActions.Caption := 'Aktionen';

  dxLayoutItemVipStatus.Caption := 'VIP-Status';
  dxLayoutItemRevenue.Caption := 'Gesamtumsatz';
  dxLayoutItemManager.Caption := 'Personalmitarbeiter';
end;

{LoadVIP Status}
procedure TFramePrioritaet.LoadVipStatuses;
begin
  QueryVipStatus.Connection := MyDataModule.MyConnections;
  QueryVipStatus.SQL.Text :=
   'SELECT VipStatusID, StatusName, Rabatt, Farbe, MinUmsatz ' +
   'FROM VipStatus ORDER BY Prioritaet';

  QueryVipStatus.Open;

  DataSourceVipStatus.DataSet := QueryVipStatus;

  cxLookupVipStatus.Properties.ListSource := DataSourceVipStatus;
  cxLookupVipStatus.Properties.KeyFieldNames := 'VipStatusID';
  cxLookupVipStatus.Properties.ListFieldNames := 'StatusName';
end;

{Set Person ID}
procedure TFramePrioritaet.SetPerson(PersonID: Integer);
begin
  FPersonID := PersonID;
  if PersonID > 0 then begin
    LoadVipData;
  end else begin
    ClearVipFields;
  end;
end;


{LoadPerson VIPdata}
procedure TFramePrioritaet.LoadPersonVipData(PersonID: Integer);
var
  Query: TMSQuery;
begin
  if PersonID <= 0 then
    Exit;

  Query := TMSQuery.Create(nil);
  try
    Query.Connection := MyDataModule.MyConnections;
    Query.SQL.Text :=
      'SELECT VipStatusID, TotalRevenue, PersonalManager, SpecialNotes, VipSince ' +
      'FROM Kontakt WHERE PersonID = :PersonID';
    Query.ParamByName('PersonID').AsInteger := PersonID;
    Query.Open;

    if not Query.IsEmpty then begin
      // VipStatusID
      if Query.FieldByName('VipStatusID').IsNull then
        cxLookupVipStatus.EditValue := Null
      else
        cxLookupVipStatus.EditValue := Query.FieldByName('VipStatusID').AsInteger;

      // TotalRevenue
      if Query.FieldByName('TotalRevenue').IsNull then
        cxCurrencyTotalRevenue.Value := 0
      else begin
        try
          cxCurrencyTotalRevenue.Value := Query.FieldByName('TotalRevenue').AsFloat;
        except
          cxCurrencyTotalRevenue.Value := 0;
        end;
      end;
      cxTextPersonalManager.Text := Query.FieldByName('PersonalManager').AsString;
//      cxMemoSpecialNotes.Text := Query.FieldByName('SpecialNotes').AsString;
      BesondereNotizen.cxMemoBesondereNotiz.Text:=Query.FieldByName('SpecialNotes').AsString;
    end;
  except
    on E: Exception do
      //ShowMessage('LoadPersonVipData: Error - ' + E.Message);
  end;
  Query.Free;
end;

{Calculate Automatic}
procedure TFramePrioritaet.CalculateAutomaticStatus;
var
  Revenue: Currency;
  SuggestedStatusID: Integer;
  Query: TMSQuery;
begin
  Revenue := cxCurrencyTotalRevenue.Value;
  Query := TMSQuery.Create(nil);
  try
    Query.Connection := MyDataModule.MyConnections;
    Query.SQL.Text :=
      'SELECT TOP 1 VipStatusID, StatusName FROM VipStatus ' +
      'WHERE MinUmsatz <= :Rabatt ORDER BY MinUmsatz DESC';
    Query.ParamByName('Rabatt').AsCurrency := Revenue;
    Query.Open;

    if not Query.IsEmpty then    begin
      SuggestedStatusID := Query.FieldByName('VipStatusID').AsInteger;

      if VarToStr(cxLookupVipStatus.EditValue) <> IntToStr(SuggestedStatusID) then  begin
        if MessageDlg(
          Format('Basierend auf dem Umsatz von %s EUR wird der Status "%s" empfohlen. Möchten Sie den Status automatisch aktualisieren?',
          [CurrToStr(Revenue), Query.FieldByName('StatusName').AsString]),
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          cxLookupVipStatus.EditValue := SuggestedStatusID;
        end;
      end;
    end;
  finally
    Query.Free;
  end;
end;

{Zusatz- Dicsount}
procedure TFramePrioritaet.cxButtonZusatzClick(Sender: TObject);
//var
//  StatusID: Integer;
//  Benefits: TStringList;
begin
//  dxLayoutGroup1.Visible:=true;
//  dxLayoutGroup1.Caption:='Vip-Privilegien';
//  if VarIsNull(cxLookupVipStatus.EditValue) then begin
//    ShowMessage('Bitte wählen Sie zuerst einen VIP-Status aus.');
//    Exit;
//  end;
//  Benefits := TStringList.Create;
//  try
//    MSQueryDiscount.SQL.Text :=
//      'SELECT vs.StatusName, vs.Rabatt, ' +
//      'STRING_AGG(vb.BenefitName + vb.BenefitValue, CHAR(13)) as Benefits ' +
//      'FROM VipStatus vs ' +
//      'LEFT JOIN VipBenefits vb ON vs.VipStatusID = vb.VipStatusID AND vb.IsActive = 1 ' +
//      'WHERE vs.VipStatusID = :StatusID ' +
//      'GROUP BY vs.StatusName, vs.Rabatt';
//
//    //Query.ParamByName('StatusID').AsInteger := StatusID;
//    MSQueryDiscount.Open;
//  finally
//    MSQueryDiscount.Free;
//    Benefits.Free;
//  end;
end;

{Checked}
procedure TFramePrioritaet.cxCheckBoxAktivePropertiesChange(Sender: TObject);
begin
 if cxCheckBoxAktive.Checked=true then begin
  cxCurrencyTotalRevenue.Enabled:=true;
 end else begin
  cxCurrencyTotalRevenue.Enabled:=false;
 end;
end;

{Get Discount-Status}
function TFramePrioritaet.GetDiscountForStatus(StatusID: Integer): Double;
var
  Query: TMSQuery;
begin
  Result := 0;
  Query := TMSQuery.Create(nil);
  try
    Query.Connection := MyDataModule.MyConnections;
    Query.SQL.Text := 'SELECT Rabatt FROM VipStatus WHERE VipStatusID = :StatusID';
    Query.ParamByName('StatusID').AsInteger := StatusID;
    Query.Open;

    if not Query.IsEmpty then
      Result := Query.FieldByName('Rabatt').AsFloat;
  finally
    Query.Free;
  end;
end;

{View Hsitory}
procedure TFramePrioritaet.cxButtonViewHistoryClick(Sender: TObject);
var
  HistoryForm: TMyFStatusHistory;
  KontaktName:string;
begin
  if FPersonID <= 0 then begin
    ShowMessage('Kein Kontakt ausgewählt');
    Exit;
  end;
  HistoryForm := TMyFStatusHistory.Create(Self);
  try
    HistoryForm.LoadHistoryForPerson(FPersonID,ttStatusHistory);
    HistoryForm.UpdateCaption;
    HistoryForm.ShowModal;
  finally
    HistoryForm.Free;          //MyMessageBox
  end;
end;


{VIP STATUS}
procedure TFramePrioritaet.cxLookupVipStatusDblClick(Sender: TObject);
var Statusform:TKontaktVIPStatus;
begin
    Statusform := TKontaktVIPStatus.Create(nil);
    try
      Statusform.UpdateCaption;
      Statusform.ShowModal;
    finally
      Statusform.Free;
    end;
end;


{LookupVIP-Status onchange}
procedure TFramePrioritaet.cxLookupVipStatusPropertiesChange(Sender: TObject);
var  Discount: Double;
     SelectedID: Integer;
begin
  if not VarIsNull(cxLookupVipStatus.EditValue) then begin
    SelectedID := cxLookupVipStatus.EditValue; // ID
    Discount := GetDiscountForStatus(SelectedID);
    cxTextEditGrundRabatt.Text := FloatToStr(Discount);
  end  else  begin
    cxTextEditGrundRabatt.Clear;
  end;
end;


{Kontatkt Auswahl}
procedure TFramePrioritaet.cxTextPersonalManagerDblClick(Sender: TObject);
var KontaktAuswahl:TKontaktauswahl;
begin
    KontaktAuswahl:=TKontaktauswahl.Create(Nil);
  try
    KontaktAuswahl.TtKontaktAuswahl:=TtEAuswahl;
    KontaktAuswahl.Caption:='Personalmitarbeiter';
    KontaktAuswahl.dxLayoutGroup1.Caption:='Alle aktuellen Mitarbeiter';
    KontaktAuswahl.ShowModal;
  finally
   KontaktAuswahl.Free;
  end;
end;


{Save VIP data}
procedure TFramePrioritaet.SaveVipData;
var
  Query: TMSQuery;
  OldStatusID, NewStatusID: Integer;
begin
  if FPersonID <= 0 then Exit;
    EnsureBNotizenCreated;

  Query := TMSQuery.Create(nil);
  try
    Query.Connection := MyDataModule.MyConnections;

    Query.SQL.Text := 'SELECT ISNULL(VipStatusID, 0) as VipStatusID FROM Kontakt WHERE PersonID = :PersonID';
    Query.ParamByName('PersonID').AsInteger := FPersonID;
    Query.Open;

    if Query.IsEmpty then Exit;

    OldStatusID := Query.Fields[0].AsInteger;
    Query.Close;

    if VarIsNull(cxLookupVipStatus.EditValue) then
      NewStatusID := 0
    else
      NewStatusID := VarAsType(cxLookupVipStatus.EditValue, varInteger);

    Query.SQL.Text :=
      'UPDATE Kontakt SET ' +
      'VipStatusID = :VipStatusID, ' +
      'TotalRevenue = :Revenue, ' +
      'PersonalManager = :Manager, ' +
      'SpecialNotes = :Notes, ' +
      'VipSince = CASE ' +
      '  WHEN :VipStatusID > 0 AND (VipSince IS NULL OR ISNULL(VipStatusID, 0) = 0) THEN GETDATE() ' +
      '  WHEN :VipStatusID = 0 THEN NULL ' +
      '  ELSE VipSince ' +
      'END ' +
      'WHERE PersonID = :PersonID';

    if NewStatusID = 0 then
      Query.ParamByName('VipStatusID').Value := Null
    else
      Query.ParamByName('VipStatusID').AsInteger := NewStatusID;

    Query.ParamByName('Revenue').AsFloat := cxCurrencyTotalRevenue.Value;
    Query.ParamByName('Manager').AsString := Trim(cxTextPersonalManager.Text);

    if Assigned(BesondereNotizen) and Assigned(BesondereNotizen.cxMemoBesondereNotiz) then
      Query.ParamByName('Notes').AsString := Trim(BesondereNotizen.cxMemoBesondereNotiz.Text)
    else
      Query.ParamByName('Notes').AsString := '';

    Query.ParamByName('PersonID').AsInteger := FPersonID;
    Query.ExecSQL;

    if OldStatusID <> NewStatusID then
      SaveVipStatusHistory(FPersonID, OldStatusID, NewStatusID);

  except
    on E: Exception do
      ShowMessage('SaveVipData Error: ' + E.Message);
  end;

  Query.Free;
end;


// VipStatus
function TFramePrioritaet.IsValidVipStatus(StatusID: Integer): Boolean;
var
  Query: TMSQuery;
begin
  Result := False;
  if StatusID = 0 then begin
    Result := True;
    Exit;
  end;
  Query := TMSQuery.Create(nil);
  try
    Query.Connection := MyDataModule.MyConnections;
    Query.SQL.Text := 'SELECT COUNT(*) FROM VipStatus WHERE VipStatusID = :StatusID';
    Query.ParamByName('StatusID').AsInteger := StatusID;
    Query.Open;
    Result := Query.Fields[0].AsInteger > 0;
  finally
    Query.Free;
  end;
end;

{Load Vip StatusLookup}
procedure TFramePrioritaet.LoadVipStatusLookup;
var
  Query: TMSQuery;
  DataSource: TDataSource;
begin
  if not Assigned(cxLookupVipStatus) then
    Exit;
  Query := TMSQuery.Create(Self);
  DataSource := TDataSource.Create(Self);

  try
    Query.Connection := MyDataModule.MyConnections;
    Query.SQL.Text := 'SELECT VipStatusID, StatusName  FROM VipStatus ORDER BY StatusName';
    Query.Open;
    cxLookupVipStatus.Properties.KeyFieldNames := 'VipStatusID';
    cxLookupVipStatus.Properties.ListFieldNames := 'StatusName';
    if Query.IsEmpty then  begin
      CreateDefaultVipStatuses;
      Query.Close;
      Query.Open;
    end;
        DataSource.DataSet := Query;
    cxLookupVipStatus.Properties.ListSource := DataSource;
    cxLookupVipStatus.Properties.KeyFieldNames := 'VipStatusID';
    cxLookupVipStatus.Properties.ListFieldNames := 'StatusName';
    cxLookupVipStatus.Properties.DropDownListStyle := lsFixedList;
    cxLookupVipStatus.Properties.DropDownRows := 10;
    FVipStatusQuery := Query;
    FVipStatusDataSource := DataSource;
  except
    on E: Exception do begin
      //ShowMessage('LoadVipStatusLookup: Error - ' + E.Message);
      //ShowMessage('Fehler beim Laden der VIP-Status Liste: ' + E.Message);
      if Assigned(Query) then Query.Free;
      if Assigned(DataSource) then DataSource.Free;
    end;
  end;
  Query.Free;
end;

{Create Vip Statuses}
procedure TFramePrioritaet.CreateDefaultVipStatuses;
var
  Query: TMSQuery;
begin
  Query := TMSQuery.Create(nil);
  try
    Query.Connection := MyDataModule.MyConnections;
    Query.SQL.Text := 'SELECT COUNT(*) FROM VipStatus';
    Query.Open;
    if Query.Fields[0].AsInteger > 0 then begin
      //ShowMessage('VipStatus table already has records: ' + IntToStr(Query.Fields[0].AsInteger));
      Exit;
    end;
    Query.Close;
    Query.SQL.Text := 'INSERT INTO VipStatus (VipStatusID, StatusName) VALUES (:ID, :Name)';
  except
    on E: Exception do
      //ShowMessage('CreateDefaultVipStatuses: Error - ' + E.Message);
  end;

  Query.Free;
end;


{Load Vip-Data}
procedure TFramePrioritaet.LoadVipData;
var
  Query: TMSQuery;
begin
  if FPersonID <= 0 then Exit;
  EnsureBNotizenCreated;
  Query := TMSQuery.Create(nil);
  try
    Query.Connection := MyDataModule.MyConnections;
    Query.SQL.Text :=
      'SELECT VipStatusID, TotalRevenue, PersonalManager, SpecialNotes, VipSince ' +
      'FROM Kontakt WHERE PersonID = :PersonID';
    Query.ParamByName('PersonID').AsInteger := FPersonID;
    Query.Open;

    if not Query.IsEmpty then begin
      if Query.FieldByName('VipStatusID').IsNull then
        cxLookupVipStatus.EditValue := Null
      else
        cxLookupVipStatus.EditValue := Query.FieldByName('VipStatusID').AsInteger;

      if Query.FieldByName('TotalRevenue').IsNull then
        cxCurrencyTotalRevenue.Value := 0
      else
        cxCurrencyTotalRevenue.Value := Query.FieldByName('TotalRevenue').AsFloat;

      cxTextPersonalManager.Text := Query.FieldByName('PersonalManager').AsString;

      if Assigned(BesondereNotizen) and Assigned(BesondereNotizen.cxMemoBesondereNotiz) then
        BesondereNotizen.cxMemoBesondereNotiz.Text := Query.FieldByName('SpecialNotes').AsString;

      cxTextEditPrioritaet.Text := Query.FieldByName('VIPStatusID').AsString;
    end else begin
      ClearVipFields;
    end;

  except
    on E: Exception do
      ShowMessage('LoadVipData Error: ' + E.Message);
  end;

  Query.Free;
end;

{Clear Vip-Fields}
procedure TFramePrioritaet.ClearVipFields;
begin
  cxLookupVipStatus.EditValue := Null;
  cxCurrencyTotalRevenue.Value := 0;
  cxTextPersonalManager.Text := '';
  cxTextEditPrioritaet.Text := '';
  if Assigned(BesondereNotizen) and Assigned(BesondereNotizen.cxMemoBesondereNotiz) then
    BesondereNotizen.cxMemoBesondereNotiz.Text := '';
end;



{Save Vip-Status History}
procedure TFramePrioritaet.SaveVipStatusHistory(PersonID, OldStatusID, NewStatusID: Integer);
var
  Query: TMSQuery;
begin
  Query := TMSQuery.Create(nil);
  try
    Query.Connection := MyDataModule.MyConnections;
    Query.SQL.Text :=
      'INSERT INTO VipStatusHistory (PersonID, OldStatusID, NewStatusID, ChangeReason, ChangedBy, ChangeDate) ' +
      'VALUES (:PersonID, :OldStatusID, :NewStatusID, :Reason, :ChangedBy, GETDATE())';

    Query.ParamByName('PersonID').AsInteger := PersonID;

    if OldStatusID = 0 then
      Query.ParamByName('OldStatusID').Value := Null
    else
      Query.ParamByName('OldStatusID').AsInteger := OldStatusID;

    if NewStatusID = 0 then
      Query.ParamByName('NewStatusID').Value := Null
    else
      Query.ParamByName('NewStatusID').AsInteger := NewStatusID;

    Query.ParamByName('Reason').AsString := 'Manuell aktualisiert';
    Query.ParamByName('ChangedBy').AsString := 'System';
    Query.ExecSQL;

    //ShowMessage('Status history saved');
  except
    on E: Exception do
      //ShowMessage('History save error: ' + E.Message);
  end;

  Query.Free;
end;

{Destroy}
destructor TFramePrioritaet.Destroy;
begin
  if Assigned(FVipStatusDataSource) then
    FVipStatusDataSource.Free;
  if Assigned(FVipStatusQuery) then
    FVipStatusQuery.Free;
  inherited Destroy;
end;

{Button-Privilegien}
procedure TFramePrioritaet.VIPPrivilegien;
var
  HistoryForm: TMyFStatusHistory;
begin
  if FPersonID <= 0 then begin
    ShowMessage('Kein Kontakt ausgewählt');
    Exit;
  end;
  HistoryForm := TMyFStatusHistory.Create(Self);
  try
    HistoryForm.Caption:='VIP-Privilegien';
    HistoryForm.LoadHistoryForPerson(FPersonID,ttPrivilegien);
    HistoryForm.UpdateCaptionPrivilegien;
    HistoryForm.ShowModal;
  finally
    HistoryForm.Free;
  end;
end;

{Privilegien}
procedure TFramePrioritaet.cxBtVIPPrivilegienClick(Sender: TObject);
begin
  VIPPrivilegien;
end;

{SHOW Besondere Notizen}
procedure TFramePrioritaet.ShowBesondereNotizen;
begin
  EnsureBNotizenCreated;
  if Assigned(BesondereNotizen) then begin
    BesondereNotizen.Show;  // Show
    if Assigned(BesondereNotizen.cxMemoBesondereNotiz) then
      BesondereNotizen.cxMemoBesondereNotiz.SetFocus;
  end;
end;

{Transaktion}
procedure TFramePrioritaet.cxButtonTransaktionClick(Sender: TObject);
var Transaktions:TFormVIPinfo;
begin
    Transaktions:=TFormVIPinfo.Create(Nil);
  try
    Transaktions.Show;                       ///Show oder ShowModal
  finally
   ///Transaktions.Free;
  end;
end;

end.
