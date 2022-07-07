unit URegraRequisicao;

interface

uses UTelefone
    ,UCelular
    ,UFixo
    ,SysUtils
    ,Dialogs
    ;

type
  TRegraRequisicao = class
  private
      FTelefone: TTelefone;
    { TTelefone - Get }
    function GetMarca: String;
    function GetVivaVoz: String;

    { TCelular - TFixo - Get }
    function GetMemoria: integer;
    function GetTouch: String;
    function GetTamanhoCabo: Double;
    function GetFoneSemFio: String;

    { TTelefone - Set }
    procedure SetMarca(const Value: String);
    procedure SetVivaVoz(const Value: String);

    { TCelular - TFixo - Set }
    procedure SetMemoria(const Value: integer);
    procedure SetTouch(const Value: String);
    procedure SetTamanhoCabo(const Value: Double);
    procedure SetFoneSemFio(const Value: String);

  public
    constructor Create(const cyTipoProduto: Byte);
    destructor Destroy; override;

    function flRetornaTipoProduto: Byte;

    property Marca   : String  read GetMarca    write SetMarca;
    property VivaVoz : String    read GetVivaVoz  write SetVivaVoz;

    property Memoria : integer  read GetMemoria  write SetMemoria;
    property Touch   : String   read GetTouch    write SetTouch;

    property TamanhoCabo : Double  read GetTamanhoCabo  write SetTamanhoCabo;
    property FoneSemFio  : String   read GetFoneSemFio   write SetFoneSemFio;
  end;

implementation

{ TRegraRequisicao }

constructor TRegraRequisicao.Create(const cyTipoProduto: Byte);
begin
  case cyTipoProduto of
    0: FTelefone := TCelular.Create;
    1: FTelefone := TFixo.Create;
  end;
end;

destructor TRegraRequisicao.Destroy;
begin
  FreeAndNil(FTelefone);
  inherited;
end;

function TRegraRequisicao.flRetornaTipoProduto: Byte;
begin
  Result := 255;

  if   FTelefone is TCelular then
       Result := 0;
  if   FTelefone is TFixo then
       Result := 1;
end;

{ TTelefone - Get }
function TRegraRequisicao.GetMarca: String;
begin
  Result := FTelefone.Marca;
end;

function TRegraRequisicao.GetVivaVoz: String;
begin
  Result := FTelefone.VivaVoz;
end;

{ TCelular - Get }
function TRegraRequisicao.GetMemoria: integer;
begin
  Result := TCelular(FTelefone).Memoria;
end;

function TRegraRequisicao.GetTouch: String;
begin
  Result := TCelular(FTelefone).Touch;
end;

{ TFixo - Get }
function TRegraRequisicao.GetTamanhoCabo: Double;
begin
  Result := TFixo(FTelefone).TamanhoCabo;
end;

function TRegraRequisicao.GetFoneSemFio: String;
begin
  Result := TFixo(FTelefone).FoneSemFio;
end;


{ TTelefone - Set }
procedure TRegraRequisicao.SetMarca(const Value: String);
begin
  FTelefone.Marca := Value;
end;

procedure TRegraRequisicao.SetVivaVoz(const Value: String);
begin
  FTelefone.VivaVoz := Value;
end;

{ TCelular - Set }
procedure TRegraRequisicao.SetMemoria(const Value: integer);
begin
  TCelular(FTelefone).Memoria := Value;
end;

procedure TRegraRequisicao.SetTouch(const Value: String);
begin
  TCelular(FTelefone).Touch := Value;
end;

{ TFixo - Set }
procedure TRegraRequisicao.SetTamanhoCabo(const Value: Double);
begin
  TFixo(FTelefone).TamanhoCabo := Value;
end;

procedure TRegraRequisicao.SetFoneSemFio(const Value: String);
begin
  TFixo(FTelefone).FoneSemFio := Value;
end;

end.
