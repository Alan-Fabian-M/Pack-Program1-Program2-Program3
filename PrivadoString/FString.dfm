object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'str0p'
  ClientHeight = 332
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OnCreate = FormCreate
  TextHeight = 13
  object Label1: TLabel
    Left = 160
    Top = 160
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 160
    Top = 192
    Width = 3
    Height = 13
  end
  object Label3: TLabel
    Left = 203
    Top = 93
    Width = 38
    Height = 13
    Caption = 'posicion'
  end
  object Label4: TLabel
    Left = 392
    Top = 93
    Width = 60
    Height = 13
    Caption = 'char y string'
  end
  object Label5: TLabel
    Left = 203
    Top = 45
    Width = 35
    Height = 13
    Caption = 'cadena'
  end
  object Edit1: TEdit
    Left = 203
    Top = 64
    Width = 294
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 203
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 392
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object MainMenu1: TMainMenu
    Left = 120
    Top = 232
    object todomayusculas2: TMenuItem
      Caption = 'String '
      object asdasd1: TMenuItem
        Caption = 'Cambiar Cadena '
        OnClick = asdasd1Click
      end
      object asdas1: TMenuItem
        Caption = 'Obtener Cadena'
        OnClick = asdas1Click
      end
      object asdasdasd1: TMenuItem
        Caption = 'longitud'
        OnClick = asdasdasd1Click
      end
      object AdicionarCaracter1: TMenuItem
        Caption = 'Adicionar Caracter'
        OnClick = AdicionarCaracter1Click
      end
      object AdicionarString1: TMenuItem
        Caption = 'Adicionar String'
        OnClick = AdicionarString1Click
      end
      object InsertarChar1: TMenuItem
        Caption = 'Insertar Char'
        OnClick = InsertarChar1Click
      end
      object VerCaracter1: TMenuItem
        Caption = 'Ver Caracter'
        OnClick = vercaracter1Click
      end
      object ElimnarCaracter1: TMenuItem
        Caption = 'Elimnar Caracter'
        OnClick = ElimnarCaracter1Click
      end
      object EliminarnCaracter1: TMenuItem
        Caption = 'Eliminar n Caracter'
        OnClick = eliminarncaracter1Click
      end
      object modificarcaracter1: TMenuItem
        Caption = 'modificar caracter'
        OnClick = modificarcaracter1Click
      end
      object modificarncaracter1: TMenuItem
        Caption = 'modificar n caracter'
        OnClick = modificarncaracter1Click
      end
      object todomayusculas1: TMenuItem
        Caption = 'todo mayusculas'
        OnClick = todomayusculas1Click
      end
      object todominusculas1: TMenuItem
        Caption = 'todo minusculas '
        OnClick = todominusculas1Click
      end
      object eliminarvocales1: TMenuItem
        Caption = 'eliminar vocales '
        OnClick = eliminarvocales1Click
      end
    end
    object practica1: TMenuItem
      Caption = 'practica '
      object practica2: TMenuItem
        Caption = 'invertir '
        OnClick = practica2Click
      end
      object BuscarPalabra1: TMenuItem
        Caption = 'buscar Palabra '
        OnClick = BuscarPalabra1Click
      end
      object Primeraletraamayusculas1: TMenuItem
        Caption = 'Primera letra a mayusculas'
        OnClick = Primeraletraamayusculas1Click
      end
      object InvertirPalabrasEnUnaCadena1: TMenuItem
        Caption = 'Invertir Palabras En Una Cadena'
        OnClick = InvertirPalabrasEnUnaCadena1Click
      end
      object BuscarLaSubCadena1: TMenuItem
        Caption = 'Buscar La SubCadena'
        OnClick = BuscarLaSubCadena1Click
      end
      object Contadordevocalesalfinalyalprincipiodelapalabra1: TMenuItem
        Caption = 'Contador de vocales al final y al principio de la palabra'
        OnClick = Contadordevocalesalfinalyalprincipiodelapalabra1Click
      end
      object SumadeReales1: TMenuItem
        Caption = 'Suma de Reales'
        OnClick = SumadeReales1Click
      end
      object resolvedordepoli1: TMenuItem
        Caption = 'resolvedor de polinomios '
        OnClick = resolvedordepoli1Click
      end
      object Eliminarvocalesrepetidas1: TMenuItem
        Caption = 'Eliminar vocales repetidas'
        OnClick = Eliminarvocalesrepetidas1Click
      end
      object BuscarElNumeroDelaPalabra1: TMenuItem
        Caption = 'Buscar El Numero De la Palabra'
        OnClick = BuscarElNumeroDelaPalabra1Click
      end
    end
    object prueba1: TMenuItem
      Caption = 'tarea'
      object prueba2: TMenuItem
        Caption = 'buscar'
        OnClick = prueba2Click
      end
      object cantidaddepalabras1: TMenuItem
        Caption = 'cantidad de palabras '
        OnClick = cantidaddepalabras1Click
      end
      object PalabraConMayorlongitud1: TMenuItem
        Caption = 'Palabra Con Mayor Longitud '
        OnClick = PalabraConMayorlongitud1Click
      end
      object Invertirpalabras1: TMenuItem
        Caption = 'Invertir palabras '
        OnClick = Invertirpalabras1Click
      end
      object EliminarPalabras1: TMenuItem
        Caption = 'Eliminar Palabras'
        OnClick = EliminarPalabras1Click
      end
      object RemplazarUnaPalabra1: TMenuItem
        Caption = 'Remplazar Una Palabra '
        OnClick = RemplazarUnaPalabra1Click
      end
      object FechaMenor1: TMenuItem
        Caption = 'Fecha  Menor'
        OnClick = FechaMenor1Click
      end
      object Aritmetico1: TMenuItem
        Caption = 'Aritmetico'
        OnClick = Aritmetico1Click
      end
    end
    object examen1: TMenuItem
      Caption = 'examen'
      object examen2: TMenuItem
        Caption = '  eliminar P'
        OnClick = examen2Click
      end
      object eliminarpalcom1: TMenuItem
        Caption = 'eliminar pal com'
        OnClick = eliminarpalcom1Click
      end
      object AumEsp1: TMenuItem
        Caption = 'AumEsp'
        OnClick = AumEsp1Click
      end
      object ajustes1: TMenuItem
        Caption = 'ajustes'
        OnClick = ajustes1Click
      end
    end
    object examens21: TMenuItem
      Caption = 'examens2'
      object examens22: TMenuItem
        Caption = 'Frecuencia'
        OnClick = examens22Click
      end
      object EliminarCons1: TMenuItem
        Caption = 'EliminarCons'
        OnClick = EliminarCons1Click
      end
    end
    object practica21: TMenuItem
      Caption = 'practica2'
      object PalabraMenor1: TMenuItem
        Caption = 'Palabra Menor'
        OnClick = PalabraMenor1Click
      end
      object sacarhora1: TMenuItem
        Caption = 'sacar hora'
        OnClick = sacarhora1Click
      end
      object SumarHora1: TMenuItem
        Caption = 'Sumar Hora'
        OnClick = SumarHora1Click
      end
      object binarioadecimal1: TMenuItem
        Caption = 'binario a decimal'
        OnClick = binarioadecimal1Click
      end
      object BinarioMayor1: TMenuItem
        Caption = 'Binario Mayor'
        OnClick = BinarioMayor1Click
      end
      object IntercambiarPalabras1: TMenuItem
        Caption = 'Intercambiar Palabras'
        OnClick = IntercambiarPalabras1Click
      end
      object Frecuenciadeunapalabra1: TMenuItem
        Caption = 'Frecuencia de una palabra'
        OnClick = Frecuenciadeunapalabra1Click
      end
      object LapalabraMasRepetida1: TMenuItem
        Caption = 'La palabra Mas Repetida'
        OnClick = LapalabraMasRepetida1Click
      end
      object Deliteralanumero1: TMenuItem
        Caption = 'De literal a numero'
        OnClick = Deliteralanumero1Click
      end
    end
    object examen3: TMenuItem
      Caption = 'examen'
      object examen4: TMenuItem
        Caption = 'Elim Deci'
        OnClick = examen4Click
      end
    end
    object Examen2023011: TMenuItem
      Caption = 'Examen2023-01'
      object Examen2023012: TMenuItem
        Caption = 'Diferencia de peso'
        OnClick = Examen2023012Click
      end
      object Sumardecimales1: TMenuItem
        Caption = 'Sumar decimales'
        OnClick = Sumardecimales1Click
      end
    end
  end
end
