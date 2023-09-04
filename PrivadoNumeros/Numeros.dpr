program Numeros;

uses
  Vcl.Forms,
  FNum in 'FNum.pas' {Form1},
  CNum in 'CNum.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
