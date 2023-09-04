program sacar_la_primera_palabra_de_un_texto;


uses
  System.SysUtils,
  crt in 'crt.pas';
var
 t, p, xl: string;
 i, z, c:byte;

begin
 write('escribe un texto:');
 readln(t);
















 z:=length(t);
 c:=0;
 i:=1;
 while i<=z do
  begin

   if t[i]=' ' then     begin
     c:=c+1;

   end

   else begin
    i:=z;

   end;

   i:=i+1 ;

  end;
 delete(t,1,c);

// writeln(t);

 i:= 1;
 c:= 1;
 z:= length(t);


   repeat
     if t[i]=' ' then begin
      i:=z;


     end

     else begin
      c:=c+1;

     end;

    i:=i+1;

   until i>=z ;

  delete(t,c,z);
  write(t);



 readln;
end.
