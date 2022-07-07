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
    edMarca: TEdit;
    rgTipoProduto: TRadioGroup;
    pnBotoes1: TPanel;
    lbCampo1: TLabel;
    lbCampo2: TLabel;
    edCampo1: TEdit;
    gbConsulta: TGroupBox;
    pnBotoes2: TPanel;
    listboxConsulta: TListBox;
    btnAdicionar: TButton;
    btnLimpar: TButton;
    btnEliminar: TButton;
    btnMostrar: TButton;
    cbVivaVoz: TComboBox;
    cbCampo2: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure rgTipoProdutoClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnMostrarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
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
  //Try
     loRegraRequisicao := TRegraRequisicao.Create(rgTipoProduto.ItemIndex);

    loRegraRequisicao.VivaVoz := cbVivaVoz.Text;
    loRegraRequisicao.Marca := edMarca.Text;

    case rgTipoProduto.ItemIndex of
      0: begin
           loRegraRequisicao.Memoria := StrToInt(edCampo1.Text);
           loRegraRequisicao.Touch   := cbCampo2.Text;
         end;
      1: begin
           loRegraRequisicao.TamanhoCabo := StrToFloat(edCampo1.Text);
           loRegraRequisicao.FoneSemFio  := cbCampo2.Text;
         end;
    end;
    listboxConsulta.AddItem(loRegraRequisicao.Marca, loRegraRequisicao);
  //Except
//    On E:Exception Do
//         ShowMessage(E.Message);
  //end;
end;

procedure TfrmRequisicaoTelefone.btnEliminarClick(Sender: TObject);
var loRegraRequisicao : TRegraRequisicao;
begin
  if   listBoxConsulta.ItemIndex <> -1 then
       begin
         loRegraRequisicao := TRegraRequisicao(listBoxConsulta.Items.Objects[listBoxConsulta.ItemIndex]);
         loRegraRequisicao.Free;
         listBoxConsulta.Items.Delete(listBoxConsulta.ItemIndex);
       end;
end;

procedure TfrmRequisicaoTelefone.btnLimparClick(Sender: TObject);
begin
  plLimpaCampos;
  plCamposVisible;
end;

procedure TfrmRequisicaoTelefone.btnMostrarClick(Sender: TObject);
var loRegraRequisicao : TRegraRequisicao;
    lsRequisicao      : String;
begin
  if   listboxConsulta.ItemIndex <> -1 then
       begin
         loRegraRequisicao := TRegraRequisicao(listboxConsulta.Items.Objects[listboxConsulta.ItemIndex]);

         lsRequisicao := 'Viva Voz: ' + loRegraRequisicao.VivaVoz + chr(13) +
                         'Marca: ' + loRegraRequisicao.Marca + chr(13) + chr(13);

         case   loRegraRequisicao.flRetornaTipoProduto of
                0: lsRequisicao := lsRequisicao + 'CELULAR' + chr(13) +
                                                  'Memoria: ' + IntToStr(loRegraRequisicao.Memoria) + chr(13) +
                                                  'Touch: ' + loRegraRequisicao.Touch;
                1: lsRequisicao := lsRequisicao + 'FIXO' + chr(13) +
                                                  'Tamanho do cabo: ' + FloatToStr(loRegraRequisicao.TamanhoCabo) + chr(13) +
                                                  'Fone sem fio: ' + loRegraRequisicao.FoneSemFio;

         end;
         ShowMessage(lsRequisicao);
      end
 else
   ShowMessage('Não há registros de requisições para mostrar');
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
  cbCampo2.Visible := rgTipoProduto.ItemIndex > -1;
end;

procedure TfrmRequisicaoTelefone.plLimpaCampos;
begin
  cbVivaVoz.Text := '';
  edMarca.Text := '';
  edCampo1.Text := '';
  cbCampo2.Text := '';

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
