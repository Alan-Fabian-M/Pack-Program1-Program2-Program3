object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 431
  ClientWidth = 789
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PCmenu: TPageControl
    Left = 0
    Top = 0
    Width = 789
    Height = 431
    ActivePage = numeros
    Align = alClient
    TabOrder = 0
    object numeros: TTabSheet
      Caption = 'numeros'
      object Label1: TLabel
        Left = 480
        Top = 65
        Width = 92
        Height = 16
        Caption = 'Entrada'
        Font.Charset = OEM_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Terminal'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 488
        Top = 259
        Width = 67
        Height = 18
        Caption = 'Salida'
        Font.Charset = OEM_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Terminal'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ButtonGroup1: TButtonGroup
        Left = 0
        Top = 0
        Width = 225
        Height = 403
        Align = alLeft
        ButtonHeight = 50
        ButtonWidth = 50
        ButtonOptions = [gboFullSize, gboShowCaptions]
        Items = <
          item
            Caption = 'contar numeros impares'
          end
          item
          end
          item
          end
          item
          end
          item
          end
          item
          end>
        TabOrder = 0
        ExplicitLeft = 3
      end
      object Edit1: TEdit
        Left = 416
        Top = 87
        Width = 209
        Height = 21
        TabOrder = 1
      end
      object txtSalida: TEdit
        Left = 416
        Top = 283
        Width = 217
        Height = 21
        TabOrder = 2
      end
    end
    object cadena: TTabSheet
      Caption = 'cadena'
      ImageIndex = 1
    end
    object vectores: TTabSheet
      Caption = 'vectores'
      ImageIndex = 2
    end
    object matriz: TTabSheet
      Caption = 'matriz'
      ImageIndex = 3
    end
  end
end
