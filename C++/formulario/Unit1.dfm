object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 419
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PcMenu: TPageControl
    Left = 0
    Top = 0
    Width = 729
    Height = 419
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Numeros'
      object ButtonGroup1: TButtonGroup
        Left = 3
        Top = 3
        Width = 561
        Height = 225
        ButtonHeight = 50
        ButtonWidth = 50
        Items = <
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
      end
      object bu: TButton
        Left = 312
        Top = 323
        Width = 75
        Height = 25
        Caption = 'bu'
        TabOrder = 1
      end
      object Button1: TButton
        Left = 184
        Top = 363
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cadena'
      ImageIndex = 1
      object Button2: TButton
        Left = 24
        Top = 40
        Width = 75
        Height = 25
        Caption = 'Button2'
        TabOrder = 0
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 152
        Top = 40
        Width = 75
        Height = 25
        Caption = 'Button3'
        TabOrder = 1
      end
      object StringGrid1: TStringGrid
        Left = 40
        Top = 104
        Width = 449
        Height = 185
        FixedCols = 0
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
        TabOrder = 2
      end
      object Edit1: TEdit
        Left = 80
        Top = 320
        Width = 121
        Height = 21
        TabOrder = 3
        Text = 'Edit1'
      end
      object Edit2: TEdit
        Left = 288
        Top = 320
        Width = 121
        Height = 21
        TabOrder = 4
        Text = 'Edit2'
      end
      object Edit3: TEdit
        Left = 480
        Top = 320
        Width = 121
        Height = 21
        TabOrder = 5
        Text = 'Edit3'
      end
      object Button4: TButton
        Left = 304
        Top = 40
        Width = 75
        Height = 25
        Caption = 'Button4'
        TabOrder = 6
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Vectores'
      ImageIndex = 2
    end
    object TabSheet4: TTabSheet
      Caption = 'Matriz'
      ImageIndex = 3
    end
  end
end
