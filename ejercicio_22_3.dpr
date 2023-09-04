program ejercicio_22_3;
var n, i, s:word;
t: cardinal;
begin
t := 1;
s := 0;
i := 0;
writeln('serie:1,2,3,6,7,14,15,30.....');
write('cantidad de terminos:');
readln(n);
 repeat
  writeln(t);
  if s=0 then
  begin
   t := t*2;
   s := 1;
  end
   else
  begin
   t := t+1;
   s := 0;
  end;
  i := i+1;

 until i=n ;
readln;
end.



