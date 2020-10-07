unit Classe.Clientes;

interface

Type TClientes = Class
  private
    FCodigo : Integer;
    FNome : String;
    FDataNascimento : TDateTime;
    FTipoCliente : String;
    procedure SetCodigo(const Value: Integer);
    procedure SetDataNascimento(const Value: TDateTime);
    procedure SetNome(const Value: String);
    procedure SetTipoCliente(const Value: String);

  public

    property Codigo : Integer read FCodigo write SetCodigo;
    property Nome : String read FNome write SetNome;
    property DataNascimento : TDateTime read FDataNascimento write SetDataNascimento;
    property TipoCliente : String read FTipoCliente write SetTipoCliente;

    Constructor Create;


End;

implementation

{ TClientes }

constructor TClientes.Create;
begin
  FCodigo := 0;
  FNome := '';
  FDataNascimento := 0;
  FTipoCliente  := '';
end;

procedure TClientes.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TClientes.SetDataNascimento(const Value: TDateTime);
begin
  FDataNascimento := Value;
end;

procedure TClientes.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TClientes.SetTipoCliente(const Value: String);
begin
  FTipoCliente := Value;
end;

end.
