unit USoma;

interface

uses UCalculadora;

type
  TSomar = class(TCalculadora)
  private
  public
    function flCalcula(num1, num2: double): double;
  end;

implementation

{ TSomar }

function TSomar.flCalcula(num1, num2: double): double;
begin
  Result := num1+num2;
end;

end.
