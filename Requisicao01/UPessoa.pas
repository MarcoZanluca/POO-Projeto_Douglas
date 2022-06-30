unit UPessoa;

interface

type
  //Classe
  TPessoa = class
  //Encapsulamento
  private
  //Atributos
    FCodigo: String;
    FNome: String;
    FInscricaoFederal: String;

    //Métodos
    function GetCodigo: String; //Get = Ler, pegar, buscar
    function GetNome: String;
    function GetInscricaoFederal: String;

    procedure SetCodigo(const Value: String); //Set = Escrever, Setar
    procedure SetNome(const Value: String);
    procedure SetinscricaoFederal(const Value: String);

  public
    //propriedades
    property Codigo           : String  read GetCodigo            write SetCodigo;
    property Nome             : String  read GetNome              write SetNome;
    property InscricaoFederal : String  read GetInscricaoFederal  write SetInscricaoFederal;
  end;

implementation

{ TPessoa }

function TPessoa.GetCodigo: String;
begin
  Result := FCodigo;
end;

function TPessoa.GetInscricaoFederal: String;
begin
  Result := FInscricaoFederal;
end;

function TPessoa.GetNome: String;
begin
  Result := FNome;
end;

procedure TPessoa.SetCodigo (const Value: String);
begin
  FCodigo := Value;
end;

procedure TPessoa.SetinscricaoFederal(const Value: String);
begin
  FInscricaoFederal := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
