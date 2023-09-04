object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 303
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 160
    Top = 168
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Edit1: TEdit
    Left = 144
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object MainMenu1: TMainMenu
    Left = 64
    Top = 224
    object string1: TMenuItem
      Caption = 'string'
      object string2: TMenuItem
        Caption = 'cambiar'
        OnClick = string2Click
      end
      object obtener1: TMenuItem
        Caption = 'obtener'
        OnClick = obtener1Click
      end
    end
  end
end
