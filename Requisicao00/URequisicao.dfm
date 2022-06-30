object frmRequisicao: TfrmRequisicao
  Left = 0
  Top = 0
  Caption = 'Requisi'#231#227'o'
  ClientHeight = 410
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gbCadastro: TGroupBox
    Left = -5
    Top = 0
    Width = 302
    Height = 417
    Caption = 'Cadastro'
    TabOrder = 0
    DesignSize = (
      302
      417)
    object lbCodigoPessoa: TLabel
      Left = 56
      Top = 29
      Width = 74
      Height = 13
      Caption = 'C'#243'digo Pessoa:'
    end
    object lbNomePessoa: TLabel
      Left = 62
      Top = 56
      Width = 68
      Height = 13
      Caption = 'Nome Pessoa:'
    end
    object lbInscricaoFederalPessoa: TLabel
      Left = 7
      Top = 83
      Width = 123
      Height = 13
      Caption = 'Inscri'#231#227'o Federal Pessoa:'
    end
    object lbCodigoProduto: TLabel
      Left = 20
      Top = 136
      Width = 78
      Height = 13
      Caption = 'Codigo Produto:'
    end
    object lbDescricaoProduto: TLabel
      Left = 7
      Top = 163
      Width = 91
      Height = 13
      Caption = 'Descri'#231#227'o Produto:'
    end
    object lbCampo1: TLabel
      Left = 104
      Top = 264
      Width = 43
      Height = 13
      Anchors = [akRight]
      Caption = 'Campo1:'
    end
    object lbCampo2: TLabel
      Left = 104
      Top = 291
      Width = 43
      Height = 13
      Caption = 'Campo2:'
    end
    object edCodigoPessoa: TEdit
      Left = 136
      Top = 26
      Width = 81
      Height = 21
      TabOrder = 0
    end
    object edNomePessoa: TEdit
      Left = 136
      Top = 53
      Width = 151
      Height = 21
      TabOrder = 1
    end
    object edInscricaoFederalPessoa: TEdit
      Left = 136
      Top = 80
      Width = 113
      Height = 21
      TabOrder = 2
    end
    object edDescricaoProduto: TEdit
      Left = 104
      Top = 160
      Width = 183
      Height = 21
      TabOrder = 3
    end
    object edCodigoProduto: TEdit
      Left = 104
      Top = 133
      Width = 113
      Height = 21
      TabOrder = 4
    end
    object rgTipoProduto: TRadioGroup
      Left = 7
      Top = 187
      Width = 91
      Height = 177
      Caption = 'Tipo Produto'
      Items.Strings = (
        'Qu'#237'mico '
        'Fio'
        'Computador')
      TabOrder = 5
      OnClick = rgTipoProdutoClick
    end
    object edCampo1: TEdit
      Left = 178
      Top = 261
      Width = 109
      Height = 21
      TabOrder = 6
    end
    object edCampo2: TEdit
      Left = 178
      Top = 288
      Width = 109
      Height = 21
      TabOrder = 7
    end
    object btnAdicionaRequisicao: TButton
      Left = 18
      Top = 370
      Width = 122
      Height = 31
      Caption = 'Adiciona Requisi'#231#227'o'
      TabOrder = 8
      OnClick = btnAdicionaRequisicaoClick
    end
    object btnLimpaRequisicao: TButton
      Left = 146
      Top = 370
      Width = 122
      Height = 31
      Caption = 'Limpa Requisi'#231#227'o'
      TabOrder = 9
      OnClick = btnLimpaRequisicaoClick
    end
  end
  object gbConsulta: TGroupBox
    Left = 288
    Top = 0
    Width = 289
    Height = 417
    Caption = 'Consulta'
    TabOrder = 1
    object listBoxRequisicoes: TListBox
      Left = 2
      Top = 15
      Width = 285
      Height = 345
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
    end
    object Panel1: TPanel
      Left = 2
      Top = 360
      Width = 285
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
