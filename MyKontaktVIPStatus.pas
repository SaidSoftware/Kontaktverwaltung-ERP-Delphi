unit MyKontaktVIPStatus;

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
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, cxClasses, dxLayoutContainer,
  dxLayoutControl, dxPanel, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  Vcl.Menus, cxMaskEdit, cxDropDownEdit, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxTextEdit, cxMemo,MyMessageBox,MyPapierkorb, DBAccess, MSAccess,
  MemDS,KVDataModule, cxImageComboBox, dxBar,MyVipStatusBearbeiten;

type
  TKontaktVIPStatus = class(TForm)
    dxPanelStatus: TdxPanel;
    dxLayoutControlStatusGroup_Root: TdxLayoutGroup;
    dxLayoutControlStatus: TdxLayoutControl;
    cxGridStatusDBTableViewStatus: TcxGridDBTableView;
    cxGridStatusLevel1: TcxGridLevel;
    cxGridStatus: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    MSQueryStatus: TMSQuery;
    MSDataSourceStatus: TMSDataSource;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButtonNeu: TdxBarLargeButton;
    dxBarLargeButtonBearbeiten: TdxBarLargeButton;
    dxBarLargeButtonDelete: TdxBarLargeButton;
    cxGridStatusDBTableViewStatusVipStatusID: TcxGridDBColumn;
    cxGridStatusDBTableViewStatusStatusName: TcxGridDBColumn;
    cxGridStatusDBTableViewStatusRabatt: TcxGridDBColumn;
    cxGridStatusDBTableViewStatusMinUmsatz: TcxGridDBColumn;
    cxGridStatusDBTableViewStatusPrioritaet: TcxGridDBColumn;
    cxGridStatusDBTableViewStatusFarbe: TcxGridDBColumn;
    cxGridStatusDBTableViewStatusAktiv: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButtonBearbeitenClick(Sender: TObject);
    procedure dxBarLargeButtonNeuClick(Sender: TObject);
    procedure cxGridStatusDBTableViewStatusCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dxBarLargeButtonDeleteClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
      procedure LoadStatus;
      procedure HandleAddOrEdit(AAction: TFormMode);
      procedure RefreshGridData;
      procedure UpdateCaption;
  end;

var
  KontaktVIPStatus: TKontaktVIPStatus;

implementation

{$R *.dfm}


{Bearbeiten}
procedure TKontaktVIPStatus.cxGridStatusDBTableViewStatusCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 dxBarLargeButtonBearbeitenClick(Sender);
end;

{Bearbeiten}
procedure TKontaktVIPStatus.dxBarLargeButtonBearbeitenClick(Sender: TObject);
begin
  HandleAddOrEdit(fmEdit);
end;

{Delete}
procedure TKontaktVIPStatus.dxBarLargeButtonDeleteClick(Sender: TObject);
var
  I: Integer;
  VIPStatusID: Integer;
  Q: TMSQuery;
  Confirm: Integer;
begin
  with cxGridStatusDBTableViewStatus.Controller do  begin
    if SelectedRowCount = 0 then
      Exit;

    Confirm := Application.MessageBox(
      PChar('Möchten Sie die ausgewählten Statusname wirklich löschen?'),
      'Bestätigung',
      MB_YESNO + MB_ICONQUESTION
    );

    if Confirm <> IDYES then
      Exit;

    Q := TMSQuery.Create(nil);
    try
      Q.Connection := MyDataModule.MyConnections;
      Q.SQL.Text := 'DELETE FROM VipStatus WHERE VIPStatusID = :VIPStatusID';

      for I := 0 to SelectedRowCount - 1 do begin
        Q.ParamByName('VIPStatusID').AsInteger := VIPStatusID;
        Q.ExecSQL;
      end;

      Q.Connection.Commit;
    finally
      Q.Free;
    end;
    RefreshGridData;
  end;
end;



{Neu}
procedure TKontaktVIPStatus.dxBarLargeButtonNeuClick(Sender: TObject);
begin
  HandleAddOrEdit(fmAdd);
end;

{Create}
procedure TKontaktVIPStatus.FormCreate(Sender: TObject);
begin
  LoadStatus;
end;

{Load VIPStatus}
procedure TKontaktVIPStatus.LoadStatus;
begin
  MSQueryStatus.Close;
  MSQueryStatus.Connection := MyDataModule.MyConnections;
  MSQueryStatus.SQL.Text := 'SELECT * FROM VipStatus';
  MSQueryStatus.Open;
end;

{Handle}
procedure TKontaktVIPStatus.HandleAddOrEdit(AAction: TFormMode);
var
  StatusVIPID: Integer;
  BearbeitenNeuForm: TStatusBearbeitenNeuForm;
begin
  if AAction = fmEdit then begin
    if not Assigned(cxGridStatusDBTableViewStatus.Controller.FocusedRow) then begin
      Exit;
    end;
    StatusVIPID := MSQueryStatus.FieldByName('VIPStatusID').AsInteger;
    BearbeitenNeuForm := TStatusBearbeitenNeuForm.Create(Self, fmEdit, StatusVIPID);
      try
       BearbeitenNeuForm.SetWindowIcon(0);
       BearbeitenNeuForm.Caption := '[Bearbeiten] ';
          if BearbeitenNeuForm.ShowModal = mrOk then begin
            RefreshGridData;
          end;
      finally
          BearbeitenNeuForm.Free;
      end;

  end else begin

    BearbeitenNeuForm := TStatusBearbeitenNeuForm.Create(Self, fmAdd);
    try
      BearbeitenNeuForm.SetWindowIcon(1);
      BearbeitenNeuForm.Caption := '[Neu] ';

      if BearbeitenNeuForm.ShowModal = mrOk then begin
        RefreshGridData;
      end;
    finally
      BearbeitenNeuForm.Free;
    end;
  end;
end;

{RefreshGridData}
procedure TKontaktVIPStatus.RefreshGridData;
begin
  MSQueryStatus.Refresh;
end;

{Update Caption}
procedure TKontaktVIPStatus.UpdateCaption;
var
  RowCount: Integer;
begin
  if Assigned(MSQueryStatus) and MSQueryStatus.Active then begin
    MSQueryStatus.Last;
    RowCount := MSQueryStatus.RecordCount
  end else
    RowCount := 0;
  if Assigned(dxLayoutGroup2) then
    dxLayoutGroup2.Caption := Format('Status: (%d)', [ RowCount]);
end;

end.
