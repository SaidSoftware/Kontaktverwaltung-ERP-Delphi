unit MyDokuFrame;

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
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, dxPanel, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxHyperLinkEdit,
  cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxLayoutContainer,
  dxLayoutControl, Vcl.ComCtrls, Vcl.ToolWin,MyPapierkorb, DBAccess, MSAccess,
  MemDS,MyDokuForm, dxBar, cxContainer, cxTextEdit,ShellAPI,MyMessageBox,KVDataModule,
  dxBarBuiltInMenu, cxPC, dxListView, dxtree, dxdbtree, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, System.ImageList, Vcl.ImgList,
  cxImageList;

type
  TFrameDoku = class(TFrame)
    dxPanelDoku: TdxPanel;
    cxGridDokumenten: TcxGrid;
    cxGridDBTableViewDokumenten: TcxGridDBTableView;
    cxGridDBTableViewDokumentenFileID: TcxGridDBColumn;
    cxGridDBTableViewDokumentenPersonID: TcxGridDBColumn;
    cxGridDBTableViewDokumentenFileName: TcxGridDBColumn;
    cxGridDBTableViewDokumentenFileSize: TcxGridDBColumn;
    cxGridDBTableViewDokumentenFileData: TcxGridDBColumn;
    cxGridDBTableViewDokumentenDateUploaded: TcxGridDBColumn;
    cxGridDBTableViewDokumentenColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxLayoutControlDokumentenGroup_Root: TdxLayoutGroup;
    dxLayoutControlDokumenten: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroupDoku: TdxLayoutGroup;
    MSQueryDoku: TMSQuery;
    MSConnectionDoku: TMSConnection;
    MSDataSourceDoku: TMSDataSource;
    dxLayoutItem2: TdxLayoutItem;
    ToolBarDokuinfo: TToolBar;
    cxTextEditDokuGefunden: TcxTextEdit;
    cxTextEditDokuInformation: TcxTextEdit;
    ToolBar1: TToolBar;
    dxLayoutItem3: TdxLayoutItem;
    ToolButtonNeu: TToolButton;
    ToolButtonBearbeiten: TToolButton;
    ToolButtonLoeschen: TToolButton;
    dxLayoutGroup1: TdxLayoutGroup;
    cxTreeListDok: TcxTreeList;
    dxLayoutItem4: TdxLayoutItem;
    cxTreeListDokColumnFileID: TcxTreeListColumn;
    cxTreeListDokColumnFileName: TcxTreeListColumn;
    cxTreeListDokColumnFileSize: TcxTreeListColumn;
    cxTreeListDokColumnDateUploaded: TcxTreeListColumn;
    cxTreeListDokColumnVersandterlaubt: TcxTreeListColumn;
    cxImageListDoku: TcxImageList;
    ToolButtonBereinigen: TToolButton;
    procedure cxGridDBTableViewDokumentenCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableViewDokumentenSelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure cxGridDBTableViewDokumentenCellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ToolButtonNeuClick(Sender: TObject);
    procedure ToolButtonLoeschenClick(Sender: TObject);
    procedure ToolButtonBearbeitenClick(Sender: TObject);
    procedure cxGridDBTableViewDokumentenFileSizeGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure dxDBTreeView1Click(Sender: TObject);
    procedure cxTreeListDokClick(Sender: TObject);
    procedure ToolButtonBereinigenClick(Sender: TObject);

  private
    { Private-Deklarationen }
     FReadOnlyMode: Boolean;
     FPersonID:integer;
     FOwnerTab: TcxTabSheet;
  public
    { Public-Deklarationen }

        procedure LoadDokumente(PersonID: Integer);
        function  UpdateColumnDoku: Integer;
        procedure RefreshDateienGrid;
        procedure OpenDataForm(ANotizID: Integer; IsNew: Boolean);
        procedure SetPersonID(AID: Integer);
        procedure OpenBearbeiten;
        procedure SetOwnerTab(ATab: TcxTabSheet);
        procedure UpdateTabCaption(const BaseTitle: string; ItemCount: Integer);
        property  ReadOnlyMode: Boolean read FReadOnlyMode write FReadOnlyMode;
        function  GetSelectedFileID: Integer;
        procedure LoadDokumenteToTreeList(PersonID: Integer);
        procedure DeleteOlderDuplicates(DuplicateFileNames: TStringList);
        procedure AnalyzeDuplicateDocuments;
        procedure SaveFileToDB(const AFileName: string);

      var FoundCount:integer;

end;

implementation

{$R *.dfm}
uses Kontakt;


procedure TFrameDoku.SetOwnerTab(ATab: TcxTabSheet);
begin
  FOwnerTab := ATab;
end;

procedure TFrameDoku.UpdateTabCaption(const BaseTitle: string; ItemCount: Integer);
begin
  if Assigned(FOwnerTab) then
    FOwnerTab.Caption := Format('%s (%d)', [BaseTitle, ItemCount]);
end;

{SetPerson}
procedure TFrameDoku.SetPersonID(AID: Integer);
begin
    FPersonID := AID;
end;


{Öffnen}
procedure TFrameDoku.cxGridDBTableViewDokumentenCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  FileName, TempPath: string;
  FileData: TMemoryStream;
begin
  if ACellViewInfo.Item.Index = cxGridDBTableViewDokumentenFileData.Index then  begin
    FileName := MSQueryDoku.FieldByName('FileName').AsString;
    TempPath := IncludeTrailingPathDelimiter(GetEnvironmentVariable('TEMP')) + FileName;
    FileData := TMemoryStream.Create;
    try
      TBlobField(MSQueryDoku.FieldByName('FileData')).SaveToStream(FileData);
      FileData.Position := 0;
      FileData.SaveToFile(TempPath);
      ShellExecute(0, 'open', PChar(TempPath), nil, nil, SW_SHOWNORMAL);
    finally
      FileData.Free;
    end;
    AHandled := True;
  end;
end;

{Bearbeiten}
procedure TFrameDoku.OpenBearbeiten;
var
  MyFormDoku: TMyFormDoku;
  FileName: string;
  FileDataStream: TMemoryStream;
begin
  FileDataStream := TMemoryStream.Create;
  try
    TBlobField(MSQueryDoku.FieldByName('FileData')).SaveToStream(FileDataStream);
    FileDataStream.Position := 0;
    MyFormDoku := TMyFormDoku.Create(Self);
    try
      FileName := MSQueryDoku.FieldByName('FileName').AsString;
      MyFormDoku.LoadDocumentFromStream(FileName, FileDataStream);
      MyFormDoku.Caption:='[Datei] Bearbeiten';
      MyFormDoku.ReadOnlyMode := FReadOnlyMode;  //ReadOnly!
      MyFormDoku.ShowModal;
    finally
      MyFormDoku.Free;
    end;
  finally
    FileDataStream.Free;
  end;
end;

{Bearbeiten}
procedure TFrameDoku.cxGridDBTableViewDokumentenCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  OpenBearbeiten;
  AHandled := True;
end;

{Info Selection}
procedure TFrameDoku.cxGridDBTableViewDokumentenSelectionChanged(Sender: TcxCustomGridTableView);
var
  SelectedRowCount: Integer;
begin
  SelectedRowCount := cxGridDBTableViewDokumenten.Controller.SelectedRecordCount;
  if (SelectedRowCount > 0) and (cxGridDBTableViewDokumenten.Controller.FocusedRecordIndex <> -1) then
    cxTextEditDokuInformation.EditValue := 'Zeilen ausgewählt: ' + IntToStr(SelectedRowCount)
  else
    cxTextEditDokuInformation.EditValue := '';
end;


procedure TFrameDoku.dxDBTreeView1Click(Sender: TObject);
begin
// LoadDokumente(AID);
end;

{Load Dokumente}
procedure TFrameDoku.LoadDokumente(PersonID: Integer);
var DokuCount:integer;
begin
  MSQueryDoku.Close;
  MSQueryDoku.SQL.Text :=
    'SELECT TOP 1000 FileID, PersonID, FileName, FileSize, FileData, DateUploaded, Versanderlaubt ' +
    'FROM Kontaktdaten.dbo.KontaktDateien ' +
    'WHERE PersonID = :PersonID';
  MSQueryDoku.ParamByName('PersonID').Value := PersonID;
  MSQueryDoku.Open;
  DokuCount:=MSQueryDoku.RecordCount;
  UpdateTabCaption('Dateien', DokuCount);

  FoundCount := UpdateColumnDoku;
  cxTextEditDokuGefunden.EditValue := 'Gefundene Kontaktdatei: ' + IntToStr(FoundCount);
end;

{Update Column}
function TFrameDoku.UpdateColumnDoku: Integer;
begin
  Result := MSQueryDoku.RecordCount;
end;

{Refresh Dateien}
procedure TFrameDoku.RefreshDateienGrid;
begin
  MSQueryDoku.Close;
  MSQueryDoku.Open;
end;

{Bearbeiten}
procedure TFrameDoku.ToolButtonBearbeitenClick(Sender: TObject);
//var
//  TempPath: string;
begin
//  TempPath := IncludeTrailingPathDelimiter(GetEnvironmentVariable('TEMP')) + 'preview.jpg';
//  ShellExecute(0, 'open', PChar(TempPath), nil, nil, SW_SHOWNORMAL);
 Openbearbeiten;
end;

{Bereinigen}
procedure TFrameDoku.ToolButtonBereinigenClick(Sender: TObject);
begin
 AnalyzeDuplicateDocuments;
end;

{AnalyzeDuplicateDocuments}
procedure TFrameDoku.AnalyzeDuplicateDocuments;
var
  Q: TMSQuery;
  DuplicateList: TStringList;
  FileName: string;
  FileCount, FileID: Integer;
  MsgBox: TMyMesBox;
  DuplicateInfo: string;
begin
  Q := TMSQuery.Create(nil);
  DuplicateList := TStringList.Create;
  MsgBox := TMyMesBox.Create(nil);
  try
    Q.Connection := MyDataModule.MyConnections;
    Q.SQL.Text :=
      'SELECT FileName, COUNT(*) as FileCount ' +
      'FROM Kontaktdaten.dbo.KontaktDateien ' +
      'WHERE PersonID = :PersonID ' +
      'GROUP BY FileName ' +
      'HAVING COUNT(*) > 1 ' +
      'ORDER BY FileCount DESC';
    Q.ParamByName('PersonID').AsInteger := FPersonID;
    Q.Open;
    if Q.RecordCount = 0 then  begin
      ShowMessage('Keine doppelten Dateien gefunden!');
      Exit;
    end;


    DuplicateInfo := 'Gefundene doppelte Dateien:' + sLineBreak + sLineBreak;
    while not Q.EOF do   begin
      FileName := Q.FieldByName('FileName').AsString;
      FileCount := Q.FieldByName('FileCount').AsInteger;
      DuplicateInfo := DuplicateInfo +
        Format('• %s (%d Kopien)' + sLineBreak, [FileName, FileCount]);
      DuplicateList.Add(FileName);
      Q.Next;
    end;

    DuplicateInfo := DuplicateInfo + sLineBreak +
      'Möchten Sie die älteren Kopien löschen?';

    // Fragen ob löschen
    try
      MsgBox.Caption := 'Duplikate bereinigen';
      if MsgBox.ShowMessage(DuplicateInfo, mtConfirmation, [mbYes, mbNo]) = mrYes then begin
        DeleteOlderDuplicates(DuplicateList);
        ShowMessage('Duplikate erfolgreich entfernt!');
        LoadDokumenteToTreeList(FPersonID); // Refresh
      end;
    finally
      MsgBox.Free;
    end;
  finally
    Q.Free;
    DuplicateList.Free;
  end;
end;

{DeleteOlderDuplicates}
procedure TFrameDoku.DeleteOlderDuplicates(DuplicateFileNames: TStringList);
var
  Q, QDelete: TMSQuery;
  FileName: string;
  i: Integer;
begin
  Q := TMSQuery.Create(nil);
  QDelete := TMSQuery.Create(nil);
  try
    Q.Connection := MyDataModule.MyConnections;
    QDelete.Connection := MyDataModule.MyConnections;

    for i := 0 to DuplicateFileNames.Count - 1 do begin
      FileName := DuplicateFileNames[i];

      QDelete.SQL.Text :=
        'DELETE FROM Kontaktdaten.dbo.KontaktDateien ' +
        'WHERE PersonID = :PersonID ' +
        'AND FileName = :FileName ' +
        'AND FileID NOT IN ( ' +
        '  SELECT TOP 1 FileID ' +
        '  FROM Kontaktdaten.dbo.KontaktDateien ' +
        '  WHERE PersonID = :PersonID AND FileName = :FileName ' +
        '  ORDER BY DateUploaded DESC ' +
        ')';
      QDelete.ParamByName('PersonID').AsInteger := FPersonID;
      QDelete.ParamByName('FileName').AsString := FileName;
      QDelete.ExecSQL;
    end;

  finally
    Q.Free;
    QDelete.Free;
  end;
end;

{Löschen}
procedure TFrameDoku.ToolButtonLoeschenClick(Sender: TObject);
var
  i: Integer;
  FileID: Integer;
  qryDelete: TMSQuery;
  SelCount: Integer;
  MyMesBox: TMyMesBox;
  UserChoice: Integer;
  MsgText: string;
begin
  SelCount := cxGridDBTableViewDokumenten.Controller.SelectedRowCount;

  if SelCount = 0 then begin
    ShowMessage('Keine Dokumente zum Löschen ausgewählt.');
    Exit;
  end;

  MsgText := Format('Möchten Sie die %d ausgewählten Dokumente wirklich löschen?', [SelCount]);

  MyMesBox := TMyMesBox.Create(nil);
  try
    MyMesBox.Caption := 'Löschen';
    UserChoice := MyMesBox.ShowMessage(MsgText, mtConfirmation, [mbYes, mbNo]);
  finally
    MyMesBox.Free;
  end;

  if UserChoice <> mrYes then
    Exit;

  qryDelete := TMSQuery.Create(nil);
  try
    qryDelete.Connection := MyDataModule.MyConnections;
    qryDelete.SQL.Text := 'DELETE FROM KontaktDateien WHERE FileID = :ID';

    for i := 0 to SelCount - 1 do begin
      FileID := cxGridDBTableViewDokumenten.DataController.Values[
        cxGridDBTableViewDokumenten.Controller.SelectedRows[i].RecordIndex,
        cxGridDBTableViewDokumenten.GetColumnByFieldName('FileID').Index
      ];
      qryDelete.ParamByName('ID').AsInteger := FileID;
      qryDelete.ExecSQL;
    end;
    LoadDokumente(FPersonID);
  finally
    qryDelete.Free;
  end;
end;

{Neu}
procedure TFrameDoku.ToolButtonNeuClick(Sender: TObject);
var
  OpenDialog: TOpenDialog;
begin
  OpenDialog := TOpenDialog.Create(nil);
  try
    OpenDialog.Filter := 'Alle Dateien (*.*)|*.*';
    OpenDialog.Options := [ofFileMustExist, ofEnableSizing];
    if OpenDialog.Execute then begin
       SaveFileToDB(OpenDialog.FileName);
       MSQueryDoku.Close;
       MSQueryDoku.Open;
      cxGridDBTableViewDokumenten.DataController.RefreshExternalData;
    end;
  finally
    OpenDialog.Free;
  end;
end;


{SpeichernintoDB}
procedure TFrameDoku.SaveFileToDB(const AFileName: string);
var
  Query: TMSQuery;
  FileStream: TFileStream;
begin
  if not FileExists(AFileName) then Exit;
  Query := TMSQuery.Create(nil);
  FileStream := TFileStream.Create(AFileName, fmOpenRead or fmShareDenyWrite);
  try
    Query.Connection := MyDataModule.MyConnections;
    Query.SQL.Text :=
      'INSERT INTO KontaktDateien (PersonID, FileName, FileSize, FileData, DateUploaded) ' +
      'VALUES (:PersonID, :FileName, :FileSize, :FileData, :DateUploaded)';

    Query.ParamByName('PersonID').Value := FPersonID;
    Query.ParamByName('FileName').AsString := ExtractFileName(AFileName);
    Query.ParamByName('FileSize').AsLargeInt := FileStream.Size;
    Query.ParamByName('DateUploaded').AsDateTime := Now;
    Query.ParamByName('FileData').LoadFromStream(FileStream, ftBlob);
    Query.ExecSQL;

//    FoundCount := UpdateColumnDoku;
//    cxTextEditDokuGefunden.EditValue := 'Gefundene Kontaktdatei: ' + IntToStr(FoundCount);
//    UpdateTabCaption('Dateien', MSQueryDoku.RecordCount);

  finally
    FileStream.Free;
    Query.Free;
  end;
end;


{Neu}
procedure TFrameDoku.OpenDataForm(ANotizID: Integer; IsNew: Boolean);
var
  MyFormDoku: TMyFormDoku;
begin
  if FPersonID <= 0 then  begin
    ShowMessage('Kein gültiger Kontakt ausgewählt.');
    Exit;
  end;

  MyFormDoku := TMyFormDoku.Create(Self);
  try
    MyFormDoku.InitPersonAndNotiz(FPersonID,0);
    if IsNew then
      MyFormDoku.Caption := '[Neu] ' + MyFormDoku.Caption;
    if MyFormDoku.ShowModal = mrOk then  begin
      RefreshDateienGrid;
      MSQueryDoku.Close;
      MSQueryDoku.Open;
    end
  finally
    MyFormDoku.Free;
  end;
end;

//Size
procedure TFrameDoku.cxGridDBTableViewDokumentenFileSizeGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  Bytes: Int64;
begin
  Bytes := VarAsType(ARecord.Values[cxGridDBTableViewDokumentenFileSize.Index], varInt64);
  AText := FormatFloat('0.00', Bytes / 1024 / 1024) + ' MB';
end;

{LoadDokumenteToTreeList}
procedure TFrameDoku.LoadDokumenteToTreeList(PersonID: Integer);
var
  DokuCount: Integer;
  FileNode: TcxTreeListNode;
  FileSize: Int64;
  FileSizeStr, FileExt, FileName: string;
  FileGroups: TStringList;
  GroupNodes: array of TcxTreeListNode;
  GroupIndex: Integer;
  FileImageIdx:integer;

  function GetFileGroup(const Extension: string; out ImageIdx: Integer): string;
      var
        Ext: string;
      begin
        Ext := LowerCase(Extension);
        if (Ext = '.pdf') then begin
          Result := 'PDF Dokumente';
          ImageIdx := 0; // pdf
        end else if (Ext = '.doc') or (Ext = '.docx') or (Ext = '.odt') or (Ext = '.rtf') then begin
          Result := 'Word Dokumente';
          ImageIdx := 1; // docs
        end else if (Ext = '.xls') or (Ext = '.xlsx') or (Ext = '.ods') or (Ext = '.csv') then begin
          Result := 'Excel Dokumente';
          ImageIdx := 4; // xls
        end else if (Ext = '.png') or (Ext = '.jpg') or (Ext = '.jpeg') or (Ext = '.gif') or
                (Ext = '.bmp') or (Ext = '.svg') or (Ext = '.ico') then begin
          Result := 'Bilder';
          ImageIdx := 3; // image
        end else if (Ext = '.zip') or (Ext = '.rar') or (Ext = '.7z') then begin
          Result := 'Archive';
          ImageIdx := 2; // zip
        end else if (Ext = '.txt') or (Ext = '.log') then begin
          Result := 'Textdateien';
          ImageIdx := 5; // text
        end else begin
          Result := 'Andere Dateien';
          ImageIdx := 1; // docs
        end;
      end;

  function FindOrCreateGroupNode(const GroupName: string): TcxTreeListNode;
  var
    i: Integer;
  begin
    Result := nil;
    for i := 0 to FileGroups.Count - 1 do  begin
      if FileGroups[i] = GroupName then  begin
        Result := GroupNodes[i];
        Exit;
      end;
    end;
    Result := cxTreeListDok.Add;
    Result.Values[1] := GroupName;
    Result.Values[2] := '';
    Result.Values[3] := '';
    Result.Values[4] := '';
    Result.ImageIndex := 0;
    Result.StateIndex := 0;
    FileGroups.Add(GroupName);
    SetLength(GroupNodes, Length(GroupNodes) + 1);
    GroupNodes[High(GroupNodes)] := Result;
  end;

  procedure UpdateGroupCaptions;
  var
    i, ChildCount: Integer;
    GroupNode: TcxTreeListNode;
    OriginalName: string;
  begin
    for i := 0 to Length(GroupNodes) - 1 do begin
      GroupNode := GroupNodes[i];
      if Assigned(GroupNode) then begin
        ChildCount := GroupNode.Count;
        OriginalName := FileGroups[i];
        GroupNode.Values[1] := Format('%s (%d)', [OriginalName, ChildCount]);
      end;
    end;
  end;

var
  GroupNode: TcxTreeListNode;
  GroupName: string;

begin
  cxTreeListDok.BeginUpdate;
  try
    cxTreeListDok.Clear;
    FileGroups := TStringList.Create;
    SetLength(GroupNodes, 0);
    try
      MSQueryDoku.Close;
      MSQueryDoku.SQL.Text :=
        'SELECT TOP 1000 FileID, PersonID, FileName, FileSize, FileData, ' +
        'DateUploaded, Versanderlaubt ' +
        'FROM Kontaktdaten.dbo.KontaktDateien ' +
        'WHERE PersonID = :PersonID ' +
        'ORDER BY FileName';
      MSQueryDoku.ParamByName('PersonID').Value := PersonID;
      MSQueryDoku.Open;

      DokuCount := MSQueryDoku.RecordCount;
      UpdateTabCaption('Dateien', DokuCount);

      if DokuCount = 0 then begin
        cxTextEditDokuGefunden.EditValue := 'Keine Kontaktdateien gefunden';
        Exit;
      end;
      MSQueryDoku.First;
      while not MSQueryDoku.Eof do    begin
        FileName := MSQueryDoku.FieldByName('FileName').AsString;
        FileExt := ExtractFileExt(FileName);
        GroupName := GetFileGroup(FileExt, FileImageIdx);
        GroupNode := FindOrCreateGroupNode(GroupName);
        FileNode := cxTreeListDok.AddChild(GroupNode);

        // FileID
        FileNode.Values[0] := MSQueryDoku.FieldByName('FileID').AsInteger;

        // FileName
        FileNode.Values[1] := FileName;

        // FileSize
        FileSize := MSQueryDoku.FieldByName('FileSize').AsLargeInt;
        if FileSize < 1024 then
          FileSizeStr := FormatFloat('0', FileSize) + ' B'
        else if FileSize < 1024 * 1024 then
          FileSizeStr := FormatFloat('0.00', FileSize / 1024) + ' KB'
        else
          FileSizeStr := FormatFloat('0.00', FileSize / 1024 / 1024) + ' MB';
        FileNode.Values[2] := FileSizeStr;

        // DateUploaded
        FileNode.Values[3] := FormatDateTime('dd.mm.yyyy hh:nn',
          MSQueryDoku.FieldByName('DateUploaded').AsDateTime);

        // Versanderlaubt
        FileNode.Values[4] := MSQueryDoku.FieldByName('Versanderlaubt').AsString;
        FileNode.ImageIndex := FileImageIdx;

        //Data
        FileNode.Data := Pointer(MSQueryDoku.FieldByName('FileID').AsInteger);

        MSQueryDoku.Next;
      end;
      UpdateGroupCaptions;
      for GroupIndex := 0 to Length(GroupNodes) - 1 do   begin
        if Assigned(GroupNodes[GroupIndex]) then
        GroupNode.ImageIndex := FileImageIdx;
         // GroupNodes[GroupIndex].Expanded := True;
      end;

      MSQueryDoku.Refresh;
      cxTextEditDokuGefunden.EditValue :=
        'Gefundene Kontaktdateien: ' + IntToStr(DokuCount) +
        ' in ' + IntToStr(Length(GroupNodes)) + ' Gruppen';

    finally
      FileGroups.Free;
    end;

  finally
    cxTreeListDok.EndUpdate;
  end;
end;

{GetSelectedFileID}
function TFrameDoku.GetSelectedFileID: Integer;
var
  Node: TcxTreeListNode;
begin
  Result := -1;
  Node := cxTreeListDok.FocusedNode;

  if Assigned(Node) and Assigned(Node.Parent) then
    Result := Integer(Node.Data);
end;

{DokClick}
procedure TFrameDoku.cxTreeListDokClick(Sender: TObject);
begin
  LoadDokumenteToTreeList(FPersonID);
end;

end.
