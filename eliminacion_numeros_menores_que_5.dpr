program eliminacion_numeros_menores_que_5;
var A, D, N ,X :cardinal;
begin
writeln('programa que elimina a numeros mayores que 5');
writeln('escriba un numero de mas de 8 digitos');
readln (X);
D  :=0;
A  :=1;
N  :=0;
while(X > 0) do
   begin
   D:=X MOD 10;
   X:=X DIV 10;
       if (D <= 5) then
       begin
       N:=D*A+N;
       A:=A*10;
       end;

   end;
writeln(N);
readln;
end.
