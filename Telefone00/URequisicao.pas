unit URequisicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    gbCadastro: TGroupBox;
    lbVivaVoz: TLabel;
    lbMarca: TLabel;
    edVivaVoz: TEdit;
    edMarca: TEdit;
    rgTipoProduto: TRadioGroup;
    pnBotoes1: TPanel;
    lbCampo1: TLabel;
    lbCampo2: TLabel;
    edCampo1: TEdit;
    edCampo2: TEdit;
    gbConsulta: TGroupBox;
    pnBotoes2: TPanel;
    listboxConsulta: TListBox;
    btnAdicionar: TButton;
    btnLimpar: TButton;
    btnEliminar: TButton;
    btnMostrar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
