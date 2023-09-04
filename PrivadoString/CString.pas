unit CString;


interface


 const  N = 1000;
 Numeros=['0'..'9'];
 vocales =  ['a','e','i','o','u'];
 consonantes= ['B','C','D','F','G','H','J','K','L','M','N','Ñ','P','Q','R','S','T','V','W','X','Y','Z'];
 separadores=[' ','+','-',' ','/','_','?','/','.','>','<',',','!','@','#','$','%','^',' ','(',')',']','[','{',';','}',':','\','|','"',';'];
type
 cadena = class
    private
    longitud : word ;
    caracteres : array [1..N]of char ;


    public
     function GetLong : word ;
     function GetChar : string;
     procedure SetChar (s:string);
     procedure AddChar (a:char);    // añadir char a lo ultimo
     procedure AddStr (s : string);    // añadir un string
     procedure InsChar (p: word;a: char);  // inserta un char en una posicion
     function SeeChar(p:word) : char ;     // muestra el char
     procedure DelChar (p:word );      // elimina el char
     procedure DelnChar  (a : char);     // elimina  todos los char que se le mande
     procedure ModChar (p : word ; a : char) ; // modifica un char por otro
     procedure ModnChar (a,b : char );   // modifica todo los caracteres
     procedure ToUpper ;  // lo pone todo en mayuscula
     procedure ToLower ; // lo pone todo en minusculas
     procedure Invert;  // invierte la cadena
     procedure DelVoc;  // elimina todas las vocales
     //////parctica
     procedure ConvPrimCarc ;   // convierte todas las primeras carcatres de una palabra en mayusculas
     function BusPal (t: string ): word ; // te da la posicion de la palabra
     function BuscPalNum(t:string):byte; // te da el numero de la palabra que es
     function ContSubCad(t: string ):byte ; // contador de sub cadenas
     function SumBin: string ; // suma de binarios
     function ContVocPrinUlt:string ;   // cuenta cuantas palabras tiene vocaL al pirncipio y al final

     function SumReal (R : Smallint ): string ;  // suma reales

     function Polinomio(x : real ): string ; // resuleve polinomios segun la elevacion
     ////// auxiliares
     procedure Inv (a,b: word ); // invierte desde una posiciona otra
     function SiguientePalabra(var i: word): string;  // saca la palabra
     procedure InvPal;
     procedure eliminarP(t,p:word);    // eliminar desde una posicion a otra
     function BusPalPos (t : string; i : word ): word ;  // la posicion de la palabra  si no lo encuentra te da 0
     procedure AddPal(t: string; pos: word);  // inserta la palabra desde una posicion
     function BusLaPa (var i: word ; t: string ):string ; // saca caracteres segun la longitud de la palabra
     function copy (c,p: word): string ;   // saca de una posicion a otra
     function SacarFecha(var i:word): TDateTime ;  // saca fecha
     function SacarNum (var i: word):cardinal;   // saca numero
     function SacarOpe (var i: word):char;  // saca el operador
     Function SacarNumReal(var i :word):extended; // saca el numero real
     Function ResolPoli( var i : word ; x : real): real ;
     function VerSiHayNum (var i: word): byte ;
 //    procedure ElimVocRep;

     function pos(c:char): word ;
     /// practica 2
     Function LitToDate: string ;
     procedure OrdCade; ///ordena segun el orden alfabetico
     Function SumarHora: string ; // suma las horas
     function MayBin: string ; // devuelve el numero binario mayor
     Function PalMasRep : string ; // devuelve la palabra mas repetida


     //// auxiliar 2
     /// auxiliares para el ejericio lit to num
     function LitToDeci(t : string): string ;
     Function LitToUni(t : string): string ;

     ///
     function PalMenVol: string ; /// devuelve  la palabra con menor vocal inicial
     Function SacarHora(var i : word ): TTime ; // saca la hora
     Function BinToDeci(t: string): word ;     // de binario a decimal
     procedure ElimPalOne(t:string);    // elimina una palabra
     procedure RemPalCadOne (t,t2:string); // remplaza una palabra por otra
     procedure IntPal(pal1 ,pal2 : byte);// intercambia palabras
     Function FrecDeUnaPal(t : string): byte ; // frecuencia de una palabra
     //////tarea1

     function Buscar(p: word): string;  // te da la palabra
     function PalMay: string ; // te da la palabra de mayor tamaño
     function CantidadPalabras: word;  // te da la cantidad de palabras
     ////// tarea2
     procedure ElimPal(t:string);    // elimina todas las palabras palabra
     procedure RemPalCad(t,t2:string); // remplaza todas las palabras por otra
     procedure Invcad;    // inviter las palabras
     ////// tarea 3
     function DateMenor: TDateTime ; // te da la fecha menor
     function Aritmetica:string ;   // resuelve aritmetica

     ////////////////////////////////////// examen
      procedure ajustes(i : word );
      procedure elimPalCom(c: word);
      procedure ElimPos(pos : word);
      procedure AumEsp(pos : word);
     ///////////////////////////////////////
      procedure EliminarCons;

      function Frecuencia (ch: char ;t : string): byte ; // frecuencia de un char en una palabra

      //////////////////////////////////////////
      Procedure ElimNumMasDeci ;
      function SacarNumMas(var i : word): string;

     //////////////////////////////////////////    2023 / 01   Practica
      function DifVoc:String;
      function SacarVocal(var i: word): char;
     //////////////////////////////////////////    2023 / 01  Examen #1
     ///
     ///  Acad-10k, Tame-200G, Isac-150k, Mole-300g  (Sacar el menor) =  Tame-200G
      function PesoMen: string;
      function SacarPesoGr(t:String): Integer;
      function SacarNumero(t : string ): string ;
      Function SiguientePalPeso(var i : word): string;
      Function SacarNombre(t: string ): string;
     ///
     //
      Function SumarDecimal: string ;       // suma los decimales
       // 1.1 , 0.2 , 4.3 = 0.600
      function SacarDecimal(var i : word): real;

     //
     //
     //

     ///////////////////////////////////////
 end;

implementation

uses
  System.SysUtils, System.Types, Winapi.Windows, System.Math;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 function cadena.SacarNumMas(var i : word): string;
 const
  digit = ['.'];
 var
 t,t2 : string ;
 pos,i2 : word ;
 bandera : boolean ;
begin
 t := '';
 i2 := 1 ;
 bandera := false;
  while (i<= longitud) and not (caracteres[i] in numeros )do
    inc(i);
  While (i <= Longitud) and (Caracteres[i] In digit) or (caracteres[i] in numeros)  do
    Begin
      t := t + Caracteres[i];
      Inc(i);
    End;
  if not (t = '') then
   begin
     while not ( t[i2] = '.') do
       Inc(i2);
     Inc(i2);
     while (t[i2] in numeros) do
     begin
       t2 := t2 +  t[i2];
       Inc(i2);
     end;
    if length(t2) >= 2 then
     begin
       bandera := true ;
     end;
   end;
  if bandera = true  then
    result := t ;
  if bandera = false then
   result := '';
end;

procedure cadena.ElimNumMasDeci;
var
 i : word ;
 t : string ;
begin
 i := 1 ;
 t := SacarNumMas(i);
 while not (t = '') do
  begin
      eliminarP(length(t), i- length(t));
      i := 1 ;
      t := SacarNumMas(i);
  end;
end;



//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/// practica 2

function cadena.LitToDate: string;
var
 i : word ;
 cont : byte ;
 t, date : string ;
 begin
 cont := 0 ;
 date := '';
  while i<= longitud do
   begin
    t  := siguientepalabra(i);
     if not (LitToDeci(t)='') then
       date:= date + LitToDeci(t)
         else if not (LitToUni(t) = '') then
           begin
            date:= date + LitToUni(t);
            cont := 1 ;
           end;
      if cont = 1 then
        begin
         date := date +':';
         cont := 0 ;
        end;

   end;
  result := date ;

end;

 function cadena.PalMasRep: string;
  var
   i : word ;
   t,t2 : string ;
  begin
   i := 1 ;
    t := siguientepalabra(i);
     while i<= longitud  do
      begin
        t2 := siguientepalabra(i);
          if FrecDeUnaPal(t2) >= FrecDeUnaPal(t)  then
            t := t2;
      end;
    result := t ;
  end;


  procedure Cadena.OrdCade;
   var
   cont,cont2, cant : byte ;
   t, t2 : string ;
   begin
    cont := 1;
    cant := cantidadpalabras;
     while cont <= cant do
       begin
         cont2:= cont+1;
         t := buscar(cont);
          while cont2 <= cant do
             begin
              t2:= buscar(cont2);
                if ord(t2[1])< ord(t[1]) then
                  begin
                     IntPal(cont, cont2);
                     t := t2
                  end
                   else
                    Inc(Cont2);
             end;
          Inc(cont);
       end;
   end;

   function cadena.MayBin: string;
   var
   i : word ;
   t,t2 : string;

    begin
     i := 1 ;
     t2 := siguientepalabra(i);
     while i <= longitud do
      begin
       t := siguientepalabra(i);
         if BinTodeci(t)>= BinTodeci(t2) then
            t2 := t ;

      end;
      result := t2 ;
    end;
function cadena.SumarDecimal: string;
var
   i : word;
   pal : string ;
   Dec, Sum : real;
begin
  i:=1;
  Sum := 0 ;
  while i <= longitud do
    begin
      dec:= SacarDecimal(i);
      Sum := Sum + dec;

    end;

   result := FloatToSTr(sum);

end;

function cadena.SumarHora: string;
    var
    i : word ;
    hora, sum : Ttime;
    begin
     sum := 0 ;
    i := 1 ;
     while i <= longitud do
      begin
        hora := SacarHora(i);
        sum := sum + hora ;
      end;

      result := TimeToStr(sum) ;
    end;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//// auxiliar 2
/////////////////////////////
// auxiliares para el ejericio hora


function cadena.LitToDeci(t: string): string;
const
lit: array [1..4] of string = ('veinte','treinta','cuarenta','cincuenta') ;
var
 cont : byte ;
 co : string ;
begin
  cont := 1 ;
  co :='';
   while cont<= 5  do
     begin
      if lit[cont] = t then
      begin
       co := IntToStr((cont+1)*10);
       Inc(cont);
      end;
       Inc(cont);
     end;
   result := co;
end;

function cadena.LitToUni(t: string): string;
const
lit: array [1..15] of string = ('uno','dos','tres','cuatro','cinco','seis','siete','ocho','nueve','diez','once','doce','trece','catorce','quince');
var
 cont : byte ;
 co : string ;
begin
  cont := 1 ;
  co :='';
   while cont<= 15  do
     begin
      if lit[cont] = t then
      begin
       co := IntToStr(cont);
       Inc(cont);
      end;
       Inc(cont);
     end;
   result := co;
end;

////////////////////////////
 function cadena.FrecDeUnaPal(t: string): byte;
 var
 i : word ;
 pal : string ;
 cont : byte;
begin
i := 1 ;
cont := 0 ;
 while (i<= longitud) do
  begin
   pal := siguientepalabra(i);
    if pal = t then
       inc (cont)
  end;
  result := cont ;
end;



 procedure cadena.IntPal(pal1 ,pal2 : byte);
 var
 i : word ;
 t,t2,t3 : string ;
begin
  t3:='asdaw';
  t := buscar(pal1);
  t2 := buscar (pal2);
  RemPalCadOne(t,t3);
  RemPalCadOne(t2,t);
  RemPalCadOne(t3,t2);
end;



procedure cadena.RemPalCadOne(t,t2: string);
var
 i,pos : word ;
begin
 i := 1;
    pos := BusPalPos(t,i);
    eliminarP(length(t),pos);
    AddPal(t2,pos);

end;


 procedure cadena.ElimPalOne(t: string);
var
cont : byte ;
i,pos :word ;
begin
  i := 1;
    pos := BusPalPos(t,i);
     EliminarP(length(t),pos);
end;

 function cadena.BinToDeci(t: string): word;
  var
  i,num : word ;
  cont: byte ;
begin
 cont := 0;
 num := 0 ;
   for i := length(t) downto 1 do
     begin
       num := num + (StrToInt(t[i])* trunc(power(2,cont)) );
       Inc(cont);
     end;
     result := num ;
end;


  function cadena.SacarHora(var i : word ): TTime;
  const
hora=[' ','+','-',' ','/','_','?','/','>','<',',','!','@','#','$','%','^',' ','(',')',']','[','{',';','}','\','|','"',';'];
 var
 ti : TDateTime;
 te,t : string ;
 begin
  te := '';
  while caracteres[i] in hora do
     Inc(i);
  while (i<= longitud) and not (caracteres[i] in hora) do
    begin
      te := te + caracteres[i];
     Inc(i);
    end;

  result := StrToDateTime(te)
 end;


  function cadena.PalMenvol: string;
  var
   i : word ;

   pal, pal2 : string ;
  begin
   i := 1 ;
    pal2 := siguientepalabra(i);
    while i < longitud  do
     begin
         pal := siguientepalabra(i);
       if ord(pal[1]) <= ord (pal2[1]) then
          pal2:= pal;
     end;
     result := pal2;
  end;


function cadena.PesoMen: string;
var
i : word;
pal, pal2 : string;
begin
  i:= 1 ;
    pal:=SiguientePalPeso(i);
    while i<=longitud do
      begin
       pal2:=SiguientePalPeso(i);
       if SacarPesoGr(pal2) < SacarPesoGr(pal) then
            pal := pal2 ;
      end;
 result:= SacarNombre(pal);
end;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



function cadena.Frecuencia(ch: char ; t: string): byte;
var
Cons: array [1..N] of char ;
cont : byte ;
i,i2 : word ;
c : char ;
begin
i := 1 ;
i2 := 1 ;
cont := 0 ;
 while i <= length(t) do
    begin
      c := t[i];
       if (upcase(ch) = upcase(c)) and (upcase(c) in consonantes)and (cont < 2 ) then
        begin
          Inc(cont);
          cons[i]:= c ;
        end;


      Inc(i);
    end;
  result := cont ;
end;



procedure cadena.EliminarCons;
var
i,i2 : word ;
t,t2 : string ;
ch,ch2 : char ;
cont : byte ;
begin
i := 1 ;

  while i<= longitud do
    begin
      t := siguientepalabra(i);
      i2 := 1 ;
      cont := 0 ;
      ch:=' ';
      ch2:=' ';
       while i2 <= length(t) do
         begin
           if not (ch in consonantes)  then
            begin
             ch := caracteres[i2];
                 if (upcase(ch) in consonantes) then
                 begin
                  if  (frecuencia(upcase(ch),t)) > 1 then
                  begin
                   cont := cont+frecuencia(upcase(ch),t);
                  end;
                 end;
                  Inc(i2);

            end;
             while (i2 <= length(t)) and (upcase(ch) in consonantes) do
             begin
                ch2 := caracteres[i2];
                 if not (upcase(ch2) = upcase(ch))  then
                  begin
                    if (upcase(ch2) in consonantes) then
                      if not (frecuencia(upcase(ch2),t)) > 1 then
                       begin
                         cont := cont+frecuencia(upcase(ch2),t);
                       end;
                  end;
               Inc(i2);
             end;

         end;
      if cont>=4 then
       begin
       eliminarP(length(t),i-Length(t));
        cont := 0 ;
        i :=1 ;
       end;


    end;

end;









//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure cadena.ajustes(i: word);
 var
 c : word ;
begin
 elimPalCom(i);
 while longitud < i  do
  begin
   aumEsp(i);
  end;
end;

procedure cadena.AumEsp(pos : word);
var
i : word ;
c,c2 : byte ;
t : string ;
begin
 i := 1 ;

  c := CantidadPalabras;
   c2 := 1 ;
        if c = 1  then
           begin
             siguientepalabra(i);
             InsChar(i,' ');
               Inc(c2);

            end ;
     while c2 < c do
       begin
           if longitud = pos then
              inc(c2)
              else
                begin
                   siguientepalabra(i);
                  InsChar(i,' ');
                  Inc(c2);
                end;

       end;
end;

procedure cadena.elimPalCom(c: word);
var
 i : word ;
begin
   while caracteres[c] in ['a'..'z','A'..'Z','ñ','Ñ'] do
   begin
    ElimPos(c);
    Dec(c);
   end;
    while caracteres[c]=' ' do
      begin
      ElimPos(c);
      Dec(c);
     end;
end;



procedure cadena.ElimPos(pos: word);
begin
  while pos <= longitud do
     begin
      DelChar(pos);
     end;
end;






//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

procedure cadena.addchar(a: char);
begin
 longitud := longitud +1;
 caracteres[longitud] :=a ;
end;

procedure cadena.AddStr(s: string);
var
  i,j: word;
begin
 j := 1;
 longitud := longitud+length(s);
 for i := (longitud- length(s))+1 to longitud do
 begin
   caracteres[i]:= s[j];
   Inc(j);
 end;

end;




     (*
procedure cadena.ElimVocRep;
var
 vocal :string;
i : word ;
posi : byte ;

begin
 i := 1;
 vocal:='aeiou';
 while i <= longitud do
   begin
    posi := pos (caracteres[i]);
    if (caracteres[i] in vocales)  then
     begin
      delChar(i);
     end;
   end;
end;
*)


function cadena.pos(c:char): word ;
var
i , pos : word ;
 begin
  pos := 0 ;
   while (i<= longitud) and (pos = 0)  do
       begin
          if caracteres[i] = c then  pos := i ;
           Inc(i);
       end;
 end;








procedure cadena.delChar(p: word);
var
i : word ;
 begin
 if (p>0) and (p<= longitud ) then
  begin
    for i := p to longitud-1 do
        caracteres[i]:= caracteres[i+1];
     dec(longitud);
  end;
end;

procedure cadena.DelnChar(a: char);
var
  i: word;
begin
  for i := 1 to longitud do
   begin
     if caracteres[i] = a then
       delchar(i)
   end;
end;

procedure cadena.DelVoc;
var
i: word;
begin
 for i := longitud downto 1 do
    if caracteres[i] in ['A','E','I','O','U','a','e','i','o','u'] then
          DelChar(i)
end;


function cadena.DifVoc: String;
var
 Voc : set of char;
 i,p : word;
 begin
 Voc:=['a', 'e'];
 i := 1;
   while i<= longitud do
    begin

     if (caracteres[i] in vocales) and not(caracteres[i] in voc) then
      //  Voc := Voc+ caracteres[i];
     inc(i);
    end;
end;

function cadena.GetChar: string;
var
i : word ;
S : string ;
begin
 s:= '';
  for i := 1 to longitud do
     s := s+caracteres[i];
    result := s ;
end;

function cadena.GetLong: word;
begin
  result:= longitud;
end;

procedure cadena.InsChar(p: word; a: char);
var
  i: Word;
begin
longitud := longitud+1;
   for i := longitud downto p do
      caracteres[i] := caracteres[i-1];
   caracteres[p]:= a ;
end;


procedure cadena.Invert;
var
a: char ;
i,l : word ;
begin
  i:= 1 ;
  l:= longitud;
 while i< l  do
  begin
    a:= caracteres[l];
    ModChar(l,caracteres[i]);
    ModChar(i,a);
    i:=i+1;
    l:=l-1;
  end;
end;



procedure cadena.modChar(p: word; a: char);
begin
     caracteres[p] := a;
end;

procedure cadena.ModnChar(a, b: char);
  var
  i : word ;
begin
   for i := Longitud downto 1 do
        if caracteres[i] = a then
             ModChar(i,b)
end;



function cadena.SeeChar(p:word): char;
begin
 result:= caracteres [p];
end;

procedure cadena.SetChar(s: string);
var
  i: word;
begin
  longitud := length(s);
     for i :=1 to longitud do
     begin
     caracteres[i] := s[i];
     end;
end;

 procedure cadena.ToLower;
 var
 i: word ;
begin
  for i := 1 to longitud do
  begin
    if caracteres[i] = 'Ñ' then
       caracteres[i] := 'ñ'
         else
           caracteres[i]:= char(ord (caracteres[i])+32);
  end;
end;

 procedure cadena.ToUpper;
 var
 i: word ;
begin
  for i := 1 to longitud do
  begin
   if caracteres[i] = 'ñ'then
    caracteres[i] := 'Ñ'
      else
        caracteres[i] := upcase(caracteres[i]);
  end;
end;

function cadena.SacarPesoGr(t : String): Integer;
begin



  if t[Length(t)] in ['k', 'K'] then  result := StrToInt(SacarNumero(t))*1000;
  if t[Length(t)] in ['g', 'G'] then  result := StrToInt(SacarNumero(t));
end;

function cadena.SacarVocal(var i: word): char;
var
p: char;
begin
   while (i<=Longitud) and not (caracteres[i] in vocales) do
      i:=i+1;
   p:=  caracteres[i];
   i := i+1;
   result:= p;
end;

///////////////////////////////////////////////////////////////////////////////////////////////
//////practica
function cadena.ContSubCad(t: string): byte;
var
pal : string;
i,c : word ;
begin
c := 0 ;
i := 1 ;
 while (i<=longitud) do
  begin
    pal := BusLaPa(i,t);
    if pal = t  then   inc(c);
  end;
 result := c ;
end;

function cadena.ContVocPrinUlt: string;

var
i,c,pos : word ;
pal : string;

begin
i := 1 ;
c := 0 ;
 while i <= longitud  do
    begin
      pal := siguientepalabra(i);
      pos := BusPalPos (pal,1);
        if (caracteres[pos] in vocales) and (caracteres[i-1] in vocales) then Inc(c)
    end;
 result := IntToStr(c);
end;

procedure cadena.ConvPrimCarc;
var
 k, p: word ;
 pal : string ;
 begin
  k := 1 ;
   while k <= longitud  do
    begin
      pal:= siguientepalabra(k);
       p := k-length(pal) ;
        if caracteres[p] = 'ñ' then caracteres[p] := 'Ñ'
           else if caracteres[p] in ['a'..'z'] then   caracteres[p]:=char(ord(caracteres[p])-32);
    end;
end;



///////////////////////////////////////////////////////////////////////////////////////////////
// auxiliares

function cadena.SacarNumReal(var i: word): extended;
const
sepa=[' ','+','-',' ',',','/','_','?','/','>','<','!','@','#','$','%','^',' ','(',')',']','[','{',';','}',':','\','|','"',';'];
var t : string ;
begin
 t := '';
  while (caracteres[i] in Sepa  ) and (i<= longitud ) do
          Inc(i);
   while not (caracteres[i] in Sepa)and (i<= longitud ) do
       begin
        t := t+ caracteres[i];
        inc (i);
       end;
  result := StrToFloat(t);


end;


function cadena.SumBin: string;
var
 i : word ;
begin
  while i<= longitud do
   begin



   end;

end;


function cadena.SacarNombre(t: string): string;
var
p:string;
i : word;
begin
i := 1;
while (i<=t.Length) and (t[i] in separadores) do
      i:=i+1;
p:='';
    while (i<=t.Length) and not (t[i] in separadores) do
       begin
       p:=p+t[i];
       i:=i+1;
       end;
         result:=p;
end;

function cadena.SacarNum(var i: word): cardinal;
var
num : string ;
begin
 num := '';
 while not (caracteres[i] in numeros) do  inc(i);
 while (caracteres[i] in numeros) do
  begin
   num := num + caracteres[i];
   inc(i);
  end;
 result := StrToInt(num) ;

end;




function cadena.SacarOpe(var i: word): char;
const
separa=[' ',' ','/','_','?','.','>','<',',','!','@','#','$','%','^',' ','(',')',']','[','{',';','}',':','\','|','"',';'];
signos=['+','-'] ;
var num : char ;
begin
  while caracteres[i] in Separa do  inc(i);
  if caracteres[i]='-' then num := caracteres[i]
      else  num := '+';
result  := num ;
end;
function cadena.SacarNumero(t:String): string;
var
p:string;
i : word;
begin
i := 1;
while (i<=t.Length) and not (t[i] in Numeros) do
      i:=i+1;
p:='';
    while (i<=t.Length) and (t[i] in Numeros) do
       begin
       p:=p+t[i];
       i:=i+1;
       end;
         result:=p;
end;

function cadena.SacarDecimal(var i: word): real;
const
Sepa=[' ','+',' ','/','_','?','/','.','>','<',',','!','@','#','$','%','^',' ','(',')',']','[','{',';','}',':','\','|','"',';'];

var
p:string;
begin
while (i<=Longitud) and (caracteres[i] <> '.') do
      i:=i+1;
p:='0.';
i:= i +1;
    while (i<=Longitud) and (caracteres[i] in Numeros) do
       begin
       p:=p+caracteres[i];
       i:=i+1;
       end;
         result:=StrToFloat(p);
end;


function cadena.SacarFecha(var i:word): TDateTime;
const
   separador=[' ','+',' ','_','?','.','>','<',',','!','@','#','$','%','^',' ','(',')',']','[','{',';','}',':','|','"',';'];
 var
  fecha : string ;
begin
   while caracteres[i] in separador do  Inc(i);
   while (i<= longitud) and not (caracteres[i] in separador ) do
     begin
        fecha := fecha+ caracteres[i];
        inc(i);
     end;
  result := StrToDate(fecha) ;

end;



procedure cadena.Inv(a, b: word);
var
c : char ;
begin
  while a < b  do
    begin
      c:=caracteres[a];
      caracteres[a]:=  caracteres[b];
      caracteres[b]:= c;
      inc(a);
      Dec(b);
    end;
end;

function cadena.BusLaPa(var i: word; t: string): string;
var
pal : string;
begin
 pal := '';
   while pal = '' do
   begin
    pal := copy(length(t),i);
    inc(i);
   end;
 result := pal ;
end;

function cadena.copy(c, p: word): string;
var
i : word ;
t : string ;
begin
t :='';
 for i := 1 to c do
 begin
     t := t + caracteres[p];
     inc (p);
 end;
  result := t;
end;

///////////////////////////////////////////////////////////////////////////////////////////////
/// practica

 function cadena.SumReal(R: Smallint): string;
 var
 i:word ;
 Real : extended;
 T: string ;

 begin
 real := 0 ;
 i := 1 ;

  while (i<= longitud) do
     begin
       real := real+ (SacarNumReal(i));
     end;
   Real:=SimpleRoundTo (real,r);
  result := floatToStr(real);
end;




function cadena.Polinomio(x : real ): string;
var
b : byte ;
ope : char ;
i : word ;
poli : real ;
begin
b := ContSubCad('x');
i := 1 ;
poli := 0 ;

 while (b>0) and (i<= longitud )do
  begin
    ope := SacarOpe(i);
     if ope = '-' then
       poli :=  poli - ResolPoli(i,x)
         else poli := poli + ResolPoli(i,x);
    b := b-1;
  end;
  if i<= longitud then
   begin
    ope := SacarOpe(i);
     if ope = '-' then
       poli :=  poli - SacarNum(i)
         else poli := poli + SacarNum(i);
   end;

 result := FloatToStr(poli);

end;


function cadena.ResolPoli(var i : word; x: real): real;
var
num,num2 : shortint ;
 poli : real ;
 t :string ;

begin

   num := SacarNum(i);
   num2:= VerSiHayNum(i);
   poli := num * Power(x,num2);

 result := poli ;
end;


function cadena.VerSiHayNum(var i: word): byte;
const
signos =['+','-'];
var
Num : byte ;
begin
Num := 1 ;
 while not(caracteres[i] in numeros) and not (caracteres[i] in signos)and (i<= longitud) do
      Inc (i);
   if Caracteres[i] in numeros then
      begin
         Num := StrToInt(caracteres[i]);
         inc(i);
      end;
 result := num ;
end;


///////////////////////////////////////////////////////////////////////////////////////////////
// tarea


function cadena.Aritmetica: string;
var
r,n : shortint ;
signo: char;
i : word ;
begin
 i := 1 ;
 r := 0;
  while i<= longitud do
  begin
   signo := SacarOpe(i);
   n := SacarNum(i);
   if signo = '-' then
        r := r - n
      else  r := r + n ;
  end;
  result :=IntToStr(r) ;
end;


function cadena.DateMenor: TDateTime;
var
i : word ;
 f,f2 : TDateTime;
begin
 i := 1 ;
 f2 := sacarfecha(i);
 while i <= longitud  do
  begin
    f := SacarFecha(i);
     if f<f2 then
       f2 := f ;
  end;
  result := f2 ;
end;


function cadena.BusPalPos(t: string; i: word): word;
var
pal : string;
begin

 while i<= longitud do
 begin
  pal :=siguientepalabra(i);
  if pal = t then
    begin
      result:= i-length(t);
      i := longitud+1 ;
    end else result:=0;
 end;
end;

procedure cadena.eliminarP(t,p:word );
begin
if p > 0  then
  begin
  for p := p to longitud do

   caracteres[p]:= caracteres[p+t];
  longitud := longitud-t;
  end;
end;



procedure cadena.ElimPal(t: string);
var
i,pos :word ;
begin
  i := 1;
   repeat
    pos := BusPalPos(t,i);
     EliminarP(length(t),pos);
   until pos = 0;
end;


procedure cadena.AddPal(t: string;pos: word);
var
c : word ;
begin
 c := 1 ;
 while c<= length(t)  do
  begin
   InsChar(pos,t[c]);
   Inc(pos);
   Inc(c);
  end;
end;

procedure cadena.RemPalCad(t,t2: string);
var
 i,pos : word ;
begin
 i := 1;
 while BusPalPos(t,i)>0 do
  begin
    pos := BusPalPos(t,i);
    eliminarP(length(t),pos);
    AddPal(t2,pos);
  end;

end;


procedure cadena.Invcad;
begin
 Invert;
 InvPal;
end;

procedure cadena.InvPal;
var
p,l,i : word ;
pal : string ;
begin
 i := 1 ;
  while i <= longitud  do
    begin
     pal := siguientepalabra(i);
     l:=length(pal);
     p := i-l;
     Inv(p,i-1);
     inc(i);
    end;
end;



function cadena.BusPal(t: string): word;
var
p : string  ;
i,pos : word ;

begin
 i :=1 ;pos := 0 ;
  while (pos = 0) and (i<= longitud)  do
   begin
        p := siguientepalabra(i);
        if t = p  then   pos := i-length(t);
   end;
 result := pos ;

end;

function cadena.BuscPalNum(t: string): byte;
var
i : word ;
cont: byte ;
pal : string ;
begin
 cont := 0 ;
 i := 1 ;
  while (i<= longitud) do
   begin
     pal := siguientepalabra(i);
      if pal = t then
        i := longitud+1
        else
         Inc (cont);
   end;
  result := cont+1 ;
end;


function cadena.Buscar(p: word): string;
var
k: word;
palabra: string;
begin
 if (p>0) and (p<=CantidadPalabras)  then
  begin
  k:=1;
   while p>0 do
     begin
         palabra:= Siguientepalabra(k);
         p:=p-1;
     end;
  result:=palabra;
  end
 else raise exception.Create('Error Message');
end;

function cadena.SiguientePalabra(var i: word): string;
var
p:string;
begin
while (i<=Longitud) and (caracteres[i] in separadores) do
      i:=i+1;
p:='';
    while (i<=Longitud) and not (caracteres[i] in separadores) do
       begin
       p:=p+caracteres[i];
       i:=i+1;
       end;
         result:=p;
end;



function cadena.SiguientePalPeso(var i : word): string;
const
Sepa=[' ','+',' ','/','_','?','/','.','>','<',',','!','@','#','$','%','^',' ','(',')',']','[','{',';','}',':','\','|','"',';'];

var
p:string;
begin
while (i<=Longitud) and (caracteres[i] in Sepa) do
      i:=i+1;
p:='';
    while (i<=Longitud) and not (caracteres[i] in Sepa) do
       begin
       p:=p+caracteres[i];
       i:=i+1;
       end;
         result:=p;
end;

function cadena.CantidadPalabras: word;
var
c: word;
i: byte;
contar: boolean;
begin
contar:= true;
c:=0;
for I := 1 to longitud  do
begin
    if not(caracteres[i] in separadores) and (contar) then begin
    c:= c+1;
    contar := false;
    end else if caracteres[i] in separadores then contar:=true;
  end;
result:=c;
end;


function cadena.PalMay: string;
var
can : byte ;
 i , LongAct , AntLong : integer ;
 pal, palLarga : string ;
begin
  can := cantidadpalabras  ;
  palLarga := Buscar(1);
  AntLong := length(palLarga);
   for i := 1 to Can do
    begin
       pal:= Buscar (i);
       longAct:= Length(pal);
       if LongAct > AntLong then
         begin
         AntLong:=LongAct;
          PalLarga:= pal;
        end;
    end;
    result := palLarga;
end;



///////////////////////////////////////////////////////////////////////////////////////////////////////








end.
