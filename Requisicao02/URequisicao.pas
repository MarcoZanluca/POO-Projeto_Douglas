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
    ,UJuridica
    ,UFisica
    ,UProduto
    ,UQuimico
    ,UFio
    ,UComputador
    ,UMalha
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
    listBoxRequisicoes: TListBox;
    Panel1: TPanel;
    btnMostrarDados: TButton;
    btnEliminarRequisicao: TButton;
    Panel2: TPanel;
    btnAdicionaRequisicao: TButton;
    btnLimpaRequisicao: TButton;
    edCampo3: TEdit;
    lbCampo3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnLimpaRequisicaoClick(Sender: TObject);
    procedure rgTipoProdutoClick(Sender: TObject);
    procedure btnAdicionaRequisicaoClick(Sender: TObject);
    procedure btnMostrarDadosClick(Sender: TObject);
    procedure btnEliminarRequisicaoClick(Sender: TObject);
    procedure edInscricaoFederalPessoaChange(Sender: TObject);
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
  edCampo3.Text := '';

  edCodigoProduto.Text := '';
  edDescricaoProduto.Text := '';
  edCampo1.Text := '';
  edCampo2.Text := '';

  rgTipoProduto.ItemIndex := 0;
end;

procedure TfrmRequisicao.rgTipoProdutoClick(Sender: TObject);
begin
  lbCampo2.Visible := (rgTipoProduto.ItemIndex in [1,2,3]);
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
    3: begin
         lbCampo1.Caption := 'Metros:';
         lbCampo2.Caption := 'Largura:';
       end;
  end;
end;

procedure TfrmRequisicao.btnAdicionaRequisicaoClick(Sender: TObject);
var loRegraRequisicao : TRegraRequisicao;
begin
  Try
      loRegraRequisicao                  := TRegraRequisicao.Create(edInscricaoFederalPessoa.Text, rgTipoProduto.ItemIndex);

      { Requisição para TPessoa }
      loRegraRequisicao.CodigoPessoa     := edCodigoPessoa.Text;
      loRegraRequisicao.Nome             := edNomePessoa.Text;
      loRegraRequisicao.InscricaoFederal := edInscricaoFederalPessoa.Text;

      case Length (edInscricaoFederalPessoa.Text) of
           14: loRegraRequisicao.NomeFantasia     := edCampo3.Text;
           11: loRegraRequisicao.Sexo             := edCampo3.Text;
      end;

      { Requisição para TProduto }
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
           3: begin
                loRegraRequisicao.Metros   := StrToFloat(edCampo1.Text);
                loRegraRequisicao.Largura  := StrToFloat(edCampo2.Text);
              end;
      end;
      listBoxRequisicoes.AddItem(loRegraRequisicao.Nome, loRegraRequisicao);
  Except
      On E:Exception Do
         ShowMessage(E.Message);
  End;
end;

procedure TfrmRequisicao.btnEliminarRequisicaoClick(Sender: TObject);
var loRegraRequisicao : TRegraRequisicao;
begin
  if   listBoxRequisicoes.ItemIndex <> -1 then
       begin
         loRegraRequisicao := TRegraRequisicao(listBoxRequisicoes.Items.Objects[listBoxRequisicoes.ItemIndex]);
         loRegraRequisicao.Free;
         listBoxRequisicoes.Items.Delete(listBoxRequisicoes.ItemIndex);
       end;
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

        lsRequisicao := 'Código: ' +loRegraRequisicao.CodigoPessoa + chr(13) +
                        'Nome: ' + loRegraRequisicao.Nome + chr(13) +
                        'Inscrição Federal: ' + loRegraRequisicao.InscricaoFederal + chr(13) + chr(13);

        case   loRegraRequisicao.flRetornaTipoInscricaoFederal of
               14: lsRequisicao := lsRequisicao + 'JURÍDICA' + chr(13) +
                                                  'Nome Fantasia: ' + loRegraRequisicao.NomeFantasia + chr(13) + chr(13);
               11: lsRequisicao := lsRequisicao + 'FÍSICA' + chr(13) +
                                                  'Sexo: ' + loRegraRequisicao.Sexo + chr(13) +
                                                  '[M] Masculino' + chr(13) +
                                                  '[F] Feminino' + chr(13) + chr(13);
        end; 

        case loRegraRequisicao.flRetornaTipoProduto of
           0: lsRequisicao := lsRequisicao + 'QUÍMICO' + chr(13) +
                                             'Concentração: ' + IntToStr(loRegraRequisicao.Concentracao) + '% - ' + loRegraRequisicao.flRetornaConcentracao + chr(13);
           1: lsRequisicao := lsRequisicao + 'FIO' + chr(13) +
                                             'Cor: '+loRegraRequisicao.Cor+chr(13) +
                                             'Comprimento: ' + FloatToStr(loRegraRequisicao.Comprimento);
           2: lsRequisicao := lsRequisicao + 'COMPUTADOR' + chr(13) +
                                             'Memória: ' + IntToStr(loRegraRequisicao.Memoria) + chr(13) +
                                             'Processador: ' + IntToStr(loRegraRequisicao.Processador) + chr(13);
           3: lsRequisicao := lsRequisicao + 'MALHA' + chr(13) +
                                             'Metros: ' + FloatToStr(loRegraRequisicao.Metros) + chr(13) +
                                             'Largura: ' + FloatToStr(loRegraRequisicao.Largura) + chr(13);
        end;
        lsRequisicao := lsRequisicao + 'Descrição Produto: ' + loRegraRequisicao.Descricao + chr(13) + chr(13);
        lsRequisicao := lsRequisicao + loRegraRequisicao.flRetornaDescricaoTipoProduto;
        ShowMessage(lsRequisicao);
      end
 else
   ShowMessage('Não há registros de requisições para mostrar');
end;

procedure TfrmRequisicao.edInscricaoFederalPessoaChange(Sender: TObject);
begin
  if   Length(edInscricaoFederalPessoa.Text) = 14 then
       begin
         lbCampo3.Caption := 'Nome Fantasia:'
       end
  else
    if   Length(edInscricaoFederalPessoa.Text) = 11 then
         begin
           lbCampo3.Caption := 'Sexo:' + chr(13) +
                               '[M] Masculino' + chr(13) +
                               '[F] Feminino';
         end;
end;

{$R *.dfm}

end.
