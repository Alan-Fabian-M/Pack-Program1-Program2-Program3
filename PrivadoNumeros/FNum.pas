unit FNum;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Cnum, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    menu: TMainMenu;
    metodos1: TMenuItem;
    CambiarValor: TMenuItem;
    obtenervalor1: TMenuItem;
    obtenervalor2: TMenuItem;
    obtenerdigitomayor1: TMenuItem;
    Edit1: TEdit;
    Label1: TLabel;
    modificarundigito1: TMenuItem;
    Edit2: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    ModificarunDigito2: TMenuItem;
    Cantidadde1: TMenuItem;
    NumeroDentroDeOtro1: TMenuItem;
    tomar1: TMenuItem;
    Invertirnumeros1: TMenuItem;
    numeroabianrio1: TMenuItem;
    NumeroaBinario1: TMenuItem;
    NumeroaOctal1: TMenuItem;
    NumeroaOctal2: TMenuItem;
    NumeroaRomano1: TMenuItem;
    NumeroaLiteral1: TMenuItem;
    practica1: TMenuItem;
    practica2: TMenuItem;
    posicionar1: TMenuItem;
    fueradeexamen1: TMenuItem;
    sacarMay1: TMenuItem;
    elimrep1: TMenuItem;
    digitMEn1: TMenuItem;
    EsPrimo1: TMenuItem;
    eliminarunnumeorysufrecuencia1: TMenuItem;
    adentrohaciaafuera1: TMenuItem;
    frecuenciadeunnumero1: TMenuItem;
    eliminarcualquiernumeroyfrecuencia1: TMenuItem;
    eliminarnumerosmenosuno1: TMenuItem;
    MayorPrimo1: TMenuItem;
    MenorImpar1: TMenuItem;
    MayorImpar1: TMenuItem;
    ordenarImparPar1: TMenuItem;
    eliminarelnumeroprimomayor1: TMenuItem;
    Numeromenordetresdigitos1: TMenuItem;
    numeromayordetresdigitos1: TMenuItem;
    SacarnumeroPar1: TMenuItem;
    Semestre202311: TMenuItem;
    Semestre202312: TMenuItem;
    Encontrarelsegundomayorimpar1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure CambiarValorClick(Sender: TObject);
    procedure obtenervalor1Click(Sender: TObject);
    procedure obtenerdigitomayor1Click(Sender: TObject);
    procedure obtenervalor2Click(Sender: TObject);
    procedure modificarundigito1Click(Sender: TObject);
    procedure ModificarunDigito2Click(Sender: TObject);
    procedure Cantidadde1Click(Sender: TObject);
    procedure NumeroDentroDeOtro1Click(Sender: TObject);
    procedure tomar1Click(Sender: TObject);
    procedure Invertirnumeros1Click(Sender: TObject);
    procedure NumeroaBinario1Click(Sender: TObject);
    procedure NumeroaOctal1Click(Sender: TObject);
    procedure NumeroaOctal2Click(Sender: TObject);
    procedure NumeroaRomano1Click(Sender: TObject);
    procedure NumeroaLiteral1Click(Sender: TObject);
    procedure practica2Click(Sender: TObject);
    procedure posicionar1Click(Sender: TObject);
    procedure Sacartodosnum1Click(Sender: TObject);
    procedure Eliminiardosmasrepetidos1Click(Sender: TObject);
    procedure eliminarnumerosrepetidos1Click(Sender: TObject);
    procedure sacarMay1Click(Sender: TObject);
    procedure elimrep1Click(Sender: TObject);
    procedure digitMEn1Click(Sender: TObject);
    procedure EsPrimo1Click(Sender: TObject);
    procedure eliminarunnumeorysufrecuencia1Click(Sender: TObject);
    procedure adentrohaciaafuera1Click(Sender: TObject);
    procedure frecuenciadeunnumero1Click(Sender: TObject);
    procedure eliminarcualquiernumeroyfrecuencia1Click(Sender: TObject);
    procedure eliminarnumerosmenosuno1Click(Sender: TObject);
    procedure MayorPrimo1Click(Sender: TObject);
    procedure MenorImpar1Click(Sender: TObject);
    procedure MayorImpar1Click(Sender: TObject);
    procedure ordenarImparPar1Click(Sender: TObject);
    procedure eliminarelnumeroprimomayor1Click(Sender: TObject);
    procedure Numeromenordetresdigitos1Click(Sender: TObject);
    procedure numeromayordetresdigitos1Click(Sender: TObject);
    procedure SacarnumeroPar1Click(Sender: TObject);
    procedure Semestre202312Click(Sender: TObject);
  private
    { Private declarations }
    N: NumeroNatural;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Cantidadde1Click(Sender: TObject);
begin
  Label1.Caption:= 'la cantidad de digitos es :'+ IntToStr(N.CantDigit);
end;

procedure TForm1.digitMEn1Click(Sender: TObject);

begin
  label1.Caption:=IntToStr(N.digitMen)
end;

procedure TForm1.eliminarcualquiernumeroyfrecuencia1Click(Sender: TObject);

begin
 n.ElimAllNumFre(StrToInt(edit1.Text),StrToInt(edit2.Text));
end;

procedure TForm1.eliminarelnumeroprimomayor1Click(Sender: TObject);

begin
 n.ElimPrimMay;
end;

procedure TForm1.eliminarnumerosmenosuno1Click(Sender: TObject);

begin
  n.ElimNum(StrToInt(edit2.Text));
end;

procedure TForm1.eliminarnumerosrepetidos1Click(Sender: TObject);
begin
// N.ELimNumRep;
end;

procedure TForm1.eliminarunnumeorysufrecuencia1Click(Sender: TObject);

begin
  N.ElimNumFrec(StrToInt(edit2.Text[1]),StrToInt(edit2.Text[3]));
end;

procedure TForm1.Eliminiardosmasrepetidos1Click(Sender: TObject);

begin
 //label1.Caption:= IntToStr(N.NumMasRep);
end;

procedure TForm1.elimrep1Click(Sender: TObject);

begin
  N.ElimRep;
end;

procedure TForm1.EsPrimo1Click(Sender: TObject);
begin
 label1.Caption:= BoolToStr(N.Esprimo(StrTOINt(edit2.Text)));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
      N:= NumeroNatural.Create;
end;

procedure TForm1.frecuenciadeunnumero1Click(Sender: TObject);

begin
  label1.Caption:= IntToStr(n.FrecNum(StrToInt(edit2.Text)))
end;

procedure TForm1.Invertirnumeros1Click(Sender: TObject);
begin
  N.InvNum;
end;

procedure TForm1.MayorImpar1Click(Sender: TObject);

begin
  label1.Caption:= IntToStr(n.MayorImpar);
end;

procedure TForm1.MayorPrimo1Click(Sender: TObject);
begin
  label1.Caption:= IntToStr(n.MayorPrimo);
end;

procedure TForm1.MenorImpar1Click(Sender: TObject);
begin
 label1.Caption:= IntToStr(n.MenorPar);
end;

procedure TForm1.modificarundigito1Click(Sender: TObject);
begin
   N.DigitDent(StrToInt(Edit2.Text),StrToInt(Edit1.Text) );
end;

procedure TForm1.ModificarunDigito2Click(Sender: TObject);
begin
   N.ModDigit(StrToInt(Edit2.Text),StrToInt(Edit1.Text) );
end;

procedure TForm1.NumeroaBinario1Click(Sender: TObject);
begin
  label1.Caption:= 'el numeor a binario: '+ N.NumToBin ;

end;

procedure TForm1.NumeroaLiteral1Click(Sender: TObject);
begin
  label1.Caption := N.NumToLit;
end;

procedure TForm1.NumeroaOctal1Click(Sender: TObject);
begin
  label1.Caption:= 'el numero a octal: ' + N.NumToOct ;
end;

procedure TForm1.NumeroaOctal2Click(Sender: TObject);
begin
   Label1.Caption:='el digito a hexadecimal es: ' + N.NumToHex;
end;

procedure TForm1.NumeroaRomano1Click(Sender: TObject);
begin
 label1.Caption := n.NumtoRom;
end;

procedure TForm1.NumeroDentroDeOtro1Click(Sender: TObject);
begin
   N.NumDent(StrToInt(Edit2.Text),StrToInt(Edit1.Text) );
end;

procedure TForm1.numeromayordetresdigitos1Click(Sender: TObject);
begin
label1.Caption:= IntToStr(n.NumMay3Dig);
end;

procedure TForm1.Numeromenordetresdigitos1Click(Sender: TObject);
begin
 label1.Caption:= IntToStr(n.NumMen3Dig);
end;

procedure TForm1.adentrohaciaafuera1Click(Sender: TObject);
begin
 N.AdenHacFuer;
end;

procedure TForm1.CambiarValorClick(Sender: TObject);
begin
     N.SetValue(StrtoInt(Edit1.Text));
end;

procedure TForm1.obtenerdigitomayor1Click(Sender: TObject);
begin
    Label1.Caption:= 'el digito mayor es :'+ IntToStr(N.GetMaxDigit);
end;

procedure TForm1.obtenervalor1Click(Sender: TObject);
begin
    Label1.Caption:= IntToStr(N.GetValue);
end;

procedure TForm1.obtenervalor2Click(Sender: TObject);
begin
     N.DelDigit(StrToInt(Edit2.Text));
end;

procedure TForm1.ordenarImparPar1Click(Sender: TObject);
begin
  N.OrdImpPa;
end;

procedure TForm1.posicionar1Click(Sender: TObject);
begin
  //label1.Caption:= N.NumPosi;
end;

procedure TForm1.practica2Click(Sender: TObject);
begin
  //  N.ordenar(StrTOINt(edit2.Text)) ;
end;

procedure TForm1.sacarMay1Click(Sender: TObject);
begin
  label1.Caption:= IntToStr(N.SacarMayCantDig);
end;

procedure TForm1.SacarnumeroPar1Click(Sender: TObject);
begin
 Label1.Caption:= IntToStr(n.SacNumPar);
end;

procedure TForm1.Sacartodosnum1Click(Sender: TObject);
begin
  // Label1.Caption:= N.SacarAllNum(StrToInt(edit2.Text));
end;

procedure TForm1.Semestre202312Click(Sender: TObject);
begin
  if n.Comparar(StrToInt(Edit1.Text)) = true then
    label1.Caption := 'son iguales'
     else   label1.Caption := 'no son iguales';
end;

procedure TForm1.tomar1Click(Sender: TObject);
begin
   Label1.Caption := 'el digito pedido es:'+ IntToStr(N.GetDigit(StrToInt(Edit2.Text))) ;
end;

end.
