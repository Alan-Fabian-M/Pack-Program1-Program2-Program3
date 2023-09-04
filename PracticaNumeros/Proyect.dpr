program Proyect;

uses
  Vcl.Forms,
  Form in 'Form.pas' {Form1},
  classNum in 'classNum.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
