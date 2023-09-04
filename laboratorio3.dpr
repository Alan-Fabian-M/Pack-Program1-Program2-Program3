program laboratorio3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  crt in 'crt.pas';
var
 x,y: byte;
   z: string;
   t:char;

begin
 writeln(' escriba cualquier cosa');
 writeln('cualquier cosa');
 readln(z);
 x:= 60 ; y:= 50;
 textbackground (blue);
 textcolor(yellow);
  repeat
    gotoxy(x,y) ;
    write('*');
    t:= readkey ;
    sound(ord(t)*2);
    delay(100);
    gotoxy (x,y);
    write('  ');
    case t of
     #72 : y:=y-1;
     'a' : x:=x-1;
     's' : y:=y+1;
     'd' : x:=x+1;

    end;





  until t= #13 ;



(* gotoxy(4,2);
 //clrscr;
 clreol;
  repeat
    write('x');


  until keypressed;*)





end.
