program Demo;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  FuncionesDeCadenas,
  Cadenas in 'Cadenas.pas';

var
  x, t:string;
  p: byte;
  c: char;
  b: boolean;
  numeros: set of 0..9;
begin

  write('escriba un texto:');
  readln(x) ;
  //x := ElimEspIzq(x);
 // b := EsVocal(c);
   ElimPrimPal(x);
   writeln(x);






  readln;

end.

