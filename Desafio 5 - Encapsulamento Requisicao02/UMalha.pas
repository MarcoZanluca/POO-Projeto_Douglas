unit UMalha;

interface

uses UProduto
     ;

type
  TMalha = class (TProduto)
  private
    FMetros : Double;
    FLargura : Double;

    function GetMetros: Double;
    function GetLargura: Double;

    procedure SetMetros(const Value: Double);
    procedure SetLargura(const Value: Double);

  public

    function flRetornaDescricaoTipoProduto: String; override;

    property Metros  : Double read GetMetros write SetMetros;
    property Largura : Double read GetLargura write SetLargura;

  end;

implementation

{ TMalha }

function TMalha.GetMetros: Double;
begin
  Result := FMetros;
end;

function TMalha.flRetornaDescricaoTipoProduto: String;
begin
  Result := 'Faço parte de um grupo seleto de malhas';
end;

function TMalha.GetLargura: Double;
begin
  Result := FLargura;
end;

procedure TMalha.SetMetros(const Value: Double);
begin
  FMetros := Value;
end;

procedure TMalha.SetLargura(const Value: Double);
begin
  FLargura := Value;
end;

end.
