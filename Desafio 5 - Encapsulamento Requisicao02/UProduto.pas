unit UProduto;

interface

type
  TProduto = class
   private
     FCodigo: String;
     FDescricao: String;

     function GetCodigo: String;
     function GetDescricao: String;

     procedure SetCodigo(const Value: String);
     procedure SetDescricao(const Value: String);

   public

     function flRetornaDescricaoTipoProduto: String; virtual; abstract;

     property Codigo    : String  read GetCodigo     write SetCodigo;
     property Descricao : String  read GetDescricao  write SetDescricao;
  end;

implementation

{ TProduto }

function TProduto.GetCodigo: String;
begin
  Result := FCodigo;
end;

function TProduto.GetDescricao: String;
begin
  Result := FDescricao;
end;

procedure TProduto.SetCodigo(const Value: String);
begin
  FCodigo := Value;
end;

procedure TProduto.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

end.
