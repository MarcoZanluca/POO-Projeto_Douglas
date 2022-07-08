unit UDivisao;

interface

uses UCalculadora;

type
  TDividir = class(TCalculadora)
  private
  public
    function flCalcula(num1, num2: double): double; override;
  end;

implementation

{ TDividir }

function TDividir.flCalcula(num1, num2: double): double;
begin
  Result := num1/num2;
end;

end.
