program ejercicio_23_1;
var n, v, i, t: word;
begin
t:=4;
i:=0;
v:=1;
writeln('serie 4,3,2,1,4,3,2,1.....');
write('escribe la cantidad de numeros que quieren que se muestre:');
readln(n);
  repeat
  write(t,',');
   if v<4 then
    begin
     t:=t-1;
     v:=v+1;
    end
   else
    begin
     t:=t+3;
     v:=1
    end;
  i:=i+1;
  until i=n ;
  readln;
end.


