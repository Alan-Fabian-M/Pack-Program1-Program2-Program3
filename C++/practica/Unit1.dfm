object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 415
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Button1: TButton
    Left = 64
    Top = 56
    Width = 137
    Height = 33
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 64
    Top = 135
    Width = 433
    Height = 120
    ColCount = 3
    DrawingStyle = gdsClassic
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 496
    Top = 68
    Width = 257
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object Button2: TButton
    Left = 584
    Top = 264
    Width = 153
    Height = 33
    Caption = 'Button2'
    TabOrder = 3
  end
  object Button3: TButton
    Left = 224
    Top = 56
    Width = 129
    Height = 33
    Caption = 'Button3'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 64
    Top = 296
    Width = 129
    Height = 33
    Caption = 'Inserta Vocal al vector '
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 256
    Top = 296
    Width = 145
    Height = 33
    Caption = 'Button5'
    TabOrder = 6
    OnClick = Button5Click
  end
end