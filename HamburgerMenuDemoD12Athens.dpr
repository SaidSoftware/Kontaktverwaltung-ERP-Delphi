program HamburgerMenuDemoD12Athens;

uses
  Forms,
  HamburgerMenuDemoMain in 'HamburgerMenuDemoMain.pas' {dxBreadcrumbEditDemoForm},
  AboutDemoForm in '..\Common\AboutDemoForm.pas' {formAboutDemo},
  SkinDemoUtils in '..\Common\SkinDemoUtils.pas';

  {$R *.res}

{$R dxDPIAwareManifestPM2.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmHamburgerMenuDemo, frmHamburgerMenuDemo);
  Application.Run;
end.
