object Form1: TForm1
  Left = 286
  Top = 110
  Width = 718
  Height = 458
  Caption = 'Tela Principal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 15
    Top = 16
    Width = 44
    Height = 16
    Caption = 'C'#243'digo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 15
    Top = 48
    Width = 37
    Height = 16
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 15
    Top = 80
    Width = 72
    Height = 16
    Caption = 'Nascimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object edtCodigoCliente: TEdit
    Left = 95
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNomeCliente: TEdit
    Left = 95
    Top = 48
    Width = 298
    Height = 21
    TabOrder = 1
  end
  object edtNascimentoCliente: TEdit
    Left = 95
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object rdgTipoCliente: TRadioGroup
    Left = 424
    Top = 16
    Width = 185
    Height = 57
    Caption = ' Tipo Pessoa '
    ItemIndex = 0
    Items.Strings = (
      'F'#237'sica'
      'Jur'#237'dica')
    TabOrder = 3
  end
  object Button1: TButton
    Left = 95
    Top = 128
    Width = 75
    Height = 25
    Caption = '&Inclus'#227'o'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 128
    Width = 75
    Height = 25
    Caption = '&Exclus'#227'o'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 288
    Top = 128
    Width = 75
    Height = 25
    Caption = '&Gravar'
    TabOrder = 6
    OnClick = Button3Click
  end
  object StringGrid1: TStringGrid
    Left = 95
    Top = 168
    Width = 593
    Height = 185
    DefaultColWidth = 25
    RowCount = 2
    TabOrder = 7
    ColWidths = (
      25
      86
      205
      97
      149)
  end
  object Button4: TButton
    Left = 95
    Top = 368
    Width = 75
    Height = 25
    Caption = '&Inclus'#227'o'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 192
    Top = 368
    Width = 75
    Height = 25
    Caption = '&Altera'#231#227'o'
    TabOrder = 9
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 288
    Top = 368
    Width = 75
    Height = 25
    Caption = '&Exclus'#227'o'
    TabOrder = 10
    OnClick = Button6Click
  end
end
