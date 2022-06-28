unit URegraRequisicao;

interface

uses UPessoa
    ,UProduto
    ,UQuimico
    ,UFio
    ,UComputador
    ,SysUtils
    ;

type
  TRegraRequisicao = class
  private
    FPessoa: TPessoa;
    FProduto: TProduto;

    function GetCodigoPessoa: String;
    function GetNome: String;
    function GetInscricoesFederal: String;

    function GetCodigoProduto: String;
    function GetDescricao: String;

    function GetConcentracao: Integer;
    function GetCor: String;
    function GetMemoria: Integer;
    function GetComprimento: Double;
    function GetProcessador: Integer;

    procedure SetCodigoPessoa(const Value: String);
    procedure SetNome(const Value: String);
    procedure SetInscricaoFederal(const Value: String);

    procedure SetCodigoProduto(const Value: String);
    procedure SetDescricao(const Value: String);
    procedure SetConcetracao(const Value: Integer);
    procedure SetCor(const Value: String);
    procedure SetMemoria(const Value: Integer);
    procedure SetProcessador(const Value: Integer);
    procedure SetComprimento(const Value: Double);

  public
    constructor Create(const cyTipoProduto: Byte); //Construtor da Classe
    destructor Destroy; override; //Destrutor da Classe

    function flRetornaTipoProduto: Byte;
    function flRetornaDescricaoTipoProduto: String;

    property CodigoPessoa     : String  read GetCodigoPessoa      write SetCodigoPessoa;
    property Nome             : String  read GetNome              write SetNome;
    property InscricaoFederal : String  read GetInscricoesFederal write SetInscricaoFederal;

    property CodigoProduto : String   read GetCodigoProduto write SetCodigoProduto;
    property Descricao     : String   read GetDescricao     write SetDescricao;
    property Concentracao  : Integer  read GetConcentracao  write SetConcetracao;
    property Cor           : String   read GetCor           write SetCor;
    property Comprimento   : Double   read GetComprimento   write SetComprimento;
    property Memoria       : Integer  read GetMemoria       write SetMemoria;
    property Processador   : Integer  read GetProcessador   write SetProcessador;

  end;

implementation

{ TRegraRequisicao }

constructor TRegraRequisicao.Create(const cyTipoProduto: Byte);
begin
  FPessoa := TPessoa.Create;
  Case cyTipoProduto of
  0: FProduto := TQuimico.Create;  
  1: FProduto := TFio.Create;
  2: FProduto := TComputador.Create;
  End;
end;

destructor TRegraRequisicao.Destroy;
begin
  FPessoa.Free;
  FreeAndNil(FProduto);
  inherited;
end;

function TRegraRequisicao.flRetornaDescricaoTipoProduto: String;
begin
  Result := '';
  if   FProduto is TQuimico then
       Result := TQuimico (FProduto).flRetornaDescricaoTipoProdutoQuimico;
end;

function TRegraRequisicao.flRetornaTipoProduto: Byte;
begin
  Result := 255;

  if   FProduto is TQuimico then
       Result := 0;
  if   FProduto is TFio then
       Result := 1;
  if   FProduto is TComputador then
       Result := 2;
end;

{ Tipo Pessoa }

function TRegraRequisicao.GetCodigoPessoa: String;
begin
  Result := FPessoa.Codigo;
end;

function TRegraRequisicao.GetNome: String;
begin
  Result := FPessoa.Nome;
end;

function TRegraRequisicao.GetInscricoesFederal: String;
begin
  Result := FPessoa.InscricaoFederal;
end;

{ Tipo Produto }

function TRegraRequisicao.GetCodigoProduto: String;
begin
  Result := FProduto.Codigo;
end;

function TRegraRequisicao.GetDescricao: String;
begin

end;

function TRegraRequisicao.GetConcentracao: Integer;
begin
  Result := TQuimico(FProduto).Concentracao;
end;

function TRegraRequisicao.GetComprimento: Double;
begin
  Result := TFio(FProduto).Comprimento; 
end;

function TRegraRequisicao.GetCor: String;
begin
  Result := TFio(FProduto).Cor;
end;

function TRegraRequisicao.GetMemoria: Integer;
begin
  Result := TComputador(FProduto).Memoria;
end;

function TRegraRequisicao.GetProcessador: Integer;
begin
  Result := TComputador(FProduto).Processador;
end;

procedure TRegraRequisicao.SetCodigoPessoa(const Value: String);
begin
  FPessoa.Codigo := Value;
end;

procedure TRegraRequisicao.SetCodigoProduto(const Value: String);
begin
  FProduto.Codigo := Value;
end;

procedure TRegraRequisicao.SetComprimento(const Value: Double);
begin
  TFio(FProduto).Comprimento := Value;
end;

procedure TRegraRequisicao.SetConcetracao(const Value: Integer);
begin

end;

procedure TRegraRequisicao.SetCor(const Value: String);
begin

end;

procedure TRegraRequisicao.SetDescricao(const Value: String);
begin

end;

procedure TRegraRequisicao.SetInscricaoFederal(const Value: String);
begin

end;

procedure TRegraRequisicao.SetMemoria(const Value: Integer);
begin

end;

procedure TRegraRequisicao.SetNome(const Value: String);
begin

end;

procedure TRegraRequisicao.SetProcessador(const Value: Integer);
begin

end;

end.
