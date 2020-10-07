unit UFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls, Classe.Contatos;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtCodigoCliente: TEdit;
    edtNomeCliente: TEdit;
    edtNascimentoCliente: TEdit;
    rdgTipoCliente: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    StringGrid1: TStringGrid;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
    nLinha : Integer;
    Contatos : TContatos;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Contatos := TContatos.Create;
  Contatos.CodigoCliente.Codigo         := StrToInt(edtCodigoCliente.Text);
  Contatos.CodigoCliente.Nome           := edtNomeCliente.Text;
  Contatos.CodigoCliente.DataNascimento := StrToDate(edtNascimentoCliente.Text);
  if rdgTipoCliente.ItemIndex = 0 then
    Contatos.CodigoCliente.TipoCliente := 'F'
  else
    Contatos.CodigoCliente.TipoCliente := 'J';

  ShowMessage(IntToStr(Contatos.CodigoCliente.Codigo) + ' - ' +
              Contatos.CodigoCliente.Nome + ' - ' +
              DateToStr(Contatos.CodigoCliente.DataNascimento) + ' - ' +
              Contatos.CodigoCliente.TipoCliente)
  { + ' - ' +
              IntToStr(Contatos.CodigoContato)  + ' - ' +
              Contatos.NomeContato + ' - ' +
              Contatos.TelefoneContato + ' - ' +
              Contatos.EmailContato}
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  StringGrid1.Cells[1,0] := 'CÓDIGO';
  StringGrid1.Cells[2,0] := 'NOME';
  StringGrid1.Cells[3,0] := 'CELULAR';
  StringGrid1.Cells[4,0] := 'E-MAIL';
  nLinha := 1;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Contatos.CodigoContato   := nLinha;
  Contatos.NomeContato     := 'Fulano';
  Contatos.TelefoneContato := '81999999999';
  Contatos.EmailContato    := 'fulano@gmail.com';

  StringGrid1.Cells[1,nLinha] := IntToStr(Contatos.CodigoContato);
  StringGrid1.Cells[2,nLinha] := Contatos.NomeContato;
  StringGrid1.Cells[3,nLinha] := Contatos.TelefoneContato;
  StringGrid1.Cells[4,nLinha] := Contatos.EmailContato;

  StringGrid1.RowCount := StringGrid1.RowCount + 1;
  Inc(nLinha);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if Contatos.CodigoContato > 0 then
  begin
    if MessageDlg('Existe Contatos para o cliente: ' + Contatos.CodigoCliente.Nome, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ShowMessage(Contatos.ExcluirDados);
  end
  else
    ShowMessage(Contatos.ExcluirDados);


end;

procedure TForm1.Button3Click(Sender: TObject);
Var SQLs : String;
begin
  ShowMessage(Contatos.SalvarDados);
  //SQLs := 'Insert into tbCliente (CODIGO,NOME,DATANASCIMENTO,TIPOCLIENTE) Values (' +
  //            IntToStr(Contatos.CodigoCliente.Codigo) + ',' +
  //            QuotedStr(Contatos.CodigoCliente.Nome) + ',' +
  //            QuotedStr(DateToStr(Contatos.CodigoCliente.DataNascimento)) + ',' +
  //            QuotedStr(Contatos.CodigoCliente.TipoCliente) + ')';
  //ShowMessage(SQLs);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if StringGrid1.Cells[1,StringGrid1.Row] <> '' then
  begin
    ShowMessage(Contatos.ExcluirDadosContato(Contatos.CodigoCliente.Codigo,StrToInt(StringGrid1.Cells[1,StringGrid1.Row])));
    StringGrid1.Cells[1,StringGrid1.Row] := '';
    StringGrid1.Cells[2,StringGrid1.Row] := '';
    StringGrid1.Cells[3,StringGrid1.Row] := '';
    StringGrid1.Cells[4,StringGrid1.Row] := '';
  end
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if StringGrid1.Cells[1,StringGrid1.Row] <> '' then
  begin
    ShowMessage(Contatos.AlterarDadosContato(Contatos.CodigoCliente.Codigo,StrToInt(StringGrid1.Cells[1,StringGrid1.Row])));
    StringGrid1.Cells[2,StringGrid1.Row] := 'NOVO NOME DO CONTATO';
    StringGrid1.Cells[3,StringGrid1.Row] := '21988888888';
  end;

end;

end.
