unit ContactQualityScore;

interface

uses
  SysUtils, Classes, DB, cxGraphics, cxCustomData, cxStyles, cxGridTableView,
  cxGridDBTableView, cxGridCustomTableView, cxGrid;

type
  TContactQualityScore = class
  public

    class function CalculateQualityScore(ADataSet: TDataSet): Integer;

    class procedure DrawQualityIndicator(ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; AScore: Integer);
  end;

implementation

{ TContactQualityScore }

class function TContactQualityScore.CalculateQualityScore(ADataSet: TDataSet): Integer;
var
  Score: Integer;
begin
  Score := 0;


  if Trim(ADataSet.FieldByName('Name').AsString) <> '' then
    Inc(Score, 20);

  if Trim(ADataSet.FieldByName('Vorname').AsString) <> '' then
    Inc(Score, 20);

  if Trim(ADataSet.FieldByName('Anrede').AsString) <> '' then
    Inc(Score, 10);

  if Trim(ADataSet.FieldByName('Titel').AsString) <> '' then
    Inc(Score, 5);

  if not ADataSet.FieldByName('Geburtsdatum').IsNull then
    Inc(Score, 15);

  if Trim(ADataSet.FieldByName('Strasse').AsString) <> '' then
    Inc(Score, 10);

  if Trim(ADataSet.FieldByName('PLZ').AsString) <> '' then
    Inc(Score, 10);

  if Trim(ADataSet.FieldByName('Ort').AsString) <> '' then
    Inc(Score, 10);

  Result := Score;
end;

class procedure TContactQualityScore.DrawQualityIndicator(ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; AScore: Integer);
var
  R: TRect;
  FillColor: TColor;
begin
  if AScore >= 80 then
    FillColor := clLime
  else if AScore >= 50 then
    FillColor := clYellow
  else
    FillColor := clRed;


  R := AViewInfo.Bounds;
  ACanvas.FillRect(R);
  ACanvas.Brush.Color := FillColor;
  R.Right := R.Left + MulDiv((R.Right - R.Left), AScore, 100);
  ACanvas.FillRect(R);


  ACanvas.Font.Color := clBlack;
  ACanvas.DrawText(IntToStr(AScore) + '%', AViewInfo.Bounds, cxAlignCenter);
end;

end.


end.
