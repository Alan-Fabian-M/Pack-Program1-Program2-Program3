program ejercicio_22_5;

var n, s: word;
 t : smallint;
 begin

  t := 1;
  S := 0;
  writeln('serie:1,-1,1,-1,1,-1....');
  write('cantidad de terminos:');
  readln(n);
  repeat
   writeln(t);
    if t=1 then
    begin
     t := t-2;
    end
    else
    begin
     t :=t+2;
    end;

   s := s+1;

  until s=n ;

  readln;

 end.



