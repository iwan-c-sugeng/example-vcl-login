unit mAPI;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client;

type
  TdmAPI = class(TDataModule)
    conDatabase: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function Login(
      AUserName : string;
      APassword : string
    ) : Boolean;
  end;

var
  dmAPI: TdmAPI;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmAPI.DataModuleCreate(Sender: TObject);
begin
  conDatabase.Params.Database := 'Test.fdb';
end;

{ TDataModule1 }

function TdmAPI.Login(AUserName, APassword: string): Boolean;
var
  fdQuery : TFDQuery;
begin
  fdQuery := TFDQuery.Create(Self);
  try
    fdQuery.Connection := conDatabase;
    fdQuery.SQL.Text :=
      'SELECT' + #13#10 +
      '  SUSR.*' + #13#10 +
      'FROM SUSR' + #13#10 +
      'WHERE SUSR.KODE = :KODE AND' + #13#10 +
      '      SUSR.SANDI = :SANDI';
    fdQuery.ParamByName('KODE').AsString := AUserName;
    fdQuery.ParamByName('SANDI').AsString := APassword;
    fdQuery.Open;
    Result := fdQuery.RecordCount > 0;
  finally
    fdQuery.Free;
  end;
end;

end.

