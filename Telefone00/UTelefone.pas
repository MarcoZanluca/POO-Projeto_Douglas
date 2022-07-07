unit UTelefone;

interface

type
  TTelefone = class
  private
    FMarca: String;
    FVivaVoz: String;
    function GetMarca: String;
    function GetVivaVoz: String;
    procedure SetMarca(const Value: String);
    procedure SetVivaVoz(const Value: String);

  public
    property Marca   : String  read GetMarca    write SetMarca;
    property VivaVoz : String  read GetVivaVoz  write SetVivaVoz;
end;

implementation

{ TTelefone }

function TTelefone.GetMarca: String;
begin
  Result := FMarca;
end;

function TTelefone.GetVivaVoz: String;
begin
  Result := FVivaVoz;
end;

procedure TTelefone.SetMarca(const Value: String);
begin
  FMarca := Value;
end;

procedure TTelefone.SetVivaVoz(const Value: String);
begin
  FVivaVoz := Value;
end;

end.
