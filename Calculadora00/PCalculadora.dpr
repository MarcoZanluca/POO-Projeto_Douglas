program PCalculadora;

uses
  Forms,
  formCalculadora in 'formCalculadora.pas' {frmCalculadora},
  USoma in 'USoma.pas',
  USubtracao in 'USubtracao.pas',
  UMultiplicacao in 'UMultiplicacao.pas',
  UDivisao in 'UDivisao.pas',
  UCalculadora in 'UCalculadora.pas',
  URegraCalculadora in 'URegraCalculadora.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalculadora, frmCalculadora);
  Application.Run;
end.
