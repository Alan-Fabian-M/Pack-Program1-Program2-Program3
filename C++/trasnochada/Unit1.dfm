object Form1: TForm1
  Left = 593
  Top = 287
  Caption = 'Form1'
  ClientHeight = 355
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  Position = poDesigned
  TextHeight = 13
  object Label1: TLabel
    Left = 112
    Top = 120
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 336
    Top = 200
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Button1: TButton
    Left = 16
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 112
    Top = 26
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 112
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
  end
  object StringGrid1: TStringGrid
    Left = 264
    Top = 26
    Width = 385
    Height = 37
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs, goFixedRowDefAlign]
    TabOrder = 3
  end
  object SGMatriz: TStringGrid
    Left = 160
    Top = 112
    Width = 441
    Height = 206
    ColCount = 6
    FixedCols = 0
    RowCount = 4
    FixedRows = 0
    TabOrder = 4
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 56
    object ejercicios1: TMenuItem
      Caption = 'ejercicios'
      object ejercicios2: TMenuItem
        Caption = 'digito mayor'
        OnClick = ejercicios2Click
      end
      object eliminarpares1: TMenuItem
        Caption = 'eliminar pares'
        OnClick = eliminarpares1Click
      end
      object cargarvector1: TMenuItem
        Caption = 'cargar vector '
        OnClick = cargarvector1Click
      end
      object generarcadena1: TMenuItem
        Caption = 'generar cadena'
        OnClick = generarcadena1Click
      end
      object Escapicua1: TMenuItem
        Caption = ' Es capicua '
      end
      object eliminar1: TMenuItem
        Caption = 'eliminar vector'
        OnClick = eliminar1Click
      end
      object Eliminarvectorposicion1: TMenuItem
        Caption = 'Eliminar vector posicion'
        OnClick = Eliminarvectorposicion1Click
      end
      object CargarStringVector1: TMenuItem
        Caption = 'Cargar String Vector'
      end
      object Eliminarnumerodelacadenahola12como1holacomo1: TMenuItem
        Caption = 'Eliminar numero de la cadena (hola12 como1 = hola como)'
        OnClick = Eliminarnumerodelacadenahola12como1holacomo1Click
      end
      object eliminarlosprimeroselementos1: TMenuItem
        Caption = 'eliminar los primeros elementos'
        OnClick = eliminarlosprimeroselementos1Click
      end
      object eliminarultimoelementos1: TMenuItem
        Caption = 'eliminar ultimo elementos'
        OnClick = eliminarultimoelementos1Click
      end
      object ordenar1: TMenuItem
        Caption = 'ordenar'
      end
    end
    object examen1: TMenuItem
      Caption = 'examen'
      object examen2: TMenuItem
        Caption = 'Cargar'
        OnClick = examen2Click
      end
      object cargarvector2377321: TMenuItem
        Caption = 'cargar vector  (237 = [7,3,2])'
        OnClick = cargarvector2377321Click
      end
    end
    object Dunnia1: TMenuItem
      Caption = 'Dunnia 2023-1'
      object sumarseriefraciones1: TMenuItem
        Caption = 'sumar serie fraciones '
        OnClick = sumarseriefraciones1Click
      end
      object Combinatoria1: TMenuItem
        Caption = 'combinatoria '
        OnClick = Combinatoria1Click
      end
      object verificarselosnumerosestanordenados1: TMenuItem
        Caption = 'verificar se los numeros estan ordenados'
        OnClick = verificarselosnumerosestanordenados1Click
      end
      object seleccionarunnumero1: TMenuItem
        Caption = 'seleccionar un numero'
        OnClick = seleccionarunnumero1Click
      end
      object Contarvocales1: TMenuItem
        Caption = 'Contar vocales'
        OnClick = Contarvocales1Click
      end
      object matriz1: TMenuItem
        Caption = 'matriz'
        OnClick = matriz1Click
      end
    end
    object Contreras1: TMenuItem
      Caption = 'Contreras 2023-1'
      object N202312: TMenuItem
        Caption = '123 = [1,2,2,3,3,3]'
        OnClick = N202312Click
      end
      object N51213214321543211: TMenuItem
        Caption = '5=1,21,321,4321,54321'
        OnClick = N51213214321543211Click
      end
      object MediaAritmeticaVector1: TMenuItem
        Caption = 'Media Aritmetica Vector'
        OnClick = MediaAritmeticaVector1Click
      end
    end
    object Shirley1: TMenuItem
      Caption = 'Shirley 2023-1'
      object Sumarlosdigitosenlaposicionimpar1: TMenuItem
        Caption = 'Sumar los digitos en la posicion impar'
        OnClick = Sumarlosdigitosenlaposicionimpar1Click
      end
      object Sumarlosdigitosimparesyrestarlosdigitosparesenunvector1: TMenuItem
        Caption = 
          'Sumar los digitos impares y restar los digitos pares en un vecto' +
          'r'
        OnClick = Sumarlosdigitosimparesyrestarlosdigitosparesenunvector1Click
      end
    end
    object algoritmossinrecurcion1: TMenuItem
      Caption = 'algoritmos sin recurcion'
      object algoritmossinrecurcion2: TMenuItem
        Caption = 'eliminar los primeros'
        OnClick = algoritmossinrecurcion2Click
      end
      object eliminarelultimo1: TMenuItem
        Caption = 'eliminar el ultimo '
        OnClick = eliminarelultimo1Click
      end
      object eliminarelultimo2: TMenuItem
        Caption = 'ordenar'
        OnClick = eliminarelultimo2Click
      end
    end
  end
end
