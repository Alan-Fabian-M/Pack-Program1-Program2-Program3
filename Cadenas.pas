unit Cadenas;

interface
 function EspIzq  (x:string): string ;
// function EspDer  (x:string): string ;
 procedure ElimPrimPal(var x:string);

 function EsVocal (x:char):boolean;
 function ContEsp (x:string):byte;
 function ContLet (x:string):cardinal;
 function ContPal (x:string):byte;
 function EsLetra (x:char): boolean;

implementation
 var
 vocales: set of Char = ['a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U'];
 ABC : set of Char = ['A'..'Z'];
 abecedario : set of char = ['a'..'z'];

 // es letra
   function EsLetra (x:char): boolean;
   var v: boolean;
   begin
    v:= false;
     if (x in ABC) or (x in abecedario)then
       begin
        v:= true;
       end;

    EsLetra:= v;
   end;



 // es vocal
 function EsVocal (x:char):boolean;
 var
 r: boolean;
  begin
    r:=false;
    if x in vocales then


     begin

      r:= true;

     end;



    EsVocal:= r;

  end;

  // cantidades de espacios
  function ContEsp (x:string):byte ;
  var
   i, c, n:cardinal;
  begin
    i:=1;
    c:=0;
    n:= length(x);
     while i<=n do
       begin
        if x[i]=' ' then
         begin
          c:= c+1;

         end;
        i:= i+1;
       end;

   ContEsp:= c;

  end;

  //  cantidad de letras
  function ContLet (x:string):cardinal;
  var
    i, c, n:cardinal;
  begin
   i:=1;
   c:=0;
   n:=length(x);
   while i<=n do
    begin
      if (x[i] in abc) or (x[i] in abecedario) then
       begin
        c:= c+1;
       end;

       i:=i+1;
    end;
    ContLet:= c;

  end;




 // eliminar espacios de la izquierda
 function EspIzq  (x:string): string ;
  var i, n, c: cardinal;

   begin
    i:= 1;
    n:=length (x);
    c:=0;
     while i<=n do
      begin
        if x[i]=' ' then
         begin
          c:= c+1;
         end
         else begin
          i:= n;
         end;
         i := i+1;
      end;
     delete(x,1,c) ;
     EspIzq := x;
   end;

  // contador de palabras

  function ContPal (x:string):byte;
    var   c, i, n, s: byte;

    begin
     i:=1;
     c:=0;
     n:=length (x);
     s:=0;

     while i<=n do
      begin
       if x[i]=' ' then
        begin
          s:=0;
        end;
       if (x[i] in abc) and (s=0) or (x[i] in abecedario) and (s=0) then
        begin
          c:= c+1;
          s:= 1;
        end;
          i := i+1;
      end;


      ContPal:= c;

    end;

 procedure ElimPrimPal(var x:string);
  var i, n : byte;


  begin
   x:= EspIzq (x);
   n := length (x);
   i:=1;
   while i<=n do
    begin
       if EsLetra(x[i])  then
         begin
           delete (x,1,1);
           n:= n-1;
         end
        else begin
         i:= n+1;

        end;


    end;



  end;





end.
