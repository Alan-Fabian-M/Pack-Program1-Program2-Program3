unit UCimpresora;

interface

type
  imprecosa= class
      private
       ModDeImp : string;
       diseño: string;
       tamaño: byte;
      public
      function imprimir: string;
      function escanear: string;
      function TipDeImp: string;
      procedure AjusNivDeTin (estado: byte);
      procedure LimCab  (estado:byte);
      procedure encender (estado:byte);
      procedure apagar (estado: byte);


  end;




implementation

{ imprecosa }

procedure imprecosa.AjusNivDeTin(estado: byte);
begin

end;

procedure imprecosa.apagar(estado: byte);
begin

end;

procedure imprecosa.encender(estado: byte);
begin

end;

function imprecosa.escanear: string;
begin

end;

function imprecosa.imprimir: string;
begin

end;

procedure imprecosa.LimCab(estado: byte);
begin

end;

function imprecosa.TipDeImp: string;
begin

end;

end.
