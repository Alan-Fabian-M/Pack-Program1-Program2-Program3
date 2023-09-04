unit Nave;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Imaging.pngimage;

type
  TForm3 = class(TForm)
    nave: TImage;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Image2: TImage;
    ovni1: TImage;
    ovni2: TImage;
    ovni3: TImage;
    Timer1: TTimer;

    rayo: TImage;
    Timer2: TTimer;
    aparicion: TImage;
    puntuacion: TStaticText;
    continuar: TButton;
    vidaovni1: TStaticText;
    vidaovni2: TStaticText;
    vidaovni3: TStaticText;
    muenemigos: TStaticText;
    StaticText1: TStaticText;
    procedure Button1Click(Sender: TObject);

    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
 //   procedure ovni3Click(Sender: TObject);
    procedure continuarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure vidaovni2Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
   (*  ovni1.top:= 2;
     ovni2.top:= 20;
     ovni3.top:= 10;        *)
     image2.Visible:=true;
     button1.Visible:=false;
     button2.Visible:=false;
    // button3.Visible:=true;
     ovni1.Visible:= true;
     ovni2.Visible:= true;
     ovni3.Visible:= true;
     nave.Visible:=true;
     image1.Visible:=false   ;
     continuar.Visible:=false;
     ovni1.top:= 4;
     rayo.Visible:=false;
     ovni3.top:= 52;
     ovni2.top:= 100;
     ovni1.Left:= 80;
     ovni3.Left:= 300;
     ovni2.left:= 200;
     nave.Left:=252;
     rayo.left:= 252;
     aparicion.Left:=252;
     rayo.top:= 300;
     nave.top:=300;
     aparicion.top:=300;

   //  s:=1;


  //   continuar.Visible:=true;

end;

(*procedure TForm3.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = 97 then
      begin
        image2.Visible:= false;
        image1.Visible:= true;
        button1.Visible:=true;
        button2.Visible:=true;
      end;

end;
     *)
procedure TForm3.Button2Click(Sender: TObject);
begin
 close;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
     image2.Visible:=false;
     button1.Visible:=true;
     button2.Visible:=true;


end;

procedure TForm3.continuarClick(Sender: TObject);
begin
     image2.Visible:=true;
     button1.Visible:=false;
     button2.Visible:=false;
    // button3.Visible:=true;

    if vidaovni1.Caption = 'mu' then
     begin

       ovni1.visible:=false;
     end
      else
      begin
        ovni1.Visible:= true;
      end;
       if  vidaovni2.Caption = 'mu'  then
     begin
        ovni2.Visible:= false;
     end
    else

      begin
       ovni2.Visible:= true;
      end;
       if  vidaovni3.Caption = 'mu' then
     begin
       ovni3.Visible:= false;
     end
       else
      begin
          ovni3.Visible:= true;
      end;


     nave.Visible:=true;
     image1.Visible:=false   ;
     continuar.Visible:=false;
end;

procedure TForm3.FormActivate(Sender: TObject);
 begin
   ovni1.top:= 2;
   ovni3.top:= 50;
   ovni2.top:= 100;
    ovni1.Left:= 80;
   ovni3.Left:= 300;
   ovni2.left:= 200;
   nave.Left:=250;
   rayo.left:= 250;
   aparicion.Left:=300;
   rayo.top:= 300;
   nave.top:=300;
   aparicion.top:=300;
 end;

procedure TForm3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
 begin
   (* if key = 27 then     // esc
    begin
      close;
    end;              *)
    // 77 (m or M)
    // 27 (esc)
    if key = 27 then  // m
    begin
     image2.Visible:=false;
     button1.Visible:=true;
     button2.Visible:=true;
     image1.Visible:=true;
     continuar.Visible:=true;
     ovni1.Visible:= false;
     ovni2.Visible:= false;
     ovni3.Visible:= false;
     nave.Visible:=false;
    end;

  if key=38 then
    begin
      nave.top:=nave.top -4;
      if rayo.Visible = false then
      begin
      rayo.top:= nave.top ;
      end;
    end
    else if key=40 then
     begin
      nave.top:= nave.top +4;
      if rayo.Visible = false then
      begin
      rayo.top:= nave.top;
      end;
     end else
     // letras de disparar
    if key=65 then      // a or A
    begin
      rayo.Visible:=true;

    end;

  if key=37 then
     begin
      nave.left:=nave.left -4;

      if rayo.Visible = false then
       begin
        rayo.Left:=nave.left -4;
       end;
     end
     else if key=39  then
     begin
      nave.left:=nave.left +4;
       if rayo.Visible = false then
       begin
        rayo.left:=nave.left +4;

       end;
     end;
 end;



  procedure TForm3.vidaovni2Click(Sender: TObject);
begin

end;

(*
procedure TForm3.ovni3Click(Sender: TObject);
begin
    if ovni3.top = rayo.top then
    begin
      ovni3.Visible := false;
    end;
end;     *)



  procedure TForm3.Timer1Timer(Sender: TObject);
  begin
     if image2.Visible= true then
      begin
         ovni1.Top:=ovni1.top +2;
         ovni2.Top:=ovni2.top +2;
         ovni3.top:=ovni3.top +2;
      end;
  end;

  procedure TForm3.Timer2Timer(Sender: TObject);
  var
  c: byte;
  begin
   c:= 0;
   if image2.Visible= true then
   begin
       if rayo.Visible = false then
      begin
       rayo.top:= nave.top;
       rayo.left:= nave.left;
      end;
      if rayo.Visible = true then
      begin
        rayo.top := rayo.Top -4;

          if (rayo.top<= ovni1.top+20) and (rayo.top>=ovni1.top-30 ) and (rayo.Left>= ovni1.left-38) and (rayo.left<=ovni1.left+15)and (rayo.Visible = true) then
         begin
          c:=c+1;
          rayo.Visible := false;
          ovni1.Visible:=false;
          vidaovni1.Caption:= 'mu';

         end;
          if (rayo.top<= ovni2.top+20) and (rayo.top>=ovni2.top-30 ) and (rayo.Left>= ovni2.left-38) and (rayo.left<=ovni2.left+15)and (rayo.Visible = true) then
         begin
          c:=c+1;
          rayo.Visible := false;
          ovni2.Visible:=false;
          vidaovni2.Caption := 'mu';

         end;
          if (rayo.top<= ovni3.top+20) and (rayo.top>=ovni3.top-30 ) and (rayo.Left>= ovni3.left-38) and (rayo.left<=ovni3.left+15)and (rayo.Visible = true) then
         begin
         c:= c+1;
         rayo.Visible := false;
         ovni3.Visible:=false;
         vidaovni3.Caption := 'mu' ;

         end;
         if c=1 then
          begin

           muenemigos.Caption:= inttostr(StrToInt(muenemigos.caption)+1);
            c:=0;
          end;
      end;

      (*  rayo.top := rayo.Top -1;
         if (rayo.top = ovni1.top)  and (rayo.Left>= 68) and (rayo.left<=92)and (rayo.Visible = true) then
         begin
          rayo.Visible := false;
          ovni1.Visible:=false;
          vidaovni1.Caption:= 'mu';
         end;
          if (rayo.top = ovni2.top)  and (rayo.Left>= 200-15) and (rayo.left<=200+15)and (rayo.Visible = true) then
         begin
          rayo.Visible := false;
          ovni2.Visible:=false;
          vidaovni2.Caption := 'mu'
         end;
             if (rayo.top<= ovni3.top+20) and (rayo.top>=ovni3.top-30 ) and (rayo.Left>= ovni3.left-38) and (rayo.left<=ovni3.left+15)and (rayo.Visible = true) then
         begin
         rayo.Visible := false;
         ovni3.Visible:=false;
         vidaovni3.Caption := 'mu'
         end;
          rayo.top := rayo.Top -1;
          if (rayo.top = ovni1.top)  and (rayo.Left>= 68) and (rayo.left<=92)and (rayo.Visible = true) then
        begin
        rayo.Visible := false;
        ovni1.Visible:=false;
        vidaovni1.Caption:= 'mu';
        end;
         if (rayo.top = ovni2.top)  and (rayo.Left>= 200-15) and (rayo.left<=200+15)and (rayo.Visible = true) then
         begin
         rayo.Visible := false;
         ovni2.Visible:=false;
         vidaovni2.Caption := 'mu'
         end;
            if (rayo.top<= ovni3.top+20) and (rayo.top>=ovni3.top-30 ) and (rayo.Left>= ovni3.left-38) and (rayo.left<=ovni3.left+15)and (rayo.Visible = true) then
        begin
          rayo.Visible := false;
          ovni3.Visible:=false;
          vidaovni3.Caption := 'mu'
        end;
        rayo.top := rayo.Top -1;
         if (rayo.top = ovni1.top)  and (rayo.Left>= ovni1.left-15) and (rayo.left<=ovni3.left+15)and (rayo.Visible = true) then
         begin
         rayo.Visible := false;
         ovni1.Visible:=false;
         vidaovni1.Caption:= 'mu';
         end;

         if (rayo.top = ovni2.top)  and (rayo.Left>= ovni2.left-15) and (rayo.left<=ovni2.left+15)and (rayo.Visible = true) then
         begin
         rayo.Visible := false;
         ovni2.Visible:=false;
         vidaovni2.Caption := 'mu'
         end;

            if (rayo.top<= ovni3.top+20) and (rayo.top>=ovni3.top-30 ) and (rayo.Left>= ovni3.left-38) and (rayo.left<=ovni3.left+15)and (rayo.Visible = true) then
         begin
          rayo.Visible := false;
          ovni3.Visible:=false;
          vidaovni3.Caption := 'mu'
         end;
      end;     *)

      if (nave.top<= ovni1.top+20) and (nave.top>=ovni1.top-30 ) and (nave.Left>= ovni1.left-38) and (nave.left<=ovni1.left+15) then
      begin
         nave.Visible := false;
      end;
       if (nave.top<= ovni2.top+20) and (nave.top>=ovni2.top-30 ) and (nave.Left>= ovni2.left-38) and (nave.left<=ovni2.left+15) then
      begin
        nave.Visible := false;
      end;
       if (nave.top<= ovni3.top+20) and (nave.top>=ovni3.top-30 ) and (nave.Left>= ovni3.left-38) and (nave.left<=ovni3.left+15) then
       begin
          nave.Visible := false;
       end;
      if (nave.Visible = false) and (image2.Visible= true) then
      begin
       nave.top := aparicion.top;
       nave.left :=  aparicion.left;
       nave.Visible:= true;
      end;


   end;


  end;


end.
