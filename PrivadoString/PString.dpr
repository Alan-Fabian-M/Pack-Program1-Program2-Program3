program PString;

uses
  Vcl.Forms,
  FString in 'FString.pas' {Form1},
  CString in 'CString.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
