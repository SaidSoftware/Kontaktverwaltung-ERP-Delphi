unit MyKalender;

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
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, dxPanel, dxLayoutContainer,
  Vcl.Menus, cxStyles, cxEdit, cxScheduler, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerCustomResourceView, cxSchedulerDayView,
  cxSchedulerAgendaView, cxSchedulerDateNavigator, cxSchedulerHolidays,
  cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerWeekView,
  cxSchedulerYearView, cxSchedulerGanttView, cxSchedulerRecurrence,
  dxBarBuiltInMenu, cxSchedulerRibbonStyleEventEditor,
  cxSchedulerTreeListBrowser, dxBar, cxClasses, dxLayoutControl, Data.DB,
  DBAccess, MSAccess, MemDS, cxSchedulerDBStorage,KVDatamodule, dxmdaset,
  dxCore, dxRibbonSkins, dxRibbonCustomizationForm, dxPrinting,
  cxSchedulerActions, dxRibbon, System.Actions, Vcl.ActnList, dxActions,
  System.ImageList, Vcl.ImgList, cxImageList,MyDateiChoise,System.UITypes;

type
  TFormKalender = class(TForm)
    dxPanelKalender: TdxPanel;
    dxLayoutControlGroup_Root: TdxLayoutGroup;
    dxLayoutControl: TdxLayoutControl;
    dxBarManager1: TdxBarManager;
    dxBarManager1BarKalender: TdxBar;
    dxBarLargeButtonSpeichern: TdxBarLargeButton;
    dxBarLargeButtonLoeschen: TdxBarLargeButton;
    dxBarLargeButtonansicht: TdxBarLargeButton;
    dxBarLargeButtonclose: TdxBarLargeButton;
    cxSchedulerStorage1: TcxSchedulerStorage;
    cxSchedulerHolidays1: TcxSchedulerHolidays;
    cxSchedulerDBStorageKalender: TcxSchedulerDBStorage;
    MSQueryKalender: TMSQuery;
    MSDataSourceKalender: TMSDataSource;
    MSConnectionKalender: TMSConnection;
    dxMemData1: TdxMemData;
    cxStyleRepositoryKalender: TcxStyleRepository;
    stEvents: TcxStyle;
    stHeaders: TcxStyle;
    stContent: TcxStyle;
    stContentSelection: TcxStyle;
    stResources: TcxStyle;
    stGroupSeparator: TcxStyle;
    stContainer: TcxStyle;
    stBackground: TcxStyle;
    stDateContent: TcxStyle;
    stVertSplitter: TcxStyle;
    stTimeRuler: TcxStyle;
    dxRibbon1: TdxRibbon;
    ActionList1: TActionList;
    cxImageList1: TcxImageList;
    dxSchedulerNewEvent: TdxSchedulerNewEvent;
    dxRibbonTabHome: TdxRibbonTab;
    dxBarEvent: TdxBar;
    dxBarLargeButtonNewEvent: TdxBarLargeButton;
    dxSchedulerNewRecurringEvent: TdxSchedulerNewRecurringEvent;
    dxBarLargeButtonNewRecurringEvent: TdxBarLargeButton;
    dxSchedulerGoBackward: TdxSchedulerGoBackward;
    dxBarNavigation: TdxBar;
    dxBarLargeButtonGoBackward: TdxBarLargeButton;
    dxSchedulerGoForward: TdxSchedulerGoForward;
    dxBarLargeButtonGoForward: TdxBarLargeButton;
    dxSchedulerGoToToday: TdxSchedulerGoToToday;
    dxBarLargeButtonGotoToday: TdxBarLargeButton;
    dxSchedulerGoToDate: TdxSchedulerGoToDate;
    dxBarLargeButtonGotoDate: TdxBarLargeButton;
    dxSchedulerNextSevenDays: TdxSchedulerNextSevenDays;
    dxBarLargeButtonNext7Days: TdxBarLargeButton;
    dxSchedulerDayView: TdxSchedulerDayView;
    dxBarArrange: TdxBar;
    dxBarLargeButtonDay: TdxBarLargeButton;
    dxSchedulerWorkWeekView: TdxSchedulerWorkWeekView;
    dxBarLargeButtonWorkWeek: TdxBarLargeButton;
    dxSchedulerWeekView: TdxSchedulerWeekView;
    dxBarLargeButtonWeek: TdxBarLargeButton;
    dxSchedulerMonthView: TdxSchedulerMonthView;
    dxBarLargeButtonMonth: TdxBarLargeButton;
    dxSchedulerTimeGridView: TdxSchedulerTimeGridView;
    dxBarLargeButtonTimeline: TdxBarLargeButton;
    dxSchedulerYearView: TdxSchedulerYearView;
    dxBarLargeButtonYear: TdxBarLargeButton;
    dxSchedulerGanttView: TdxSchedulerGanttView;
    dxBarLargeButtonGanttView: TdxBarLargeButton;
    dxSchedulerAgendaView: TdxSchedulerAgendaView;
    dxBarLargeButtonAgenda: TdxBarLargeButton;
    dxSchedulerGroupByNone: TdxSchedulerGroupByNone;
    dxBarGroupBy: TdxBar;
    dxBarLargeButtonGroupByNone: TdxBarLargeButton;
    dxSchedulerGroupByDate: TdxSchedulerGroupByDate;
    dxBarLargeButtonGroupByDate: TdxBarLargeButton;
    dxSchedulerGroupByResource: TdxSchedulerGroupByResource;
    dxBarLargeButtonGroupByResource: TdxBarLargeButton;
    dxRibbonTabView: TdxRibbonTab;
    dxBarTimeScale: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxSchedulerTimeScale60Minutes: TdxSchedulerTimeScale60Minutes;
    dxBarLargeButton60Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale30Minutes: TdxSchedulerTimeScale30Minutes;
    dxBarLargeButton30Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale15Minutes: TdxSchedulerTimeScale15Minutes;
    dxBarLargeButton15Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale10Minutes: TdxSchedulerTimeScale10Minutes;
    dxBarLargeButton10Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale6Minutes: TdxSchedulerTimeScale6Minutes;
    dxBarLargeButton6Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale5Minutes: TdxSchedulerTimeScale5Minutes;
    dxBarLargeButton5Minutes: TdxBarLargeButton;
    dxSchedulerCompressWeekends: TdxSchedulerCompressWeekends;
    dxBarLayout: TdxBar;
    dxBarLargeButtonCompressWeekends: TdxBarLargeButton;
    dxSchedulerWorkTimeOnly: TdxSchedulerWorkTimeOnly;
    dxBarLargeButtonWorkingHours: TdxBarLargeButton;
    dxSchedulerSnapEventsToTimeSlots: TdxSchedulerSnapEventsToTimeSlots;
    dxBarLargeButtonSnapEventsToTimeSlots: TdxBarLargeButton;
    dxSchedulerDateNavigator: TdxSchedulerDateNavigator;
    dxBarLargeButtonDateNavigator: TdxBarLargeButton;
    dxSchedulerResourcesLayoutEditor: TdxSchedulerResourcesLayoutEditor;
    dxBarLargeButtonResourcesLayoutEditor: TdxBarLargeButton;
    dxSchedulerShowPrintForm: TdxSchedulerShowPrintForm;
    dxRibbonTabFile: TdxRibbonTab;
    dxBarPrint: TdxBar;
    dxBarLargeButtonPrint: TdxBarLargeButton;
    dxSchedulerShowPrintPreviewForm: TdxSchedulerShowPrintPreviewForm;
    dxBarLargeButtonPrintPreview: TdxBarLargeButton;
    dxSchedulerShowPageSetupForm: TdxSchedulerShowPageSetupForm;
    dxBarLargeButtonPageSetup: TdxBarLargeButton;
    dxBarLargeButtonBearbeiten: TdxBarLargeButton;
    dxBarLargeButtonDelete: TdxBarLargeButton;
    PopupMenu1: TPopupMenu;
    dxBarLargeButtonNeuTermin: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButtonNeuerSerientermin: TdxBarLargeButton;
    cxScheduler1: TcxScheduler;
    dxLayoutItem1: TdxLayoutItem;
    procedure dxBarLargeButtonLoeschenClick(Sender: TObject);
    procedure dxBarLargeButtonNewEventClick(Sender: TObject);
    procedure dxSchedulerNewEventExecute(Sender: TObject);
    procedure cxScheduler1DblClick(Sender: TObject);
    procedure dxBarLargeButtonBearbeitenClick(Sender: TObject);
    procedure dxBarLargeButtonDeleteClick(Sender: TObject);

  private


  public
     FPersonID: Integer;
    property PersonID: Integer read FPersonID write FPersonID;
    procedure Bearbeiten;
  end;

var
  FormKalender: TFormKalender;

implementation

{$R *.dfm}
uses MyPapierkorb,StrUtils;


{Save Int}
function SafeInt(const V: Variant): Integer;
begin
  if VarIsNumeric(V) then
    Result := V
  else
    Result := 0;
end;



{Löschen}
procedure TFormKalender.dxBarLargeButtonLoeschenClick(Sender: TObject);
var
  I: Integer;
begin
  if cxScheduler1.SelectedEventCount = 0 then  begin
    ShowMessage('Kein Termin ausgewählt.');
    Exit;
  end;

  for I := cxScheduler1.SelectedEventCount - 1 downto 0 do
    cxScheduler1.DeleteEvent(cxScheduler1.SelectedEvents[I]);
end;



{New Event CreateForm}
procedure TFormKalender.dxBarLargeButtonNewEventClick(Sender: TObject);
var
  Event: TTerminEditor;
begin
  Event := TTerminEditor.Create(Self);
  try
    Event.Mode := New;
    Event.FTerminID := 0;
    Event.Caption := 'Neuer Termin [Termin Editor]';
    Event.cxDateEditBeginn.Date := Date;
    Event.cxDateEditEnde.Date := Date;
    Event.cxTimeEditBegin.Time := Time;
    Event.cxTimeEditEnde.Time := Time + EncodeTime(1, 0, 0, 0);

    if Event.ShowModal = mrOK then begin
      // Force refresh of the data and calendar
      MSQueryKalender.Refresh;
      cxScheduler1.FullRefresh; // Use FullRefresh

    end;
  finally
    Event.Free;
  end;
end;

{Bearbeiten Form}
procedure TFormKalender.cxScheduler1DblClick(Sender: TObject);
begin
  dxBarLargeButtonBearbeitenClick(Sender);
end;

{Bearbeiten Form öffnen}
procedure TFormKalender.dxBarLargeButtonBearbeitenClick(Sender: TObject);
begin
  Bearbeiten;
end;

procedure TFormKalender.Bearbeiten;
var
  EditForm: TTerminEditor;
  AEvent: TcxSchedulerEvent;
  KalenderID: Integer;
  V: Variant;
begin
  if cxScheduler1.SelectedEventCount = 0 then  begin
    ShowMessage('Bitte wählen Sie einen Termin aus.');
    Exit;
  end;
  AEvent := cxScheduler1.SelectedEvents[0].Source;
  V := AEvent.GetCustomFieldValueByName('KalenderID');
  if VarIsNull(V) or (V = 0) then  begin
    ShowMessage('Ungültige oder leere KalenderID.');
    Exit;
  end;

  KalenderID := V;

  EditForm := TTerminEditor.Create(nil);
  try
    EditForm.Mode := Abgeschlossen;
    EditForm.FTerminID := KalenderID;
    EditForm.LoadTermin(KalenderID);
    EditForm.Caption:='Bearbeiten [Termin Editor]';
    if EditForm.ShowModal = mrOk then begin
      cxScheduler1.Refresh;
    end;
  finally
    EditForm.Free;
  end;
end;

{Löschen}
procedure TFormKalender.dxBarLargeButtonDeleteClick(Sender: TObject);
var
  i: Integer;
  AEvent: TcxSchedulerEvent;
  KalenderID: Integer;
  V: Variant;
begin
  if cxScheduler1.SelectedEventCount = 0 then  begin
    ShowMessage('Bitte wählen Sie mindestens einen Termin zum Löschen aus.');
    Exit;
  end;

  if MessageDlg('Ausgewählte Termine wirklich löschen?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    Exit;

  for i := cxScheduler1.SelectedEventCount - 1 downto 0 do  begin
    AEvent := cxScheduler1.SelectedEvents[i].Source;
    V := AEvent.GetCustomFieldValueByName('KalenderID');
    if not VarIsNull(V) and (V <> 0) then  begin
      KalenderID := V;
      with TMSQuery.Create(nil) do
      try
        Connection := MyDataModule.MyConnections;
        SQL.Text := 'DELETE FROM KontaktCalender WHERE KalenderID = :KalenderID';
        ParamByName('KalenderID').AsInteger := KalenderID;
        ExecSQL;
      finally
        Free;
      end;
    end;
  end;

    MSQueryKalender.Refresh;
    cxScheduler1.Refresh;
end;

{New Event}
procedure TFormKalender.dxSchedulerNewEventExecute(Sender: TObject);
begin
  dxSchedulerNewEventExecute(Sender);
end;

end.



