unit FuncionesDeCadenas;

interface

function EsVocal (x:char): boolean ;
function ContEsp (x:string):byte;
function ContVoc (x:string): byte;
//function ElimEspDer (x:string):string;
function ElimEspIzq (x:string):string ;
function ElimVoc (x:string): string;
function ElimPala (x: string ): string ;
function EsCons (x:char): boolean ;
function ElimCar (x:string ):string ;


implementation

// eliminar caracteres
function ElimCar (x:string ):string ;
var  i, n, c: byte;

begin
  i:= 1;
  n:= length(x);
  while i<=n do
   begin
    if EsVocal(x[i]) or EsCons(x[i]) or (x[i]=' ') then
      begin


      end
      else begin

       delete(x,i,1);
      end;

      i:= i+1;

   end;

  ElimCar:= x;


end;

// eleminar la primera palabra
function ElimPala (x: string ): string ;
var i, n, c: byte;
begin
 n:= length (x);
 i:= 1;
 c := 1 ;
  while i<=n do
    begin
      if EsVocal(x[i]) or EsCons(x[i]) then
       begin
        c:= c+1;
       end
       else
       begin
        i := n;
       end;
      i:= i+1;
    end;
    delete (x,1,c);

  ElimPala := x;
end;

// eliminar las vocales
function ElimVoc (x:string): string;
var n, i, c:byte;
t: string ;
begin

  n:=length(x);
  i:= 1;

   while i<=n do
     begin
      if EsVocal(x[i]) then
        begin
          delete (x,i,1);
        end;
      i:= i+1;
     end;

  ElimVoc:= x;
end;

// eliminar los espacios a la izquierda
function ElimEspIzq  (x:string):string ;
var n, i, c: cardinal;
begin
 n:= length(x);
 i:= 1;

  while i<=n do
  begin
    if x[i] = ' ' then  begin
     c:= c+1;
    end

    else begin
     i:=n;

    end;
    i:= i+1;

  end;
  delete(x,1,c);


  ElimEspIzq := x;

 end;

 // contador de vocales
 function ContVoc (x:string): byte;
 var i, c,  n : Byte;

 begin
  i:= 1;
  c:= 0;
  n := length(x);
  while i<=n  do
   begin
    if EsVocal(x[i]) then
      begin
       c:= c+1;

      end;
     i:= i+1;
   end;

   ContVoc:= c;


 end;

 // contador de espacios
 function ContEsp (x:string): byte;
 var i, c, n:byte;


 begin
  c:=0;
  n:= length(x);
  i:= 1;
  while i<=n  do
   begin
    if x[i] = ' ' then
      begin
       c:= c+1;

      end;

    i:= i+1;

   end;


  ContEsp := c;


 end;

 // es vocal
 function EsVocal (x:char): boolean ;
 var voc: string;
 p: byte;
 begin
   voc := 'aeiouàèìòùAEIOUÀÈÌÒÙ';
   p:= pos(x,voc);
   EsVocal := p>0;


 end;
 // es consonante
 function EsCons (x:char): boolean ;
 var voc: string;
 p: byte;
 begin
   voc := 'bcdfghjklmnñpqrstvwxyzBCDFGHJKLMNÑPQRSTVWXYZ';
   p:= pos(x,voc);
   EsCons := p>0;


 end;
end.
