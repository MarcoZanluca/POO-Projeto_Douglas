object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Telefone'
  ClientHeight = 367
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
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
    ExplicitLeft = -4
    ExplicitHeight = 360
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
      Caption = 'Campo1'
    end
    object lbCampo2: TLabel
      Left = 155
      Top = 219
      Width = 39
      Height = 13
      Caption = 'Campo2'
    end
    object edVivaVoz: TEdit
      Left = 160
      Top = 29
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edMarca: TEdit
      Left = 160
      Top = 61
      Width = 161
      Height = 21
      TabOrder = 1
    end
    object rgTipoProduto: TRadioGroup
      Left = 8
      Top = 104
      Width = 113
      Height = 201
      Caption = 'TipoProduto'
      Items.Strings = (
        'Celular'
        'Fixo')
      TabOrder = 2
    end
    object pnBotoes1: TPanel
      Left = 2
      Top = 317
      Width = 325
      Height = 48
      Align = alBottom
      TabOrder = 3
      ExplicitTop = 318
      object btnAdicionar: TButton
        Left = 6
        Top = 8
        Width = 146
        Height = 33
        Caption = 'Adicionar'
        TabOrder = 0
      end
      object btnLimpar: TButton
        Left = 170
        Top = 8
        Width = 146
        Height = 33
        Caption = 'Limpar'
        TabOrder = 1
      end
    end
    object edCampo1: TEdit
      Left = 200
      Top = 184
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object edCampo2: TEdit
      Left = 200
      Top = 216
      Width = 121
      Height = 21
      TabOrder = 5
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
    ExplicitLeft = 327
    object pnBotoes2: TPanel
      Left = 2
      Top = 317
      Width = 326
      Height = 48
      Align = alBottom
      TabOrder = 0
      ExplicitWidth = 342
      object btnEliminar: TButton
        Left = 171
        Top = 8
        Width = 146
        Height = 33
        Caption = 'Eliminar'
        TabOrder = 0
      end
      object btnMostrar: TButton
        Left = 7
        Top = 8
        Width = 146
        Height = 33
        Caption = 'Mostrar'
        TabOrder = 1
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
