unit UFixo;

interface

uses UTelefone;

type
  TFixo = class(TTelefone)
  private
    FTamanhoCabo: Double;
    FFoneSemFio: String;
    function GetFoneSemFio: String;
    function GetTamanhoCabo: Double;
    procedure SetFoneSemFio(const Value: String);
    procedure SetTamanhoCabo(const Value: Double);

  public
    property TamanhoCabo : Double  read GetTamanhoCabo  write SetTamanhoCabo;
    property FoneSemFio  : String     read GetFoneSemFio   write SetFoneSemFio;

  end;

implementation

{ TFixo }

function TFixo.GetTamanhoCabo: Double;
begin
  Result := FTamanhoCabo;
end;

function TFixo.GetFoneSemFio: String;
begin
  Result := FFoneSemFio;
end;

procedure TFixo.SetTamanhoCabo(const Value: Double);
begin
  FTamanhoCabo := Value;
end;

procedure TFixo.SetFoneSemFio(const Value: String);
begin
  FFoneSemFio := Value;
end;

end.
