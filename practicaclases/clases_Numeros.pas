unit clases_Numeros;

interface
 type
 numeros= class
   private
     num : integer ;
   public
     function MayoMen: Word;
     function NumDig: word;
     procedure ElimNum: word;

 end;

implementation

function numeros.MayoMen: string;
  b: byte;
begin
  while num>0 do
   begin
     a:= a Div 10;
     b:= b+1;
   end;
   result:=b;
end;





end.
