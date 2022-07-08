unit formCalculadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls

  ,UCalculadora
  ,USoma
  ,USubtracao
  ,UMultiplicacao
  ,UDivisao
  ;

type
  TfrmCalculadora = class(TForm)
    lbNum1: TLabel;
    edNum1: TEdit;
    lbNum2: TLabel;
    edNum2: TEdit;
    btnCalcular: TButton;
    cbOperacao: TComboBox;
    lbOperacao: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculadora: TfrmCalculadora;

implementation

{$R *.dfm}

procedure TfrmCalculadora.btnCalcularClick(Sender: TObject);
var
  num1, num2: double;

  Somar       : TSomar;
  Subtrair    : TSubtrair;
  Multiplicar : TMultiplicar;
  Dividir     : TDividir;

begin
  Somar       := TSomar.Create;
  Subtrair    := TSubtrair.Create;
  Multiplicar := TMultiplicar.Create;
  Dividir     := TDividir.Create;

  num1 := StrToFloat(edNum1.Text);
  num2 := StrToFloat(edNum2.Text);

  case cbOperacao.ItemIndex of
    0: begin
         ShowMessage ('Resultado = ' + FloatToStr(Somar.flCalcula(num1,num2)));
       end;
    1: begin
        ShowMessage ('Resultado = ' + FloatToStr(Subtrair.flCalcula(num1,num2)));
       end;
    2: begin
        ShowMessage ('Resultado = ' + FloatToStr(Multiplicar.flCalcula(num1,num2)));
       end;
    3: begin
        ShowMessage ('Resultado = ' + FloatToStr(Dividir.flCalcula(num1, num2)));
       end;
  end;
  Somar.Free;
  Subtrair.Free;
  Multiplicar.Free;
  Dividir.Free;
end;

end.
