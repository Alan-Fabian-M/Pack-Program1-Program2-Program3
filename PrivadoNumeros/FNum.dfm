object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 473
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = menu
  OnCreate = FormCreate
  TextHeight = 13
  object Label1: TLabel
    Left = 123
    Top = 152
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 120
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 320
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object StaticText1: TStaticText
    Left = 128
    Top = 56
    Width = 40
    Height = 17
    Caption = 'numero'
    TabOrder = 2
  end
  object StaticText2: TStaticText
    Left = 320
    Top = 57
    Width = 77
    Height = 17
    Caption = 'Posicion o Base'
    TabOrder = 3
  end
  object menu: TMainMenu
    Left = 136
    Top = 192
    object metodos1: TMenuItem
      Caption = 'metodos'
      object CambiarValor: TMenuItem
        Caption = 'cambiar valor '
        OnClick = CambiarValorClick
      end
      object obtenervalor1: TMenuItem
        Caption = 'obtener valor'
        OnClick = obtenervalor1Click
      end
      object obtenervalor2: TMenuItem
        Caption = 'eliminar un digito'
        OnClick = obtenervalor2Click
      end
      object obtenerdigitomayor1: TMenuItem
        Caption = 'obtener digito mayor '
        OnClick = obtenerdigitomayor1Click
      end
      object modificarundigito1: TMenuItem
        Caption = 'Insertar Digito'
        OnClick = modificarundigito1Click
      end
      object ModificarunDigito2: TMenuItem
        Caption = 'Modificar un Digito'
        OnClick = ModificarunDigito2Click
      end
      object Cantidadde1: TMenuItem
        Caption = 'Cantidad De Digitos '
        OnClick = Cantidadde1Click
      end
      object NumeroDentroDeOtro1: TMenuItem
        Caption = 'Numero Dentro De Otro'
        OnClick = NumeroDentroDeOtro1Click
      end
      object tomar1: TMenuItem
        Caption = 'Tomar Digito '
        OnClick = tomar1Click
      end
      object Invertirnumeros1: TMenuItem
        Caption = 'Invertir numeros '
        OnClick = Invertirnumeros1Click
      end
      object numeroabianrio1: TMenuItem
        Caption = 'Numero En Base...'
      end
      object NumeroaBinario1: TMenuItem
        Caption = 'Numero a Binario '
        OnClick = NumeroaBinario1Click
      end
      object NumeroaOctal1: TMenuItem
        Caption = 'Numero a Octal '
        OnClick = NumeroaOctal1Click
      end
      object NumeroaOctal2: TMenuItem
        Caption = 'Numero a hexadecimal '
        OnClick = NumeroaOctal2Click
      end
      object NumeroaRomano1: TMenuItem
        Caption = 'Numero a Romano '
        OnClick = NumeroaRomano1Click
      end
      object NumeroaLiteral1: TMenuItem
        Caption = 'Numero a Literal '
        OnClick = NumeroaLiteral1Click
      end
    end
    object practica1: TMenuItem
      Caption = 'practica'
      object practica2: TMenuItem
        Caption = 'odenar'
        OnClick = practica2Click
      end
      object posicionar1: TMenuItem
        Caption = 'posicionar'
        OnClick = posicionar1Click
      end
      object digitMEn1: TMenuItem
        Caption = 'DigitMenor'
        OnClick = digitMEn1Click
      end
      object EsPrimo1: TMenuItem
        Caption = 'EsPrimo'
        OnClick = EsPrimo1Click
      end
      object eliminarunnumeorysufrecuencia1: TMenuItem
        Caption = 'eliminar un numeor y su frecuencia'
        OnClick = eliminarunnumeorysufrecuencia1Click
      end
      object adentrohaciaafuera1: TMenuItem
        Caption = 'adentro hacia afuera'
        OnClick = adentrohaciaafuera1Click
      end
      object eliminarcualquiernumeroyfrecuencia1: TMenuItem
        Caption = 'eliminar cualquier numero y frecuencia'
        OnClick = eliminarcualquiernumeroyfrecuencia1Click
      end
      object eliminarnumerosmenosuno1: TMenuItem
        Caption = 'eliminar numeros , menos uno'
        OnClick = eliminarnumerosmenosuno1Click
      end
      object MayorPrimo1: TMenuItem
        Caption = 'Mayor Primo'
        OnClick = MayorPrimo1Click
      end
      object MenorImpar1: TMenuItem
        Caption = 'Menor Par'
        OnClick = MenorImpar1Click
      end
      object MayorImpar1: TMenuItem
        Caption = 'Mayor Impar'
        OnClick = MayorImpar1Click
      end
      object ordenarImparPar1: TMenuItem
        Caption = 'ordenar Impar Par'
        OnClick = ordenarImparPar1Click
      end
      object eliminarelnumeroprimomayor1: TMenuItem
        Caption = 'eliminar el numero primo mayor'
        OnClick = eliminarelnumeroprimomayor1Click
      end
      object Numeromenordetresdigitos1: TMenuItem
        Caption = 'Numero menor de tres digitos '
        OnClick = Numeromenordetresdigitos1Click
      end
      object numeromayordetresdigitos1: TMenuItem
        Caption = 'numero mayor de tres digitos'
        OnClick = numeromayordetresdigitos1Click
      end
      object SacarnumeroPar1: TMenuItem
        Caption = 'Sacar numero Par'
        OnClick = SacarnumeroPar1Click
      end
      object frecuenciadeunnumero1: TMenuItem
        Caption = 'frecuencia de un numero '
        OnClick = frecuenciadeunnumero1Click
      end
    end
    object fueradeexamen1: TMenuItem
      Caption = 'fuera de examen'
      object sacarMay1: TMenuItem
        Caption = ' Sacar Mayor'
        OnClick = sacarMay1Click
      end
      object elimrep1: TMenuItem
        Caption = 'elim rep '
        OnClick = elimrep1Click
      end
    end
    object Semestre202311: TMenuItem
      Caption = 'Semestre 2023 -1'
      object Semestre202312: TMenuItem
        Caption = 'Comparar'
        OnClick = Semestre202312Click
      end
      object Encontrarelsegundomayorimpar1: TMenuItem
        Caption = 'Encontrar el segundo mayor impar'
      end
    end
  end
end
