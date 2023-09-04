program suma_octal;
var da ,db , a , b, p, c, res , s: integer;
begin

p:= 1;
res:=0;
c:= 0 ;
writeln('suma en octales');
writeln('ingrese b');
readln(a);
writeln('ingrese a');
readln(b);

while (a>0) or (b>0) do
 begin
 da := a mod 10;
 db := b mod 10;
 s := da + db +c;
 a := a DIV 10;
 b := b DIV 10;

  if s>=8 then
  begin
  s := s - 8;
  c:=1;
  end
  else
  begin
  c := 0;
  end;


 res := s * p + res;
 p:= p* 10;

 end;

res := c*p+res;

writeln ('su respuesta es de la suma de octales es',res);
readln;

end.
