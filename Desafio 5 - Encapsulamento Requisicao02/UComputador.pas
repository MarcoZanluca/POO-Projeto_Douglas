unit UComputador;

interface

uses UProduto
    ;

type
  TComputador = class(TProduto)
  private
    FMemoria : Integer;
    FProcessador : Integer;

    function GetMemoria: Integer;
    function GetProcessador: Integer;

    procedure SetMemoria(const Value: Integer);
    procedure SetProcessador(const Value: Integer);
  public

    function flRetornaDescricaoTipoProduto: String; override;

    property Memoria      : Integer  read GetMemoria      write SetMemoria;
    property Processador  : Integer  read GetProcessador  write SetProcessador;
  end;


implementation

{ TComputador }

function TComputador.flRetornaDescricaoTipoProduto: String;
begin
  Result := 'Faço parte de um grupo seleto de produtos para computadores';
end;

function TComputador.GetMemoria: Integer;
begin
  Result := FMemoria;
end;

function TComputador.GetProcessador: Integer;
begin
  Result := FProcessador;
end;

procedure TComputador.SetMemoria(const Value: Integer);
begin
  FMemoria := Value;
end;

procedure TComputador.SetProcessador(const Value: Integer);
begin
  FProcessador := Value;
end;

end.
