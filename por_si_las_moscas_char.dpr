program por_si_las_moscas_char;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
var
 c: char; x:string; w: widestring ;

begin
 (* c:= '$';
  writeln(c);
  c:= #64 ;
  writeln(c);

  C:= #97;
  writeln(c);
  readln(c);
  writeln(c);

  c:= chr(ord(c) - 32);
  writeln(c);
  c:=' ';  *)
  write('escriba un texto: ');
  readln(x);
  c:= char (ord(x[1])-32);
  x[1]:=c;
 // x:='hola a todos: ';
 // c:=x[9];
  writeln(x);
  readln;
end.

