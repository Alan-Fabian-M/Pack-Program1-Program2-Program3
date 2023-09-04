unit CNum;

interface
 uses System.Math;
 type

     NumeroNatural = class
       private
          valor : cardinal ;

          function Decenas (n : cardinal ): string ;
          function Centenas (n : cardinal ) : string ;
       public
          procedure SetValue (v : cardinal);
          function GetValue: cardinal ;
          procedure DelDigit (p : byte);
          function GetMaxDigit : byte;
          function CantDigit : byte;
          procedure DigitDent (p:byte ;a:cardinal);
          procedure NumDent (p: byte  ; a : cardinal);
          procedure ModDigit (p: byte; a : cardinal);
          function GetDigit (p:byte ): byte ;
          procedure intercambiar (f,i: byte);
          procedure InvNum;

          ////// practica

           procedure ElimNum(num : word);   /// eliminar numero que de el usuario ,menos uno
           Procedure OrdPrinNoPrim; // ordena entre primo y no primo
           Procedure OrdImpPa ; //Ordenar impares y pares y mostrarlo a la mitad cada 1 ordenado  descendentemente
           Procedure ElimPrimMay; /// eliminar el numero primo mayor
           Function NumMen3Dig: cardinal ; // el numero menor de tres digitos
           Function NumMay3Dig:cardinal ;// el numero mayor de tres digitos



           //////  Auxiliares de la practica
           //Function TomNum(dig : byte): cardinal ; // toma numeros de la cadena
           function MayorImpar: byte ;  //// numero Mayor
           function Menorpar: byte ;  //// Menor Impar
           Function MayorPrimo: byte;  /// te da el mayor primo
           function EsPrimo(num : word):boolean ;   ////// si es primo
           function SacNumPar: byte ; // saca cualquier numero par en valor
           Function Espar(num : word): boolean;     /// si es par


           function DigToIzq(num : cardinal; dig: byte): cardinal;  //// inserta numero a la izquierda
           function DigToDer(num : cardinal; dig: byte): cardinal;  //// inserta numero a la derecha
           function FrecNum(num : cardinal) : byte ; // frecuencia de varios numeros
            Procedure ElimAllNumFre(num : cardinal; dig : byte ) ; //elimina todo los numeros que diga el usuario
          ///////////////


          function NumToLit: string;
          function NumtoRom: string;
          function NumToBin : string ;
          function NumToHex : string ;
          function NumToOct : string ;

          //////////////////////////////////////
          procedure Variar(t,i:byte);

          //////////////////////////////////////////

     // fuera del examen
     function SacarMayCantDig:byte;
     function frecuencia(num : byte):byte ; // frecuencia de un digito
     procedure ElimRep;                 //// elimina los digitos repetidos dentro del numero 112233=123

     //////// examen
      procedure AdenHacFuer ;     //////
      function digitMen: byte ;
       procedure ElimNumFrec(num, fre : byte );

       /////////////////////  Semestre 2023-1
       function Comparar( n : integer):boolean  ;  // va a comparar
       //si tienen los mismos numeros (11223344 = 1234) = true , (11223344 = 12345) = false
       Function VerifOneXOne(num1 : integer; num2: integer):boolean;
       function ElimOneNumDeNum (num : integer; b : byte): integer ;
       // elimina los numeros de un numero que enviemos (11223344 , 1)= (223344)
       function VerifDigDenNum (num : integer ; dig : byte ): boolean;
       // le mandan un digito y verifica si estadentro de un numero (1122, 1) = true , (1122, 8)= false
        procedure EncontrarSegundoMayorImpar(n: Integer; var segundoMayorImpar: Integer);
       //////////////////////// sacar el segundo mayor primo

     end;
implementation

uses
  System.SysUtils;



{ NumeroNatural }

/////////////examen


 procedure NumeroNatural.EncontrarSegundoMayorImpar(n: Integer; var segundoMayorImpar: Integer);
var
  mayorImpar, actual: Integer;
begin
  mayorImpar := 0;
  actual := 0;
  while n > 0 do
  begin
    actual := n mod 10;
    if (actual > mayorImpar) and (actual mod 2 <> 0) then
    begin
      segundoMayorImpar := mayorImpar;
      mayorImpar := actual;
    end
    else if (actual > segundoMayorImpar) and (actual < mayorImpar) and (actual mod 2 <> 0) then
    begin
      segundoMayorImpar := actual;
    end;
    n := n div 10;
  end;
end;







/////////////////////////// despues del examen


procedure NumeroNatural.ElimRep;
var
num,c,c2,v2,long: byte ;
v : cardinal;
begin
 c2:=0;
 while c2 <2 do
  begin
    v := valor ;
    num := SacarMayCantDig;
    long :=   frecuencia(num);
    c := 1 ;
    Inc(c2);
       while c < CantDigit do
         begin
           v2 := v mod 10 ;
           v := v div 10 ;
             if (v2 = num) and (long-1 >0) then
               begin
                DelDigit(c);
                Dec(long);
               end
               else Inc(c);
         end;

  end;

end;


function NumeroNatural.SacarMayCantDig:byte;
 var
 v2,num3,num,num2: byte ;

 v : cardinal ;
 begin
  v := valor ;
  v2 := v mod 10 ;
  v :=  v div 10;
  num := Frecuencia(v2);
    while v>0 do
     begin
      v2 := v mod 10 ;
      v :=  v div 10;
      num2 := Frecuencia(v2);
       if num2>=num then
         begin
            num := num2;
            num3 := v2;
         end;
     end;

  result := num3 ;
 end;



function NumeroNatural.frecuencia(num : byte):byte ;
var
v2,c : byte;
v : cardinal;
begin
  c:= 0 ;
  v := valor ;
  while v > 0 do
   begin
    v2 := v mod 10 ;
    v := v div 10 ;
     if v2 = num then Inc(c);
   end;
   result := c ;
end;



procedure NumeroNatural.ElimNumFrec(num, fre: byte);
var
v,k : cardinal ;
dig: byte;
begin
 v := 0 ;
 k := 1 ;
  while valor >0 do
    begin
       dig := valor mod 10 ;
        if  (dig = num) and not (fre = 0) then
         begin
          Dec(fre);
         end
         else
         begin
          v :=  dig * k + v ;
          k := k *10
         end;
       valor := valor div 10 ;
    end;
  valor := v ;

end;



function NumeroNatural.Comparar(n: integer): boolean;
var
a, b : boolean;
begin
    a := VerifOneXOne(valor, n);
    b :=  VerifOneXOne(n, valor);
  result := (a and b);
end;

function NumeroNatural.VerifOneXOne(num1, num2: integer): boolean;
var
i, a : byte ;
b : boolean;
begin
 b := true ;
 i := 1;
   while ((i <= trunc(log10(num1)+1)) and (b = true) ) do
   begin
      a := ((num1 div trunc(power(10, i-1)))mod 10);
      b := VerifDigDenNum(num2, a);
      i := i +1;
   end;
  result := b ;
end;


function NumeroNatural.VerifDigDenNum(num: integer; dig: byte): boolean;
var
i : word;
b : boolean;
begin
b := false;
i :=1 ;
  while ((i <= trunc(log10(num)+1)) and (b = false)) do
    begin
       if ((num div trunc(power(10, i-1)))mod 10) = dig then  b := true ;
       inc(i);
    end;
    result := b;
end;


function NumeroNatural.ElimOneNumDeNum(num: integer; b: byte): integer;
var
i : byte;
k : integer;
begin
   while ((i < trunc(log10(num)+1)) ) do
    begin
       if ((num div trunc(power(10, i-1)))mod 10) = b then
       begin
         k:= trunc(power(10,i-1));
         num := ((num div k)div 10) * k + (num mod k );
       end;

       inc(i);
    end;
    result :=  num ;
end;




///////////

//////////////////////////////////////////////////////////////////practica

procedure NumeroNatural.ElimNum(num: word);
var
c : byte ;
begin
  c := FrecNum(num);
  ElimAllNumFre(num,c-1);

end;


procedure NumeroNatural.OrdPrinNoPrim;
var
v : cardinal ;
dig,dig2 : byte ;
begin
v := 0;
  while valor >0  do
     begin
        dig := MayorPrimo;
        if (EsPrimo(dig)) then
          begin
              v := DigToDer(v,dig);
              ElimAllNumFre(dig,1);
          end;
         dig := SacNumPar;
          if not (Esprimo(dig)) then
            begin
              v := DigToDer(v,dig);
              ElimAllNumFre(dig,1);
            end;
     end;
end;


function NumeroNatural.NumMay3Dig: cardinal;
var
 v,dig,d : cardinal;
begin
 v := valor ;
 while (v > 99) and (d >99) do
  begin
     d := v mod 1000;
     v := v div 10 ;
      while (v > 99) and (d > 99)  do
       begin
         dig := v mod 1000;
         if (dig > d) and (dig>99) then d := dig ;
         v := v div 10 ;
       end;
  end;
  result := d ;
end;

function NumeroNatural.NumMen3Dig: cardinal;
var
 v,dig,d : cardinal;
begin
 v := valor ;
 while (v > 99)  do
  begin
     d := v mod 1000;
     v := v div 10 ;
      while (v > 99) and (d > 99)  do
       begin
         dig := v mod 1000;
         if (dig < d) and (dig>99) then d := dig ;
         v := v div 10 ;
       end;
  end;
  result := d ;
end;



procedure NumeroNatural.ElimPrimMay;
var
num,fre : byte ;
begin
  num := MayorPrimo;
  fre:=FrecNum(num);
  ElimAllNumFre(num , fre);
end;


procedure NumeroNatural.OrdImpPa;
var
v : cardinal ;
dig,d,f : byte ;

begin
 v := 0;
    while valor > 0  do
      begin
          dig := MayorImpar ;
           if  dig > 0 then
            begin
              ElimAllNumFre(dig,1);
              v :=digToIzq(v,dig);
            end;

          d := MenorPar;
          if  d > 0 then
            begin
              ElimAllNumFre(d,1);
              v :=digToder(v,d);
            end;
      end;
      valor := v ;
end;



procedure NumeroNatural.AdenHacFuer;
var
  k,v : cardinal ;
  dig : byte ;
  bo : boolean ;
begin
  bo := true ;
  v := 0 ;
  k := 1 ;
   while valor>0 do
    begin
      dig := DigitMen;
      ElimNumFrec(dig,1);
      if bo then
       begin
        v := v * 10 +dig;
        k := k*10;
        bo := false ;
       end
        else
        begin
         v := dig * k + v;
          k := k*10;
         bo := true ;
        end;
    end;

  valor := v ;

end;



//////////////////////////////////////////////////////////////////auxiliares de practica

function NumeroNatural.DigToDer(num : cardinal; dig: byte): cardinal;
begin
 if num = 0 then
  result := num * 1 + dig
    else
      result :=num * trunc(power(10,trunc(log10(dig)+1))) +dig;
end;

function NumeroNatural.DigToIzq(num : cardinal; dig: byte): cardinal;
begin
 if num = 0 then
  result := dig * 1 + num
    else
      result := dig * trunc(power(10,trunc(log10(num)+1))) + num ;
end;
function NumeroNatural.MayorPrimo: byte;
var
v : cardinal ;
dig,d : byte ;
begin
 v := valor ;
 while (v > 0) do
  begin
      d := v mod 10 ;
      v := v div 10 ;

   while (v > 0) and (Esprimo(d)) do
       begin
        dig := v mod 10 ;
        if (dig > d) and (EsPrimo(dig))  then
          begin
            d := dig ;
          end;
         v := v div 10 ;


       end;
  end;
 result := d ;

end;

function NumeroNatural.MenorPar: byte;
var
v : cardinal ;
dig, d : byte ;
begin
 v := valor ;

    while v > 0 do
      begin
         d := v mod 10 ;
         v := v div 10 ;
           while (v > 0) and  (EsPar(d)) do
             begin
                dig := v mod 10 ;
                 if( dig < d) and (Espar(dig)) then d := dig ;

                v := v div 10 ;
             end;

      end;
   result := d ;
end;

function NumeroNatural.MayorImpar: byte;
var
v : cardinal ;
dig, d : byte ;
begin
 v := valor ;

    while v > 0 do
      begin
         d := v mod 10 ;
         v := v div 10 ;
           while (v > 0) and not (EsPar(d)) do
             begin
                dig := v mod 10 ;
                 if( dig > d) and not (Espar(dig)) then d := dig ;

                v := v div 10 ;
             end;
      end;
   result := d ;
end;


procedure NumeroNatural.ElimAllNumFre(num : cardinal; dig : byte );
var
v, d : cardinal ;
begin
 v := 0 ;
  while valor > 0 do
   begin
     d := valor mod trunc(power(10,trunc(log10(num)+1)));
      if (d = num) and not (dig = 0 )   then   Dec(dig)
         else
          v := DigToIzq(v,d);
      valor := valor div trunc(power(10,trunc(log10(num)+1))) ;
   end;
    valor := v ;

end;

function NumeroNatural.Espar(num: word): boolean;
var
bo : boolean ;
begin
 bo := false;
 if (num mod 2) = 0 then   bo := true ;
  result := bo ;
end;



function NumeroNatural.digitMen: byte;
var
dig, digit: byte ;
k,v : cardinal ;
begin
 v := valor ;
  dig := v mod 10 ;
  v := v div 10 ;
   while v >0 do
     begin

       digit := v mod 10 ;
        if digit < dig then dig := digit ;
        v := v div 10 ;

     end;
   result := dig ;

end;


function NumeroNatural.EsPrimo(num: word): boolean;
var bo:boolean;
    N,i:Cardinal;
begin
i:=2;
bo:=true;
  while (i<num) and (bo) do
  begin
    if (num mod i) = 0 then
    begin
      bo:=false;
    end;
    i:=i+1;
  end;
  result:=bo;
end;


function NumeroNatural.SacNumPar: byte;
var
v : cardinal ;
dig : byte ;
begin
v := valor ;
  dig := v mod 10 ;
  v := v div 10 ;
  while (v>0) and  EsPrimo(dig) do
     begin
      dig := v mod 10 ;
      v := v div 10 ;
     end;
  result := dig ;
end;


function NumeroNatural.FrecNum(num : cardinal): byte;
var
k,dig,v : cardinal ;
c : byte ;
begin
   c := 0 ;
   v := valor ;
     while v > 0  do
      begin
        dig := v mod trunc(power(10,trunc(log10(num))+1)) ;
         if dig = num  then
           Inc(c);
        v := v div 10 ;
      end;
      result := c ;
end;




//////////////////////////////////////////////////////////////////



function NumeroNatural.CantDigit: byte ;
var
c: byte;
begin
 c := trunc(log10(valor));
 result:= c+1;

end;

function NumeroNatural.NumToLit: string;
const
numeros : array [1..4] of integer =(0,0,0,0);
 miles : array [0..4] of string =
 (' ','mil','millon','billon','trillon');
 var
 n : cardinal ;
 a : byte ;
begin
a := 0;
 n := valor ;
   if valor = 0  then
   result := 'cero'
    else
    if valor = 100 then
    result := 'cien'
    else
    if valor = 1000000 then
    result := 'un millon'
   else
     begin

      while n > 1 do
      begin
        result := Centenas(n mod 1000) +' '+ miles[a]+' ' +  result ;
        n := n div 1000;
        a := a +1;
      end;
      if (valor mod 1000)=0 then result:= centenas(valor div 1000)+' '+miles[a-1];
      if (valor mod 1000000)=0 then result:= centenas(valor div 1000000)+' '+miles[a-1];
      if (valor div 1000)= 1  then result := miles[a]+' '+result;
      if (valor div 1000000)=1 then result:= 'un '+miles[a]+' '+ result ;
     end;

   (*
    while n > 0 do
     begin
      d := n mod 1000;
      result := centenas(d);
      n := n div 1000;
     end;
      *)

    (*  if (a>0) and (a<=6)then
        result := centenas ( valor div 1000) +' '+miles [1]+' '+centenas (valor mod 1000)
      else if (a>0) and (a<=9) then
         result := centenas (valor div 1000000) +' '+miles [2]+' '+ centenas ((valor mod 1000000)div 1000)+' '+miles [1]+' '+ centenas (valor mod 1000)
         else
           result := centenas(valor );   *)
end;

function NumeroNatural.Centenas(n : cardinal ): string;
const
centenas : array [0..9]of string = ('','ciento','doceinto','treciento','cuatrociento','quiniento','seiciento','seteciento','ochociento','noveciento');

begin
        result := centenas [n div 100] +' '+ decenas (n mod 100)
end;


function NumeroNatural.Decenas(n : cardinal ): string;
const
unidades : array [0..15] of string =('','uno','dos','tres','cuatro','cinco','seis','siete','ocho','nueve','diez','once','doce','trece','catorce','quince') ;
decenas : array [1..9] of string = ('diez','veinte','treinta','cuarenta','cincuenta','sesenta','setenta','ochenta','noventa') ;

begin
   if n < 16 then
   result := unidades [n]
   else if (n mod 10) =0  then  result:= decenas [n div 10 ]
         else result := decenas [n div 10 ]+' y '+ unidades [n mod 10];
end;

procedure NumeroNatural.DelDigit(p: byte);
var
   k, n1 , n2 : cardinal ;
begin
   k:= trunc(power(10,p-1));
   n1:=  ( valor div k ) div 10;
   n2:=    valor mod k;
   valor := (n1*k)+n2;
end;

function NumeroNatural.GetDigit (p : byte) : byte ;
begin
  result:= (valor div trunc(power(10, p-1)))mod 10 ;
end;

function NumeroNatural.GetMaxDigit: byte;
var
  n : cardinal ;
  may, d : byte ;

begin
    n:= valor ;
    may := n mod 10 ;
    while n>0 do
     begin
        d:= n mod 10 ;
        if d>may then
         begin
           may := d ;
         end;
         n:= n div 10 ;
     end;
     result := may ;
end;




procedure NumeroNatural.ModDigit (p : byte; a : cardinal);
var
    k: cardinal ;
begin
  k:= trunc(power(10,p-1));
  valor:= (((valor div k)div 10)*10+a)*k+(valor mod k);
end;

procedure NumeroNatural.NumDent(p: byte; a: cardinal);
var
  n, k1  : cardinal;
  k : byte;
begin
  k:= trunc(power(10,p-1));
  k1:=trunc(log10(a)+1);
  k1:= trunc (power(10,k1));
  n:= ((valor div k)*k1 + a)*k +(valor mod k);
  valor := n;

end;






////////////////////////
(*procedure NumeroNatural.ordenar(Num: cardinal );
var
v : string ;
begin
  v := '';
  if num = 1  then
   begin
    v := v + IntToStr(valor mod 10);
    v := v + IntToStr(valor div 10);
    valor := StrToInt(v);
   end
     else if num = trunc(log10(valor)+1) then
       begin
         valor :=  valor ;
       end
          else
          begin
               v := v + IntToStr((valor div trunc (power(10,num-1)))mod 10);
               v := v + IntToStr((valor div trunc (power(10,num-1)))div 10);
               v := v + IntToStr(valor mod trunc(power(10, num-1)));
               valor := StrToInt(v);
          end;
end;                  *)


////////////////////////////////////////////////

procedure NumeroNatural.Variar(t,i:byte);
 begin


 end;



///////////////////////////////////////////////

procedure NumeroNatural.DigitDent (p:byte ;a:cardinal);
 var
   n ,k,u : cardinal ;
begin
  u := valor ;
  k:= trunc(power(10,p-1));
  n:= ((u div k )*10 + a)*k +(u mod k);
  valor:= n ;

end;





function NumeroNatural.NumToBin: string;
var
 b : string ;
 n : cardinal ;
begin
  b := '';
  n := valor ;
  while n > 0 do
  begin
   b:= IntToStr(n mod 2) + b ;
   n := n div 2 ;
  end;
  result := b;

end;

function NumeroNatural.NumToOct: string;
var
 b : string ;
 n : cardinal ;

begin
  n := valor ;
  b := '';
  while n > 0 do
  begin
   b := IntToStr(n mod 8) + b;
   n := n div 8;
  end;
  result := b;
end;



function NumeroNatural.NumtoRom: string;
const

romanos  : array [1..4,1..9] of string =
(
('I','II','III','IV','V','VI','VII','VIII','IX'),
('X','XX','XXX','XL','L','LX','LXX','LXXX','XC'),
('C','CC','CCC','CD','D','DC','DCC','DCCC','CM'),
('M','MM','MMM','IV-','V-','VI-','VII-','VIII-','IX-')

);
var
n : cardinal ;
d ,c : byte;
roman: string ;
begin
  n := valor ;
  roman:='';
  c := 1 ;
   while n > 0   do
   begin
     d := n mod 10 ; ;
       if d >0 then
       begin
         roman := romanos[c,d] + roman ;
       end;
       c:= c+1;
      n := n div 10 ;
   end;

   result := roman ;
end;


function NumeroNatural.NumToHex: string;
const
 Dig = '0123456789ABCDEF';
var
  n : cardinal ;
  b : string;
 begin
    b := '';
    n := valor ;
    while n > 0 do
  begin
     b := Dig[(n mod 16)+1]+ b;
     n := n div 16 ;
  end;
  result := b;
 end;



procedure NumeroNatural.intercambiar(f, i: byte);
var
 di : byte ;
begin
 di := GetDigit(i) ;
 ModDigit(i,GetDigit(f));
 ModDigit(f,di);

end;

procedure NumeroNatural.InvNum;
var
 f, i : byte;
begin

 f := CantDigit;
 i:= 1;
 while i< f do
  begin
   intercambiar (f,i);
   i := i +1;
   f := f-1;
  end;


 valor := valor ;
end;

function NumeroNatural.GetValue: cardinal;
begin
    result := valor;
end;

procedure NumeroNatural.SetValue(v: cardinal);
begin
   valor := v;
end;



end.
