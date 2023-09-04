unit classNum;

interface
type
  numeros = class
    private
      num : integer ;

    public
    function MayoMen: Word;
     function CanDig: word;
     procedure ElimNum  (x: byte );
  end;

implementation

{ numeros }

procedure numeros.ElimNum(x: byte);
var
   a,b,c,d: byte;
begin
c:= 1;
d:= 1;
a:= 0;
 while (num > 0) and (c = 1) do
  begin
   b := num mod 10;
   num := num div 10 ;
    if b = x then
     begin
       c:= 0;
     end;
    if c=1 then
     begin
      a := b * d +a ;
      d := d *10;
     end;
  end;
  while num >0  do
   begin
     b := num mod 10;
     num := num div 10 ;
     a := b * d +a ;
     d := d *10;
   end;
  num := a;
end;

function numeros.MayoMen: Word;
var
   a,b,c: byte;
begin
 b:= 0;
  while num > 0 do
   begin
    a:= num mod 10;
    num := num div 10;
     if a > b then
      begin
        b:= a;
      end;
   end;
    result := b;
end;

function numeros.CanDig: word;
var
  a,b,c : byte;
begin
 while num>0 do
  begin
   num:= num div 10;
   a:= a+1;
  end;

  result := a;

end;

end.

