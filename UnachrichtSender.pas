unit UnachrichtSender;

interface

uses
  System.SysUtils, ShellAPI, Windows, Dialogs, MyMessageBox,MyAnhangform,MyChoiseForm,System.IOUtils,Clipbrd;


procedure SendeNachricht(App: TAppSendOption; const Ziel, Name: string);


implementation

procedure SendeNachricht(App: TAppSendOption; const Ziel, Name: string);
var
   DummyFilePath: string;
begin
  case App of
    asOutlook:
      ShellExecute(0, 'open',
        PChar('mailto:' + Ziel + '?subject=Kontaktaufnahme&body=Sehr geehrte/r ' + Name + ','), nil, nil, SW_SHOWNORMAL);

    asGmail:
      ShellExecute(0, 'open',
        PChar('https://mail.google.com/mail/?view=cm&fs=1&to=' + Ziel + '&su=Kontaktaufnahme&body=Sehr geehrte/r ' + Name + ','), nil, nil, SW_SHOWNORMAL);

    asWhatsApp:
      ShellExecute(0, 'open',
        PChar('https://api.whatsapp.com/send?phone=' + Ziel + '&text=Hallo ' + Name + ', ich kontaktiere Sie bezüglich ...'), nil, nil, SW_SHOWNORMAL);

    asTeams:
      ShellExecute(0, 'open',
        PChar('https://teams.microsoft.com/l/chat/0/0?users=' + Ziel), nil, nil, SW_SHOWNORMAL);

     asCopy:
      if Ziel <> '' then
        Clipboard.AsText := Ziel;


    asAndere:
      begin
        DummyFilePath := TPath.Combine(TPath.GetTempPath, 'dummy.txt');
        TFile.WriteAllText(DummyFilePath, Ziel);

        ShellExecute(0, 'open', PChar('rundll32.exe'),
        PChar('shell32.dll,OpenAs_RunDLL ' + QuotedStr('dummy.txt')),
        nil, SW_SHOWNORMAL);

      end;
  end;
end;

end.
