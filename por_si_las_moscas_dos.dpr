program por_si_las_moscas_dos;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
  var
    c, i, n:byte; x: string;
begin
 writeln('escriba un texto: ');
 readln(x);
 n:= length(x);

  for i := 1 to n do begin

    if x[i]=' 'then begin

     c:=c+1;
    end;

  end;

 writeln('hay ',c,' espacios');

 readln;

end.
