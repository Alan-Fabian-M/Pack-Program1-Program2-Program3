program numero_perfecto_o_no_perfecto;
 var N, r, i :cardinal;
begin
writeln('ingrese un numero');
readln(N);
  for i:=1 to N-1 do
   begin
    if N MOD i = 0 then
    r:=r+i;
   end;
   if N = r then
   begin
     write('el numero es perfecto');
   end
   else
   begin
   write('el numero no es perfecto')
   end;

   readln;
 end.
