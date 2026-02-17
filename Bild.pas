unit Bild;

interface

uses
  cxGraphics, cxImage, Vcl.Graphics, Winapi.Messages,vcl.Dialogs,System.Classes, System.SysUtils,Vcl.Imaging.jpeg, Soap.EncdDecd,System.NetEncoding;

procedure LoadImageFromFile(ImageControl: TcxImage; const FileName: string);

procedure LoadImageFromStream(ImageControl: TcxImage; Stream: TStream);

procedure ClearImage(ImageControl: TcxImage);

function ImageToBase64(ImageControl: TcxImage): string;

function Base64ToImage(Base64: string): TPicture;


implementation

procedure LoadImageFromFile(ImageControl: TcxImage; const FileName: string);
begin
  if FileExists(FileName) then begin
    try
      ImageControl.Picture.LoadFromFile(FileName);
    except
      on E: EInvalidGraphic do
        raise Exception.Create('Invalid image format: ' + FileName);
      on E: Exception do
        raise Exception.Create('Error loading image: ' + E.Message);
    end;
  end else begin
    raise Exception.Create('File not found: ' + FileName);
  end;
end;


procedure LoadImageFromStream(ImageControl: TcxImage; Stream: TStream);
begin
  try
    Stream.Position := 0;
    ImageControl.Picture.Graphic.LoadFromStream(Stream);
  except
    on E: Exception do
      raise Exception.Create('Fehler beim Laden des Bildes aus dem Stream: ' + E.Message);
  end;
end;

procedure ClearImage(ImageControl: TcxImage);
begin
  ImageControl.Picture := nil;
end;

function ImageToBase64(ImageControl: TcxImage): string;
var
  MemoryStream: TMemoryStream;
  Base64Stream: TStringStream;
begin
  Result := '';
  if (ImageControl.Picture.Graphic <> nil) and not ImageControl.Picture.Graphic.Empty then
  begin
    MemoryStream := TMemoryStream.Create;
    Base64Stream := TStringStream.Create;
    try
      ImageControl.Picture.Graphic.SaveToStream(MemoryStream);
      MemoryStream.Position := 0;
      EncodeStream(MemoryStream, Base64Stream);
      Result := Base64Stream.DataString;


      if Result = '' then
        raise Exception.Create('Fehler beim Konvertieren eines Bildes in Base64.');
    finally
      MemoryStream.Free;
      Base64Stream.Free;
    end;
  end;
end;

function Base64ToImage(Base64: string): TPicture;
var
  MemoryStream: TMemoryStream;
  Base64Stream: TStringStream;
  Picture: TPicture;
begin
  if Base64 = '' then
    raise Exception.Create('Leere Base64-Zeichenfolge');

  MemoryStream := TMemoryStream.Create;
  Base64Stream := TStringStream.Create(Base64);
  Picture := TPicture.Create;
  try
    DecodeStream(Base64Stream, MemoryStream);
    MemoryStream.Position := 0;

    if MemoryStream.Size = 0 then
      raise Exception.Create('Fehler: Der dekodierte Stream ist leer.');
    Picture.LoadFromStream(MemoryStream);
    Result := Picture;
  finally
    MemoryStream.Free;
    Base64Stream.Free;
  end;
end;


end.


