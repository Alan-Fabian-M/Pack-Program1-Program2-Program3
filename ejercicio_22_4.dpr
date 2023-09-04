program ejercicio_22_4;
var n, i, s:word;
t: cardinal;
begin
t := 2;
s := 0;
i := 0;
writeln('serie: 2,4,7,3,6,9,5...');
write('cantidad de terminos:');
readln(n);
 repeat
  writeln(t);
  if s=0 then begin
   t := t*2;
   s := 1;
  end else begin
   if s=1 then
   begin
    t := t+3;
    s := 2;
   end else begin
    t := t-4;
    s := 0;
   end;
  end;
  i := i+1;
 until i=n ;
 readln;
end.
