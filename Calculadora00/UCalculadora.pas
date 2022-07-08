unit UCalculadora;

interface

type
  TCalculadora = class
  public
    function flCalcula(num1, num2: double): double; virtual; abstract;
  public


  end;
implementation

{ TCalculadora }

{ Para Soma
 Result := TSomar;

 Para Subtrair
 Result := TSubtrair;

 Para Multiplicar
 Result := TMultiplicar;

 Para Dividir
 Result := TDividir; }

end.
