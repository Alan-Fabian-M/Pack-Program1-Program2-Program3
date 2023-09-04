program practicar;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  CadenasCompletas;

  var
  t: string;
  c: byte;
  procedure ElimCar (var x:string);
  var i, n: byte;
  begin
   i:= 1;
   n:= length (x);
    while i<=n do
     begin
       if EsLetra(x[i]) or (x[i]=' ' ) or (EsVocal(x[i]))then
        begin
         write (x[i]);

        end
        else begin

         delete(x,i,1);
         n:= n-1;

        end;

        i:= 1+i;



     end;


  end;

begin

  write('escribir un texto:');
  readln(t);
  ElimCar(t);



  readln;





end.
