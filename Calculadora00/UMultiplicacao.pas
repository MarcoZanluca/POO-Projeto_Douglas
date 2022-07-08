unit UMultiplicacao;

interface

uses UCalculadora;

type
  TMultiplicar = class(TCalculadora)
  private
  public
    function flCalcula(num1, num2: double): double;
  end;

implementation

{ TMultiplicar }

function TMultiplicar.flCalcula(num1, num2: double): double;
begin
  Result := num1*num2;
end;

end.
