unit Class_num;

interface
type
 numero= class
 private
  z:byte;
 public
 function contDig (x: cardinal );
 function numMayor (x,y: cardinal);
 procedure elimNum (x: byte );
implementation
 //contar digitos
 function numero.contDig (x: cardinal );
  var y:word;
begin

   repeat
      y:= x mod 10;
      x:= x div 10;
      z:= x+1;
      until x:=0;
      result:= z;
  end;
 //num mayor
 function numero.numMayor (x: cardinal);
   var
     a,b: word;
     begin
        b:=0;
        repeat
           a:= x mod 10;
           x:= x div 10;
             if a>b then begin b:=a;
             end;
           until x=0;
           result:= b;
        end;
 //eliminar un digito
 procedure numero.elimNum (x: byte );
 var
   n,m,p,r: byte;
begin
r:= 1;
p:= 1;
n:= 0;
 while (z > 0) and (p = 1) do
  begin
   m := z mod 10;
   z := z div 10 ;
    if x = m then
     begin
       p:= 0;
     end;
    if p=1 then
     begin
      n := m * r + n ;
      r := r *10;
     end;
  end;
  while z >0  do
   begin
     m := z mod 10;
     z := z div 10 ;
     n := m * r + n ;
     r := r *10;
   end;
  z := a;
end;

end.
