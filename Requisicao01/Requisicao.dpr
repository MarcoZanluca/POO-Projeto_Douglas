program Requisicao;

uses
  Forms,
  URequisicao in 'URequisicao.pas' {frmRequisicao},
  UPessoa in 'UPessoa.pas',
  UProduto in 'UProduto.pas',
  UQuimico in 'UQuimico.pas',
  UFio in 'UFio.pas',
  UComputador in 'UComputador.pas',
  URegraRequisicao in 'URegraRequisicao.pas',
  UMalha in 'UMalha.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRequisicao, frmRequisicao);
  Application.Run;
end.
