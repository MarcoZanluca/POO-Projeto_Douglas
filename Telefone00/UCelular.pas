unit UCelular;

interface

uses UTelefone;

type
  TCelular = class(TTelefone)
  private
    FMemoria: integer;
    FTouch: byte;
    function GetMemoria: integer;
    function GetTouch: byte;
    procedure SetMemoria(const Value: integer);
    procedure SetTouch(const Value: byte);

  public
    property Memoria : integer  read GetMemoria  write SetMemoria;
    property Touch   : byte     read GetTouch    write SetTouch;
  end;

implementation

{ TCelular }

function TCelular.GetMemoria: integer;
begin
  Result := FMemoria;
end;

function TCelular.GetTouch: byte;
begin
  Result := FTouch;
end;

procedure TCelular.SetMemoria(const Value: integer);
begin
  FMemoria := Value;
end;

procedure TCelular.SetTouch(const Value: byte);
begin
  FTouch := Value;
end;

end.
