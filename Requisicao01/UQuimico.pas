unit UQuimico;

interface

uses UProduto
     ;

type
  TQuimico = class(TProduto)
  private
    FConcentracao: Integer;

    function GetConcentracao: Integer;

    procedure SetConcentracao(const Value: Integer);

  public
    function flRetornaConcentracao: String;
    function flRetornaDescricaoTipoProdutoQuimico: String;

    property Concentracao : Integer read GetConcentracao  write SetConcentracao;
  end;

implementation

{ TQuimico }

function TQuimico.GetConcentracao: Integer;
begin
  Result := FConcentracao;
end;

procedure TQuimico.SetConcentracao(const Value: Integer);
begin
  FConcentracao := Value;
end;

function TQuimico.flRetornaConcentracao: String;
begin
  if   FConcentracao > 0 then
       if    FConcentracao < 50 then
             Result := 'Concetração Alta'
       else
             Result := 'Concetração Média';
end;

function TQuimico.flRetornaDescricaoTipoProdutoQuimico: String;
begin
  Result := flRetornaDescricaoTipoProduto;
end;

end.
