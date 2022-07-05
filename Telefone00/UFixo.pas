unit UFixo;

interface

uses UTelefone;

type
  TFixo = class(TTelefone)
  private
    FTamanhoCabo: integer;
    FFoneSemFio: byte;
    function GetFoneSemFio: byte;
    function GetTamanhoCabo: integer;
    procedure SetFoneSemFio(const Value: byte);
    procedure SetTamanhoCabo(const Value: integer);

  public
    property TamanhoCabo : integer  read GetTamanhoCabo  write SetTamanhoCabo;
    property FoneSemFio  : byte     read GetFoneSemFio   write SetFoneSemFio;

  end;

implementation

{ TFixo }

function TFixo.GetTamanhoCabo: integer;
begin
  Result := FTamanhoCabo;
end;

function TFixo.GetFoneSemFio: byte;
begin
  Result := FFoneSemFio;
end;

procedure TFixo.SetTamanhoCabo(const Value: integer);
begin
  FTamanhoCabo := Value;
end;

procedure TFixo.SetFoneSemFio(const Value: byte);
begin
  FFoneSemFio := Value;
end;

end.
