program pelotita_contadora;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, crt;
   var p, x, y, cx, cy, c, n: byte;
   k :ansichar;
begin
x := 1; y := 1; k:='a';
  writeln('¿Cuantas vueltas quiere que de la pelotita?');
  read(n);
  gotoxy(1,1);
  write('                                           ');
  gotoxy(1,2); write('       ');



 repeat
  gotoxy (15,20); write ('contador de y');
  gotoxy (15,15); write ('contador de x');
   while x<10 do begin
    gotoxy (x,y); write('0');
    delay (100);
    gotoxy (x,y); write(' ');




    x := x+1;
    cx := x;

    gotoxy (15,15); write ('contador de x:');
    gotoxy (15,16); write (cx);
       if x<=9 then begin
        gotoxy (16,16);

        write(' ');

    end;
   end;

   while y<10 do begin
    gotoxy (x,y); write('0');
    delay (100);
    gotoxy (x,y); write(' ');


      y := y+1;
      cy := y;


    gotoxy (15,20); write ('contador de y:');

    gotoxy (15,21); write (cy);
       if y<=9 then begin
        gotoxy (31,16);

        write(' ');

    end;

   end;

   while x>1 do begin
    gotoxy (x,y); write('0');
    delay (100);
    gotoxy (x,y); write(' ');
    x := x-1;
    cx := x;


    gotoxy (15,15); write ('contador de x:');
    gotoxy (15,16); write (cx);

    if x<=9 then begin
        gotoxy (16,16);

        write(' ');

    end;
   end;

   while y>1 do begin
    gotoxy (x,y); write('0');
    delay (100);
    gotoxy (x,y); write(' ');
    y := y-1;
    cy := y;


    gotoxy (15,20); write ('contador de y:');
    gotoxy (15,21); write (cy);
          if y<=9 then begin
        gotoxy (16,21);

        write(' ');

    end;

   end;
   if x=1 then begin

    c:= c+1;
    gotoxy (30,11); write ('contador de vueltas:');
    gotoxy (30,12); write (c);
   end;




 until c=n ;
 readln;

(* while x<30 do
   begin
    gotoxy(5,5);
    delay(100);
    write(x);
    x:=x+1;


   end;
  while x>=1 do
   begin

    gotoxy(5,5);
    delay(100);
    write(x);
    x:=x-1;
    if x<=9 then begin
        gotoxy (6,5);
        delay(20);
        write(' ');

    end;


   end;  *)


  readln;
end.
