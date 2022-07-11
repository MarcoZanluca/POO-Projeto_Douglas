object frmRequisicao: TfrmRequisicao
  Left = 0
  Top = 0
  Caption = 'Requisi'#231#227'o'
  ClientHeight = 437
  ClientWidth = 576
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gbCadastro: TGroupBox
    Left = 0
    Top = 0
    Width = 301
    Height = 437
    Align = alClient
    Caption = 'Cadastro'
    TabOrder = 0
    object lbCodigoPessoa: TLabel
      Left = 56
      Top = 21
      Width = 74
      Height = 13
      Caption = 'C'#243'digo Pessoa:'
    end
    object lbNomePessoa: TLabel
      Left = 62
      Top = 48
      Width = 68
      Height = 13
      Caption = 'Nome Pessoa:'
    end
    object lbInscricaoFederalPessoa: TLabel
      Left = 7
      Top = 75
      Width = 123
      Height = 13
      Caption = 'Inscri'#231#227'o Federal Pessoa:'
    end
    object lbCodigoProduto: TLabel
      Left = 20
      Top = 150
      Width = 78
      Height = 13
      Caption = 'Codigo Produto:'
    end
    object lbDescricaoProduto: TLabel
      Left = 7
      Top = 177
      Width = 91
      Height = 13
      Caption = 'Descri'#231#227'o Produto:'
    end
    object lbCampo1: TLabel
      Left = 104
      Top = 278
      Width = 43
      Height = 13
      Caption = 'Campo1:'
      Visible = False
    end
    object lbCampo2: TLabel
      Left = 104
      Top = 305
      Width = 43
      Height = 13
      Caption = 'Campo2:'
      Visible = False
    end
    object lbCampo3: TLabel
      Left = 55
      Top = 99
      Width = 43
      Height = 13
      Caption = 'Campo3:'
    end
    object edCodigoPessoa: TEdit
      Left = 136
      Top = 18
      Width = 81
      Height = 21
      TabOrder = 0
    end
    object edNomePessoa: TEdit
      Left = 136
      Top = 45
      Width = 151
      Height = 21
      TabOrder = 1
    end
    object edInscricaoFederalPessoa: TEdit
      Left = 136
      Top = 72
      Width = 113
      Height = 21
      TabOrder = 2
      OnChange = edInscricaoFederalPessoaChange
    end
    object edDescricaoProduto: TEdit
      Left = 104
      Top = 175
      Width = 183
      Height = 21
      TabOrder = 5
    end
    object edCodigoProduto: TEdit
      Left = 104
      Top = 147
      Width = 113
      Height = 21
      TabOrder = 4
    end
    object rgTipoProduto: TRadioGroup
      Left = 7
      Top = 212
      Width = 91
      Height = 154
      Caption = 'Tipo Produto'
      Items.Strings = (
        'Qu'#237'mico '
        'Fio'
        'Computador'
        'Malha')
      TabOrder = 6
      OnClick = rgTipoProdutoClick
    end
    object edCampo1: TEdit
      Left = 178
      Top = 275
      Width = 109
      Height = 21
      TabOrder = 7
      Visible = False
    end
    object edCampo2: TEdit
      Left = 178
      Top = 302
      Width = 109
      Height = 21
      TabOrder = 8
      Visible = False
    end
    object Panel2: TPanel
      Left = 2
      Top = 380
      Width = 297
      Height = 55
      Align = alBottom
      TabOrder = 9
      object btnAdicionaRequisicao: TButton
        Left = 15
        Top = 10
        Width = 122
        Height = 31
        Caption = 'Adiciona Requisi'#231#227'o'
        TabOrder = 0
        OnClick = btnAdicionaRequisicaoClick
      end
      object btnLimpaRequisicao: TButton
        Left = 150
        Top = 10
        Width = 122
        Height = 31
        Caption = 'Limpa Requisi'#231#227'o'
        TabOrder = 1
        OnClick = btnLimpaRequisicaoClick
      end
    end
    object edCampo3: TEdit
      Left = 136
      Top = 99
      Width = 121
      Height = 21
      TabOrder = 3
    end
  end
  object gbConsulta: TGroupBox
    Left = 301
    Top = 0
    Width = 275
    Height = 437
    Align = alRight
    Caption = 'Consulta'
    TabOrder = 1
    object listBoxRequisicoes: TListBox
      Left = 2
      Top = 15
      Width = 271
      Height = 365
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
    end
    object Panel1: TPanel
      Left = 2
      Top = 380
      Width = 271
      Height = 55
      Align = alBottom
      TabOrder = 1
      object btnMostrarDados: TButton
        Left = 13
        Top = 10
        Width = 122
        Height = 31
        Caption = 'Mostrar Dados'
        TabOrder = 0
        OnClick = btnMostrarDadosClick
      end
      object btnEliminarRequisicao: TButton
        Left = 140
        Top = 10
        Width = 122
        Height = 31
        Caption = 'Eliminar Requisi'#231#227'o'
        TabOrder = 1
        OnClick = btnEliminarRequisicaoClick
      end
    end
  end
end
