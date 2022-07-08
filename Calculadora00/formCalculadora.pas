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

  Calculadora : TCalculadora;
begin
  num1 := StrToFloat(edNum1.Text);
  num2 := StrToFloat(edNum2.Text);

  case cbOperacao.ItemIndex of
    0: Calculadora := TSomar.Create;
    1: Calculadora := TSubtrair.Create;
    2: Calculadora := TMultiplicar.Create;
    3: Calculadora := TDividir.Create;
  end;

  ShowMessage ('Resultado = ' + FloatToStr(Calculadora.flCalcula(num1,num2)));

  Calculadora.Free;
end;

end.
