program foco;

uses
  Vcl.Forms,
  UFprincipal in 'UFprincipal.pas' {Form1},
  UCfoco in 'UCfoco.pas',
  UCimpresora in 'UCimpresora.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
