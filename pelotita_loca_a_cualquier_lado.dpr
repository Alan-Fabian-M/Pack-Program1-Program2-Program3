program pelotita_loca_a_cualquier_lado;
uses
  System.SysUtils,
  Crt32 in '..\..\..\..\Desktop\Nueva carpeta (3)\Crt32.pas';

var x,y,d: byte; lx, ly, v : word; t, r: ansichar;


  begin
  x:=3; y:= 3; lx:=1; ly:=1; v := 100;
    repeat
      gotoxy(x,y); write('o');
      delay (v);
      gotoxy(x,y); write(' ');
      // EJE X
      if lx=1 then
       begin
         x := x+1;
       end
      else
       begin
        x:= x-1;
       end;
      if x>=10 then
       begin
        lx:=2;
       end;
      if x<2 then
       begin
         lx := 1;
       end;
       // EJE Y
          if ly=1 then
       begin
         y := y+1;
       end
      else
       begin
        y:= y-1;
       end;
      if y>=15 then
       begin
        ly:=2;
       end;
      if y<2 then
       begin
         ly := 1;
       end;

     if keypressed then
      begin
        t:= readkey;
        if t='r' then
         begin
          v:= v-10;
         end;
        if t= 'l' then
         begin
          v := v+10;
         end;
      end;
      if v<=10 then
       begin
         v:=10;
       end;
      if v>=100 then
       begin
         v:=100;
       end;
     if keypressed then
      begin
        t := readkey;
      end;


    until t = 'f';

   writeln ('FIN');
   readln;
end.

         //   if d=1 then
  //    begin
  //       x:=x+1;
  //    end
  //   else
  //    begin
  //       x:=x-1;
  //    end;
  //   if x>40 then
  //    begin
  //      d := 2
  //    end;
  //   if x<= 2 then
  //    begin
  //      d:= 1
 //   end;



