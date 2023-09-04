program eleminador_de_vocales;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  crt in 'crt.pas';
var
 t: string;
 i, c, z: byte;

begin
 write('escriba un texto:');
 readln(t);
 z:=length(t);
 i:=0;

 for i := 1 to z do
   begin

     if t[i]='a' then
       begin
        delete(t,i,1)  ;
       end;
     if t[i]='e' then
       begin
        delete(t,i,1)  ;
       end;
     if t[i]='i' then
       begin
        delete(t,i,1)  ;
       end;
     if t[i]='o' then
       begin
        delete(t,i,1)  ;
       end;
     if t[i]='u' then
       begin
        delete(t,i,1)  ;
       end;




   end;

   writeln(t);

 readln;


end.
