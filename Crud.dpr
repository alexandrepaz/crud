program Crud;

uses
  Forms,
  UFrmPrincipal in 'Fontes\UFrmPrincipal.pas' {Form1},
  Classe.Clientes in 'Classes\Classe.Clientes.pas',
  Classe.Contatos in 'Classes\Classe.Contatos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
