unit UCfoco;

interface

type
   foco = class
    private
       marca :string;
       modelo : string;
       tamaño : Byte;
       diseño : byte;
    public
       procedure encender(estado:byte);
       function ObtenerNivelInt: integer ;
       procedure apagar(estado:byte);
   end;

implementation


 //control+shift+c

procedure foco.apagar(estado: byte);
begin

end;

procedure foco.encender(estado: byte);
begin

end;

function foco.ObtenerNivelInt: integer;
begin

end;

end.
