unit ClasNum;

interface

type
    num = class
     private
     valor: cardinal;
     public
     function DigMay (x: cardinal );
     function NumDig (x : cardinal);
     procedure ElimNum (x: cardinal);
    end;
implementation
procedure numero.ElimNum(x: cardinal);
var  a, b, c, d: byte ;
begin
 c:= 0 ;
 d:= 1;
 a:= 0;
 while num>0  do
  begin
   b:= num mod 10;
   num := num div 10 ;
   if (b := x) and (c:=0) then
    begin
      c := 1;
    end;
    else
    begin
     a:= b * d + a;
     d := d *10 ;
    end;
  end;
end;

function numero.NumDig (x : cardinal);
var  b : byte;
begin
b := 0;
 while num > 0 do
  begin
   num:=  num div 10 ;
    b:= b+1;
  end;
   result:= b ;
end;

function  numero.DigMay(x: cardinal);
var a, b : byte;
begin
  a := 0;
  while num > 0 do
   begin
    b:=num mod 10;
    num := num div 10;
     if b >a then
     begin
       a:=b
     end;
   end;
   result := a;
end;

end.
