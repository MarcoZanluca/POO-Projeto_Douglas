unit UJuridica;

interface

uses UPessoa
     ;

type
  TJuridica = class (TPessoa)
  private
    FNomeFantasia: String;

    function GetNomeFantasia: String;

    procedure SetNomeFantasia(const Value: String);

  public
    property NomeFantasia: String read GetNomeFantasia write SetNomeFantasia;

end;

implementation

{ TJuridica }

function TJuridica.GetNomeFantasia: String;
begin
  Result := FNomeFantasia;
end;

procedure TJuridica.SetNomeFantasia(const Value: String);
begin
  FNomeFantasia := Value;
end;

end.
