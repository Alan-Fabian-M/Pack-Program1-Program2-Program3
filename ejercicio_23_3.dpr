program ejercicio_23_3;
var n, i:word;  t:byte;  a, b:cardinal;
begin
 a := 1;
 b := 0;
 t := 0;
 i := 0;
 writeln('serie: 1,0,2,3,3,6...');
 write('cantidad de terminos que quiere que se muestren:');
 readln(n);
 repeat
  if t = 0 then
   begin
    writeln(a);
    a := a+1;
    t := 1;
   end
  else
   begin
    writeln(b);
    b := b+3;
    t := 0;
   end;
  i := i+1;
 until i = n ;
readln;
end.
