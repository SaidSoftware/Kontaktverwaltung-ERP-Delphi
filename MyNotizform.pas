unit MyNotizform;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxClasses, dxLayoutContainer,
  dxLayoutControl, cxLabel, dxBar, MyPapierkorb, cxGeometry, dxFramedControl,
  dxLayoutcxEditAdapters, cxTextEdit, cxMemo, dxPanel, Data.DB, MemDS, DBAccess,
  MSAccess,KVDataModule, System.ImageList, Vcl.ImgList, cxImageList,MyMessageBox,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox;
type
  TFormMode = (fmAdd, fmEdit);
type
  TFormNotiz = class(TForm)
    dxBarManagerNotiz: TdxBarManager;
    dxBarManagerNotizBar1: TdxBar;
    dxBarLargeButSpeichern: TdxBarLargeButton;
    dxBarLargeButZurücksetzen: TdxBarLargeButton;
    dxBarLargeButSchliessen: TdxBarLargeButton;
    dxPanel1: TdxPanel;
    dxLayoutControlNotizen: TdxLayoutControl;
    cxMemoNotiz: TcxMemo;
    cxTextEditAutor: TcxTextEdit;
    dxLayoutControlNotizenGroup_Root: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutCreatedGroupInhalt: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxImageListNotiz: TcxImageList;
    cxImageComboBoxKate: TcxImageComboBox;
    dxLayoutItem4: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButZurücksetzenClick(Sender: TObject);
    procedure dxBarLargeButSchliessenClick(Sender: TObject);
    procedure dxBarLargeButSpeichernClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FPersonID: Integer;
    FNotizID: Integer;
    FReadOnlyMode: Boolean;

    procedure SetReadOnlyMode(Value: Boolean);

  public
    procedure SetWindowIcon(AIconIndex: Integer);
    procedure InitPersonAndNotiz(APersonID, ANotizID: Integer);
    procedure EditiereAuswahl(ADataset: TDataSet);
    procedure NeueNotiz;
    procedure LadeNotiz;
    procedure Speichern;
    var HasChanges:Boolean;

   property ReadOnlyMode: Boolean read FReadOnlyMode write SetReadOnlyMode;
end;

var
  FormNotiz: TFormNotiz;

implementation
{$R *.dfm}

uses Kontakt;

{SetRead}
procedure TFormNotiz.SetReadOnlyMode(Value: Boolean);
begin
  FReadOnlyMode := Value;

  dxBarLargeButSpeichern.Enabled := not Value;
  dxBarLargeButZurücksetzen.Enabled := not Value;
  dxLayoutControlNotizenGroup_Root.Enabled:= not Value;
end;


{SetWindowIcon}
procedure TFormNotiz.SetWindowIcon(AIconIndex: Integer);
begin
  if Assigned(cxImageListNotiz) and (AIconIndex >= 0) then
    cxImageListNotiz.GetIcon(AIconIndex, Self.Icon);
end;



{Schließen Button}
procedure TFormNotiz.dxBarLargeButSchliessenClick(Sender: TObject);
//var
//  UserResponse: Integer;
//  UserText: string;
begin
//  UserText := Trim(cxMemoNotiz.Text);
//
//  if FMode = fmEdit then begin
//    if HasChanges then begin
//      MyMesBox.Caption:='Bestätigen';
//      UserResponse := MyMesBox.ShowMessage(
//        'Soll dieser geänderte Inhalt verworfen werden?' + sLineBreak +
//        'Ihre Änderungen gehen verloren.',
//        mtConfirmation,
//        [mbYes, mbNo]
//      );
//      if UserResponse = mrYes then begin
//        Self.Close;
//      end;
//    end else begin
//      Close;
//      Exit;
//    end;
//  end else begin
//    if HasChanges then begin
//      MyMesBox.Caption:='Bestätigen';
//      UserResponse := MyMesBox.ShowMessage(
//        'Soll dieser neu angelegte  Inhalt "' + UserText + ' "' + sLineBreak +
//        ' verworfen werden? Ihre Änderungen gehen verloren.',
//        mtConfirmation,
//        [mbYes, mbNo]
//      );
//
//      if UserResponse = mrYes then begin
//        Self.Close;
//      end;
//    end else begin
//      Close;
//      Exit;
//    end;
//  end;
end;

{Speichern Button}
procedure TFormNotiz.dxBarLargeButSpeichernClick(Sender: TObject);
begin
  Speichern;
end;


{Speichern}
procedure TFormNotiz.Speichern;
var
  Qry: TMSQuery;
  SelectedIndex,SelectedValue:integer;
begin
  if Trim(cxMemoNotiz.Text) = '' then  begin
    MyMesBox := TMyMesBox.Create(nil);
      try
        MyMesBox.Caption := 'Fehler';
        MyMesBox.ShowMessage('Der Notizinhalt darf nicht leer sein', mtError, [mbYes, mbNo]);
        Exit;
      finally
        MyMesBox.Free;
      end;
  end;

  if FPersonID <= 0 then  begin
    ShowMessage('Kein gültiger Kontakt ausgewählt.');
    Exit;
  end;

  Qry := TMSQuery.Create(Self);
  try
    Qry.Connection := MyDataModule.MyConnections;

     SelectedIndex := cxImageComboBoxKate.ItemIndex;
    if SelectedIndex >= 0 then
    SelectedValue := cxImageComboBoxKate.Properties.Items[SelectedIndex].Value
   else
    SelectedValue := -1;

    if FNotizID = 0 then begin
      Qry.SQL.Text :=
        'INSERT INTO KontaktNotizen (PersonID, Inhalt, Autor, Kategorie, Erstellungsdatum, LetzteAenderung) ' +
        'VALUES (:PersonID, :Inhalt, :Autor, :Kategorie, GETDATE(), GETDATE())';

      Qry.ParamByName('PersonID').AsInteger := FPersonID;
      Qry.ParamByName('Inhalt').AsString := cxMemoNotiz.Text;
      Qry.ParamByName('Autor').AsString := cxTextEditAutor.Text;
      Qry.ParamByName('Kategorie').AsInteger := SelectedValue;
      Qry.ExecSQL;
    end  else    begin
      Qry.SQL.Text :=
        'UPDATE KontaktNotizen SET Inhalt = :Inhalt, Autor = :Autor, Kategorie = :Kategorie, LetzteAenderung = GETDATE() ' +
        'WHERE NotizID = :NotizID';

      Qry.ParamByName('Inhalt').AsString := cxMemoNotiz.Text;
      Qry.ParamByName('Autor').AsString := cxTextEditAutor.Text;
      Qry.ParamByName('Kategorie').AsInteger := SelectedValue;
      Qry.ParamByName('NotizID').AsInteger := FNotizID;
      Qry.ExecSQL;
    end;
    ModalResult := mrOk;
  finally
    Qry.Free;
  end;
end;


{Zurücksetzen}
procedure TFormNotiz.dxBarLargeButZurücksetzenClick(Sender: TObject);
begin
  cxMemoNotiz.Text:='';
  cxTextEditAutor.Text:='';
  cxImageComboBoxKate.ItemIndex:=-1;
  cxMemoNotiz.Style.BorderColor:=clDefault;
end;

{Create}
procedure TFormNotiz.FormCreate(Sender: TObject);
begin
  cxMemoNotiz.Text:='';
end;

{Show}
procedure TFormNotiz.FormShow(Sender: TObject);
begin
  if FReadOnlyMode then begin
    dxBarManagerNotizBar1.Visible := False;
    dxLayoutControlNotizenGroup_Root.Enabled := False;
  end;
end;


{Init}
procedure TFormNotiz.InitPersonAndNotiz(APersonID, ANotizID: Integer);
begin
  FPersonID := APersonID;
  FNotizID := ANotizID;

  if FPersonID <= 0 then  begin
    ShowMessage('Kein gültiger Kontakt ausgewählt.');
    Exit;
  end;

  if FNotizID > 0 then
    LadeNotiz
  else
    NeueNotiz;
end;


{EditiereAuswahl}
procedure TFormNotiz.EditiereAuswahl(ADataset: TDataSet);
begin
  if Assigned(ADataset) and not ADataset.IsEmpty then  begin
    FNotizID := ADataset.FieldByName('NotizID').AsInteger;
    cxMemoNotiz.Text := ADataset.FieldByName('Inhalt').AsString;
    cxTextEditAutor.Text := ADataset.FieldByName('Autor').AsString;
  end  else  begin
    FNotizID := 0;
    cxMemoNotiz.Clear;
    cxTextEditAutor.Clear;
    cxTextEditAutor.Clear;
    FNotizID :=1;
  end;
end;

{Neue Notizen}
procedure TFormNotiz.NeueNotiz;
begin
  FNotizID := 0;
  cxMemoNotiz.Text := '';
  cxTextEditAutor.Text := '';
end;


{Lade Notizen}
procedure TFormNotiz.LadeNotiz;
var
  Qry: TMSQuery;
begin
  if (FNotizID = 0) or (FPersonID = 0) then Exit;

  Qry := TMSQuery.Create(Self);
  try
    Qry.Connection := MyDataModule.MyConnections;
    Qry.SQL.Text := 'SELECT Inhalt, Autor, Kategorie FROM KontaktNotizen WHERE NotizID = :NotizID';
    Qry.ParamByName('NotizID').AsInteger := FNotizID;
    Qry.Open;

    if not Qry.Eof then    begin
      cxMemoNotiz.Text := Qry.FieldByName('Inhalt').AsString;
      cxTextEditAutor.Text := Qry.FieldByName('Autor').AsString;
      cxImageComboBoxKate.ItemIndex:=Qry.FieldByName('Kategorie').AsInteger;
    end;
    Qry.Close;
  finally
    Qry.Free;
  end;
end;


end.
