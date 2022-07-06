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
    function GetMarca: char;
    function GetVivaVoz: byte;

    { TCelular - TFixo - Get }
    function GetMemoria: integer;
    function GetTouch: byte;
    function GetTamanhoCabo: integer;
    function GetFoneSemFio: byte;

    { TTelefone - Set }
    procedure SetMarca(const Value: char);
    procedure SetVivaVoz(const Value: byte);

    { TCelular - TFixo - Set }
    procedure SetMemoria(const Value: integer);
    procedure SetTouch(const Value: byte);
    procedure SetTamanhoCabo(const Value: integer);
    procedure SetFoneSemFio(const Value: byte);

  public
    constructor Create(const cyTipoProduto: Byte);
    destructor Destroy; override;

    function flRetornaTipoProduto: Byte;

    property Marca   : char  read GetMarca    write SetMarca;
    property VivaVoz : byte  read GetVivaVoz  write SetVivaVoz;

    property Memoria : integer  read GetMemoria  write SetMemoria;
    property Touch   : byte     read GetTouch    write SetTouch;

    property TamanhoCabo : integer  read GetTamanhoCabo  write SetTamanhoCabo;
    property FoneSemFio  : byte     read GetFoneSemFio   write SetFoneSemFio;
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
function TRegraRequisicao.GetMarca: char;
begin
  Result := FTelefone.Marca;
end;

function TRegraRequisicao.GetVivaVoz: byte;
begin
  Result := FTelefone.VivaVoz;
end;

{ TCelular - Get }
function TRegraRequisicao.GetMemoria: integer;
begin
  Result := TCelular(FTelefone).Memoria;
end;

function TRegraRequisicao.GetTouch: byte;
begin
  Result := TCelular(FTelefone).Touch;
end;

{ TFixo - Get }
function TRegraRequisicao.GetTamanhoCabo: integer;
begin
  Result := TFixo(FTelefone).TamanhoCabo;
end;

function TRegraRequisicao.GetFoneSemFio: byte;
begin
  Result := TFixo(FTelefone).FoneSemFio;
end;


{ TTelefone - Set }
procedure TRegraRequisicao.SetMarca(const Value: char);
begin
  FTelefone.Marca := Value;
end;

procedure TRegraRequisicao.SetVivaVoz(const Value: byte);
begin
  FTelefone.VivaVoz := Value;
end;

{ TCelular - Set }
procedure TRegraRequisicao.SetMemoria(const Value: integer);
begin
  TCelular(TTelefone).Memoria := Value;
end;

procedure TRegraRequisicao.SetTouch(const Value: byte);
begin
  TCelular(TTelefone).Touch := Value;
end;

{ TFixo - Set }
procedure TRegraRequisicao.SetTamanhoCabo(const Value: integer);
begin
  TFixo(TTelefone).TamanhoCabo := Value;
end;

procedure TRegraRequisicao.SetFoneSemFio(const Value: byte);
begin
  TFixo(TTelefone).FoneSemFio := Value;
end;

end.
