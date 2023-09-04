program pelotita_loca_controlando_direccion;
uses
  System.SysUtils,
  Crt32 in '..\..\..\..\Desktop\Nueva carpeta (3)\Crt32.pas';
var lx , ly ,slx, sly, sxd, sxi,sya,syb : byte; x, y, v : word; t:ansichar;
begin
 syb:=0;
 sya:=0;
 sxi:=0;
 sxd:=0;
 sya:=0;
 slx:=0;
 sly:=0;
 lx:=0;
 ly:=0;
 x:= 1;
 y:= 1;
 v:=100;
 repeat


   gotoxy(x,y); write('o');
   delay(v);
   gotoxy(x,y); write(' ');
   // IZQUIERDA





    if t='a' then

   begin
      sxi:=1;
      x:=x-sxi;
      lx:=0;
   end;

    // DERECHA



    if t='d' then

    begin
      sxd:=1;
      x:=x+sxd;
      lx:=1;
    end;


    // ARRIBA
     if keypressed then
   t:= readkey;
   begin
    if t='w' then

    begin
      sya:=1;
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

     // borde de la pantalla

    if x>=30 then
     begin
      repeat
       gotoxy(x,y); write('o');
       delay(v);
       gotoxy(x,y); write(' ');

       sxd:=0;
       x:=x-1;
      until (x<=2) or keypressed ;
     end;
    if x<=2 then
     begin
      repeat
       gotoxy(x,y); write('o');
       delay(v);
       gotoxy(x,y); write(' ');

       sxi:=0;
       x:=x+1;
      until (x>=15) or keypressed ;
     end;
    if y<=2 then
     begin
      repeat
       gotoxy(x,y); write('o');
       delay(v);
       gotoxy(x,y); write(' ');

       sya:=0;
       y:=y+1;
      until (y>=15) or keypressed ;
     end;
          if y>=15 then
     begin
      repeat
       gotoxy(x,y); write('o');
       delay(v);
       gotoxy(x,y); write(' ');

       syb:=0;
       y:=y-1;
      until (y<=2) or keypressed ;
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
    end;
  if ly=0 then
   begin
     y:=y+0;
   end;
   // velocidad
      if t='h''l' then

    begin
      if t='h' then
       begin
         v:=v-10;
       end;
      if t='l' then
       begin
         v:=v+10
       end;
      if v<=0 then
       begin
         v:=0;
       end;
      if v>=100 then
       begin
         v:=100;
       end;
    end;
 until t='f' ;
 writeln('FIN');
 readln;

end.
