program borrar_espacios_de_la_derecha;

uses
  System.SysUtils,
  crt in 'crt.pas';
  var
  t, c: string;
  i, z: byte;
  l:char;


begin
 write ('escriba un texto con espacios a la derecha:' ) ;
 readln(t);
 c:=t;
 z:=length(t);
 writeln(z);
 i:=z;

  while c[i]=' ' do
   begin

    i:= i-1 ;



   end;

  delete(t,i,z);
 writeln(t);
 z:=length(t);
 writeln(z);


 readln;

end.
