unit CString;


interface
 const  N = 1000;
type
 cadena = class
    private
    longitud : word  ;
    caracteres : array [1..N] of char ;
    public
     function GetLong : word ;
     function GetChar : string;
  //   procedure SetLon (l : word );
     procedure SetChar (c:string);


 end;

implementation

{ cadena }

function cadena.GetChar: string;
begin
  result := 'asd' ;
end;

function cadena.GetLong: word;
begin
  result:= longitud ;
end;

procedure cadena.SetChar(c: string);
var
  i: word;
begin
 i := 1 ;
  caracteres [i]:= c[i];


end;



end.
