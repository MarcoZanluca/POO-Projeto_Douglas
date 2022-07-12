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
    function flRetornaDescricaoTipoProduto: String; override;

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
             Result := 'Concetra��o Alta'
       else
             Result := 'Concetra��o M�dia';
end;

function TQuimico.flRetornaDescricaoTipoProduto: String;
begin
  Result := 'Fa�o parte de um grupo seleto de produtos qu�micos';
end;

end.
