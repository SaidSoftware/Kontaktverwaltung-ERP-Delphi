unit MyKontaktAuswahl;

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
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxLayoutControl, dxPanel,MyPapierkorb,MyMessageBox,KVDataModule,
  cxGridCustomLayoutView, cxGridCardView, cxGridDBCardView,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutcxEditAdapters, cxContainer, cxTextEdit, MemDS, DBAccess, MSAccess,
  cxCheckBox, Datasnap.DBClient,System.Generics.Collections, cxImageComboBox;

function SaveKontaktKalenderTeilnehmer(const KalenderID, PersonID: Integer; Conn: TMSConnection): Boolean;

type TMode =(TtKAuswahl,TtEAuswahl);

type
  TKontaktauswahl = class(TForm)
    dxPanelAuswahl: TdxPanel;
    dxLayoutControlAuswahlGroup_Root: TdxLayoutGroup;
    dxLayoutControlAuswahl: TdxLayoutControl;
    cxGridKAuswahlDBTableViewKAuswahl: TcxGridDBTableView;
    cxGridKAuswahlLevel1: TcxGridLevel;
    cxGridKAuswahl: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    cxGridKAuswahlDBCardView1: TcxGridDBCardView;
    cxButtonFertig: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    cxTextEditKSuchen: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxButtonKSuchen: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    MSQueryKAuswahl: TMSQuery;
    MSConnection1: TMSConnection;
    MSDataSource1: TMSDataSource;
    cxGridKAuswahlDBCardView1PersonID: TcxGridDBCardViewRow;
    cxGridKAuswahlDBCardView1Vorname: TcxGridDBCardViewRow;
    cxGridKAuswahlDBCardView1Name: TcxGridDBCardViewRow;
    cxGridKAuswahlDBTableViewKAuswahlPersonID: TcxGridDBColumn;
    cxGridKAuswahlDBTableViewKAuswahlVorname: TcxGridDBColumn;
    cxGridKAuswahlDBTableViewKAuswahlName: TcxGridDBColumn;
    cxGridKAuswahlDBTableViewKAuswahlColumnCheckBox: TcxGridDBColumn;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    procedure cxButtonFertigClick(Sender: TObject);
    procedure cxButtonKSuchenClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
      FSelectedManagerName: string;
      FSelectedManagerID: Integer;

  public
    { Public-Deklarationen }
    FKalenderID: Integer;
    SelectedIDs: TList<Integer>;
    SelectedNames: TStringList;
    procedure LoadAktiveKontakte;
    property KalenderID: Integer read FKalenderID write FKalenderID;
    property SelectedManagerName: string read FSelectedManagerName;
    property SelectedManagerID: Integer read FSelectedManagerID;
    procedure LoadKontakteWithSelection(const SelectedIDs: TList<Integer>); overload;
    procedure LoadKontakteWithSelection; overload;
    function TeilnehmerAlreadyExists(const KalenderID, PersonID: Integer): Boolean;
    function GetSelectedPersonIDs: TList<Integer>;
    procedure SetSelectedParticipants(const ParticipantIDs: TList<Integer>);
    procedure UpdateTable;
    procedure SetTabMode(Mode: TMode);
  var
       TtKontaktAuswahl:TMode;
end;

var
  Kontaktauswahl: TKontaktauswahl;

implementation

{$R *.dfm}


{Load Kontakt}
procedure TKontaktauswahl.LoadKontakteWithSelection;
begin
  LoadKontakteWithSelection(nil);
end;

{Save}
function SaveKontaktKalenderTeilnehmer(const KalenderID, PersonID: Integer; Conn: TMSConnection): Boolean;
var
  Q: TMSQuery;
begin
  Result := False;
  Q := TMSQuery.Create(nil);
  try
    Q.Connection := Conn;
    Q.SQL.Text :=
      'INSERT INTO KontaktKalenderTeilnehmern (KalenderID, PersonID, IsRequired, IsSelected) ' +
      'VALUES (:KalenderID, :PersonID, 0, 1)';
    Q.ParamByName('KalenderID').AsInteger := KalenderID;
    Q.ParamByName('PersonID').AsInteger := PersonID;
    Q.ExecSQL;
    Result := True;
  except
    on E: Exception do
      ShowMessage('Fehler beim Speichern: ' + E.Message);
  end;
  Q.Free;
end;



{Exists}
function TKontaktauswahl.TeilnehmerAlreadyExists(const KalenderID, PersonID: Integer): Boolean;
var
  Q: TMSQuery;
begin
  Q := TMSQuery.Create(nil);
  try
    Q.Connection := MSConnection1;
    Q.SQL.Text :=
      'SELECT COUNT(*) FROM KontaktKalenderTeilnehmern WHERE KalenderID = :KID AND PersonID = :PID';
    Q.ParamByName('KID').AsInteger := KalenderID;
    Q.ParamByName('PID').AsInteger := PersonID;
    Q.Open;
    Result := Q.Fields[0].AsInteger > 0;
  finally
    Q.Free;
  end;
end;

{Fertig}
procedure TKontaktauswahl.cxButtonFertigClick(Sender: TObject);
var
  FullName: string;
begin
 if TtKontaktAuswahl=TtEAuswahl then begin
    ClientDataSet1.First;
    while not ClientDataSet1.Eof do begin
      if ClientDataSet1.FieldByName('IsSelected').AsBoolean then begin
        FSelectedManagerName := ClientDataSet1.FieldByName('Vorname').AsString + ' ' +
                                 ClientDataSet1.FieldByName('Name').AsString;
        FSelectedManagerID := ClientDataSet1.FieldByName('PersonID').AsInteger;
        Break;
      end;
      ClientDataSet1.Next;
    end;
 end else begin
  SelectedNames.Clear;
  SelectedIDs.Clear;
  ClientDataSet1.First;
  while not ClientDataSet1.Eof do begin
    if ClientDataSet1.FieldByName('IsSelected').AsBoolean  then begin
      FullName := ClientDataSet1.FieldByName('Vorname').AsString + ' ' +
                  ClientDataSet1.FieldByName('Name').AsString;
      SelectedNames.Add(FullName);
      SelectedIDs.Add(ClientDataSet1.FieldByName('PersonID').AsInteger);
    end;
    ClientDataSet1.Next;
  end;
 end;
  ModalResult := mrOk;
end;

{Suchen}
procedure TKontaktauswahl.cxButtonKSuchenClick(Sender: TObject);
var
  SearchText: string;
  CurrentSelectedIDs: TList<Integer>;
begin
  If TtKontaktAuswahl = TtEAuswahl then begin
     searchText := Trim(cxTextEditKSuchen.Text);
     MSQueryKAuswahl.Close;
   if SearchText = '' then
      MSQueryKAuswahl.SQL.Text:='Select PersonID, Vorname,Name FROM Kontakt WHERE ISArchived = 0 AND KategorieID =9 Order By Name,Vorname'
    else
     MSQueryKAuswahl.SQL.Text :=
        'SELECT PersonID, Vorname, Name ' +
        'FROM Kontakt ' +
        'WHERE ISArchived = 0 ' +
        'AND KategorieID = 9 ' +
        'AND (Vorname LIKE :search OR Name LIKE :search) ' +
        'ORDER BY Vorname, Name';

      if searchText <> '' then
        MSQueryKAuswahl.ParamByName('Search').AsString := '%' + searchText + '%';

      MSQueryKAuswahl.Open;
  end else begin
    CurrentSelectedIDs := GetSelectedPersonIDs;
    try
      searchText := Trim(cxTextEditKSuchen.Text);

      MSQueryKAuswahl.Close;
      if searchText = '' then
        MSQueryKAuswahl.SQL.Text := 'SELECT PersonID, Vorname, Name FROM Kontakt WHERE IsArchived = 0 ORDER BY Name, Vorname'
      else
        MSQueryKAuswahl.SQL.Text :=
          'SELECT PersonID, Vorname, Name FROM Kontakt ' +
          'WHERE IsArchived = 0 AND (Vorname LIKE :Search OR Name LIKE :Search) ' +
          'ORDER BY Name, Vorname';

      if searchText <> '' then
        MSQueryKAuswahl.ParamByName('Search').AsString := '%' + searchText + '%';

      MSQueryKAuswahl.Open;
      LoadKontakteWithSelection(CurrentSelectedIDs);
    finally
      CurrentSelectedIDs.Free;
    end;
  end;
end;



{Create}
procedure TKontaktauswahl.FormCreate(Sender: TObject);
begin
 SelectedNames := TStringList.Create;
 SelectedIDs := TList<Integer>.Create;
 UpdateTable;
end;

{Upadate}
procedure TKontaktAuswahl.UpdateTable;
var
  RecordCount: Integer;
begin
  if MSQueryKAuswahl.Active then
    RecordCount := MSQueryKAuswahl.RecordCount
  else  begin
    MSQueryKAuswahl.Open;
    RecordCount := MSQueryKAuswahl.RecordCount;
  end;
  dxLayoutGroup1.CaptionOptions.Text:='Alle aktuellen Mitarbeiter' + ' ('+IntToStr(RecordCount)+')';
end;

///Weiter hier Mitarbeiter oder Kunde?

{Destroy}
procedure TKontaktauswahl.FormDestroy(Sender: TObject);
begin
  SelectedNames.Free;
  SelectedIDs.Free;
end;

{Show}
procedure TKontaktauswahl.FormShow(Sender: TObject);
begin
  if TtKontaktAuswahl=TtEAuswahl then begin
    cxGridKAuswahlDBTableViewKAuswahl.DataController.DataSource:=MSDataSource1;
    MSQueryKAuswahl.SQL.Text :='SELECT PersonID,Vorname,Name From Kontakt Where IsArchived = 0 AND KategorieID =9 Order By Vorname ASC';
    UpdateTable;
    MSQueryKAuswahl.Open;
  end else begin
    MSQueryKAuswahl.SQL.Text := 'SELECT PersonID, Vorname, Name,KategorieID FROM Kontakt WHERE IsArchived = 0 AND KategorieID=9 ORDER BY Name, Vorname';
    MSQueryKAuswahl.Open;
    LoadKontakteWithSelection(SelectedIDs);
  end;
end;


{LoadAktive Kontakte}
procedure TKontaktauswahl.LoadAktiveKontakte;
begin
  MSQueryKAuswahl.Close;
  MSQueryKAuswahl.SQL.Text :=
    'SELECT PersonID, Vorname, Name, CAST(0 AS BIT) AS IsSelected FROM Kontakt WHERE IsArchived = 0';
  MSQueryKAuswahl.Open;
end;


{Load Kontakte with Selection}
procedure TKontaktauswahl.LoadKontakteWithSelection(const SelectedIDs: TList<Integer>);
var
  QTeilnehmer: TMSQuery;
  SelectedMap: TDictionary<Integer, Boolean>;
  PersonID: Integer;
  i: Integer;
begin
  SelectedMap := TDictionary<Integer, Boolean>.Create;
  QTeilnehmer := TMSQuery.Create(nil);
  try

    if Assigned(SelectedIDs) then begin
      for i := 0 to SelectedIDs.Count - 1 do begin
        SelectedMap.AddOrSetValue(SelectedIDs[i], True);
      end;
    end else begin

      if FKalenderID > 0 then begin
        QTeilnehmer.Connection := MSConnection1;
        QTeilnehmer.SQL.Text :=
          'SELECT PersonID FROM KontaktKalenderTeilnehmern ' +
          'WHERE KalenderID = :KalenderID AND IsSelected = 1';
        QTeilnehmer.ParamByName('KalenderID').AsInteger := FKalenderID;
        QTeilnehmer.Open;

        while not QTeilnehmer.Eof do begin
          SelectedMap.AddOrSetValue(QTeilnehmer.FieldByName('PersonID').AsInteger, True);
          QTeilnehmer.Next;
        end;
        QTeilnehmer.Close;
      end;
    end;

    //ClientDataSet
    ClientDataSet1.Close;
    ClientDataSet1.FieldDefs.Clear;
    ClientDataSet1.FieldDefs.Add('PersonID', ftInteger);
    ClientDataSet1.FieldDefs.Add('Vorname', ftString, 50);
    ClientDataSet1.FieldDefs.Add('Name', ftString, 50);
    ClientDataSet1.FieldDefs.Add('IsSelected', ftBoolean);
    ClientDataSet1.CreateDataSet;

    MSQueryKAuswahl.Close;
    MSQueryKAuswahl.SQL.Text := 'SELECT PersonID, Vorname, Name FROM Kontakt WHERE IsArchived = 0 ORDER BY Name, Vorname';
    MSQueryKAuswahl.Open;

    MSQueryKAuswahl.First;
    while not MSQueryKAuswahl.Eof do begin
      PersonID := MSQueryKAuswahl.FieldByName('PersonID').AsInteger;
      ClientDataSet1.Append;
      ClientDataSet1.FieldByName('PersonID').AsInteger := PersonID;
      ClientDataSet1.FieldByName('Vorname').AsString := MSQueryKAuswahl.FieldByName('Vorname').AsString;
      ClientDataSet1.FieldByName('Name').AsString := MSQueryKAuswahl.FieldByName('Name').AsString;

      ClientDataSet1.FieldByName('IsSelected').AsBoolean := SelectedMap.ContainsKey(PersonID);

      ClientDataSet1.Post;
      MSQueryKAuswahl.Next;
    end;

    ClientDataSet1.First;

  finally
    QTeilnehmer.Free;
    SelectedMap.Free;
  end;
end;


{Get Selected PersonID}
function TKontaktauswahl.GetSelectedPersonIDs: TList<Integer>;
var
  SelectedList: TList<Integer>;
begin
  SelectedList := TList<Integer>.Create;
  try
    ClientDataSet1.First;
    while not ClientDataSet1.Eof do  begin
      if ClientDataSet1.FieldByName('IsSelected').AsBoolean then
        SelectedList.Add(ClientDataSet1.FieldByName('PersonID').AsInteger);
      ClientDataSet1.Next;
    end;
    Result := SelectedList;
  except
    SelectedList.Free;
    raise;
  end;
end;

{Set Selected Participants}
procedure TKontaktauswahl.SetSelectedParticipants(const ParticipantIDs: TList<Integer>);
var
  i: Integer;
begin
  SelectedIDs.Clear;
  if Assigned(ParticipantIDs) then begin
    for i := 0 to ParticipantIDs.Count - 1 do begin
      SelectedIDs.Add(ParticipantIDs[i]);
    end;
  end;
end;

{Set Mode}
procedure TKontaktAuswahl.SetTabMode(Mode:TMode);
begin
  TtKontaktAuswahl := Mode;
end;

end.
