program ejercicio_23_4;
var m, t: byte;  n, i: word;
begin
 t := 0;
 i := 0;
 writeln('serie:0,1,2,..m,0,1,2,....m');
 write('hasta que numero quiere la serie:');
 readln(m);
 write('cuantas cifras quiere que se muestre:');
 readln(n);
 repeat
   writeln (t);
    if t = m then
     begin
       t := 0;
     end
    else
     begin
       t := t+1;
     end;
   i := i+1
 until i = n ;
 readln;
end.
