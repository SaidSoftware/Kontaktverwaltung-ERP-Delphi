unit MyFHistoryStatus;

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
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, dxLayoutContainer, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, DBAccess, MSAccess,
  MemDS, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl, dxPanel,KVDataModule,MyPapierkorb;

type  TTMode=(ttStatusHistory,ttPrivilegien);

type
  TMyFStatusHistory = class(TForm)
    dxPanelStatus: TdxPanel;
    dxLayoutControlHistoryGroup_Root: TdxLayoutGroup;
    dxLayoutControlHistory: TdxLayoutControl;
    cxGridHistoryDBTableViewHistory: TcxGridDBTableView;
    cxGridHistoryLevel1: TcxGridLevel;
    cxGridHistory: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroupHistory: TdxLayoutGroup;
    MSQueryStatusHistory: TMSQuery;
    MSDataSource1: TMSDataSource;
    cxGridHistoryDBTableViewHistoryHistoryID: TcxGridDBColumn;
    cxGridHistoryDBTableViewHistoryPersonID: TcxGridDBColumn;
    cxGridHistoryDBTableViewHistoryOldStatusID: TcxGridDBColumn;
    cxGridHistoryDBTableViewHistoryNewStatusID: TcxGridDBColumn;
    cxGridHistoryDBTableViewHistoryChangeDate: TcxGridDBColumn;
    cxGridHistoryDBTableViewHistoryChangeReason: TcxGridDBColumn;
    cxGridHistoryDBTableViewHistoryChangedBy: TcxGridDBColumn;
    MSDataSourcePrivilegien: TMSDataSource;
    MSQueryPrivilegien: TMSQuery;
    procedure cxGridHistoryDBTableViewHistoryOldStatusIDGetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure cxGridHistoryDBTableViewHistoryNewStatusIDGetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
  private
    FPersonID: Integer;
  public
    property  PersonID: Integer read FPersonID write FPersonID;
    procedure LoadHistoryForPerson(APersonID:Integer;AMode:TTMode);
    procedure LoadHistoryAll(AMode:TTMode);
    procedure UpdateCaption;
    procedure UpdateCaptionPrivilegien;

end;

var
  MyFStatusHistory: TMyFStatusHistory;

implementation

{$R *.dfm}


{Load History All}
procedure TMyFStatusHistory.cxGridHistoryDBTableViewHistoryNewStatusIDGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
   if ACellViewInfo.Value = 1 then begin
      AHintText := 'Diamond';
  end;
    if ACellViewInfo.Value = 2 then begin
      AHintText := 'Platinum';
  end;
  if ACellViewInfo.Value = 3 then begin
      AHintText := 'Gold';
  end;
    if ACellViewInfo.Value = 4 then begin
      AHintText := 'Silver';
  end;
  if ACellViewInfo.Value = 5 then begin
      AHintText := 'Bronze';
  end
end;

procedure TMyFStatusHistory.cxGridHistoryDBTableViewHistoryOldStatusIDGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
   if ACellViewInfo.Value = 1 then begin
      AHintText := 'Diamond';
  end;
    if ACellViewInfo.Value = 2 then begin
      AHintText := 'Platinum';
  end;
  if ACellViewInfo.Value = 3 then begin
      AHintText := 'Gold';
  end;
    if ACellViewInfo.Value = 4 then begin
      AHintText := 'Silver';
  end;
  if ACellViewInfo.Value = 5 then begin
      AHintText := 'Bronze';
  end
end;



procedure TMyFStatusHistory.LoadHistoryAll(AMode:TTMode);
begin
    if AMode=ttStatusHistory then begin
      try
        MSQueryStatusHistory.Close;
        MSQueryStatusHistory.Connection:=MydataModule.MyConnections;
        MSQueryStatusHistory.SQL.Text :='SELECT *FROM VIPSTATUSHISTORY';
        MSQueryStatusHistory.Open;
      except
        on E: Exception do begin
          ShowMessage('Fehler beim Laden der Historie: ' + E.Message);
        end;
      end;
    end else begin
      try
        MSQueryPrivilegien.Close;
        MSQueryPrivilegien.Connection:=MydataModule.MyConnections;
        MSQueryPrivilegien.SQL.Text :='SELECT *FROM VipPrivilegien';
        MSQueryPrivilegien.Open;
      except
        on E: Exception do begin
          ShowMessage('Fehler beim Laden der Privilegien: ' + E.Message);
        end;
      end;
    end;
end;

{Load}
procedure TMyFStatusHistory.LoadHistoryForPerson(APersonID: Integer;AMode:TTMode);
begin
  FPersonID := APersonID;
  if FPersonID <= 0 then begin
    ShowMessage('PersonID nicht gesetzt');
    Exit;
  end;

  if AMode=ttStatusHistory then begin
      try
        MSQueryStatusHistory.Close;
        MSQueryStatusHistory.Connection:=MydataModule.MyConnections;
        MSQueryStatusHistory.SQL.Text :='SELECT *FROM VIPSTATUSHISTORY WHERE PersonID = :PersonID';
        MSQueryStatusHistory.ParamByName('PersonID').AsInteger := FPersonID;
        MSQueryStatusHistory.Open;
        if MSQueryStatusHistory.RecordCount = 0 then begin
          ShowMessage('Keine Historie-Einträge für diese Person gefunden.');
        end;
      except
        on E: Exception do begin
          ShowMessage('Fehler beim Laden der Historie: ' + E.Message);
        end;
      end;
  end else begin
   try
    MSQueryPrivilegien.Close;
    MSQueryPrivilegien.Connection:=MydataModule.MyConnections;
    MSQueryPrivilegien.SQL.Text :='SELECT *FROM VipPrivilegien';
    MSQueryPrivilegien.Open;
    except
    on E: Exception do begin
      ShowMessage('Fehler beim Laden der Privilegien: ' + E.Message);
    end;
    end;

  end;
end;

{Update Caption Privilegien}
procedure TMyFStatusHistory.UpdateCaptionPrivilegien;
var RowCount:integer;
begin
  if Assigned(MSQueryPrivilegien) and MSQueryPrivilegien.Active then begin
    MSQueryPrivilegien.Last;
    RowCount := MSQueryPrivilegien.RecordCount
  end else
    RowCount := 0;
  if Assigned(dxLayoutGroupHistory) then begin
    dxLayoutGroupHistory.Caption := Format('Alle VIP-Status-Privilegien (%d)', [RowCount]);
  end;
end;

{Update Caption}
procedure TMyFStatusHistory.UpdateCaption;
var RowCount:integer;
begin
  if Assigned(MSQueryStatusHistory) and MSQueryStatusHistory.Active then begin
    MSQueryStatusHistory.Last;
    RowCount := MSQueryStatusHistory.RecordCount
  end else
    RowCount := 0;
  if Assigned(dxLayoutGroupHistory) then begin
    dxLayoutGroupHistory.Caption := Format('Alle VIP-Status-Historie (%d)', [RowCount]);
  end;
end;


end.
