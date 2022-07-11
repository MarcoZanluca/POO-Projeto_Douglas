unit URaizQuadrada;

interface

uses UCalculadora;

type
  TRaizQuadrada = class(TCalculadora)
  private
  public
    function flCalcula(num1, num2: double): double; override;
  end;

implementation

{ TRaizQuadrada }

function TRaizQuadrada.flCalcula(num1, num2: double): double;
begin
  Result := SQRT(num1);
end;

end.
