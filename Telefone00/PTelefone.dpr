program PTelefone;

uses
  Forms,
  URequisicao in 'URequisicao.pas' {frmRequisicaoTelefone},
  URegraRequisicao in 'URegraRequisicao.pas',
  UTelefone in 'UTelefone.pas',
  UCelular in 'UCelular.pas',
  UFixo in 'UFixo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRequisicaoTelefone, frmRequisicaoTelefone);
  Application.Run;
end.
