unit EditHelfer;

interface

uses
  Vcl.StdCtrls, Vcl.Graphics, Winapi.Windows, System.Classes, Vcl.Forms;

type
  TEditHelfer = class
  public
    procedure HandleEditEnter(Sender: TObject);
    procedure HandleEditExit(Sender: TObject);
    procedure AssignEditEvents(Form: TComponent);
  end;

implementation

procedure TEditHelfer.HandleEditEnter(Sender: TObject);
begin
  if Sender is TEdit then begin
    (Sender as TEdit).Color := clSkyBlue;
    (Sender as TEdit).Font.Color := clBlack;
    (Sender as TEdit).BorderStyle := bsSingle;
  end;
end;

procedure TEditHelfer.HandleEditExit(Sender: TObject);
begin
  if Sender is TEdit then begin
    (Sender as TEdit).Color := clWindow;
    (Sender as TEdit).Font.Color := clWindowText;
    (Sender as TEdit).BorderStyle := bsSingle;
  end;
end;

procedure TEditHelfer.AssignEditEvents(Form: TComponent);
var
  i: Integer;
begin
  for i := 0 to Form.ComponentCount - 1 do begin
    if Form.Components[i] is TEdit then begin
      (Form.Components[i] as TEdit).OnEnter := HandleEditEnter;
      (Form.Components[i] as TEdit).OnExit := HandleEditExit;
    end;
  end;
end;

end.

