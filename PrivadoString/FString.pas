unit FString;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Cstring ;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    todomayusculas2: TMenuItem;
    asdasd1: TMenuItem;
    asdas1: TMenuItem;
    asdasdasd1: TMenuItem;
    AdicionarCaracter1: TMenuItem;
    AdicionarString1: TMenuItem;
    InsertarChar1: TMenuItem;
    VerCaracter1: TMenuItem;
    ElimnarCaracter1: TMenuItem;
    EliminarnCaracter1: TMenuItem;
    modificarcaracter1: TMenuItem;
    modificarncaracter1: TMenuItem;
    todomayusculas1: TMenuItem;
    todominusculas1: TMenuItem;
    eliminarvocales1: TMenuItem;
    prueba1: TMenuItem;
    prueba2: TMenuItem;
    cantidaddepalabras1: TMenuItem;
    PalabraConMayorlongitud1: TMenuItem;
    practica1: TMenuItem;
    practica2: TMenuItem;
    BuscarPalabra1: TMenuItem;
    Primeraletraamayusculas1: TMenuItem;
    Invertirpalabras1: TMenuItem;
    EliminarPalabras1: TMenuItem;
    InvertirPalabrasEnUnaCadena1: TMenuItem;
    RemplazarUnaPalabra1: TMenuItem;
    BuscarLaSubCadena1: TMenuItem;
    FechaMenor1: TMenuItem;
    Aritmetico1: TMenuItem;
    Contadordevocalesalfinalyalprincipiodelapalabra1: TMenuItem;
    SumadeReales1: TMenuItem;
    resolvedordepoli1: TMenuItem;
    Eliminarvocalesrepetidas1: TMenuItem;
    examen1: TMenuItem;
    examen2: TMenuItem;
    eliminarpalcom1: TMenuItem;
    AumEsp1: TMenuItem;
    ajustes1: TMenuItem;
    examens21: TMenuItem;
    examens22: TMenuItem;
    EliminarCons1: TMenuItem;
    practica21: TMenuItem;
    PalabraMenor1: TMenuItem;
    sacarhora1: TMenuItem;
    SumarHora1: TMenuItem;
    binarioadecimal1: TMenuItem;
    BinarioMayor1: TMenuItem;
    IntercambiarPalabras1: TMenuItem;
    BuscarElNumeroDelaPalabra1: TMenuItem;
    Frecuenciadeunapalabra1: TMenuItem;
    LapalabraMasRepetida1: TMenuItem;
    Deliteralanumero1: TMenuItem;
    examen3: TMenuItem;
    examen4: TMenuItem;
    Examen2023011: TMenuItem;
    Examen2023012: TMenuItem;
    Sumardecimales1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure eliminarncaracter1Click(Sender: TObject);
    procedure modificarcaracter1Click(Sender: TObject);
    procedure vercaracter1Click(Sender: TObject);
    procedure modificarncaracter1Click(Sender: TObject);
    procedure todomayusculas1Click(Sender: TObject);
    procedure invertir1Click(Sender: TObject);
    procedure todominusculas1Click(Sender: TObject);
    procedure asdasd1Click(Sender: TObject);
    procedure asdas1Click(Sender: TObject);
    procedure asdasdasd1Click(Sender: TObject);
    procedure AdicionarCaracter1Click(Sender: TObject);
    procedure InsertarChar1Click(Sender: TObject);
    procedure ElimnarCaracter1Click(Sender: TObject);
    procedure AdicionarString1Click(Sender: TObject);
    procedure eliminarvocales1Click(Sender: TObject);
    procedure prueba2Click(Sender: TObject);
    procedure siguientepalabra1Click(Sender: TObject);
    procedure cantidaddepalabras1Click(Sender: TObject);
    procedure PalabraConMayorlongitud1Click(Sender: TObject);
    procedure practica2Click(Sender: TObject);
    procedure BuscarPalabra1Click(Sender: TObject);
    procedure Primeraletraamayusculas1Click(Sender: TObject);
    procedure inv1Click(Sender: TObject);
    procedure Invertirpalabras1Click(Sender: TObject);
    procedure EliminarPalabras1Click(Sender: TObject);
    procedure InvertirPalabrasEnUnaCadena1Click(Sender: TObject);
    procedure RemplazarUnaPalabra1Click(Sender: TObject);
    procedure BuscarLaSubCadena1Click(Sender: TObject);
    procedure FechaMenor1Click(Sender: TObject);
    procedure Aritmetico1Click(Sender: TObject);
    procedure Contadordevocalesalfinalyalprincipiodelapalabra1Click(
      Sender: TObject);
    procedure SumadeReales1Click(Sender: TObject);
    procedure resolvedordepoli1Click(Sender: TObject);
    procedure Eliminarvocalesrepetidas1Click(Sender: TObject);
    procedure examen2Click(Sender: TObject);
    procedure eliminarpalcom1Click(Sender: TObject);
    procedure AumEsp1Click(Sender: TObject);
    procedure ajustes1Click(Sender: TObject);
    procedure examens22Click(Sender: TObject);
    procedure EliminarCons1Click(Sender: TObject);
    procedure PalabraMenor1Click(Sender: TObject);
    procedure sacarhora1Click(Sender: TObject);
    procedure SumarHora1Click(Sender: TObject);
    procedure binarioadecimal1Click(Sender: TObject);
    procedure BinarioMayor1Click(Sender: TObject);
    procedure IntercambiarPalabras1Click(Sender: TObject);
    procedure BuscarElNumeroDelaPalabra1Click(Sender: TObject);
    procedure Frecuenciadeunapalabra1Click(Sender: TObject);
    procedure LapalabraMasRepetida1Click(Sender: TObject);
    procedure Deliteralanumero1Click(Sender: TObject);
    procedure examen4Click(Sender: TObject);
    procedure Examen2023012Click(Sender: TObject);
    procedure Sumardecimales1Click(Sender: TObject);
  private
    { Private declarations }
    T: cadena ;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdicionarCaracter1Click(Sender: TObject);
begin
 T.addchar(edit3.Text[1]) ;

end;

procedure TForm1.AdicionarString1Click(Sender: TObject);
begin
   T.AddStr(edit3.Text);
end;

procedure TForm1.ajustes1Click(Sender: TObject);

begin
 t.ajustes(StrToInt(edit2.Text));
end;

procedure TForm1.Aritmetico1Click(Sender: TObject);
begin
label1.Caption:=t.Aritmetica;
end;

procedure TForm1.asdas1Click(Sender: TObject);
begin
  label1.Caption:= T.GetChar;
   label2.Caption:= IntToStr(T.GetLong);
end;

procedure TForm1.asdasd1Click(Sender: TObject);
begin
 T.SetChar(edit1.Text);
end;

procedure TForm1.asdasdasd1Click(Sender: TObject);
begin
  showmessage(IntToStr(t.GetLong));
end;

procedure TForm1.AumEsp1Click(Sender: TObject);

begin
  T.AumEsp(StrTOInt(Edit2.Text));
end;

procedure TForm1.binarioadecimal1Click(Sender: TObject);
begin
 label1.Caption:= IntToStr(t.BinToDeci(edit1.Text));
end;

procedure TForm1.BinarioMayor1Click(Sender: TObject);
begin
 label1.Caption:= t.MayBin;
end;

procedure TForm1.BuscarElNumeroDelaPalabra1Click(Sender: TObject);
begin
 label1.Caption:= IntToStr(t.BuscPalNum(edit2.Text));
end;

procedure TForm1.BuscarLaSubCadena1Click(Sender: TObject);
begin
   label1.Caption:= IntToStr(t.ContSubCad(edit3.Text));
end;

procedure TForm1.BuscarPalabra1Click(Sender: TObject);

begin
 label1.Caption:= IntToStr(t.BusPal(edit3.Text));
end;

procedure TForm1.cantidaddepalabras1Click(Sender: TObject);
begin
  label1.Caption:= IntToStr(T.CantidadPalabras) ;
end;

procedure TForm1.Contadordevocalesalfinalyalprincipiodelapalabra1Click(
  Sender: TObject);
begin
  label1.Caption:= t.ContVocPrinUlt;
end;

procedure TForm1.Deliteralanumero1Click(Sender: TObject);
begin
 label1.Caption:= t.LitToDate;
end;

procedure TForm1.EliminarCons1Click(Sender: TObject);

begin
  t.EliminarCons;
end;

procedure TForm1.eliminarncaracter1Click(Sender: TObject);
begin
  t.DelnChar(edit3.Text[1])
end;

procedure TForm1.EliminarPalabras1Click(Sender: TObject);
begin
t.ElimPal(edit3.Text);
end;

procedure TForm1.eliminarpalcom1Click(Sender: TObject);

begin
  t.elimPalCom(StrTOInt(edit2.Text))  ;
end;

procedure TForm1.eliminarvocales1Click(Sender: TObject);
begin
  t.DelVoc;
end;

procedure TForm1.Eliminarvocalesrepetidas1Click(Sender: TObject);

begin
 //t.ElimVocRep;
end;

procedure TForm1.ElimnarCaracter1Click(Sender: TObject);
begin
 t.delChar(StrToInt(Edit2.Text));
end;

procedure TForm1.Examen2023012Click(Sender: TObject);
begin
 label1.Caption:= t.PesoMen;
end;

procedure TForm1.examen2Click(Sender: TObject);
begin
  t.eliminarP(StrToINt(edit2.Text),StrToInt(Edit3.Text));
end;

procedure TForm1.examen4Click(Sender: TObject);
begin
  t.ElimNumMasDeci;
end;

procedure TForm1.examens22Click(Sender: TObject);
begin
   //label1.Caption:= IntToSTr(t.Frecuencia((Edit2.Text)));
end;

procedure TForm1.FechaMenor1Click(Sender: TObject);
begin
  label1.Caption:= DateToStr(t.DateMenor);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  T := cadena.Create;
end;

procedure TForm1.Frecuenciadeunapalabra1Click(Sender: TObject);
begin
  label1.Caption:= IntToStr(t.FrecDeUnaPal(edit3.Text));
end;

procedure TForm1.InsertarChar1Click(Sender: TObject);
begin
 T.InsChar(StrToInt(edit2.Text),edit3.Text[1]);
end;

procedure TForm1.IntercambiarPalabras1Click(Sender: TObject);
begin
 t.IntPal(StrToInt(edit2.Text[1]),StrToInt(edit2.Text[3]))
end;

procedure TForm1.inv1Click(Sender: TObject);

begin
  t.Inv(StrToInt(edit2.Text[1]),StrToInt(edit2.Text[3]))
end;

procedure TForm1.invertir1Click(Sender: TObject);
begin
  T.Invert;
end;

procedure TForm1.Invertirpalabras1Click(Sender: TObject);
begin
 t.Invcad;
end;

procedure TForm1.InvertirPalabrasEnUnaCadena1Click(Sender: TObject);
begin
  t.InvPal;
end;

procedure TForm1.LapalabraMasRepetida1Click(Sender: TObject);
begin
 label1.Caption:= t.PalMasRep;
end;

procedure TForm1.modificarcaracter1Click(Sender: TObject);
begin
  t.modChar(StrToInt(edit2.Text),edit3.Text[1]);
end;

procedure TForm1.modificarncaracter1Click(Sender: TObject);
begin
  T.ModnChar(edit3.Text[1],edit3.Text[3]);
end;

procedure TForm1.PalabraConMayorlongitud1Click(Sender: TObject);
begin
  label1.Caption:= t.PalMay;
end;

procedure TForm1.PalabraMenor1Click(Sender: TObject);
begin
  t.OrdCade;
end;

procedure TForm1.practica2Click(Sender: TObject);
begin
 t.Invert;
end;

procedure TForm1.Primeraletraamayusculas1Click(Sender: TObject);
begin
  t.ConvPrimCarc;
end;

procedure TForm1.prueba2Click(Sender: TObject);
begin
label1.Caption:= t.Buscar(StrToInt(edit2.Text));
end;

procedure TForm1.RemplazarUnaPalabra1Click(Sender: TObject);
begin
 t.RemPalCad(edit2.Text,edit3.Text);
end;

procedure TForm1.resolvedordepoli1Click(Sender: TObject);
begin
 label1.Caption:= T.Polinomio(StrToFloat(Edit2.Text));
end;

procedure TForm1.sacarhora1Click(Sender: TObject);
begin
 // label1.Caption:= TimeToStr(t.SacarHora(StrToInt(edit2.Text)));
end;

procedure TForm1.siguientepalabra1Click(Sender: TObject);
var
b : word ;
begin
b := StrToInt(edit2.Text);
 label1.Caption:= T.SiguientePalabra(b);
end;

procedure TForm1.SumadeReales1Click(Sender: TObject);
var
i : Smallint;
begin
  i := StrToInt(Edit2.Text);
  label1.Caption:= t.SumReal(i);
end;

procedure TForm1.Sumardecimales1Click(Sender: TObject);
begin
   label1.Caption := t.SumarDecimal;
end;

procedure TForm1.SumarHora1Click(Sender: TObject);
begin
 label1.Caption:= t.SumarHora;
end;

procedure TForm1.todomayusculas1Click(Sender: TObject);
begin
 t.ToUpper;
end;

procedure TForm1.todominusculas1Click(Sender: TObject);
begin
  t.ToLower;
end;

procedure TForm1.vercaracter1Click(Sender: TObject);
begin
label1.Caption:= t.SeeChar(StrToInt(edit2.Text));
end;

end.
