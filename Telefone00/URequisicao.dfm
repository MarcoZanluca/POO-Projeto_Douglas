object frmRequisicaoTelefone: TfrmRequisicaoTelefone
  Left = 0
  Top = 0
  Caption = 'Telefone'
  ClientHeight = 367
  ClientWidth = 658
  Color = clBtnFace
  DoubleBuffered = True
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
    Width = 329
    Height = 367
    Align = alLeft
    Caption = 'Cadastro'
    TabOrder = 0
    ExplicitLeft = 2
    object lbVivaVoz: TLabel
      Left = 110
      Top = 32
      Width = 44
      Height = 13
      Caption = 'Viva Voz:'
    end
    object lbMarca: TLabel
      Left = 121
      Top = 64
      Width = 33
      Height = 13
      Caption = 'Marca:'
    end
    object lbCampo1: TLabel
      Left = 155
      Top = 187
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Campo1'
      Visible = False
    end
    object lbCampo2: TLabel
      Left = 155
      Top = 219
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Campo2'
    end
    object edMarca: TEdit
      Left = 160
      Top = 61
      Width = 161
      Height = 21
      TabOrder = 0
    end
    object rgTipoProduto: TRadioGroup
      Left = 8
      Top = 104
      Width = 97
      Height = 201
      Caption = 'TipoProduto'
      Items.Strings = (
        'Celular'
        'Fixo')
      TabOrder = 1
      OnClick = rgTipoProdutoClick
    end
    object pnBotoes1: TPanel
      Left = 2
      Top = 317
      Width = 325
      Height = 48
      Align = alBottom
      TabOrder = 3
      object btnAdicionar: TButton
        Left = 6
        Top = 8
        Width = 146
        Height = 33
        Caption = 'Adicionar'
        TabOrder = 0
        OnClick = btnAdicionarClick
      end
      object btnLimpar: TButton
        Left = 174
        Top = 8
        Width = 146
        Height = 33
        Caption = 'Limpar'
        TabOrder = 1
        OnClick = btnLimparClick
      end
    end
    object edCampo1: TEdit
      Left = 200
      Top = 184
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object cbVivaVoz: TComboBox
      Left = 160
      Top = 29
      Width = 122
      Height = 21
      TabOrder = 4
      Items.Strings = (
        'Possui'
        'N'#227'o possui')
    end
    object cbCampo2: TComboBox
      Left = 200
      Top = 216
      Width = 122
      Height = 21
      TabOrder = 5
      Items.Strings = (
        'Possui'
        'N'#227'o possui')
    end
  end
  object gbConsulta: TGroupBox
    Left = 328
    Top = 0
    Width = 330
    Height = 367
    Align = alRight
    Caption = 'Consulta'
    TabOrder = 1
    object pnBotoes2: TPanel
      Left = 2
      Top = 317
      Width = 326
      Height = 48
      Align = alBottom
      TabOrder = 0
      object btnEliminar: TButton
        Left = 171
        Top = 8
        Width = 146
        Height = 33
        Caption = 'Eliminar'
        TabOrder = 0
        OnClick = btnEliminarClick
      end
      object btnMostrar: TButton
        Left = 7
        Top = 8
        Width = 146
        Height = 33
        Caption = 'Mostrar'
        TabOrder = 1
        OnClick = btnMostrarClick
      end
    end
    object listboxConsulta: TListBox
      Left = 0
      Top = 29
      Width = 345
      Height = 287
      ItemHeight = 13
      TabOrder = 1
    end
  end
end
