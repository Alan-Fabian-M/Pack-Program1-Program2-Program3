program ejercicio_22_1;

var n, v:byte;
  t: cardinal;
begin
t := 1;
v :=0;
 write('ingrese el numero de cifras que quiere que se escriba:');
 readln(n);
  repeat
  writeln(t);
  t:=t+2;
  v:=v+1;

  until(v=n);

 readln;
end.
