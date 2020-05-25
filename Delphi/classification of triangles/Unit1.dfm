object Form1: TForm1
  Left = 192
  Top = 135
  Width = 290
  Height = 225
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 40
    Width = 66
    Height = 13
    Caption = 'Primeiro valor:'
  end
  object Label2: TLabel
    Left = 32
    Top = 80
    Width = 72
    Height = 13
    Caption = 'Segundo valor:'
  end
  object Label3: TLabel
    Left = 32
    Top = 117
    Width = 68
    Height = 13
    Caption = 'Terceiro valor:'
  end
  object Edit1: TEdit
    Left = 112
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 112
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
    OnChange = Edit2Change
  end
  object Edit3: TEdit
    Left = 112
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 2
    OnChange = Edit3Change
  end
  object Button1: TButton
    Left = 32
    Top = 152
    Width = 75
    Height = 25
    Caption = '&OK'
    TabOrder = 3
    OnClick = Button1Click
  end
end
