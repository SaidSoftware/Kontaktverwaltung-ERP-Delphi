unit MyDateiChoise;

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
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxLayoutContainer,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxPanel,KVDataModule, DBAccess,
  MSAccess, MemDS,MyPapierKorb,MychoiseForm,Datasnap.DBClient,uNachrichtSender,
  cxTextEdit, dxColorEdit, cxCheckGroup, cxCheckBox, dxBar, cxBarEditItem,
  dxBarBuiltInMenu, cxPC, dxLayoutcxEditAdapters, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxDropDownEdit, cxMaskEdit, cxCalendar, cxMemo, cxLabel,
  cxImageComboBox, cxRadioGroup, dxToggleSwitch, dxWheelPicker,
  dxNumericWheelPicker, dxDateTimeWheelPicker, cxSpinEdit, cxTimeEdit,System.Generics.Collections;

type TMode=(Abgeschlossen,New);

type
  TTerminEditor = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButSpeichern: TdxBarLargeButton;
    cxPageControlEditor: TcxPageControl;
    cxTabSheetKDaten: TcxTabSheet;
    cxTabSheetKonflikte: TcxTabSheet;
    dxLayoutControlEditorGroup_Root: TdxLayoutGroup;
    dxLayoutControlEditor: TdxLayoutControl;
    cxDateEditBeginn: TcxDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    cxDateEditEnde: TcxDateEdit;
    cxComboBoxErinnnerung: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cxImageComboBoxZustand: TcxImageComboBox;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    cxButtonAuswahl: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxCheckBoxAlleTeilnehmer: TcxCheckBox;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    cxMemoBemerkung: TcxMemo;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxTextEditOrt: TcxTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxImageComboBoxTyp: TcxImageComboBox;
    dxLayoutItem12: TdxLayoutItem;
    cxTextEditThema: TcxTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxGridKonfliktDBTableView1: TcxGridDBTableView;
    cxGridKonfliktLevel1: TcxGridLevel;
    cxGridKonflikt: TcxGrid;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    cxCheckBoxGanzerTag: TcxCheckBox;
    dxLayoutItem1: TdxLayoutItem;
    cxCheckBoxTerminAbgesch: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    cxMemoTeilnehmer: TcxMemo;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxTimeEditBegin: TcxTimeEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxTimeEditEnde: TcxTimeEdit;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    procedure FormCreate(Sender: TObject);
    procedure cxButtonAuswahlClick(Sender: TObject);
    procedure cxCheckBoxAlleTeilnehmerClick(Sender: TObject);
    procedure cxCheckBoxGanzerTagClick(Sender: TObject);
    procedure cxCheckBoxTerminAbgeschClick(Sender: TObject);
    procedure cxComboBoxErinnnerungPropertiesChange(Sender: TObject);
    procedure dxBarLargeButSpeichernClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxDateEditBeginnPropertiesChange(Sender: TObject);
    procedure cxDateEditEndePropertiesChange(Sender: TObject);


    private
        SelectedIDs: TList<Integer>;

     public
         FTerminID: Integer;
         function SaveTermin: Integer;
         procedure Validierung;
         procedure ValidierungEnd;
         procedure LoadTermin(TerminID:integer);
         procedure CheckBoxTerminAbgesch;
var
     Mode:TMode;
end;

var
  TerminEditor: TTerminEditor;

implementation
uses StartList,MyKontaktAuswahl;

{$R *.dfm}


{Load Termin}
procedure TTerminEditor.LoadTermin(TerminID:integer);
var
  Q, QTeilnehmer: TMSQuery;
  TeilnehmerNames: TStringList;
  PersonID: Integer;
begin
  Q := TMSQuery.Create(nil);
  QTeilnehmer := TMSQuery.Create(nil);
  TeilnehmerNames := TStringList.Create;
  try
    Q.Connection := MyDataModule.MyConnections;
    Q.SQL.Text := 'SELECT * FROM KontaktCalender WHERE KalenderID = :ID';
    Q.ParamByName('ID').AsInteger := TerminID;
    Q.Open;

    if not Q.IsEmpty then begin
      FTerminID := TerminID;

      cxDateEditBeginn.Date := Q.FieldByName('Start').AsDateTime;
      cxTimeEditBegin.Time := Q.FieldByName('Start').AsDateTime;

      cxDateEditEnde.Date := Q.FieldByName('Finish').AsDateTime;
      cxTimeEditEnde.Time := Q.FieldByName('Finish').AsDateTime;

      cxTextEditThema.Text := Q.FieldByName('Caption').AsString;
      cxImageComboBoxTyp.EditValue := Q.FieldByName('EventType').AsInteger;
      cxTextEditOrt.Text := Q.FieldByName('Location').AsString;
      cxMemoBemerkung.Text := Q.FieldByName('Message').AsString;

      // ReminderMinutesBef
      if not Q.FieldByName('ReminderMinutesBef').IsNull then begin
        case Q.FieldByName('ReminderMinutesBef').AsInteger of
          5: cxComboBoxErinnnerung.ItemIndex := 0;
          10: cxComboBoxErinnnerung.ItemIndex := 1;
          20: cxComboBoxErinnnerung.ItemIndex := 2;
          30: cxComboBoxErinnnerung.ItemIndex := 3;
          60: cxComboBoxErinnnerung.ItemIndex := 4;
          120: cxComboBoxErinnnerung.ItemIndex := 5;
          180: cxComboBoxErinnnerung.ItemIndex := 6;
          240: cxComboBoxErinnnerung.ItemIndex := 7;
          300: cxComboBoxErinnnerung.ItemIndex := 8;
          600: cxComboBoxErinnnerung.ItemIndex := 9;
          1440: cxComboBoxErinnnerung.ItemIndex := 10;
          2880: cxComboBoxErinnnerung.ItemIndex := 11;
          4320: cxComboBoxErinnnerung.ItemIndex := 12;
          10080: cxComboBoxErinnnerung.ItemIndex := 13;
          20160: cxComboBoxErinnnerung.ItemIndex := 14;
        else
          cxComboBoxErinnnerung.ItemIndex := -1;
        end;
      end else
        cxComboBoxErinnnerung.ItemIndex := -1;

      SelectedIDs.Clear;
      QTeilnehmer.Connection := MyDataModule.MyConnections;
      QTeilnehmer.SQL.Text :=
        'SELECT kt.PersonID, k.Vorname, k.Name ' +
        'FROM KontaktKalenderTeilnehmern kt ' +
        'INNER JOIN Kontakt k ON kt.PersonID = k.PersonID ' +
        'WHERE kt.KalenderID = :KalenderID AND kt.IsSelected = 1';
      QTeilnehmer.ParamByName('KalenderID').AsInteger := TerminID;
      QTeilnehmer.Open;

      while not QTeilnehmer.Eof do begin
        PersonID := QTeilnehmer.FieldByName('PersonID').AsInteger;
        SelectedIDs.Add(PersonID);
        TeilnehmerNames.Add(QTeilnehmer.FieldByName('Vorname').AsString + ' ' +
                           QTeilnehmer.FieldByName('Name').AsString);
        QTeilnehmer.Next;
      end;

      cxMemoTeilnehmer.Lines.Assign(TeilnehmerNames);
    end
    else
      ShowMessage('Termin nicht gefunden.');

  finally
    Q.Free;
    QTeilnehmer.Free;
    TeilnehmerNames.Free;
  end;
end;


{Kontakt Auswahl}
procedure TTerminEditor.cxButtonAuswahlClick(Sender: TObject);
var
  KAuswahl: TKontaktauswahl;
  i: Integer;
begin
  KAuswahl := TKontaktauswahl.Create(Self);
  try
   if FTerminID > 0 then
      KAuswahl.KalenderID := FTerminID;
      KAuswahl.SetSelectedParticipants(SelectedIDs);

    if KAuswahl.ShowModal = mrOk then begin
      cxMemoTeilnehmer.Lines.Text := KAuswahl.SelectedNames.Text;

      // PersonID
      SelectedIDs.Clear;
      for i := 0 to KAuswahl.SelectedIDs.Count - 1 do begin
        SelectedIDs.Add(KAuswahl.SelectedIDs[i]);
      end;
    end;
  finally
    KAuswahl.Free;
  end;
end;



{Create}
procedure TTerminEditor.FormCreate(Sender: TObject);
begin
 cxMemoBemerkung.clear;
 cxMemoTeilnehmer.clear;
 SelectedIDs := TList<Integer>.Create;
 cxTabSheetKonflikte.Enabled:=false;


  with cxComboBoxErinnnerung.Properties.Items do begin
    Clear;
    Add('5 Minuten vorher');
    Add('10 Minuten vorher');
    Add('20 Minuten vorher');
    Add('30 Minuten vorher');
    Add('1 Stunde vorher');
    Add('2 Stunden vorher');
    Add('3 Stunden vorher');
    Add('4 Stunden vorher');
    Add('5 Stunden vorher');
    Add('10 Stunden vorher');
    Add('1 Tag vorher');
    Add('2 Tage vorher');
    Add('3 Tage vorher');
    Add('1 Woche vorher');
    Add('2 Wochen vorher');
  end;
  cxComboBoxErinnnerung.ItemIndex := -1;
end;


{Destroy}
procedure TTerminEditor.FormDestroy(Sender: TObject);
begin
  SelectedIDs.Free;
end;


{Alle Teilnehmer}
procedure TTerminEditor.cxCheckBoxAlleTeilnehmerClick(Sender: TObject);
var
  Q: TMSQuery;
  FullNameList: TStringList;
begin
  if cxCheckBoxAlleTeilnehmer.Checked then  begin
    cxButtonAuswahl.Enabled := False;
    cxMemoTeilnehmer.Enabled := False;

    FullNameList := TStringList.Create;
    try
      Q := TMSQuery.Create(nil);
      try
        Q.Connection := MyDataModule.MyConnections;
        Q.SQL.Text := 'SELECT Vorname, Name FROM Kontakt WHERE IsArchived = 0';
        Q.Open;
        while not Q.Eof do
        begin
          FullNameList.Add(Q.FieldByName('Vorname').AsString + ' ' + Q.FieldByName('Name').AsString);
          Q.Next;
        end;
      finally
        Q.Free;
      end;

      cxMemoTeilnehmer.Lines.Assign(FullNameList);
    finally
      FullNameList.Free;
    end;
  end  else  begin
    cxButtonAuswahl.Enabled := True;
    cxMemoTeilnehmer.Enabled := True;
    cxMemoTeilnehmer.Clear;
  end;
end;

procedure TTerminEditor.cxCheckBoxGanzerTagClick(Sender: TObject);
begin
  if cxCheckBoxGanzerTag.Checked then  begin
    cxTimeEditBegin.Enabled := False;
    cxTimeEditEnde.Enabled := False;
    cxDateEditEnde.Enabled:=True;
    cxDateEditBeginn.Date := Date;
    cxDateEditEnde.Date := Date;
    cxTimeEditBegin.Time := EncodeTime(0, 0, 0, 0);
    cxTimeEditEnde.Time := EncodeTime(23,59,0,0);
  end else  begin
    cxTimeEditBegin.Enabled := True;
    cxTimeEditEnde.Enabled := True;

  end;
end;

procedure TTerminEditor.cxCheckBoxTerminAbgeschClick(Sender: TObject);
begin
 if Mode=Abgeschlossen then begin
   dxLayoutControlEditorGroup_Root.Enabled:=True;
 end else begin
   dxLayoutControlEditorGroup_Root.Enabled:=False;
 end;
end;

{Erinnerung}
procedure TTerminEditor.cxComboBoxErinnnerungPropertiesChange(Sender: TObject);
var
  ErinnerungZeitpunkt: TDateTime;
  TerminZeitpunkt: TDateTime;
  MinutesBefore: Integer;
begin
  TerminZeitpunkt := cxDateEditBeginn.Date + cxTimeEditBegin.Time;

  case cxComboBoxErinnnerung.ItemIndex of
    0: MinutesBefore := 5;
    1: MinutesBefore := 10;
    2: MinutesBefore := 20;
    3: MinutesBefore := 30;
    4: MinutesBefore := 60;
    5: MinutesBefore := 120;
    6: MinutesBefore := 180;
    7: MinutesBefore := 240;
    8: MinutesBefore := 300;
    9: MinutesBefore := 600;
    10: MinutesBefore := 1440;       // 1 Tag
    11: MinutesBefore := 2 * 1440;   // 2 Tage
    12: MinutesBefore := 3 * 1440;   // 3 Tage
    13: MinutesBefore := 7 * 1440;   // 1 Woche
    14: MinutesBefore := 14 * 1440;  // 2 Wochen
  else
    MinutesBefore := 0;
  end;
  ErinnerungZeitpunkt := TerminZeitpunkt - (MinutesBefore / (24 * 60));
end;



procedure TTerminEditor.cxDateEditBeginnPropertiesChange(Sender: TObject);
begin
//  Validierung;
end;

procedure TTerminEditor.cxDateEditEndePropertiesChange(Sender: TObject);
begin
//   ValidierungEnd;
end;



procedure TTerminEditor.dxBarLargeButSpeichernClick(Sender: TObject);
var
  KalenderID: Integer;
begin
  KalenderID := SaveTermin;
  if KalenderID > 0 then begin
    ShowMessage('Termin gespeichert mit KalenderID: ' + IntToStr(KalenderID));
    ModalResult := mrOk;
  end else begin
    ShowMessage('Fehler beim Speichern des Termins.');
  end;
end;



{Validierung}
procedure TTerminEditor.Validierung;
var
  StartDateTime: TDateTime;
  Fehler: Boolean;
begin
  Fehler := False;

  cxDateEditBeginn.Style.Color := clWindow;
  cxTimeEditBegin.Style.Color := clWindow;

  StartDateTime := cxDateEditBeginn.Date + cxTimeEditBegin.Time;

  if StartDateTime < Now then  begin
    ShowMessage('Das Beginndatum darf nicht in der Vergangenheit liegen.');
    cxDateEditBeginn.Style.Color := clRed;
    cxTimeEditBegin.Style.Color := clRed;
    Fehler := True;
  end;

  if Fehler then
    Exit;
end;

{ValidierungEnd}
procedure TTerminEditor.ValidierungEnd;
var
  StartDateTime,EndDateTime: TDateTime;
  Fehler: Boolean;
begin
  Fehler := False;

  cxDateEditEnde.Style.Color := clWindow;
  cxTimeEditEnde.Style.Color := clWindow;

  EndDateTime := cxDateEditEnde.Date + cxTimeEditEnde.Time;
  StartDateTime := cxDateEditBeginn.Date + cxTimeEditBegin.Time;
    if EndDateTime < Now then  begin
    ShowMessage('Das Enddatum darf nicht in der Vergangenheit liegen.');
    cxDateEditEnde.Style.Color := clRed;
    cxTimeEditEnde.Style.Color := clRed;
    Fehler := True;
  end;

  if EndDateTime < StartDateTime then  begin
    ShowMessage('Das Enddatum darf nicht vor dem Beginndatum liegen.');
    cxDateEditEnde.Style.Color := clRed;
    cxTimeEditEnde.Style.Color := clRed;
    Fehler := True;
  end;

  if Fehler then
    Exit;
end;

{Save Termin}
{Save Termin - Updated Version}
function TTerminEditor.SaveTermin: Integer;
var
  Q: TMSQuery;
  PersonID: Integer;
  ErinnerungZeitpunkt: TDateTime;
  TerminZeitpunkt: TDateTime;
  MinutesBefore: Integer;
begin
  Result := -1;
  Q := TMSQuery.Create(nil);
  try
    Q.Connection := MyDataModule.MyConnections;

    TerminZeitpunkt := cxDateEditBeginn.Date + cxTimeEditBegin.Time;
    case cxComboBoxErinnnerung.ItemIndex of
      0: MinutesBefore := 5;
      1: MinutesBefore := 10;
      2: MinutesBefore := 20;
      3: MinutesBefore := 30;
      4: MinutesBefore := 60;
      5: MinutesBefore := 120;
      6: MinutesBefore := 180;
      7: MinutesBefore := 240;
      8: MinutesBefore := 300;
      9: MinutesBefore := 600;
      10: MinutesBefore := 1440;
      11: MinutesBefore := 2880;
      12: MinutesBefore := 4320;
      13: MinutesBefore := 10080;
      14: MinutesBefore := 20160;
    else
      MinutesBefore := 0;
    end;

    if MinutesBefore > 0 then
      ErinnerungZeitpunkt := TerminZeitpunkt - (MinutesBefore / (24 * 60));

    if FTerminID > 0 then begin
      // UPDATE
      Q.SQL.Text := 'UPDATE KontaktCalender SET ' +
        'ActualStart = :ActualStart, ' +
        'ActualFinish = :ActualFinish, ' +
        'Caption = :Caption, ' +
        'EventType = :EventType, ' +
        'Start = :Start, ' +
        'Finish = :Finish, ' +
        'Location = :Location, ' +
        'Message = :Message, ' +
        'ReminderDate = :ReminderDate, ' +
        'ReminderMinutesBef = :ReminderMinutesBef, ' +
        'LabelColor = :LabelColor, ' +
        'State = :State, ' +
        'Options = :Options ' +
        'WHERE KalenderID = :KalenderID';

      Q.ParamByName('KalenderID').AsInteger := FTerminID;
      Q.ParamByName('ActualStart').AsDateTime := cxDateEditBeginn.Date + cxTimeEditBegin.Time;
      Q.ParamByName('ActualFinish').AsDateTime := cxDateEditEnde.Date + cxTimeEditEnde.Time;
      Q.ParamByName('Caption').AsString := Trim(cxTextEditThema.Text);

      // EventType
      if VarIsNull(cxImageComboBoxTyp.EditValue) or (cxImageComboBoxTyp.EditValue = '') then
        Q.ParamByName('EventType').AsInteger := 0
      else
        Q.ParamByName('EventType').AsInteger := cxImageComboBoxTyp.EditValue;

//      Q.ParamByName('Start').AsDateTime := cxDateEditBeginn.Date + cxTimeEditBegin.Time;
//      Q.ParamByName('Finish').AsDateTime := cxDateEditEnde.Date + cxTimeEditEnde.Time;
      Q.ParamByName('Location').AsString := Trim(cxTextEditOrt.Text);
      Q.ParamByName('Message').AsString := Trim(cxMemoBemerkung.Text);

      // ReminderDate  ReminderMinutesBef
      if MinutesBefore > 0 then begin
        Q.ParamByName('ReminderDate').AsDateTime := ErinnerungZeitpunkt;
        Q.ParamByName('ReminderMinutesBef').AsInteger := MinutesBefore;
      end else begin
        Q.ParamByName('ReminderDate').Clear;
        Q.ParamByName('ReminderMinutesBef').Clear;
      end;

      // LabelColor
      if VarIsNull(cxImageComboBoxZustand.EditValue) or (cxImageComboBoxZustand.EditValue = '') then
        Q.ParamByName('LabelColor').Clear
      else
        Q.ParamByName('LabelColor').AsInteger := cxImageComboBoxZustand.EditValue;

      // State
      if cxCheckBoxTerminAbgesch.Checked then
        Q.ParamByName('State').AsInteger := 1
      else
        Q.ParamByName('State').AsInteger := 0;

      // Options
      Q.ParamByName('Options').AsInteger := 0;

      Q.ExecSQL;
      Result := FTerminID;

      // Delete existing participants
      Q.SQL.Text := 'DELETE FROM KontaktKalenderTeilnehmern WHERE KalenderID = :KalenderID';
      Q.ParamByName('KalenderID').AsInteger := FTerminID;
      Q.ExecSQL;

      // Add participants
      for PersonID in SelectedIDs do begin
        SaveKontaktKalenderTeilnehmer(FTerminID, PersonID, MyDataModule.MyConnections);
      end;

    end else begin
      // INSERT
      Q.SQL.Text :=
        'INSERT INTO KontaktCalender ' +
        '(ActualStart, ActualFinish, Caption, EventType, Start, Finish, Location, Message, ' +
        'RecurrenceInfo, ReminderDate, ReminderMinutesBef, ResourceID, State, LabelColor, GroupID, Options, ' +
        'ParentID, TaskCompleteField, TaskIndexField, TaskLinksField, TaskStatusField) ' +
        'VALUES (:ActualStart, :ActualFinish, :Caption, :EventType, :Start, :Finish, :Location, :Message, ' +
        ':RecurrenceInfo, :ReminderDate, :ReminderMinutesBef, NULL, :State, :LabelColor, NULL, :Options, ' +
        'NULL, NULL, NULL, NULL, NULL)';

      Q.ParamByName('ActualStart').AsDateTime := cxDateEditBeginn.Date + cxTimeEditBegin.Time;
      Q.ParamByName('ActualFinish').AsDateTime := cxDateEditEnde.Date + cxTimeEditEnde.Time;
      Q.ParamByName('Caption').AsString := Trim(cxTextEditThema.Text);

      // EventType
      if VarIsNull(cxImageComboBoxTyp.EditValue) or (cxImageComboBoxTyp.EditValue = '') then
        Q.ParamByName('EventType').AsInteger := 0
      else
        Q.ParamByName('EventType').AsInteger := cxImageComboBoxTyp.EditValue;

//      Q.ParamByName('Start').AsDateTime := cxDateEditBeginn.Date + cxTimeEditBegin.Time;
//      Q.ParamByName('Finish').AsDateTime := cxDateEditEnde.Date + cxTimeEditEnde.Time;
      Q.ParamByName('Location').AsString := Trim(cxTextEditOrt.Text);
      Q.ParamByName('Message').AsString := Trim(cxMemoBemerkung.Text);

      Q.ParamByName('RecurrenceInfo').Clear;

      // ReminderDate  ReminderMinutesBef
      if MinutesBefore > 0 then begin
        Q.ParamByName('ReminderDate').AsDateTime := ErinnerungZeitpunkt;
        Q.ParamByName('ReminderMinutesBef').AsInteger := MinutesBefore;
      end else begin
        Q.ParamByName('ReminderDate').Clear;
        Q.ParamByName('ReminderMinutesBef').Clear;
      end;

      // LabelColor
      if VarIsNull(cxImageComboBoxZustand.EditValue) or (cxImageComboBoxZustand.EditValue = '') then
        Q.ParamByName('LabelColor').Clear
      else
        Q.ParamByName('LabelColor').AsInteger := cxImageComboBoxZustand.EditValue;

      // State
      if cxCheckBoxTerminAbgesch.Checked then
        Q.ParamByName('State').AsInteger := 1
      else
        Q.ParamByName('State').AsInteger := 0;

      // Options
      Q.ParamByName('Options').AsInteger := 0;

      Q.ExecSQL;

      // Get the new ID
      Q.SQL.Text := 'SELECT @@IDENTITY AS NewID';
      Q.Open;

      if not Q.FieldByName('NewID').IsNull then
        Result := Q.FieldByName('NewID').AsInteger;

      Q.Close;

      // Add participants
      if Result > 0 then begin
        for PersonID in SelectedIDs do begin
          SaveKontaktKalenderTeilnehmer(Result, PersonID, MyDataModule.MyConnections);
        end;
      end;
    end;

  finally
    Q.Free;
  end;
end;


procedure TTerminEditor.CheckBoxTerminAbgesch;
begin

end;
end.
