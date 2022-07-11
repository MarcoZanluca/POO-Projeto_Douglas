object frmCalculadora: TfrmCalculadora
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 190
  ClientWidth = 210
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbNum1: TLabel
    Left = 25
    Top = 67
    Width = 31
    Height = 13
    Caption = 'Num1:'
  end
  object lbNum2: TLabel
    Left = 25
    Top = 107
    Width = 31
    Height = 13
    Caption = 'Num2:'
  end
  object lbOperacao: TLabel
    Left = 5
    Top = 27
    Width = 51
    Height = 13
    Caption = 'Opera'#231#227'o:'
  end
  object edNum1: TEdit
    Left = 62
    Top = 64
    Width = 131
    Height = 21
    TabOrder = 1
  end
  object edNum2: TEdit
    Left = 62
    Top = 104
    Width = 131
    Height = 21
    TabOrder = 2
  end
  object btnCalcular: TButton
    Left = 112
    Top = 143
    Width = 81
    Height = 32
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnCalcularClick
  end
  object cbOperacao: TComboBox
    Left = 62
    Top = 24
    Width = 131
    Height = 21
    TabOrder = 0
    OnChange = cbOperacaoChange
    Items.Strings = (
      '+'
      '-'
      '*'
      '/'
      #8730)
  end
end
