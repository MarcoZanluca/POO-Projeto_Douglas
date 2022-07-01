unit UFisica;

interface

uses UPessoa
     ;

type
  TFisica = class (TPessoa)
  private
  FSexo: String;

    function GetSexo: String;

    procedure SetSexo(const Value: String);

  public
    property Sexo: String read GetSexo write SetSexo;

  end;

implementation

{ TFisica }

function TFisica.GetSexo: String;
begin
  Result := FSexo;
end;

procedure TFisica.SetSexo(const Value: String);
begin
  FSexo := Value;
end;

end.
