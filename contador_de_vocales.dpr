program contador_de_vocales;
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
    if x[i]='a'then begin
     c:=c+1;
    end;
    if x[i]='e'then begin
     c:=c+1;
    end;
    if x[i]='i'then begin
     c:=c+1;
    end;
    if x[i]='o'then begin
     c:=c+1;
    end;
    if x[i]='u'then begin
     c:=c+1;
    end;
  end;
 writeln('hay ',c,' espacios');
  readln;
end.
