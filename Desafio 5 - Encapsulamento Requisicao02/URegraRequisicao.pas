unit URegraRequisicao;

interface

uses UPessoa
    ,UJuridica
    ,UFisica
    ,UProduto
    ,UQuimico
    ,UFio
    ,UComputador
    ,UMalha
    ,SysUtils
    ,Dialogs
    ;

type
  TRegraRequisicao = class
  private
    FPessoa: TPessoa;
    FProduto: TProduto;

    { TPessoa }
    function GetCodigoPessoa: String;
    function GetNome: String;
    function GetInscricoesFederal: String;

    { TJuridica, TFisica }
    function GetNomeFantasia: String;
    function GetSexo: String;

    { TProduto }
    function GetCodigoProduto: String;
    function GetDescricao: String;

    { TQuímico, TFio, TComputador, TMalha, TJuridica, TFisica }
    function GetConcentracao: Integer;
    function GetCor: String;
    function GetMemoria: Integer;
    function GetComprimento: Double;
    function GetProcessador: Integer;
    function GetMetros: Double;
    function GetLargura: Double;

    { TPessoa }
    procedure SetCodigoPessoa(const Value: String);
    procedure SetNome(const Value: String);
    procedure SetInscricaoFederal(const Value: String);

    { TJuridica, TFisica }
    procedure SetNomeFantasia(const Value: String);
    procedure SetSexo(const Value: String);

    { TProduto }
    procedure SetCodigoProduto(const Value: String);
    procedure SetDescricao(const Value: String);

    { TQuímico, TFio, TComputador, TMalha, TJuridica, TFisica }
    procedure SetConcentracao(const Value: Integer);
    procedure SetCor(const Value: String);
    procedure SetMemoria(const Value: Integer);
    procedure SetProcessador(const Value: Integer);
    procedure SetComprimento(const Value: Double);
    procedure SetMetros(const Value: Double);
    procedure SetLargura(const Value: Double);

  public
    constructor Create(const csInscricaoFederal: String; cyTipoProduto: Byte); //Construtor da Classe
    destructor Destroy; override; //Destrutor da Classe

    function flImprimirPessoa: String;
    function flImprimirProduto: String;

    function flRetornaTipoProduto: Byte;
    function flRetornaDescricaoTipoProduto: String;
    function flRetornaConcentracao: String;
    function flRetornaTipoInscricaoFederal: Byte;

    property CodigoPessoa     : String  read GetCodigoPessoa      write SetCodigoPessoa;
    property Nome             : String  read GetNome              write SetNome;
    property InscricaoFederal : String  read GetInscricoesFederal write SetInscricaoFederal;

    property NomeFantasia     : String  read GetNomeFantasia     write SetNomeFantasia;
    property Sexo             : String  read GetSexo             write SetSexo;

    property CodigoProduto : String   read GetCodigoProduto write SetCodigoProduto;
    property Descricao     : String   read GetDescricao     write SetDescricao;
    property Concentracao  : Integer  read GetConcentracao  write SetConcentracao;

    property Cor           : String   read GetCor           write SetCor;
    property Comprimento   : Double   read GetComprimento   write SetComprimento;
    property Memoria       : Integer  read GetMemoria       write SetMemoria;
    property Processador   : Integer  read GetProcessador   write SetProcessador;
    property Metros        : Double   read GetMetros        write SetMetros;
    property Largura       : Double   read GetLargura       write SetLargura;

  end;

implementation

{ Tipo RegraRequisicao - Get }

constructor TRegraRequisicao.Create(const csInscricaoFederal: String; cyTipoProduto: Byte);
begin
  case   Length (csInscricaoFederal) of
         14: FPessoa := TJuridica.Create;
         11: FPessoa := TFisica.Create;
  else
        raise Exception.Create('Campo Inscrição Federal inválido' + chr(13) +
                    'deve ser preenchido com:' + chr(13) +
                    'CNPJ - 14 dígitos ou CPF - 11 dígitos');
  end;

  Case   cyTipoProduto of
         0: FProduto := TQuimico.Create;
         1: FProduto := TFio.Create;
         2: FProduto := TComputador.Create;
         3: FProduto := TMalha.Create;
  End;
end;

destructor TRegraRequisicao.Destroy;
begin
  FreeAndNil(FPessoa);
  FreeAndNil(FProduto);
  inherited;
end;

function TRegraRequisicao.flImprimirPessoa: String;
begin
  Result := 'Código: ' + CodigoPessoa + chr(13) +
                        'Nome: ' + Nome + chr(13) +
                        'Inscrição Federal: ' + InscricaoFederal + chr(13) + chr(13);
  case   flRetornaTipoInscricaoFederal of
         14: Result := Result + 'JURÍDICA' + chr(13) +
                                'Nome Fantasia: ' + NomeFantasia + chr(13) + chr(13);
         11: Result := Result + 'FÍSICA' + chr(13) +
                                'Sexo: ' + Sexo + chr(13) +
                                '[M] Masculino' + chr(13) +
                                '[F] Feminino' + chr(13) + chr(13);
  end;
end;

function TRegraRequisicao.flImprimirProduto: String;
begin
  Result := emptyStr;
  case flRetornaTipoProduto of
       0: Result := 'QUÍMICO' + chr(13) +
                    'Concentração: ' + IntToStr(Concentracao) + '% - ' + flRetornaConcentracao + chr(13);
       1: Result := 'FIO' + chr(13) +
                    'Cor: '+ Cor + chr(13) +
                    'Comprimento: ' + FloatToStr(Comprimento) + chr(13);
       2: Result := 'COMPUTADOR' + chr(13) +
                    'Memória: ' + IntToStr(Memoria) + chr(13) +
                    'Processador: ' + IntToStr(Processador) + chr(13);
       3: Result := 'MALHA' + chr(13) +
                    'Metros: ' + FloatToStr(Metros) + chr(13) +
                    'Largura: ' + FloatToStr(Largura) + chr(13);
  end;
  Result := Result + 'Descrição Produto: ' + Descricao + chr(13) + chr(13);
  Result := Result + flRetornaDescricaoTipoProduto;
end;

function TRegraRequisicao.flRetornaConcentracao: String;
begin
  Result := '';
  if   FProduto is TQuimico then
       Result := TQuimico(FProduto).flRetornaConcentracao;
end;

function TRegraRequisicao.flRetornaDescricaoTipoProduto: String;
begin
  Result := '';
  Result := FProduto.flRetornaDescricaoTipoProduto;
end;

function TRegraRequisicao.flRetornaTipoInscricaoFederal: Byte;
begin
  Result := 0;

  if   FPessoa is TJuridica then
       Result := 14;
  if   FPessoa is TFisica then
       Result := 11;
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
  if   FProduto is TMalha then
       Result := 3;
end;

{ Tipo Pessoa - Get }

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

{ Tipo Juridica - Get }

function TRegraRequisicao.GetNomeFantasia: String;
begin
  Result := TJuridica(FPessoa).NomeFantasia;
end;

{ Tipo Fisica - Get }

function TRegraRequisicao.GetSexo: String;
begin
  Result := TFisica(FPessoa).Sexo;
end;

{ Tipo Produto - Get }

function TRegraRequisicao.GetCodigoProduto: String;
begin
  Result := FProduto.Codigo;
end;

function TRegraRequisicao.GetDescricao: String;
begin
  Result := FProduto.Descricao;
end;

{ Tipo Químico - Get }

function TRegraRequisicao.GetConcentracao: Integer;
begin
  Result := TQuimico(FProduto).Concentracao;
end;

{ Tipo Fio - Get }

function TRegraRequisicao.GetCor: String;
begin
  Result := TFio(FProduto).Cor;
  //TESTAR - Result := TFio(FPessoa).Cor;
end;

function TRegraRequisicao.GetComprimento: Double;
begin
  Result := TFio(FProduto).Comprimento; 
end;

{ Tipo Computador - Get }

function TRegraRequisicao.GetMemoria: Integer;
begin
  Result := TComputador(FProduto).Memoria;
end;

function TRegraRequisicao.GetProcessador: Integer;
begin
  Result := TComputador(FProduto).Processador;
end;


{ Tipo Malha - Get }

function TRegraRequisicao.GetMetros: Double;
begin
  Result := TMalha(FProduto).Metros;
end;

function TRegraRequisicao.GetLargura: Double;
begin
  Result := TMalha(FProduto).Largura;
end;

{ Tipo Pessoa - Set }

procedure TRegraRequisicao.SetCodigoPessoa(const Value: String);
begin
  FPessoa.Codigo := Value;
end;

procedure TRegraRequisicao.SetNome(const Value: String);
begin
  FPessoa.Nome := Value;
end;

procedure TRegraRequisicao.SetInscricaoFederal(const Value: String);
begin
  FPessoa.InscricaoFederal := Value;
end;

{ Tipo Juridica - Set }

procedure TRegraRequisicao.SetNomeFantasia(const Value: String);
begin
  TJuridica(FPessoa).NomeFantasia := Value;
end;

{ Tipo Fisica - Set }

procedure TRegraRequisicao.SetSexo(const Value: String);
begin
  TFisica(FPessoa).Sexo := Value;
end;

{ Tipo Produto - Set }

procedure TRegraRequisicao.SetCodigoProduto(const Value: String);
begin
  FProduto.Codigo := Value;
end;

procedure TRegraRequisicao.SetDescricao(const Value: String);
begin
  FProduto.Descricao := Value;
end;

{ Tipo Químico - Set }

procedure TRegraRequisicao.SetConcentracao(const Value: Integer);
begin
  TQuimico(FProduto).Concentracao := Value;
end;

{ Tipo Fio - Set }

procedure TRegraRequisicao.SetCor(const Value: String);
begin
  TFio(FProduto).Cor := Value;
end;

procedure TRegraRequisicao.SetComprimento(const Value: Double);
begin
  TFio(FProduto).Comprimento := Value;
end;

{ Tipo Computador - Set }

procedure TRegraRequisicao.SetMemoria(const Value: Integer);
begin
  TComputador(FProduto).Memoria := Value;
end;


procedure TRegraRequisicao.SetProcessador(const Value: Integer);
begin
  TComputador(FProduto).Processador := Value;
end;

{ Tipo Malha - Set }

procedure TRegraRequisicao.SetMetros(const Value: Double);
begin
  TMalha(FProduto).Metros := Value;
end;

procedure TRegraRequisicao.SetLargura(const Value: Double);
begin
  TMalha(FProduto).Largura := Value;
end;

end.
