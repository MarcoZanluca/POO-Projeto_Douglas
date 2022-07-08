unit USubtracao;

interface

uses UCalculadora;

type
  TSubtrair = class(TCalculadora)
  private
  public
    function flCalcula(num1, num2: double): double;
  end;

implementation

{ TSubtrair }

function TSubtrair.flCalcula(num1, num2: double): double;
begin
  Result := num1-num2;
end;

end.
