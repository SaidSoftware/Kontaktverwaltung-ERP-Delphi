unit MyVIPStatusBearbeiten;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,MyAddToTable, cxGraphics, cxControls,
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
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, cxClasses, dxLayoutContainer,
  dxLayoutControl, dxPanel, dxLayoutcxEditAdapters, cxContainer, cxEdit, dxBar,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox,MyPapierkorb,
  System.ImageList, Vcl.ImgList, cxImageList,KVDataModule, Data.DB, MemDS,
  DBAccess, MSAccess,MyMessageBox, cxCheckBox, cxCheckComboBox;
type
  TFormMode = (fmAdd, fmEdit);
type
  TStatusBearbeitenNeuForm = class(TForm)
    dxPanelBearbeiten: TdxPanel;
    dxLayoutControlBearbeitenGroup_Root: TdxLayoutGroup;
    dxLayoutControlBearbeiten: TdxLayoutControl;
    cxTextEditRabatt: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxTextEditStatusname: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButtonSave: TdxBarLargeButton;
    cxImageList1: TcxImageList;
    MSQuery1: TMSQuery;
    cxTextEditMinUmsatz: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxComboBoxgeGeldtyp: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButtonSaveClick(Sender: TObject);
  private
    FMode: TFormMode;
    FID: Integer;
  public
    procedure SetWindowIcon(AIconIndex: Integer);
    procedure LoadDataForEdit(FID: Integer);
    constructor Create(AOwner: TComponent; AMode: TFormMode; AID: Integer=0); reintroduce;
    procedure Speichern;
    function ValidiereKategorie(EditTexts: TcxTextEdit): Boolean;
end;

var
  StatusBearbeitenNeuForm: TStatusBearbeitenNeuForm;

implementation

{$R *.dfm}

{Create}
constructor TStatusBearbeitenNeuForm.Create(AOwner: TComponent; AMode: TFormMode; AID: Integer=0);
begin
  inherited Create(AOwner);
  FMode := AMode;
  FID := AID;

  if FMode = fmEdit then begin
   LoadDataForEdit(FID);
  end;
end;

{SetWindowIcon}
procedure TStatusBearbeitenNeuForm.SetWindowIcon(AIconIndex: Integer);
begin
  if Assigned(cxImageList1) and (AIconIndex >= 0) then
    cxImageList1.GetIcon(AIconIndex, Self.Icon);
end;


{Speichern}
procedure TStatusBearbeitenNeuForm.dxBarLargeButtonSaveClick(Sender: TObject);
begin
  Speichern;
end;

{Save}
procedure TStatusBearbeitenNeuForm.Speichern;
var
  Statusname: string;
  NewID: Integer;
  StatusID:integer;
  Rabatt: double;
  MinUmsatz:double;
begin
  Statusname := cxTextEditStatusname.Text;

  if cxTextEditRabatt.Text <> '' then begin
    Rabatt := StrToFloat(cxTextEditRabatt.Text)
  end else begin
    Rabatt := 0;
  end;

  if cxTextEditMinUmsatz.Text <> '' then begin
    MinUmsatz := StrToFloat(cxTextEditMinUmsatz.Text)
  end else begin
    MinUmsatz := 0;
  end;

  if Statusname = '' then  begin
    cxTextEditRabatt.Style.BorderColor := clRed;
    cxTextEditMinUmsatz.Style.BorderColor:= clRed;
    MyMesBox.Caption := 'Fehler';
    MyMesBox.ShowMessage('Bitte füllen Sie das Feld aus!', mtError, [mbYes]);
    Exit;
  end
  else
    cxTextEditRabatt.Style.BorderColor := clWindowFrame;
    cxTextEditMinUmsatz.Style.BorderColor := clWindowFrame;

  if not ValidiereKategorie(cxTextEditStatusname) then
    Exit;

  with MSQuery1 do  begin
    Connection := MyDataModule.MyConnections;

    if FMode = fmEdit then begin
      StatusID := FID;
      SQL.Text :=
        'UPDATE VipStatus ' +
        'SET Statusname = :Statusname, Rabatt = :Rabatt, MinUmsatz = :MinUmsatz ' +
        'WHERE VipStatusID = :VipStatusID';
      ParamByName('Statusname').AsString := Statusname;
      ParamByName('Rabatt').AsFloat  := Rabatt;
      ParamByName('VipStatusID').AsInteger := StatusID;
      ParamByName('MinUmsatz').AsFloat  :=MinUmsatz;
      ExecSQL;
    end    else if FMode = fmAdd then    begin
      SQL.Text := 'INSERT INTO VipStatus (Statusname, Rabatt,MinUmsatz) ' +
                  'VALUES (:Statusname, :Rabatt,:MinUmsatz); ' +
                  'SELECT SCOPE_IDENTITY() AS VipStatusID;';
      ParamByName('Statusname').AsString := Statusname;
      ParamByName('Rabatt').AsFloat  := Rabatt;
      ParamByName('MinUmsatz').AsFloat :=MinUmsatz;
      Open;

      if not EOF then      begin
        NewID := FieldByName('VipStatusID').AsInteger;
        FID := NewID;
      end;
    end;

    Connection.Commit;
  end;

  ModalResult := mrOk;
end;


{Validierung}
function TStatusBearbeitenNeuForm.ValidiereKategorie(EditTexts: TcxTextEdit): Boolean;
var
  Statusname,Rabatt,MinUmsatz: string;
  VipStatusID: integer;
  Q: TMSQuery;
begin
  Result := True;
  Statusname := EditTexts.Text;
  Rabatt:=EditTexts.Text;
  MinUmsatz:=EditTexts.Text;
//  VipStatusID := EditTexts.Text;

  Q := TMSQuery.Create(nil);
  try
    Q.Connection := MyDataModule.MyConnections;

    //  Statusname
    Q.SQL.Text := 'SELECT VipStatusID FROM VipStatus WHERE Statusname = :Statusname';
    Q.ParamByName('Statusname').AsString := Statusname;
    Q.Open;

    if not Q.Eof then  begin
      if (FMode = fmAdd) or (Q.FieldByName('VipStatusID').AsInteger <> FID) then begin
        MyMesBox.Caption := 'Fehler';
        MyMesBox.ShowMessage('Eine Kategorie mit dem Namen "' + Statusname + '" existiert bereits.', mtError, [mbYes]);
        Result := False;
        Exit;
      end;
    end;

    Q.Close;

    //  VipStatusID
    Q.SQL.Text := 'SELECT Statusname FROM VipStatus WHERE VipStatusID = :VipStatusID';
   // Q.ParamByName('VipStatusID').AsInteger := VipStatusID;
    Q.Open;

    if not Q.Eof then begin
      if (FMode = fmAdd) or (VipStatusID <> FID) then begin
        MyMesBox.Caption := 'Fehler';
        MyMesBox.ShowMessage('Eine Kategorie mit dieser Farbekombination existiert bereits.', mtError, [mbYes]);
        Result := False;
        Exit;
      end;
    end;

  finally
    Q.Free;
  end;
end;



{Create}
procedure TStatusBearbeitenNeuForm.FormCreate(Sender: TObject);
begin

end;

{Load Data Edit}
procedure TStatusBearbeitenNeuForm.LoadDataForEdit(FID: Integer);
var
  VipStatusID: Integer;
  Statusname, Rabatt,MinUmsatz: string;
begin
  if FID = -1 then
    raise Exception.Create('Fehler: Ungültige Kategorie-ID.');

  with MSQuery1 do begin
    Close;
    SQL.Text := 'SELECT VIPStatusID, Statusname, Rabatt,MinUmsatz FROM VipStatus WHERE VipStatusID = :VipStatusID';
    ParamByName('VipStatusID').AsInteger := FID;
    Open;

    if RecordCount = 0 then
      raise Exception.Create('VipStatusID nicht gefunden.');

    Statusname := FieldByName('Statusname').AsString;
    Rabatt := FieldByName('Rabatt').AsString;
    MinUmsatz:= FieldByName('MinUmsatz').AsString;

    cxTextEditStatusname.Text := Statusname;
    cxTextEditRabatt.Text := Rabatt;
    cxTextEditMinUmsatz.Text :=MinUmsatz;
    Close;
  end;
end;



end.
