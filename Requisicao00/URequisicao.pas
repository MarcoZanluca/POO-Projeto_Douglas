unit URequisicao;

interface

uses  Windows
    , Messages
    , SysUtils
    , Variants
    , Classes
    , Graphics
    , Controls
    , Forms
    , Dialogs
    , StdCtrls
    , ExtCtrls
    , UPessoa
    , UProduto
    , UQuimico
    , UFio
    , UComputador
    , URegraRequisicao
    ;



type
  TfrmRequisicao = class(TForm)
    gbCadastro: TGroupBox;
    gbConsulta: TGroupBox;
    lbCodigoPessoa: TLabel;
    lbNomePessoa: TLabel;
    lbInscricaoFederalPessoa: TLabel;
    edCodigoPessoa: TEdit;
    edNomePessoa: TEdit;
    edInscricaoFederalPessoa: TEdit;
    edDescricaoProduto: TEdit;
    edCodigoProduto: TEdit;
    lbCodigoProduto: TLabel;
    lbDescricaoProduto: TLabel;
    rgTipoProduto: TRadioGroup;
    lbCampo1: TLabel;
    lbCampo2: TLabel;
    edCampo1: TEdit;
    edCampo2: TEdit;
    btnAdicionaRequisicao: TButton;
    btnLimpaRequisicao: TButton;
    listBoxRequisicoes: TListBox;
    Panel1: TPanel;
    btnMostrarDados: TButton;
    btnEliminarRequisicao: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnLimpaRequisicaoClick(Sender: TObject);
  private
    { Private declarations }
    procedure plLimpaCampos;
  public
    { Public declarations }
  end;

var
  frmRequisicao: TfrmRequisicao;

implementation

procedure TfrmRequisicao.plLimpaCampos;
begin
  edNomePessoa.Text := '';
  edCodigoPessoa.Text := '';
  edInscricaoFederalPessoa.Text := '';

  edCodigoProduto.Text := '';
  edDescricaoProduto.Text := '';
  edCampo1.Text := '';
  edCampo2.Text := '';

  rgTipoProduto.ItemIndex := 0;
end;

procedure TfrmRequisicao.FormCreate(Sender: TObject);
begin
  plLimpaCampos;
end;

procedure TfrmRequisicao.btnLimpaRequisicaoClick(Sender: TObject);
begin
  plLimpaCampos;
end;

{$R *.dfm}

end.
