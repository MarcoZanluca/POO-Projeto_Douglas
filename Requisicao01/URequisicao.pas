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
    procedure btnEliminarRequisicaoClick(Sender: TObject);
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
  lbCampo2.Visible := (rgTipoProduto.ItemIndex in [1,2,3]);
  edCampo2.Visible := lbCampo2.Visible;
  case rgTipoProduto.ItemIndex of
    0: lbCampo1.Caption := 'Concentra??o:';
    1: begin
         lbCampo1.Caption := 'Cor:';
         lbCampo2.Caption := 'Comprimento:';
       end;
    2: begin
         lbCampo1.Caption := 'Mem?ria:';
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
       3: begin
            loRegraRequisicao.Metros   := StrToFloat(edCampo1.Text);
            loRegraRequisicao.Largura  := StrToFloat(edCampo2.Text);
          end;
  end;
  listBoxRequisicoes.AddItem(loRegraRequisicao.Nome, loRegraRequisicao);

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

        lsRequisicao := 'C?digo: ' +loRegraRequisicao.CodigoPessoa + chr(13) +
                        'Nome: ' + loRegraRequisicao.Nome + chr(13) +
                        'Inscri??o Federal: ' + loRegraRequisicao.InscricaoFederal + chr(13) +
                        'Descri??o Produto: ' + loRegraRequisicao.Descricao + chr(13);

        case loRegraRequisicao.flRetornaTipoProduto of
           0: lsRequisicao := lsRequisicao + 'QU?MICO' + chr(13) +
                                             'Concentra??o: ' + IntToStr(loRegraRequisicao.Concentracao) + chr(13);
           1: lsRequisicao := lsRequisicao + 'FIO' + chr(13) +
                                             'Cor: '+loRegraRequisicao.Cor+chr(13) +
                                             'Comprimento: ' + FloatToStr(loRegraRequisicao.Comprimento);
           2: lsRequisicao := lsRequisicao + 'COMPUTADOR' + chr(13) +
                                             'Mem?ria: ' + IntToStr(loRegraRequisicao.Memoria) + chr(13) +
                                             'Processador: ' + IntToStr(loRegraRequisicao.Processador) + chr(13);
           3: lsRequisicao := lsRequisicao + 'MALHA' + chr(13) +
                                             'Metros: ' + FloatToStr(loRegraRequisicao.Metros) + chr(13) +
                                             'Largura: ' + FloatToStr(loRegraRequisicao.Largura) + chr(13);
        end;
        lsRequisicao := lsRequisicao + loRegraRequisicao.flRetornaDescricaoTipoProduto;
        ShowMessage(lsRequisicao);
      end
 else
   ShowMessage('N?o h? registros de requisi??es para mostrar');
end;

{$R *.dfm}

end.
