unit URequisicao;

interface

uses  Windows
    ,Messages
    ,SysUtils
    ,Variants
    ,Classes
    ,Graphics
    ,Controls
    ,Forms
    ,Dialogs
    ,StdCtrls
    ,ExtCtrls
    ,UPessoa
    ,UProduto
    ,UQuimico
    ,UFio
    ,UComputador
    ,URegraRequisicao
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
    procedure rgTipoProdutoClick(Sender: TObject);
    procedure btnAdicionaRequisicaoClick(Sender: TObject);
    procedure btnMostrarDadosClick(Sender: TObject);
  private
    { Private declarations }
    procedure plLimpaCampos;
  public
    { Public declarations }
  end;

var
  frmRequisicao: TfrmRequisicao;

implementation

procedure TfrmRequisicao.FormCreate(Sender: TObject);
begin
  plLimpaCampos;
end;

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

procedure TfrmRequisicao.rgTipoProdutoClick(Sender: TObject);
begin
  lbCampo2.Visible := (rgTipoProduto.ItemIndex in [1,2]);
  edCampo2.Visible := lbCampo2.Visible;
  case rgTipoProduto.ItemIndex of
    0: lbCampo1.Caption := 'Concentração:';
    1: begin
         lbCampo1.Caption := 'Cor:';
         lbCampo2.Caption := 'Comprimento:';
       end;
    2: begin
         lbCampo1.Caption := 'Memória:';
         lbCampo2.Caption := 'Processador:';
       end;
  end;
end;

procedure TfrmRequisicao.btnAdicionaRequisicaoClick(Sender: TObject);
var loRegraRequisicao : TRegraRequisicao;
begin
  loRegraRequisicao                  := TRegraRequisicao.Create(rgTipoProduto.ItemIndex);
  loRegraRequisicao.CodigoPessoa     := edCodigoPessoa.Text;
  loRegraRequisicao.Nome             := edNOmePessoa.Text;
  loRegraRequisicao.InscricaoFederal := edInscricaoFederalPessoa.Text;

  loRegraRequisicao.CodigoProduto := edCodigoProduto.Text;
  loRegraRequisicao.Descricao     := edDescricaoProduto.Text;

  case rgTipoProduto.ItemIndex of
       0: loRegraRequisicao.Concentracao := StrToInt(edCampo1.Text);
       1: begin
            loRegraRequisicao.Cor         := edCampo1.Text;
            loRegraRequisicao.Comprimento := StrToFloat(edCampo2.Text);
          end;
       2: begin  
            loRegraRequisicao.Memoria     := StrToInt(edCampo1.Text);
            loRegraRequisicao.Processador := StrToInt(edCampo2.Text);
          end;
  end;
  listBoxRequisicoes.AddItem(loRegraRequisicao.Nome, loRegraRequisicao);

end;

procedure TfrmRequisicao.btnLimpaRequisicaoClick(Sender: TObject);
begin
  plLimpaCampos;
end;

procedure TfrmRequisicao.btnMostrarDadosClick(Sender: TObject);
var loRegraRequisicao : TRegraRequisicao;
    lsRequisicao      : String;
begin
  if   listBoxRequisicoes.ItemIndex <> -1 then
       begin
         loRegraRequisicao := TRegraRequisicao(listBoxRequisicoes.Items.Objects[listBoxRequisicoes.ItemIndex]);

         lsRequisicao := 'Código ' + loRegraRequisicao.CodigoPessoa + chr(13) +


       end;
end;

{$R *.dfm}

end.
