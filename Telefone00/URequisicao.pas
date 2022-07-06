unit URequisicao;

interface

uses Windows
    ,Messages
    ,SysUtils
    ,Variants
    ,Classes
    ,Graphics
    ,Controls
    ,Forms
    ,Dialogs
    ,ExtCtrls
    ,StdCtrls
    ,URegraRequisicao
    ,UTelefone
    ,UCelular
    ,UFixo
    ;

type
  TfrmRequisicaoTelefone = class(TForm)
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
    procedure FormCreate(Sender: TObject);
    procedure rgTipoProdutoClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
  private
    { Private declarations }
    procedure plLimpaCampos;
    procedure plCamposVisible;
  public
    { Public declarations }
  end;

var
  frmRequisicaoTelefone: TfrmRequisicaoTelefone;

implementation

{$R *.dfm}

{ TfrmRequisicaoTelefone }



procedure TfrmRequisicaoTelefone.btnAdicionarClick(Sender: TObject);
var loRegraRequisicao : TRegraRequisicao;
begin
  Try
    loRegraRequisicao := TRegraRequisicao.Create(rgTipoProduto.ItemIndex);

    loRegraRequisicao.VivaVoz := StrToInt(edVivaVoz.Text);
    loRegraRequisicao.Marca := edMarca.Text;

    case rgTipoProduto.ItemIndex of
      0: begin
           loRegraRequisicao.Memoria := StrToInt(edCampo1.Text);
           loRegraRequisicao.Touch   := StrToInt(edCampo2.Text);
         end;
      1: begin
           loRegraRequisicao.TamanhoCabo := StrToInt(edCampo1.Text);
           loRegraRequisicao.FoneSemFio := StrToInt(edCampo2.Text);
         end;
    end;
    listboxConsulta.AddItem(loRegraRequisicao.Marca, loRegraRequisicao);
  Except

  End;
end;

procedure TfrmRequisicaoTelefone.btnLimparClick(Sender: TObject);
begin
  plLimpaCampos;
  plCamposVisible;
end;

procedure TfrmRequisicaoTelefone.FormCreate(Sender: TObject);
begin
  plLimpaCampos;
  plCamposVisible;
end;

procedure TfrmRequisicaoTelefone.plCamposVisible;
begin
  lbCampo1.Visible := rgTipoProduto.ItemIndex > -1;
  lbCampo2.Visible := rgTipoProduto.ItemIndex > -1;
  edCampo1.Visible := rgTipoProduto.ItemIndex > -1;
  edCampo2.Visible := rgTipoProduto.ItemIndex > -1;
end;

procedure TfrmRequisicaoTelefone.plLimpaCampos;
begin
  edVivaVoz.Text := '';
  edMarca.Text := '';
  edCampo1.Text := '';
  edCampo2.Text := '';

  rgTipoProduto.ItemIndex := -1;
end;

procedure TfrmRequisicaoTelefone.rgTipoProdutoClick(Sender: TObject);
begin
  plCamposVisible;

  case rgTipoProduto.ItemIndex of
    0: begin
         lbCampo1.Caption := 'Memoria:';
         lbCampo2.Caption := 'Touch:';
       end;
    1: begin
         lbCampo1.Caption := 'Tamanho Cabo:';
         lbCampo2.Caption := 'Fone sem fio:';
       end;
  end;
end;

end.
