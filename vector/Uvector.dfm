object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 464
  ClientWidth = 820
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OnCreate = FormCreate
  TextHeight = 13
  object Label2: TLabel
    Left = 38
    Top = 187
    Width = 60
    Height = 16
    Caption = 'ENTRADA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 47
    Top = 214
    Width = 49
    Height = 16
    Caption = 'SALIDA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 592
    Top = 176
    Width = 73
    Height = 41
    Caption = 'Label1'
  end
  object TxTdimen: TEdit
    Left = 64
    Top = 119
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object TxTEntrada: TEdit
    Left = 104
    Top = 186
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 191
    Top = 123
    Width = 114
    Height = 25
    Caption = 'Re-Dimensionar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object BtCargar: TButton
    Left = 312
    Top = 178
    Width = 97
    Height = 56
    Caption = 'CARGAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BtCargarClick
  end
  object SGvector: TStringGrid
    Left = 8
    Top = 48
    Width = 573
    Height = 65
    ColCount = 1
    Ctl3D = True
    DefaultColWidth = 80
    DefaultRowHeight = 40
    DrawingStyle = gdsClassic
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs, goFixedRowDefAlign]
    ParentCtl3D = False
    TabOrder = 4
  end
  object TxTSalida: TEdit
    Left = 102
    Top = 213
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object BtMostrar: TButton
    Left = 415
    Top = 178
    Width = 98
    Height = 56
    Caption = 'MOSTRAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BtMostrarClick
  end
  object Button2: TButton
    Left = 288
    Top = 320
    Width = 137
    Height = 65
    Caption = 'insertar'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 444
    Top = 320
    Width = 137
    Height = 66
    Caption = 'mostrar'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 88
    Top = 304
    Width = 105
    Height = 65
    Caption = 'SumROm'
    TabOrder = 9
    OnClick = Button4Click
  end
  object MainMenu1: TMainMenu
    Left = 536
    Top = 256
    object incio1: TMenuItem
      Caption = 'Inicio'
      object Sumar1: TMenuItem
        Caption = 'Sumar Elementos'
        OnClick = Sumar1Click
      end
      object ModificarElemento1: TMenuItem
        Caption = 'Modificar Elemento'
        OnClick = ModificarElemento1Click
      end
      object eliminarelemento1: TMenuItem
        Caption = 'eliminar elemento'
        OnClick = eliminarelemento1Click
      end
      object insertarelemento1: TMenuItem
        Caption = 'insertar elemento'
        OnClick = insertarelemento1Click
      end
      object mayor1: TMenuItem
        Caption = 'Mayor elemento'
        OnClick = mayor1Click
      end
      object eliminarunelemento1: TMenuItem
        Caption = 'eliminar un elemento '
        OnClick = eliminarunelemento1Click
      end
      object Eliminatodosloselementos1: TMenuItem
        Caption = 'Elimina todos los elementos'
        OnClick = Eliminatodosloselementos1Click
      end
      object Eliminatodosloselementos2: TMenuItem
        Caption = 'Frecuencia '
        OnClick = Eliminatodosloselementos2Click
      end
      object ElementoMasRepetido1: TMenuItem
        Caption = 'Elemento Mas Repetido'
        OnClick = ElementoMasRepetido1Click
      end
      object eliminarelementosrepetidos1: TMenuItem
        Caption = 'eliminar elementos repetidos'
        OnClick = eliminarelementosrepetidos1Click
      end
    end
    object incio2: TMenuItem
      Caption = 'tarea'
      object ordenardemenoramayor1: TMenuItem
        Caption = 'ordenar de menor a mayor'
        OnClick = ordenardemenoramayor1Click
      end
      object maximocomundivisor1: TMenuItem
        Caption = 'maximo comun divisor (MCD)'
        OnClick = maximocomundivisor1Click
      end
      object minimocomunmultipliMCM1: TMenuItem
        Caption = 'minimo comun multipli (MCM)'
        OnClick = minimocomunmultipliMCM1Click
      end
    end
  end
end
