unit Classe.Contatos;

interface

uses SysUtils, Messages, Dialogs, Classe.Clientes;

Type TContatos = Class
  private
    FCodigoCliente : TClientes;
    FCodigoContato : Integer;
    FNomeContato : String;
    FTelefoneContato : String;
    FEmailContato : String;
    procedure SetCodigoContato(const Value: Integer);
    procedure SetEmailContato(const Value: String);
    procedure SetNomeContato(const Value: String);
    procedure SetTelefoneContato(const Value: String);
    procedure SetCodigoCliente(const Value: TClientes);

  public
    property CodigoCliente : TClientes read FCodigoCliente write SetCodigoCliente;
    property CodigoContato : Integer read FCodigoContato write SetCodigoContato;
    property NomeContato : String read FNomeContato write SetNomeContato;
    property TelefoneContato : String read FTelefoneContato write SetTelefoneContato;
    property EmailContato : String read FEmailContato write SetEmailContato;

    function SalvarDados : String;
    function ExcluirDados : String;
    function ExcluirDadosContato(CodCliente,CodContato : Integer) : String;
    function AlterarDadosContato(CodCliente,CodContato : Integer) : String;

    Constructor Create;
End;

implementation

{ TContatos }

function TContatos.AlterarDadosContato(CodCliente,
  CodContato: Integer): String;
begin
  Result := 'Update tbContatoCliente Set NOMECONTATO = ''NOVO NOME DO CONTATO'', TELEFONECONTATO = ''21988888888'' Where CODIGOCLIENTE = ' + IntToStr(CodCliente) + ' And CODIGOCONTATO = ' + IntToStr(CodContato);

end;

constructor TContatos.Create;
begin
  FCodigoContato := 0;
  FNomeContato := '';
  FTelefoneContato := '';
  FEmailContato := '';
  FCodigoCliente := TClientes.Create;
end;

function TContatos.ExcluirDados: String;
begin
  Result := 'Delete * From tbContatoCliente Where CODIGOCLIENTE = ' + IntToStr(FCodigoCliente.Codigo) + #13 + #13 +
            'Delete * From tbCliente Where CODIGO = ' + IntToStr(FCodigoCliente.Codigo);
end;

function TContatos.ExcluirDadosContato(CodCliente,CodContato : Integer) : String;
begin
  Result := 'Delete * From tbContatoCliente Where CODIGOCLIENTE = ' + IntToStr(CodCliente) + ' And CODIGOCONTATO = ' + IntToStr(CodContato);

end;

function TContatos.SalvarDados: String;
begin
  if FCodigoCliente.Codigo > 0 then
    Result := 'Insert into tbCliente (CODIGO,NOME,DATANASCIMENTO,TIPOCLIENTE) Values (' +
                IntToStr(FCodigoCliente.Codigo) + ',' +
                QuotedStr(FCodigoCliente.Nome) + ',' +
                QuotedStr(DateToStr(FCodigoCliente.DataNascimento)) + ',' +
                QuotedStr(FCodigoCliente.TipoCliente) + ')';
end;

procedure TContatos.SetCodigoCliente(const Value: TClientes);
begin
  FCodigoCliente := Value;
end;

procedure TContatos.SetCodigoContato(const Value: Integer);
begin
  FCodigoContato := Value;
end;

procedure TContatos.SetEmailContato(const Value: String);
begin
  FEmailContato := Value;
end;

procedure TContatos.SetNomeContato(const Value: String);
begin
  FNomeContato := Value;
end;

procedure TContatos.SetTelefoneContato(const Value: String);
begin
  FTelefoneContato := Value;
end;

end.
