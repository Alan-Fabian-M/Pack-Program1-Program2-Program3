program ejercicio_22_2;
var  v, n:word;
t: cardinal;

begin
t:= 1;
v:= 0;
writeln('serie,2,4,8,16.......');
write('escriba la cantidad de terminos que quiera que se muestre:');
readln(n);
 repeat
  writeln(t);
  t:=t*2;
  v:=v+1;

 until v=n ;
 readln;


end.


