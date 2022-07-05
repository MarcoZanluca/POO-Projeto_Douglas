unit UTelefone;

interface

type
  TTelefone = class
  private
    FMarca: char;
    FVivaVoz: byte;
    function GetMarca: char;
    function GetVivaVoz: byte;
    procedure SetMarca(const Value: char);
    procedure SetVivaVoz(const Value: byte);

  public
    property Marca   : char  read GetMarca    write SetMarca;
    property VivaVoz : byte  read GetVivaVoz  write SetVivaVoz;
end;

implementation

{ TTelefone }

function TTelefone.GetMarca: char;
begin
  Result := FMarca;
end;

function TTelefone.GetVivaVoz: byte;
begin
  Result := FVivaVoz;
end;

procedure TTelefone.SetMarca(const Value: char);
begin
  FMarca := Value;
end;

procedure TTelefone.SetVivaVoz(const Value: byte);
begin
  FVivaVoz := Value;
end;

end.
