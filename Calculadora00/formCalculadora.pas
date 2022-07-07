unit formCalculadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmCalculadora = class(TForm)
    lbNum1: TLabel;
    edNum1: TEdit;
    lbNum2: TLabel;
    edNum2: TEdit;
    btnSoma: TButton;
    btnSubtracao: TButton;
    btnMultiplicacao: TButton;
    btnDivisao: TButton;
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubtracaoClick(Sender: TObject);
    procedure btnMultiplicacaoClick(Sender: TObject);
    procedure btnDivisaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculadora: TfrmCalculadora;

implementation

{$R *.dfm}

procedure TfrmCalculadora.btnDivisaoClick(Sender: TObject);
var
 num1, num2, result: real;
begin
 num1 := StrToFloat(edNum1.Text);
 num2 := StrToFloat(edNum2.Text);
 Result := num1/num2;
 ShowMessage ('Resultado = '+FloatToStr(result));
end;

procedure TfrmCalculadora.btnMultiplicacaoClick(Sender: TObject);
var
 num1, num2, result: real;
begin
 num1 := StrToFloat(edNum1.Text);
 num2 := StrToFloat(edNum2.Text);
 Result := num1*num2;
 ShowMessage ('Resultado = '+FloatToStr(result));
end;

procedure TfrmCalculadora.btnSomaClick(Sender: TObject);
var
 num1, num2, result: real;
begin
 num1 := StrToFloat(edNum1.Text);
 num2 := StrToFloat(edNum2.Text);
 Result := num1+num2;
 ShowMessage ('Resultado = '+FloatToStr(result));
end;

procedure TfrmCalculadora.btnSubtracaoClick(Sender: TObject);
var
 num1, num2, result: real;
begin
 num1 := StrToFloat(edNum1.Text);
 num2 := StrToFloat(edNum2.Text);
 Result := num1-num2;
 ShowMessage ('Resultado = '+FloatToStr(result));
end;

end.
