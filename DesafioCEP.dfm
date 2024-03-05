object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 99
    Height = 20
    Caption = 'Digite o CEP:'
    Color = clGradientActiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Segoe UI Emoji'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 240
    Top = 103
    Width = 25
    Height = 17
    Caption = 'Rua:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Emoji'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 232
    Top = 62
    Width = 38
    Height = 17
    Caption = 'Bairro:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Emoji'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 64
    Width = 43
    Height = 17
    Caption = 'Estado:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Symbol'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 103
    Width = 44
    Height = 17
    Caption = 'Cidade:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Emoji'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 113
    Top = 8
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 240
    Top = 8
    Width = 60
    Height = 22
    Caption = 'Procurar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object edtEstado: TEdit
    Left = 63
    Top = 61
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object edtCidade: TEdit
    Left = 63
    Top = 102
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object edtBairro: TEdit
    Left = 279
    Top = 61
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object edtRua: TEdit
    Left = 279
    Top = 102
    Width = 121
    Height = 23
    TabOrder = 5
  end
end
