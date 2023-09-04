program PVector;

uses
  Vcl.Forms,
  Uvector in 'Uvector.pas' {Form1},
  CVector in 'CVector.pas',
  UCVectorString in 'UCVectorString.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
