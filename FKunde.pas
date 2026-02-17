unit FKunde;

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
  dxLayoutcxEditAdapters, dxLayoutContainer, cxContainer, cxEdit, Vcl.ComCtrls,
  Vcl.ToolWin, cxTextEdit, cxClasses, dxLayoutControl,MyPapierkorb, dxCore,
  cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar, cxMemo,KVDataModule,
  Data.DB, MemDS, DBAccess, MSAccess, cxLabel,System.DateUtils,MyFHistoryStatus,
  cxCurrencyEdit,MyMemoForm,MyVIPinfo;

type
  TFrameKundeVIP = class(TFrame)
    dxPanelKunde: TdxPanel;
    dxLayoutControlKundeGroup_Root: TdxLayoutGroup;
    dxLayoutControlKunde: TdxLayoutControl;
    cxTextEditPersonalmitarbeiter: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroupPrioritaet: TdxLayoutGroup;
    cxTextEditStatus: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    ToolBar1: TToolBar;
    dxLayoutItem3: TdxLayoutItem;
    ToolButtonStory: TToolButton;
    cxDateEditVipSince: TcxDateEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxMemoBesondereNotizen: TcxMemo;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    cxLabelJahr: TcxLabel;
    cxCurrencyEditGesamtUmsatz: TcxCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    ToolButTransaktion: TToolButton;
    procedure ToolButtonStoryClick(Sender: TObject);
    procedure cxMemoBesondereNotizenDblClick(Sender: TObject);
    procedure ToolButTransaktionClick(Sender: TObject);
  private
        FPersonID: Integer;
  public
     procedure LoadVIPKundeInfo(APersonID: Integer);
     procedure MemoFormCloseHandler(Sender: TObject; var Action: TCloseAction);
     var KontaktName:string;
end;

implementation

{$R *.dfm}


{LoadVIPKundeInfo}
procedure TFrameKundeVIP.LoadVIPKundeInfo(APersonID: Integer);
var
  Q: TMSQuery;
  VipSinceDate: TDateTime;
  YearsAsVIP: Integer;
begin
  FPersonID := APersonID;
  Q := TMSQuery.Create(nil);
  try
    Q.Connection := MyDataModule.MyConnections;
    Q.SQL.Text :=
      'SELECT VIPStatusID, TotalRevenue, LastPurchaseDate, VipSince, PersonalManager, SpecialNotes ' +
      'FROM Kontakt ' +
      'WHERE PersonID = :PID';
    Q.ParamByName('PID').AsInteger := FPersonID;
    Q.Open;

    if not Q.Eof then  begin
      cxTextEditPersonalmitarbeiter.Text := Q.FieldByName('PersonalManager').AsString;
      cxTextEditStatus.Text := Q.FieldByName('VIPStatusID').AsString;
      cxCurrencyEditGesamtUmsatz.Value := Q.FieldByName('TotalRevenue').AsFloat;
      cxDateEditVipSince.Date := Q.FieldByName('VipSince').AsDateTime;
      cxMemoBesondereNotizen.Text := Q.FieldByName('SpecialNotes').AsString;

      //
      if not Q.FieldByName('VipSince').IsNull then  begin
        VipSinceDate := Q.FieldByName('VipSince').AsDateTime;
        YearsAsVIP := YearsBetween(Date, VipSinceDate); //  DateUtils
        cxLabelJahr.Caption := IntToStr(YearsAsVIP) + ' (Jahre)';
      end
      else
        cxLabelJahr.Caption := '';
    end  else  begin
      cxTextEditPersonalmitarbeiter.Clear;
      cxTextEditStatus.Clear;
      cxCurrencyEditGesamtUmsatz.Clear;
      cxDateEditVipSince.Clear;
      cxMemoBesondereNotizen.Clear;
      cxLabelJahr.Caption := '';
    end;
  finally
    Q.Free;
  end;
end;



{History Form}
procedure TFrameKundeVIP.ToolButtonStoryClick(Sender: TObject);
var Historyform:TMyFStatusHistory;

begin
  if FPersonID <= 0 then begin
    ShowMessage('Kein Kontakt ausgewählt');
    Exit;
  end;
  Historyform:=TMyFStatusHistory.Create(Self);
  try
    HistoryForm.LoadHistoryForPerson(FPersonID,ttStatusHistory);
    HistoryForm.UpdateCaption;
    Historyform.Caption:='Status-Historie '+ KontaktName +'[ID ' + IntToStr(FPersonID) +']';
    Historyform.ShowModal;
  finally
    Historyform.Free;
  end;
end;

{MemoForm}
procedure TFrameKundeVIP.cxMemoBesondereNotizenDblClick(Sender: TObject);
var MemoForm: TMemoForm;
begin
  try
    MemoForm := TMemoForm.Create(Application);
    MemoForm.Tag := NativeInt(Self);
    MemoForm.OnClose := MemoFormCloseHandler;
      if Assigned(MemoForm.cxMemoKomponent) then
        MemoForm.cxMemoKomponent.Text := cxMemoBesondereNotizen.Text;
        MemoForm.Caption := 'Besondere Notizen bearbeiten'+KontaktName +'[KontaktID ' + IntToStr(FPersonID)+']';
        MemoForm.Show;
//    if Assigned(MemoForm.cxMemoKomponent) then begin
//        cxMemoBesondereNotiz.Text := MemoForm.cxMemoKomponent.Text;
//    end;                                                                   //Baustelle
  finally
      //MemoForm.Free;
  end;
end;

procedure TFrameKundeVIP.MemoFormCloseHandler(Sender: TObject; var Action: TCloseAction);
var
  MemoForm: TMemoForm;
begin
  MemoForm := Sender as TMemoForm;
  if MemoForm.ModalResult = mrOk then begin
    if Assigned(MemoForm.cxMemoKomponent) then begin
      cxMemoBesondereNotizen.Text := MemoForm.cxMemoKomponent.Text;
    end;
  end;
  Action := caFree;
end;

{Alle Info}
procedure TFrameKundeVIP.ToolButTransaktionClick(Sender: TObject);
var
  AlleVIPFormInfo: TFormVIPinfo;
begin
  try
    AlleVIPFormInfo := TFormVIPinfo.Create(Application);
    AlleVIPFormInfo.ShowModal;
  finally
    AlleVIPFormInfo.Free;
  end;
end;                        //////////////////////baustelle

end.
