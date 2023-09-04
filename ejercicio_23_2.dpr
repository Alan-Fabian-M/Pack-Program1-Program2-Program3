program ejercicio_23_2;
var n, v, t, i:word;
begin
 t := 0;
 i := 0;
 v := 0;
 writeln('serie:0,1,2,3,1,2,3,4,2,3,4,5...');
 write('cantidad de terminos que quiere que se muestren:');
 readln(n);
 repeat
  write(t,',');
   if v<3 then
   begin
     t:=t+1;
     v:=v+1;
   end
    else
   begin
    t:=t-2;
    v:=0;
   end;
  i:=i+1
 until i = n;
 readln;
end.
