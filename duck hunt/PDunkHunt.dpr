program PDunkHunt;

uses
  Vcl.Forms,
  PDuckHunt in 'PDuckHunt.pas' {proyecto},
  UDunkHunt in 'UDunkHunt.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tproyecto, proyecto);
  Application.Run;
end.
