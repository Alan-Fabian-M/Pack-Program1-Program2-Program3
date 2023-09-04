object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 393
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 320
    Top = 32
    Width = 168
    Height = 23
    Caption = 'ABM ALUMNOS.DAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 103
    Top = 73
    Width = 79
    Height = 25
    Caption = 'CODIGO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 103
    Top = 129
    Width = 83
    Height = 25
    Caption = 'NOMBRE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 76
    Top = 184
    Width = 110
    Height = 25
    Caption = 'DIRECCION'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = -13
    Top = 240
    Width = 235
    Height = 25
    Caption = 'FECHA DE NACIMIENTO '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 221
    Top = 271
    Width = 18
    Height = 13
    Caption = 'DIA'
  end
  object Label7: TLabel
    Left = 245
    Top = 271
    Width = 20
    Height = 13
    Caption = 'MES'
  end
  object Label8: TLabel
    Left = 271
    Top = 271
    Width = 22
    Height = 13
    Caption = 'A'#209'O'
  end
  object Button1: TButton
    Left = 176
    Top = 304
    Width = 75
    Height = 25
    Caption = 'GUARDAR'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 284
    Top = 304
    Width = 75
    Height = 25
    Caption = 'ELIMINAR'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 392
    Top = 304
    Width = 75
    Height = 25
    Caption = 'LIMPIAR '
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 188
    Top = 80
    Width = 105
    Height = 21
    TabOrder = 3
    OnExit = Edit1Exit
  end
  object Edit2: TEdit
    Left = 192
    Top = 129
    Width = 409
    Height = 21
    TabOrder = 4
  end
  object Edit3: TEdit
    Left = 192
    Top = 184
    Width = 409
    Height = 21
    TabOrder = 5
  end
  object DateTimePicker1: TDateTimePicker
    Left = 415
    Top = 250
    Width = 186
    Height = 21
    Date = 44908.426792777780000000
    Time = 44908.426792777780000000
    TabOrder = 6
  end
  object MaskEdit1: TMaskEdit
    Left = 228
    Top = 244
    Width = 149
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 7
    Text = '  /  /  '
  end
  object Button4: TButton
    Left = 648
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Navegar Idx'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 592
    Top = 56
    Width = 75
    Height = 25
    Caption = '<<'
    Enabled = False
    TabOrder = 9
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 691
    Top = 56
    Width = 75
    Height = 25
    Caption = '>>'
    Enabled = False
    TabOrder = 10
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 648
    Top = 87
    Width = 75
    Height = 25
    Caption = 'Fin'
    TabOrder = 11
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 176
    Top = 335
    Width = 75
    Height = 25
    Caption = 'actualizar'
    TabOrder = 12
  end
  object MainMenu1: TMainMenu
    Left = 632
    Top = 328
    object indices1: TMenuItem
      Caption = 'indices'
      object Porcodigo1: TMenuItem
        Caption = 'Por codigo '
        OnClick = Porcodigo1Click
      end
      object PorNombre1: TMenuItem
        Caption = 'Por Nombre '
        OnClick = PorNombre1Click
      end
    end
    object ordenar1: TMenuItem
      Caption = 'ordenar'
      object porcodigo2: TMenuItem
        Caption = 'por codigo'
        OnClick = porcodigo2Click
      end
      object pornombre2: TMenuItem
        Caption = 'por nombre '
        OnClick = pornombre2Click
      end
    end
    object tarea1: TMenuItem
      Caption = 'tarea'
      object actualizar1: TMenuItem
        Caption = 'actualizar'
        OnClick = actualizar1Click
      end
    end
  end
end
