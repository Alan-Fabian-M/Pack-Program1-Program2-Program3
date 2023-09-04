program ProyectoSpaceShip;

uses
  Vcl.Forms,
  uSpaceShip  {SpaceShip},
  Nave  {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSpaceShip, SpaceShip);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
