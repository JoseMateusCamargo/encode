object Form1: TForm1
  Left = 270
  Top = 212
  AutoScroll = False
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  Caption = 'Projeto - ARQUIVO'
  ClientHeight = 328
  ClientWidth = 479
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 240
    Top = 1
    Width = 233
    Height = 321
    Caption = 'LER ARQUIVO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object btnLerArquivo: TButton
      Left = 8
      Top = 15
      Width = 217
      Height = 33
      Caption = 'LER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnLerArquivoClick
    end
    object menResultArquivo: TMemo
      Left = 8
      Top = 73
      Width = 217
      Height = 242
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object edtCaminhoArquivo: TEdit
      Left = 8
      Top = 50
      Width = 217
      Height = 21
      Color = clMenuBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = 'teste1.txt'
    end
  end
  object GroupBox2: TGroupBox
    Left = 3
    Top = 1
    Width = 233
    Height = 321
    Caption = 'GRAVA ARQUIVO'
    TabOrder = 1
    object btnGravaArquivo: TButton
      Left = 5
      Top = 16
      Width = 223
      Height = 33
      Caption = 'GRAVA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnGravaArquivoClick
    end
    object edtNovoArquivo: TEdit
      Left = 5
      Top = 51
      Width = 220
      Height = 21
      Color = clMenuBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = 'teste2.txt'
    end
    object menValArquivo: TMemo
      Left = 6
      Top = 74
      Width = 218
      Height = 241
      ScrollBars = ssVertical
      TabOrder = 2
    end
  end
end
