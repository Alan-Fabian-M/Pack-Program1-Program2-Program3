program pstring;

uses
  Vcl.Forms,
  Ustring in 'Ustring.pas' {Form1},
  Cstring in 'Cstring.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
