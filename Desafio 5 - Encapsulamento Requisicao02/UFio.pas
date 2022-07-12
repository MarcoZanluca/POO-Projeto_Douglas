unit UFio;

interface

uses UProduto
     ;

type
  TFio = class(TProduto)
  private
    FCor : String;
    FComprimento : Double;

    function GetCor: String;
    function GetComprimento: Double;

    procedure SetCor(const Value: String);
    procedure SetComprimento(const Value: Double);
  public

    function flRetornaDescricaoTipoProduto: String; override;

    property Cor          : String  read GetCor          write SetCor;
    property Comprimento  : Double  read GetComprimento  write SetComprimento;
  end;

implementation

{ TFio }

function TFio.flRetornaDescricaoTipoProduto: String;
begin
  Result := 'Fa�o parte de um grupo seleto de filamentos';
end;

function TFio.GetComprimento: Double;
begin
  Result := FComprimento;
end;

function TFio.GetCor: String;
begin
  Result := FCor;
end;

procedure TFio.SetComprimento(const Value: Double);
begin
  FComprimento := Value;
end;

procedure TFio.SetCor(const Value: String);
begin
  FCor := Value;
end;

end.
