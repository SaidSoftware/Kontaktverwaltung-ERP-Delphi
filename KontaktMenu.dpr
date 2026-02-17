program Project1;



uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  KontaktVerwaltung in 'KontaktVerwaltung.pas' {TKontaktVerwaltungs},
  Kontakt in 'Kontakt.pas' {TKontaktMenu},
  KontaktQuality in 'KontaktQuality.pas' {TKontaktQ},
  KontaktKlassen in 'KontaktKlassen.pas',
  tools in 'tools.pas',
  StartList in 'StartList.pas' {StartListe},
  Suchen in 'Suchen.pas',
  Bild in 'Bild.pas',
  MySQL in 'MySQL.pas',
  Optionenmenu in 'Optionenmenu.pas' {Optionform},
  MyAddtoTable in 'MyAddtoTable.pas' {AddToTable},
  SharedData in 'SharedData.pas',
  MyPapierkorb in 'MyPapierkorb.pas' {Papierkorb},
  KVDatamodule in 'KVDatamodule.pas' {MyDataModule: TDataModule},
  Test in 'Test.pas',
  MyGlobalDaten in 'MyGlobalDaten.pas',
  constant in 'constant.pas',
  MessageBoxHelfer in 'MessageBoxHelfer.pas',
  MyMessageBox in 'MyMessageBox.pas' {MyMesBox},
  ZustandSave in 'ZustandSave.pas',
  uKontaktValidator in 'uKontaktValidator.pas',
  MyDokuform in 'MyDokuform.pas' {MyFormDoku},
  MyNotizform in 'MyNotizform.pas',
  MyKalender in 'MyKalender.pas' {FormKalender},
  Mydatenqframe in 'Mydatenqframe.pas' {FrameDatenq: TFrame},
  MyCheckboxKontaktQ in 'MyCheckboxKontaktQ.pas' {KontatkQZustand},
  MyDokuFrame in 'MyDokuFrame.pas' {FrameDoku: TFrame},
  MyAnhangform in 'MyAnhangform.pas' {Anhang},
  MyQualitaet in 'MyQualitaet.pas' {FormDatenqualitaet},
  Qulitaetklass in 'Qulitaetklass.pas',
  KontaktFeldDefinition in 'KontaktFeldDefinition.pas',
  MyChoiseForm in 'MyChoiseForm.pas' {FormAuswahl},
  MyDateiChoise in 'MyDateiChoise.pas' {Dateisenden},
  UnachrichtSender in 'UnachrichtSender.pas',
  MyKontaktAuswahl in 'MyKontaktAuswahl.pas' {Kontaktauswahl},
  MyKontaktVIPStatus in 'MyKontaktVIPStatus.pas' {KontaktVIPStatus},
  MyVIPStatusBearbeiten in 'MyVIPStatusBearbeiten.pas' {StatusBearbeitenNeuForm},
  MyKategorie in 'MyKategorie.pas' {FormKategorie},
  FKunde in 'FKunde.pas' {FrameKundeVIP: TFrame},
  FVIPPrioritaet in 'FVIPPrioritaet.pas' {FramePrioritaet: TFrame},
  MyFHistoryStatus in 'MyFHistoryStatus.pas' {MyFStatusHistory},
  FBesondereNotiz in 'FBesondereNotiz.pas' {FBesondereNotizen: TFrame},
  MyMemoform in 'MyMemoform.pas' {MemoForm},
  FLieferant in 'FLieferant.pas' {FrameLieferant: TFrame},
  MyVIPinfo in 'MyVIPinfo.pas' {FormVIPinfo},
  MyKKategorieshow in 'MyKKategorieshow.pas' {MyKontaktK},
  MyFReport in 'MyFReport.pas' {MyReport},
  MyFRechnung in 'MyFRechnung.pas' {Rechnungform},
  MyFReporting in 'MyFReporting.pas' {Form1},
  ABOUT in 'ABOUT.pas' {AboutBox},
  HamburgerMenuDemoMain in 'HamburgerMenuDemoMain.pas' {frmHamburgerMenuDemo: TdxForm};

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TKontaktVerwaltungs, KontaktVerwaltungs);
  Application.CreateForm(TMyDataModule, MyDataModule);
  Application.CreateForm(TPapierkorb, Papierkorb);
  Application.CreateForm(TMyMesBox, MyMesBox);
  Application.Run;
end.

