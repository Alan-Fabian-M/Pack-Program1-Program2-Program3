unit CVector;



interface

 const
  n = 1000;
 type
  vector = class
   private
      Dimension : word ;
      Elementos : array [1..N] of real ;
   public
      Function Dim : word ;
      procedure Redimensionar (d: word);  // redimensiona
      procedure  AddElement (e: Real);   // a�ade un elemento
      procedure Modelemnt (p : word ; e : real);  // modifica un elemento
      procedure InsElement (p : word ; e : real); // inserta un elemento en cualquier posicion
      procedure DelElement (p : word );           // elimina un elemento
      function  getElement  (p : word ): real ;   // obtiene cualquier elemento
      Function Sumar: real ;                      // suma los elementos
      function multiplicacion : real ;            //multiplica todos los numeros
      Function Mayor  : real ;                    // muestra el mayor elemento
      Function BuscElementTwoInd (e : real ): word; // busqueda de elementos con dos indices
      function BuscarElementOrde (e : real) : word ; // busqueda de elementos ordenados sin que se pase de su numero que busque
      Function BuscarElement (e : real ): word;   // busca la posicion del elemento Cuando no esta ordenado
      procedure DelOneElement(e : real );         // elimina un elemento
      procedure DelAllElement(e : real );         // elimina todos los elementos dicho por el usuario
      function frecuencia(e : real ): byte ;      // la frecuencia de un elemento
      function elementMasRep: real ;              // elemento mas repetido
      procedure DelElementsRep;                   // eliminar los elementos repetidos
      procedure OrdenarMenMay ;                   // orena de menor a mayor
      procedure Intercambiar(i,j : word );        // intercambia elementos

      Function MCD: real ;                        // maximo comun divisor
      function MCM: real ;                        // minimo comun multiplo

      //examen


  end;

  implementation

uses
  Vcl.Dialogs;

{ vector }

procedure vector.AddElement(e: Real);
begin
  Inc(dimension);
  elementos[dimension] := e ;

end;

function vector.BuscarElement(e: real): word;
var
i : word ;
begin
 i := 1 ;
  while (I <= dimension) and (elementos[i] <> e ) do
     Inc(i);
  if (i<= dimension) then result := i
      else result := 0 ;
end;

function vector.BuscarElementOrde(e: real): word;
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

function vector.BuscElementTwoInd(e: real): word;
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

procedure vector.DelAllElement(e: real);
begin
  while frecuencia(e) > 0  do
    begin
     DelOneElement(e);
    end;
end;

procedure vector.DelElement(p: word);
var
 i : word ;
begin
  for i := p to dimension do
    elementos[i]:= elementos[i+1];
  Dec(dimension);


end;

procedure vector.DelElementsRep;
var
f : byte ;
e : real ;
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

procedure vector.DelOneElement(e: real);
var
 i : word ;
begin
    i :=  BuscarElement(e);
       if i > 0 then
         DelElement (i);
end;

function vector.Dim: word;
begin
  Result := Dimension;
end;

function vector.elementMasRep: real;
var
 i : word ;
 f,f2 : byte ;
 e,e2 : real ;
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

function vector.frecuencia(e: real): byte;
var
i,c : word ;

begin
 c := 0 ;
  for i := 1 to dimension do
   if elementos[i]  = e then
    Inc(c) ;
 result := c ;

end;

function vector.getElement(p: word): real;
begin
  result := elementos[p];
end;

procedure vector.InsElement(p: word; e: real);
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

procedure vector.Intercambiar(i,j : word);
var
e : real ;
begin
 e := elementos[i];
  elementos[i]:= elementos[j];
  elementos[j]:= e ;
end;

function vector.Mayor: real;
var
 i : word;
 e, e2 : real ;
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

function vector.MCD: real;
var
 e, mcd, re : integer ;
 i : word ;


begin
  i := 1 ;
  mcd := round(elementos[i]);

   while i < dimension do
    begin
      inc(i);
       e := Round(elementos[i]);
        repeat
             re := mcd mod e ;
             if re <> 0 then
              begin
                mcd := e ;
                e :=  re;
              end
               else mcd := e;
         until re = 0 ;


    end;

  result := mcd ;

end;

function vector.MCM: real;
begin
  result:=  multiplicacion/ mcd;
end;

procedure vector.Modelemnt(p: word; e: real);
begin
   elementos[p]:= e ;
end;

function vector.multiplicacion: real;
var
e : real ;
i : word ;
begin
e := 1;
  for i := 1 to dimension do
    e := e * elementos[i];
  result := e ;
end;

procedure vector.OrdenarMenMay;
var
i,j : word ;

begin
  for i := 1 to dimension-1 do
    for j := i+1 to dimension do
      if elementos[i] < elementos[j] then
         intercambiar(i,j);



end;

procedure vector.Redimensionar(d: word);
begin
 dimension := d ;
end;

function vector.Sumar: real;
var
 i : word ;
 r : real ;
begin
r := 0 ;
   for i := 1 to dimension do
     r := r + elementos[i];
   result := r ;

end;

end.
