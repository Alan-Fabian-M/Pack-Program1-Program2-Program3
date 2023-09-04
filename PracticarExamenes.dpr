program PracticarExamenes;

var
  cadena, temp: String;
  i, numero : Integer;
  numeros: set of char = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'];
   n: cardinal;


begin
  temp := '';
  ReadLn(cadena);
  i := 1;
  n:=length(cadena);
  while (i <= n) do
    begin
      if cadena[i] in numeros then
        begin
          temp := '';
          while (i <= n) and (cadena[i] in numeros) do
            begin
              //temp := Concat(temp,cadena[i]);
              temp:= (temp+cadena[i]);
              i := i + 1;
            end;
        end ;
      i := i + 1;
    end;
  if temp = '' then
  begin
    temp := '0' ;
  WriteLn(temp);
  end;
  WriteLn(temp);
  readln;

end.
