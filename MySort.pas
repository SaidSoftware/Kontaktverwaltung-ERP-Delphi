unit MySort;

interface

uses
  Vcl.Grids, System.SysUtils;

procedure SortByID(Grid: TStringGrid);
procedure SortByName(Grid: TStringGrid);
procedure SortByFirstName(Grid: TStringGrid);
procedure SortByBirthDate(Grid: TStringGrid);

implementation

procedure SortByID(Grid: TStringGrid);
var
  i, j: Integer;
  Temp: array[0..16] of string;
begin
  for i := 1 to Grid.RowCount - 2 do begin
    for j := 1 to Grid.RowCount - 2 - i do begin
      if StrToInt(Grid.Cells[0, j]) > StrToInt(Grid.Cells[0, j + 1]) then begin
        for var k := 0 to 16 do begin
          Temp[k] := Grid.Cells[k, j];
          Grid.Cells[k, j] := Grid.Cells[k, j + 1];
          Grid.Cells[k, j + 1] := Temp[k];
        end;
      end;
    end;
  end;
end;


procedure SortByName(Grid: TStringGrid);
var
  i, j: Integer;
  Temp: array[0..16] of string;
begin
  for i := 1 to Grid.RowCount - 2 do begin
    for j := 1 to Grid.RowCount - 2 - i do begin
      if AnsiCompareText(Grid.Cells[3, j], Grid.Cells[3, j + 1]) > 0 then begin
//      Vergleicht zwei Strings unter Berücksichtigung des aktuellen Gebietsschemas ohne Beachtung der Groß-/Kleinschreibung
        for var k := 0 to 16 do begin
          Temp[k] := Grid.Cells[k, j];
          Grid.Cells[k, j] := Grid.Cells[k, j + 1];
          Grid.Cells[k, j + 1] := Temp[k];
        end;
      end;
    end;
  end;
end;


procedure SortByFirstName(Grid: TStringGrid);
var
  i, j: Integer;
  Temp: array[0..16] of string;
begin
  for i := 1 to Grid.RowCount - 2 do begin
    for j := 1 to Grid.RowCount - 2 - i do begin
      if AnsiCompareText(Grid.Cells[4, j], Grid.Cells[4, j + 1]) > 0 then begin
        for var k := 0 to 16 do begin
          Temp[k] := Grid.Cells[k, j];
          Grid.Cells[k, j] := Grid.Cells[k, j + 1];
          Grid.Cells[k, j + 1] := Temp[k];
        end;
      end;
    end;
  end;
end;

procedure SortByBirthDate(Grid: TStringGrid);
var
  i, j: Integer;
  Temp: array[0..16] of string;
begin
  for i := 1 to Grid.RowCount - 2 do begin
    for j := 1 to Grid.RowCount - 2 - i do begin
      if StrToDate(Grid.Cells[5, j]) > StrToDate(Grid.Cells[5, j + 1]) then begin
        for var k := 0 to 16 do begin
          Temp[k] := Grid.Cells[k, j];
          Grid.Cells[k, j] := Grid.Cells[k, j + 1];
          Grid.Cells[k, j + 1] := Temp[k];
        end;
      end;
    end;
  end;
end;

end.


