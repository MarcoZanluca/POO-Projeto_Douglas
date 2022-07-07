object frmCalculadora: TfrmCalculadora
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 217
  ClientWidth = 200
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
    Left = 16
    Top = 27
    Width = 31
    Height = 13
    Caption = 'Num1:'
  end
  object lbNum2: TLabel
    Left = 16
    Top = 67
    Width = 31
    Height = 13
    Caption = 'Num2:'
  end
  object edNum1: TEdit
    Left = 53
    Top = 24
    Width = 131
    Height = 21
    TabOrder = 0
  end
  object edNum2: TEdit
    Left = 53
    Top = 64
    Width = 131
    Height = 21
    TabOrder = 1
  end
  object btnSoma: TButton
    Left = 16
    Top = 129
    Width = 81
    Height = 32
    Caption = 'Soma'
    TabOrder = 2
    OnClick = btnSomaClick
  end
  object btnSubtracao: TButton
    Left = 103
    Top = 129
    Width = 81
    Height = 32
    Caption = 'Subtracao'
    TabOrder = 3
    OnClick = btnSubtracaoClick
  end
  object btnMultiplicacao: TButton
    Left = 16
    Top = 167
    Width = 81
    Height = 32
    Caption = 'Multiplicacao'
    TabOrder = 4
    OnClick = btnMultiplicacaoClick
  end
  object btnDivisao: TButton
    Left = 103
    Top = 167
    Width = 81
    Height = 32
    Caption = 'Divisao'
    TabOrder = 5
    OnClick = btnDivisaoClick
  end
end
