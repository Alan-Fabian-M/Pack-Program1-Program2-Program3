program contar_los_espacios;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  crt in 'crt.pas';

   var
   t ,o : string;
   i, a, c: byte;

begin

  write('escribir un texto:');
  readln(t);
  a:=length(t);
  o:=t;
  c:=0;
  i:=0;

  // contador de espacios
  (*   for i := 1 to a do
   begin

    if o[i]=' ' then
     begin
       c:= c+1;
     end;
   end;
   writeln('hay ',c,' de espacio en el texto'); *)



 // contador de vocales
 (*for i := 1 to a do
   begin

    if o[i]='u' then
     begin
       c:= c+1;
     end;
    if o[i]='o' then
     begin
       c:= c+1;
     end;
    if o[i]='i' then
     begin
       c:= c+1;
     end;
    if o[i]='e' then
     begin
       c:= c+1;
     end;
    if o[i]='a' then
     begin
       c:= c+1;
     end;

   end;


  writeln('hay ',c,' de vocales');*)



  readln;

end.
