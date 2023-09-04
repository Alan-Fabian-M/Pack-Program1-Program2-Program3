program ejercicio_22_6_fibonacci;

var n, a, b, v, c:word;

begin

a := 0;
b := 1;
c := 0;

 writeln('serie fibonacci');
 write('cuantos digitos quiere:');
 readln(n);
 for v := 1 to n do

  begin

   writeln(a);
   c := a+b;
   a := b;
   b := c;


  end;

 readln;
end.


