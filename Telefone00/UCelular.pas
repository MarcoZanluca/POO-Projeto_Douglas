unit UCelular;

interface

uses UTelefone;

type
  TCelular = class(TTelefone)
  private
    FMemoria: integer;
    FTouch: String;
    function GetMemoria: integer;
    function GetTouch: String;
    procedure SetMemoria(const Value: integer);
    procedure SetTouch(const Value: String);

  public
    property Memoria : integer  read GetMemoria  write SetMemoria;
    property Touch   : String   read GetTouch    write SetTouch;
  end;

implementation

{ TCelular }

function TCelular.GetMemoria: integer;
begin
  Result := FMemoria;
end;

function TCelular.GetTouch: String;
begin
  Result := FTouch;
end;

procedure TCelular.SetMemoria(const Value: integer);
begin
  FMemoria := Value;
end;

procedure TCelular.SetTouch(const Value: String);
begin
  FTouch := Value;
end;

end.
