program PTelefone;

uses
  Forms,
  URequisicao in 'URequisicao.pas' {Form1},
  URegraRequisicao in 'URegraRequisicao.pas',
  UTelefone in 'UTelefone.pas',
  UCelular in 'UCelular.pas',
  UFixo in 'UFixo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
