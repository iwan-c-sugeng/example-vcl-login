{-----------------------------------------------------------------------------
  Procedure : uLogin
  Author    : Developer
  Date      : 05 Jan 2021
  Arguments :
  Result    :
  Desc      :
  Version   :
  Reference :
  CallBy    :
-----------------------------------------------------------------------------}
unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TfrmLogin = class(TForm)
    pnlLogo: TPanel;
    pnlLogin: TPanel;
    imgLogo: TImage;
    edtUsername: TEdit;
    btnLogin: TButton;
    btndtPassword: TButtonedEdit;
    procedure btnLoginClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses mAPI;

{$R *.dfm}

procedure TfrmLogin.btnLoginClick(Sender: TObject);
begin
  if dmAPI.Login(
    edtUsername.Text,
    btndtPassword.Text
  ) then
  begin
    Application.MainForm.Show;
    Self.Tag := 1;
    Close;
  end
  else
  begin
    ShowMessage('Wrong user name or password. Please Try Again!!');
  end;

end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Self.Tag = 0 then
  begin
    Application.MainForm.Close;
  end;
  begin
    Action := caFree;
  end;
end;

procedure TfrmLogin.FormKeyDown(Sender: TObject; var Key: Word; Shift:
    TShiftState);
begin
  if key = VK_ESCAPE then
  begin
    Close;
  end
  else
  if key = VK_RETURN then
  begin
    if ActiveControl is TCustomEdit then
    begin
      SelectNext(ActiveControl ,True,True);
    end;
  end;
end;

end.

