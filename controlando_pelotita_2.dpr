program controlando_pelotita_2;
uses
  System.SysUtils,
  Crt32 in '..\..\..\..\Desktop\Nueva carpeta (3)\Crt32.pas';
var lx , ly ,slx, sly, sxi, sxd ,sya , syb: byte; x, y, v : word; t:ansichar;
begin
 sxd:=1;
 sxi:=1;
 sya:=1;
 syb:=1;
 slx:=1;
 sly:=1;
 lx:=0;
 ly:=0;
 x:= 1;
 y:= 1;
 v:=100;
 repeat


   gotoxy(x,y); write('0');
   delay(v);
   gotoxy(x,y); write(' ');

   // borde de la pantalla
    if x>=30 then
     begin
      repeat
       gotoxy(x,y); write('0');
       delay(v);
       gotoxy(x,y); write(' ');

       sxd:=0;
       x:=x-1;
      until (x<=1) or keypressed ;
     end;
       if x<=1 then
     begin
      repeat
       gotoxy(x,y); write('0');
       delay(v);
       gotoxy(x,y); write(' ');

       sxi:=0;
       x:=x+1;
      until (x>=15) or keypressed ;
     end;
         if y<=1 then
     begin
      repeat
       gotoxy(x,y); write('0');
       delay(v);
       gotoxy(x,y); write(' ');

       sya:=0;
       y:=y+1;
      until (y>=15) or keypressed ;
     end;
          if y>=15 then
     begin
      repeat
       gotoxy(x,y); write('0');
       delay(v);
       gotoxy(x,y); write(' ');

       syb:=0;
       y:=y-1;
      until (y<=1) or keypressed ;
     end;

     // borde Lx
    if lx=1 then
    begin

      x:=x+1;
    end;
  if lx=2 then
    begin
      x:=x-1;
    end;
  if lx=0 then
   begin
     x:=x+0;
   end;

   // borde ly
     if ly=1 then
    begin
      y:=y+1;
    end;
  if ly=2 then
    begin
      y:=y-1;
      sxd:=0;
    end;
  if ly=0 then
   begin
    sxd:=1;
     y:=y+0;
   end;
   // IZQUIERDA
 if keypressed then
   t:= readkey;
   begin
    if t='a' then

    begin
      x:=x-1;
      lx:=0;
    end
    end;
    // DERECHA

  if keypressed then
   t:= readkey;

   begin
    if t='d' then

    begin
      x:=x+sxd;
      lx:= 0;
    end

    end;

    // ARRIBA
     if keypressed then
   t:= readkey;
   begin
    if t='w' then

    begin
      sya:=1 ;
      y:=y-sya;
      ly:=0;
    end
    end;
    // ABAJO
       if keypressed then
   t:= readkey;
   begin
    if t='s' then

    begin
      syb:=1;
      y:=y+syb;
      ly:=0;

    end
    end;
   // DIAGONAL ARRIBA IZQUIERDA
    if keypressed then
    t:= readkey;
     begin
       if t='q'  then
        begin
          x:=x-1;
          y:=y-1;
        end;
     end;
   // DIAGONAL ARRIBA DERECHA
     if keypressed then
    t:= readkey;
     begin
       if t='e'  then
        begin
          x:=x+1;
          y:=y-1;
        end;
     end;
    // DIAGONAL ABAJO IZQUIERDA
     if keypressed then
    t:= readkey;
     begin
       if t='z'  then
        begin
          x:=x-1;
          y:=y+1;
        end;
     end;
    // DIAGONAL ABAJO DERECHA
    if keypressed then
    t:= readkey;
     begin
       if t='y'  then
        begin
          x:=x+1;
          y:=y+1;
        end;
     end;


 until t='f' ;
 writeln('FIN');
 readln;

end.
