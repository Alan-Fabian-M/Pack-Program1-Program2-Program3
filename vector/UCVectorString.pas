unit UCVectorString;

interface
const
  n = 1000;
 type
  vectorString = class
   private
      Dimension : word ;
      Elementos : array [1..N] of String ;
   public
      Function Dim : word ;
      procedure Redimensionar (d: word);  // redimensiona
      procedure  AddElement (e: String);   // a�ade un elemento
      procedure Modelemnt (p : word ; e : String);  // modifica un elemento
      procedure InsElement (p : word ; e : String); // inserta un elemento en cualquier posicion
      procedure DelElement (p : word );           // elimina un elemento
      function  getElement  (p : word ): String ;   // obtiene cualquier elemento


      Function Mayor  : String ;                    // muestra el mayor elemento
      Function BuscElementTwoInd (e : String ): word; // busqueda de elementos con dos indices
      function BuscarElementOrde (e : String) : word ; // busqueda de elementos ordenados sin que se pase de su numero que busque
      Function BuscarElement (e : String ): word;   // busca la posicion del elemento Cuando no esta ordenado
      procedure DelOneElement(e : String );         // elimina un elemento
      procedure DelAllElement(e : String );         // elimina todos los elementos dicho por el usuario
      function frecuencia(e : String ): byte ;      // la frecuencia de un elemento
      function elementMasRep: String ;              // elemento mas repetido
      procedure DelElementsRep;                   // eliminar los elementos repetidos
      procedure OrdenarMenMay ;                   // orena de menor a mayor
      procedure Intercambiar(i,j : word );        // intercambia elementos

                            // minimo comun multiplo

      //examen

      function RomToNum(t : String): integer ;
      function SumRom:String;
      function NumToRom(a : integer):String;



  end;

  implementation

uses
  Vcl.Dialogs, System.SysUtils;

{ vector }

procedure vectorString.AddElement(e: String);
begin
  Inc(dimension);
  elementos[dimension] := e ;

end;

function vectorString.BuscarElement(e: String): word;
var
i : word ;
begin
 i := 1 ;
  while (I <= dimension) and (elementos[i] <> e ) do
     Inc(i);
  if (i<= dimension) then result := i
      else result := 0 ;
end;

function vectorString.BuscarElementOrde(e: String): word;
var
i : word ;
begin
   i := 1 ;
  while (I <= dimension) and (elementos[i] <> e ) and (elementos[i] < e) do
     Inc(i);
   if (i <= dimension) and (elementos[i] = e) then
      result := i
         else result := 0 ;
end;

function vectorString.BuscElementTwoInd(e: String): word;
var
 i, f, pos : word ;
 m : byte;

begin
 i := 1 ;
 f := dimension;
 pos := 0;
  while (i <= f) and (pos = 0 ) do
   begin
    m:= (i + f) div 2 ;
    if (elementos[m]) = e then
       pos := m
         else if (elementos[i] < e ) then
                i := m + 1
                 else  f := m -1 ;
   end;
end;

procedure vectorString.DelAllElement(e: String);
begin
  while frecuencia(e) > 0  do
    begin
     DelOneElement(e);
    end;
end;

procedure vectorString.DelElement(p: word);
var
 i : word ;
begin
  for i := p to dimension do
    elementos[i]:= elementos[i+1];
  Dec(dimension);


end;

procedure vectorString.DelElementsRep;
var
f : byte ;
e : String ;
i : word ;
begin
i := 1;
 while i <= dimension do
  begin
    e := elementos[i];
    f :=  frecuencia(e);
    if f > 1 then
        while f > 1 do
          begin
           DelOneelement (e);
           Dec(f);
          end
           else
             Inc(i);
  end;

end;

procedure vectorString.DelOneElement(e: String);
var
 i : word ;
begin
    i :=  BuscarElement(e);
       if i > 0 then
         DelElement (i);
end;

function vectorString.Dim: word;
begin
  Result := Dimension;
end;

function vectorString.elementMasRep: String;
var
 i : word ;
 f,f2 : byte ;
 e,e2 : String ;
begin
 i := 1 ;
  e := elementos[i];
  f := frecuencia(e);
   while i <= dimension do
     begin
      inc(i);
      e2:= elementos[i];
      f2 := frecuencia(e2);
        if f2 > f then
         begin
          e := e2 ;
          f := f2 ;
         end;
     end;
     result := e ;
end;

function vectorString.frecuencia(e: String): byte;
var
i,c : word ;

begin
 c := 0 ;
  for i := 1 to dimension do
   if elementos[i]  = e then
    Inc(c) ;
 result := c ;

end;

function vectorString.getElement(p: word): String;
begin
  result := elementos[p];
end;

procedure vectorString.InsElement(p: word; e: String);
var
  i: Word;
begin
 for i := dimension downto p do
  begin
   elementos[i+1]:= elementos[i];
  end;
 inc (dimension);


  elementos[p]:= e;
end;

procedure vectorString.Intercambiar(i,j : word);
var
e : String ;
begin
 e := elementos[i];
  elementos[i]:= elementos[j];
  elementos[j]:= e ;
end;

function vectorString.Mayor: String;
var
 i : word;
 e, e2 : String ;
begin
 i := 1;
 e := elementos[i];
 while i <= dimension do
    begin
      Inc(i);
      e2 := elementos[i];
       if e2 > e then
        e := e2 ;
    end;


 result := e ;  ;
end;





procedure vectorString.Modelemnt(p: word; e: String);
begin
   elementos[p]:= e ;
end;





procedure vectorString.OrdenarMenMay;
var
i,j : word ;

begin
  for i := 1 to dimension-1 do
    for j := i+1 to dimension do
      if elementos[i] < elementos[j] then
         intercambiar(i,j);



end;

procedure vectorString.Redimensionar(d: word);
begin
 dimension := d ;
end;





function vectorString.RomToNum(t: String): integer;
var
  i: integer;
  lastChar: Char;
begin
  result := 0;
  lastChar := ' ';
  for i := Length(t) downto 1 do
  begin
    case t[i] of
      'I': if (lastChar = 'X') or (lastChar = 'V') then
             Dec(result) else Inc(result);
      'V': Inc(result, 5);
      'X': if (lastChar = 'C') or (lastChar = 'L') then
             Dec(result, 10) else Inc(result, 10);
      'L': Inc(result, 50);
      'C': if (lastChar = 'M') or (lastChar = 'D') then
             Dec(result, 100) else Inc(result, 100);
      'D': Inc(result, 500);
      'M': Inc(result, 1000);
    end;
    lastChar := t[i];
  end;
end;

function vectorString.SumRom: String;
var
 i : word ;
 r : integer ;
 S : String  ;
begin
S := '';
r := 0 ;
   for i := 1 to dimension do
     r := r + RomToNum(elementos[i]);
     S := IntToStr(r);
   S := S + ',' +  NumToRom(r) ;
   result := S  ;

end;

function vectorString.NumToRom(a: Integer): String;
const

romanos  : array [1..4,1..9] of string =
(
('I','II','III','IV','V','VI','VII','VIII','IX'),
('X','XX','XXX','XL','L','LX','LXX','LXXX','XC'),
('C','CC','CCC','CD','D','DC','DCC','DCCC','CM'),
('M','MM','MMM','IV-','V-','VI-','VII-','VIII-','IX-')

);
var

d ,c : byte;
roman: string ;
begin

  roman:='';
  c := 1 ;
   while a > 0   do
   begin
     d := a mod 10 ; ;
       if d >0 then
       begin
         roman := romanos[c,d] + roman ;
       end;
       c:= c+1;
      a := a div 10 ;
   end;

   result := roman ;
end;

end.
