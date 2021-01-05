program AppsLogin;

uses
  Vcl.Forms,
  uMain in 'src\uMain.pas' {frmMain},
  uLogin in 'src\uLogin.pas' {frmLogin},
  mAPI in 'src\mAPI.pas' {dmAPI: TDataModule},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.ShowMainForm := False;
  TStyleManager.TrySetStyle('Puerto Rico');
  Application.CreateForm(TdmAPI, dmAPI);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
