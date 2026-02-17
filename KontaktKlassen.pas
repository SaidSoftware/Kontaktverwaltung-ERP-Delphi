unit KontaktKlassen;

interface

uses
  System.SysUtils, System.Classes, Vcl.Grids, Generics.Collections,cxBarEditItem, cxButtonEdit, dxRibbon, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, DBAccess, MSAccess, MemDS, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl,
  dxLayoutLookAndFeels,KVDataModule,cxGridBandedTableView, cxGridDBBandedTableView;

type

TTelefon = class
  private
    FComboboxT1:string;
    FComboboxT2:string;
    FComboboxT3:string;

    FNummern: string;
    FNummerzwei: string;
    FNummerdrei: string;
  public
    constructor Create(const AComboboxT1, ANummern,AComboboxT2,ANummerzwei,AComboboxT3,ANummerdrei: string);

    property ComboboxT1: string read FComboboxT1 write FComboboxT1;
    property Nummern: string read FNummern write FNummern;

    property ComboboxT2: string read FComboboxT2 write FComboboxT2;
    property Nummerzwei: string read FNummerzwei write FNummerzwei;

    property ComboboxT3: string read FComboboxT3 write FComboboxT3;
    property Nummerdrei: string read FNummerdrei write FNummerdrei;
end;

TEmail = class

  private
    FComboboxE1:string;
    FComboboxE2:string;
    FComboboxE3:string;

    FEmails: string;
    FEmailzwei: string;
    FEmaildrei: string;

  public
    constructor Create(const AComboboxE1,AEmails,AComboboxE2, AEmailzwei,AComboboxE3, AEmaildrei: string);

    property ComboboxE1: string read FComboboxE1 write FComboboxE1;
    property Emails: string read FEmails write FEmails;

    property ComboboxE2: string read FComboboxE2 write FComboboxE2;
    property Emailzwei: string read FEmailzwei write FEmailzwei;

    property ComboboxE3: string read FComboboxE3 write FComboboxE3;
    property Emaildrei: string read FEmaildrei write FEmaildrei;

  end;

TAdresse = class                           //Adresse
  private
    FPLZ: string;
    FOrt: string;
    FStrasse: string;
    FHausnummer: string;
  public
    constructor Create(const APLZ, AOrt, AStrasse, AHausnummer: string);
    property PLZ: string read FPLZ write FPLZ;
    property Ort: string read FOrt write FOrt;
    property Strasse: string read FStrasse write FStrasse;
    property Hausnummer: string read FHausnummer write FHausnummer;

  end;


TPerson = class                          //TPerson the  main class
  private
    FAnredeTitel: TArray< string>;
    FName: string;
    FVorname: string;
    FGeburtsdatum: TDate;
    FTelefon: TTelefon;
    FEmail: TEmail;
    FAdresse: TAdresse;

  public
    constructor Create(const AAnredeTitel: array of string; const AName, AVorname: string;
  ATelefon: TTelefon; AEmail: TEmail; AAdresse: TAdresse; AGeburtsdatum: TDate);


    property AnredeTitel: TArray< string> read FAnredeTitel write FAnredeTitel;
    property Name: string read FName write FName;
    property Vorname: string read FVorname write FVorname;
    property Geburtsdatum: TDate read FGeburtsdatum write FGeburtsdatum;
    property Telefon: TTelefon read FTelefon write FTelefon;
    property Email: TEmail read FEmail write FEmail;
    property Adresse: TAdresse read FAdresse write FAdresse;


    procedure AddToGridWithImage(GridView: TcxGridDBBandedTableView; const BildBase64: string);
    procedure LoadFromGrid(GridView: TcxGridDBTableView; NewRowIndex: Integer);

  end;

implementation

{ TTelefon }

constructor TTelefon.Create(const AComboboxT1, ANummern,AComboboxT2,ANummerzwei,AComboboxT3,ANummerdrei: string);
begin
  FComboboxT1 := AComboboxT1;
  FNummern := ANummern;

  FComboboxT2 := AComboboxT2;
  FNummerzwei := ANummerzwei;

  FComboboxT3 := AComboboxT3;
  FNummerdrei := ANummerdrei;

end;

{TEmail}

constructor TEmail.Create(const AComboboxE1, AEmails,AComboboxE2,AEmailzwei,AComboboxE3, AEmaildrei: string);
begin
  FComboboxE1 := AComboboxE1;
  FEmails := AEmails;

  FComboboxE2 := AComboboxE2;
  FEmailzwei := AEmailzwei;

  FComboboxE3 := AComboboxE3;
  FEmaildrei := AEmaildrei;
end;


{ TAdresse }
constructor TAdresse.Create(const  APLZ, AOrt, AStrasse, AHausnummer: string);
begin
  FPLZ := APLZ;
  FOrt := AOrt;
  FStrasse := AStrasse;
  FHausnummer := AHausnummer;
end;

{ TPerson }
constructor TPerson.Create(const AAnredeTitel: array of string; const AName, AVorname: string;
  ATelefon: TTelefon; AEmail: TEmail; AAdresse: TAdresse; AGeburtsdatum: TDate);
begin
  SetLength(FAnredeTitel, Length(AAnredeTitel));

  for var i := 0 to High(AAnredeTitel) do begin
    FAnredeTitel[I] := AAnredeTitel[I];
  end;
  FName := AName;
  FVorname := AVorname;
  FTelefon := ATelefon;
  FEmail := AEmail;
  FAdresse := AAdresse;
  FGeburtsdatum := AGeburtsdatum;
end;

{AddToGrid}
procedure TPerson.AddToGridWithImage(GridView: TcxGridDBBandedTableView; const BildBase64: string);
var
  NewRowIndex: Integer;
  BenutzerID: Integer;
begin
  with TMyDataModule(MyDataModule).MyQueryForGrid do begin
    Close;
    SQL.Text := 'SELECT MAX(PersonID) AS MaxPersonID FROM Kontaktview';
    Open;

    if not FieldByName('MaxPersonID').IsNull then
      BenutzerID := FieldByName('MaxPersonID').AsInteger
    else
      BenutzerID := 0; // Wenn keine ID gibt´s
  end;

  GridView.DataController.AppendRecord;
  NewRowIndex := GridView.DataController.RecordCount - 1;

  GridView.DataController.Values[NewRowIndex, 0] := IntToStr(BenutzerID); // ID
  GridView.DataController.Values[NewRowIndex, 1] := AnredeTitel[0];       // Anrede
  GridView.DataController.Values[NewRowIndex, 2] := AnredeTitel[1];       // Titel
  GridView.DataController.Values[NewRowIndex, 3] := Name;                 // Name
  GridView.DataController.Values[NewRowIndex, 4] := Vorname;              // Vorname
  GridView.DataController.Values[NewRowIndex, 5] := DateToStr(Geburtsdatum); // Geburtsdatum
  // Telefon
  GridView.DataController.Values[NewRowIndex, 6] := Telefon.ComboboxT1;
  GridView.DataController.Values[NewRowIndex, 7] := Telefon.Nummern;
  GridView.DataController.Values[NewRowIndex, 8] := Telefon.ComboboxT2;
  GridView.DataController.Values[NewRowIndex, 9] := Telefon.Nummerzwei;
  GridView.DataController.Values[NewRowIndex, 10] := Telefon.ComboboxT3;
  GridView.DataController.Values[NewRowIndex, 11] := Telefon.Nummerdrei;
  // Email
  GridView.DataController.Values[NewRowIndex, 12] := Email.ComboboxE1;
  GridView.DataController.Values[NewRowIndex, 13] := Email.Emails;
  GridView.DataController.Values[NewRowIndex, 14] := Email.ComboboxE2;
  GridView.DataController.Values[NewRowIndex, 15] := Email.Emailzwei;
  GridView.DataController.Values[NewRowIndex, 16] := Email.ComboboxE3;
  GridView.DataController.Values[NewRowIndex, 17] := Email.Emaildrei;
  // Adress
  GridView.DataController.Values[NewRowIndex, 18] := Adresse.PLZ;
  GridView.DataController.Values[NewRowIndex, 19] := Adresse.Ort;
  GridView.DataController.Values[NewRowIndex, 20] := Adresse.Strasse;
  GridView.DataController.Values[NewRowIndex, 21] := Adresse.Hausnummer;

  // Notizen
  // Bild
  GridView.DataController.Values[NewRowIndex, 23] := BildBase64;
end;


{LoadFromGrid}
procedure TPerson.LoadFromGrid(GridView: TcxGridDBTableView; NewRowIndex: Integer);
var
  TelefonNummer, TelefonNummerzwei, TelefonNummerdrei: string;
  EmailAddr, EmailAddrzwei, EmailAddrdrei: string;
  Bild: string;
begin
  FAnredeTitel[0] := GridView.DataController.Values[1, NewRowIndex];  // Anrede
  FAnredeTitel[1] := GridView.DataController.Values[2, NewRowIndex];  // Titel
  Name := GridView.DataController.Values[3, NewRowIndex];             // Name
  Vorname := GridView.DataController.Values[4, NewRowIndex];          // Vorname

  if GridView.DataController.Values[5, NewRowIndex] <> '' then
    Geburtsdatum := StrToDate(GridView.DataController.Values[5, NewRowIndex])  // Geburtsdatum
  else
    Geburtsdatum := Now;

  // Telefons
  FTelefon.FComboboxT1 := GridView.DataController.Values[6, NewRowIndex];  // ComboboxTelefon
  TelefonNummer := GridView.DataController.Values[7, NewRowIndex];  // TelefonNummer
  FTelefon.FNummern := TelefonNummer;

  FTelefon.FComboboxT2 := GridView.DataController.Values[8, NewRowIndex];  // ComboboxTelefon 2
  TelefonNummerzwei := GridView.DataController.Values[9, NewRowIndex];  // TelefonNummer 2
  FTelefon.FNummerzwei := TelefonNummerzwei;

  FTelefon.FComboboxT3 := GridView.DataController.Values[10, NewRowIndex]; // ComboboxTelefon 3
  TelefonNummerdrei := GridView.DataController.Values[11, NewRowIndex];  // TelefonNummer 3
  FTelefon.FNummerdrei := TelefonNummerdrei;

  // Emails
  FEmail.FComboboxE1 := GridView.DataController.Values[12, NewRowIndex];  // ComboboxEmail
  EmailAddr := GridView.DataController.Values[13, NewRowIndex];  // Email
  FEmail.FEmails := EmailAddr;

  FEmail.FComboboxE2 := GridView.DataController.Values[14, NewRowIndex];  // ComboboxEmailzwei
  EmailAddrzwei := GridView.DataController.Values[15, NewRowIndex];  // Emailzwei
  FEmail.FEmailzwei := EmailAddrzwei;

  FEmail.FComboboxE3 := GridView.DataController.Values[16, NewRowIndex];  // ComboboxEmaildrei
  EmailAddrdrei := GridView.DataController.Values[17, NewRowIndex];  // Emaildrei
  FEmail.FEmaildrei := EmailAddrdrei;

  // Check
  if Assigned(FAdresse) then
    FAdresse.Free;

  // Adresse
  FAdresse := TAdresse.Create(
    GridView.DataController.Values[18, NewRowIndex],  // PLZ
    GridView.DataController.Values[19, NewRowIndex],  // Ort
    GridView.DataController.Values[20, NewRowIndex],  // Strasse
    GridView.DataController.Values[21, NewRowIndex]  // Hausnummer
);

  Bild := GridView.DataController.Values[23, NewRowIndex];  // Bild

  // Bild
  if Bild <> '' then begin
  end;


end;


end.





