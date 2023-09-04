program demo_tarea32;

uses
  System.SysUtils,
 Cadenas;

(*procedure ElimPrimPal(var x:string);
  var i, n : byte;


  begin
   x:= trim (x);
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



  end;   *)
 var cad, pal : string;
  begin
   writeln('escriba un texto');
   readln(cad);
   ElimPrimPal(cad);
   writeln(cad);
   ElimPrimPal(cad);
   writeln(cad);
   ElimPrimPal(cad);
   writeln(cad);
   ElimPrimPal(cad);
   writeln(cad);


   write('FIN');
    readln;
  end.
