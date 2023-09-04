program el_promedio_de_N_numeros;

var N, s, c, Nro:integer;

begin
writeln('ingrese la cantidad de terminos');
readln(N);
s:=0;
c:=0;
while N>0 do
  begin
  writeln('ingrese un numero');
  readln(Nro);
  if Nro>0 then
   begin
     s:=s+Nro;
     c:=c+1;
   end;
   N:=N-1;


  end;
if c>0 then
 begin
   write('el promedio de los nuemros positivos es: ',s/c: 3:2 );

 end
else
 begin
   write('no hay numeros positivos');
 end;


 readln;

end.
