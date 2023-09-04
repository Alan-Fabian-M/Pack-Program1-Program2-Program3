unit Ustring;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Cstring;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Label1: TLabel;
    string1: TMenuItem;
    string2: TMenuItem;
    obtener1: TMenuItem;
    Edit1: TEdit;
    procedure string2Click(Sender: TObject);
    procedure obtener1Click(Sender: TObject);
  private
    { Private declarations }
    T : cadena ;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.obtener1Click(Sender: TObject);
begin
 label1.Caption := T.GetChar;
end;

procedure TForm1.string2Click(Sender: TObject);
begin
   T.SetChar(edit1.text);
end;

end.
