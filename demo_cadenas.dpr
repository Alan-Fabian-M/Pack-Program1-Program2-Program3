program demo_cadenas;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Cadenas  ;
  var
 t, e:string;
 c:cardinal;

begin

  write('escriba una cadena:');
  readln(t);
  c:=ContPal(t);
  write(c);
  readln;

end.
