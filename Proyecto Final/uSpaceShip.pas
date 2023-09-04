unit uSpaceShip;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ActnMan,
  Vcl.ActnColorMaps, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  TSpaceShip = class(TForm)
    ovni1: TImage;
    ovni2: TImage;
    ovni3: TImage;

    ovni4: TImage;
    ovni5: TImage;
    ovni6: TImage;
    ovni7: TImage;
    ovni8: TImage;
    ovni9: TImage;
    ovni10: TImage;
    ovni11: TImage;
    ovni12: TImage;
    ovni13: TImage;
    ovni14: TImage;
    ovni15: TImage;



    Timer1: TTimer;
    Timer2: TTimer;
    image2: TImage;
    Image1: TImage;
    nave: TImage;
    rayo: TImage;
    vida1: TImage;
    vida2: TImage;
    vida3: TImage;
    Button1: TButton;
    continuar: TButton;
    Button2: TButton;
    vidaovni1: TStaticText;
    vidaovni2: TStaticText;
    vidaovni3: TStaticText;
    vidaovni4: TStaticText;
    vidaovni5: TStaticText;
    letrero1: TStaticText;
    muenemigos: TStaticText;
    aparicion: TImage;
    tvida1: TStaticText;
    vidaovni6: TStaticText;
    vidaovni7: TStaticText;
    vidaovni8: TStaticText;
    vidaovni9: TStaticText;
    vidaovni10: TStaticText;
    StaticText7: TStaticText;
    gameover: TStaticText;
    spaceship: TStaticText;
    tvida2: TStaticText;
    tvida3: TStaticText;
    vida: TStaticText;
    letrerofin: TStaticText;
    letrero2: TStaticText;
    puntuacion: TStaticText;
    nivel1: TStaticText;
    mision1: TStaticText;
    mision2: TStaticText;
    mision1y2: TStaticText;
    vidaovni11: TStaticText;
    vidaovni12: TStaticText;
    vidaovni13: TStaticText;
    vidaovni14: TStaticText;
    vidaovni15: TStaticText;
    nivelbonus: TImage;
    Timer4: TTimer;
    nivel2: TStaticText;
    mision4: TStaticText;
    mision5: TStaticText;
    mision4y5: TStaticText;
    ayuda: TStaticText;
    ayuda2: TStaticText;
    Timer5: TTimer;
    jefe: TImage;
    subirdenivel: TStaticText;
    ayuda3: TStaticText;
    nivel3: TStaticText;
    mision7: TStaticText;
    mision8: TStaticText;
    mision7y8: TStaticText;
    Timer6: TTimer;
    jefeap: TStaticText;
    jefemov: TStaticText;
    vidajefe: TStaticText;
    jefesentido: TStaticText;
    ayudajefe: TStaticText;
    ganaste: TStaticText;
    bonus: TStaticText;

    procedure Button1Click(Sender: TObject);

    procedure Button2Click(Sender: TObject);
   // procedure Button3Click(Sender: TObject);


   procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
   procedure FormActivate(Sender: TObject);

    procedure continuarClick(Sender: TObject);
   // procedure FormActivate(Sender: TObject);

    procedure FormKeydown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure mision5Click(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer8Timer(Sender: TObject);








  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SpaceShip: TSpaceShip;

implementation

{$R *.dfm}
 //////////////////////////////////////////////////////////////////////
(*procedure TSpaceShip.FormKeyPress(Sender: TObject; var Key: Char);
begin

 if (key ='s') or (key ='S') then begin
 nave.Top:=nave.Top+10;
 end;
 if (key='w') or (key='W') then begin
   nave.Top:= nave.Top-10;
 end;
 if (key='d') or (key='D') then begin
   nave.Left:= nave.Left+10;
 end;
 if (key='a') or (key='A')then begin
   nave.Left:= nave.Left-10;
 end;

end; *)



(*procedure TSpaceShip.Timer1Timer(Sender: TObject);
begin


end;  *)

(*procedure TSpaceShip.Timer2Timer(Sender: TObject);
begin
 balas.Top:= balas.Top-8;
 if balas.Top <= -1 then begin
    balas.top:= nave.Top;
    balas.Left:= nave.Left;
 end;

 end;*)
  ///////////////////////////////////////////////////////////////////////////

procedure TSpaceShip.Button1Click(Sender: TObject);
begin

     image2.Visible:=true;
     button1.Visible:=false;
     button2.Visible:=false;
     ovni1.Visible:= true;
     ovni2.Visible:= true;
     ovni3.Visible:= true;
     ovni4.Visible:= true;
     ovni5.Visible:= true;
     ovni6.Visible:= true;
     ovni7.Visible:= true;
     ovni8.Visible:= true;
     ovni9.Visible:= true;
     ovni10.Visible:= true;
     ovni11.Visible:= true;
     ovni12.Visible:= true;
     ovni13.Visible:= true;
     ovni14.Visible:= true;
     ovni15.Visible:= true;
     nave.Visible:=true;
     image1.Visible:=false  ;
     continuar.Visible:=false;
     spaceship.Visible:= false;
     rayo.Visible:=false;
     aparicion.Visible:=false;
     vida3.Visible:=true;
     vida1.Visible:=true;
     vida2.Visible:=true;
     letrero2.Visible := true;
     puntuacion.Visible := true;
     muenemigos.Visible:= true;
     letrero1.Visible := true;
     muenemigos.Caption:= '0';
     vida.caption:='0';
     puntuacion.Caption:='0';
     tvida1.Caption:='vi';
     tvida2.Caption:='vi';
     tvida3.Caption:='vi';
     nivel1.Visible:= true;
    ovni1.Left:= 80;
   ovni2.Left:= 300;
   ovni3.left:= 200;
   ovni4.Left:= 100;
   ovni5.Left:= 500;
   ovni6.left:= 250;
   ovni7.Left:= 130;
   ovni8.Left:= 800;
   ovni9.left:= 650;
   ovni10.left:= 700;
   ovni11.left:= 400;
   ovni12.Left:= 550;
   ovni13.Left:= 290;
   ovni14.left:= 490;
   ovni15.left:= 590;
   nave.Left:=352;
   rayo.left:= 352;
   aparicion.Left:=352;
   rayo.top:= 500;
   nave.top:=500;
   aparicion.top:=500;

   ovni1.top:= -260;
   ovni2.top:= -2100;
   ovni3.top:= -800;
   ovni4.top:= -700 ;
   ovni5.top:= -900 ;
   ovni6.top:= -1100 ;
   ovni7.top:= -1280 ;
   ovni8.top:= -1550;
   ovni9.top:= -1890;
   ovni10.top:= -400;
   ovni11.top:= -1180 ;
   ovni12.top:= -1350 ;
   ovni13.top:= -1410;
   ovni14.top:= -1650;
   ovni15.top:= -600;
   mision1y2.Caption:='y' ;
   mision4y5.Caption:='y';
   ayuda.Caption:='a' ;
   jefe.Top:=-200;
    nivel1.top:=-200;
    nivel2.top:=-200;
    nivel3.top:=-200;
    subirdenivel.Caption:='1';

   //  s:=1;


  //   continuar.Visible:=true;

end;

(*procedure TSpaceShip.Edit1KeyDown(Sender: TObject; var Key: Word;
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


procedure TSpaceShip.button2Click(Sender: TObject);
begin
 close;
end;

(*procedure TSpaceShip.Button3Click(Sender: TObject);
begin
     image2.Visible:=false;
     button1.Visible:=true;
     button2.Visible:=true;


end;   *)

procedure TSpaceShip.continuarClick(Sender: TObject);

 begin

   begin
     image2.Visible:=true;
     button1.Visible:=false;

     button2.Visible:=false;
     spaceship.Visible:= false;
     muenemigos.Visible:= true;
     letrero1.Visible := true;
     letrero2.Visible:=true;
     puntuacion.Visible:=true;
     nivel1.Visible:=true;
     nivel3.Visible:=true;
     nivel2.Visible:=true;
     if subirdenivel.Caption='1' then
     begin
       mision1.Visible:=true;
       mision2.Visible:=true;
       mision1y2.Caption:='y'
     end;
      if subirdenivel.Caption='2' then
     begin
       mision4.Visible:=true;
       mision5.Visible:=true;
       mision4y5.Caption:='y';
     end;
      if subirdenivel.Caption='3' then
     begin
       mision7.Visible:=true;
       mision8.Visible:=true;
       mision7y8.Caption:='y';
     end;

      if (vida.Caption = '1') or (tvida1.Caption ='mu')then
        begin

          vida1.Visible:=false;

        end else
        begin
          vida1.Visible:=true ;
        end;
       if (vida.Caption = '2') and (tvida2.Caption ='mu') then
        begin
          vida2.Visible:=false;
        end else
        begin
          vida2.Visible:=true ;
        end;
       if (vida.Caption = '3') and (tvida3.Caption='mu') then
        begin
          vida3.Visible:=false;
        end else
        begin
          vida3.Visible:=true;
        end;
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
      if vidaovni4.Caption = 'mu' then
     begin

       ovni4.visible:=false;
     end
      else
      begin
        ovni4.Visible:= true;
      end;
       if  vidaovni5.Caption = 'mu'  then
     begin
        ovni5.Visible:= false;
     end

    else

      begin
       ovni5.Visible:= true;
      end;
       if  vidaovni6.Caption = 'mu' then
     begin
       ovni6.Visible:= false;
     end
       else
      begin
          ovni6.Visible:= true;
      end;
       if  vidaovni7.Caption = 'mu' then
     begin
       ovni7.Visible:= false;
     end
       else
      begin
          ovni7.Visible:= true;
      end;
        if  vidaovni8.Caption = 'mu' then
     begin
       ovni8.Visible:= false;
     end
       else
      begin
          ovni8.Visible:= true;
      end;
         if  vidaovni9.Caption = 'mu' then
     begin
       ovni9.Visible:= false;
     end
       else
      begin
          ovni9.Visible:= true;
      end;
        if  vidaovni10.Caption = 'mu' then
     begin
       ovni10.Visible:= false;
     end
       else
      begin
          ovni10.Visible:= true;
      end;
          if  vidaovni11.Caption = 'mu' then
     begin
       ovni11.Visible:= false;
     end
       else
      begin
          ovni11.Visible:= true;
      end;
        if  vidaovni12.Caption = 'mu' then
     begin
       ovni12.Visible:= false;
     end
       else
      begin
          ovni12.Visible:= true;
      end;
       if  vidaovni13.Caption = 'mu' then
     begin
       ovni13.Visible:= false;
     end
       else
      begin
          ovni13.Visible:= true;
      end;
       if  vidaovni14.Caption = 'mu' then
     begin
       ovni14.Visible:= false;
     end
       else
      begin
          ovni14.Visible:= true;
      end;
       if  vidaovni15.Caption = 'mu' then
     begin
       ovni15.Visible:= false;
     end
       else
      begin
          ovni15.Visible:= true;
      end;
     nave.Visible:=true;
     image1.Visible:=false   ;
     continuar.Visible:=false;
  end;
 end;

procedure TSpaceShip.FormActivate(Sender: TObject);
 begin

   (* ovni1.Left:= 80;
   ovni3.Left:= 300;
   ovni2.left:= 200;
   nave.Left:=230;
   rayo.left:= 230;  *)
   aparicion.Left:=300;
   rayo.top:= 300;
   nave.top:=300;
   aparicion.top:=300;
   image2.Visible:=false;
   muenemigos.Visible:= false;
   letrero1.Visible := false;
   letrero2.Visible := false;
   puntuacion.Visible := false;
 end;





procedure TSpaceShip.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
 begin
   (* if key = 27 then     // esc
    begin
      close;
    end;          *)
    // 77 (m or M)
    // 27 (esc)
    if key = 27 then  // esc
    begin
     image2.Visible:=false;
     button1.Visible:=true;

     button2.Visible:=true;
     jefe.Top:=-200;
     image1.Visible:=true;
     nivel1.Visible:=false;
     nivel3.Visible:=false;
     nivel2.Visible:=false;
      if (vida.Caption = '1') and (tvida1.Caption='mu') then
        begin
         continuar.Visible:=true;
        end;
      if (vida.Caption = '2') and (tvida2.Caption='mu') then
        begin
         continuar.Visible:=true;
        end;
     if (vida.Caption = '3') and (tvida3.Caption='mu') then
        begin
         continuar.Visible:=false;
        end
        else
        begin
         continuar.Visible:=true;
        end;
        if subirdenivel.Caption='1' then
     begin
       mision1.Visible:=false;
       mision2.Visible:=false;
     end;
      if subirdenivel.Caption='2' then
     begin
       mision4.Visible:=false;
       mision5.Visible:=false;
     end;
      if subirdenivel.Caption='3' then
     begin
       mision7.Visible:=false;
       mision8.Visible:=false;
     end;
     ovni1.Visible:= false;
     ovni2.Visible:= false;
     ovni3.Visible:= false;
     ovni4.Visible:= false;
     ovni5.Visible:= false;
     ovni6.Visible:= false;
     ovni7.Visible:= false;
     ovni8.Visible:= false;
     ovni9.Visible:= false;
     ovni10.Visible:= false;
     ovni11.Visible:= false;
     ovni12.Visible:= false;
     ovni13.Visible:= false;
     ovni14.Visible:= false;
     ovni15.Visible:= false;
     nave.Visible:=false;
     spaceship.Visible:= true;
     vida1.Visible:=false;
     vida2.Visible:=false;
     vida3.Visible:=false;
     letrero2.Visible:=false;
     puntuacion.Visible:=false;
     mision1.Visible:=false;
     mision2.Visible:=false;
     nivel1.Visible:=false;
     mision4.Visible:=false;
     mision5.Visible:=false;

     gameover.Visible:=false;
     gameover.Top:=-500;
     muenemigos.Visible:= false;
     letrero1.Visible := false;
     letrerofin.Visible:=false;
    end;

  if vida3.Visible = true then
     begin
     if key=38 then
    begin
      nave.top:=nave.top -6;
      if rayo.Visible = false then
      begin
      rayo.top:= nave.top ;
      end;
    end
    else if key=40 then
     begin
      nave.top:= nave.top +6;
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
      nave.left:=nave.left -6;

      if rayo.Visible = false then
       begin
        rayo.Left:=nave.left -6;
       end;
     end
     else if key=39  then
     begin
      nave.left:=nave.left +6;
       if rayo.Visible = false then
       begin
        rayo.left:=nave.left +6;

       end;
     end;
  end;
 end;





procedure TSpaceShip.mision5Click(Sender: TObject);
begin

end;



// MOVIMIENTO DE OVNIS Y LETRERO GAME OVER
  procedure TSpaceShip.Timer1Timer(Sender: TObject);
  var j:byte;
  begin

  if subirdenivel.Caption='1' then
    begin
     if (image2.Visible= true ) and (vida3.Visible = true) and (nivel1.top>= 570) and (subirdenivel.Caption='1' ) then
      begin



         if (mision1.Visible=false) and (mision2.Visible=false) and (mision1y2.Caption='y')  then
         begin
             mision1y2.Caption:='ya';
             mision1.Visible:=true;
             mision2.Visible:=true;
         end;
          ovni1.Top:= ovni1.Top+1;
          ovni2.Top:= ovni2.Top+2;
          ovni3.Top:= ovni3.Top+1;
          ovni4.Top:= ovni4.Top+2;
          ovni5.Top:= ovni5.Top+1;
          ovni6.Top:= ovni6.Top+2;
          ovni7.Top:= ovni7.Top+1;
          ovni8.Top:= ovni8.Top+2;
          ovni9.Top:= ovni9.Top+1;
          ovni10.Top:= ovni10.Top+2;
          ovni11.Top:= ovni11.Top+1;
          ovni12.Top:= ovni12.Top+2;
          ovni13.Top:= ovni13.Top+1;
          ovni14.Top:= ovni14.Top+2;
          ovni15.Top:= ovni15.Top+1;
      end;

     if (image2.Visible= true )AND (vida3.Visible = false ) and (letrerofin.Visible=false) then
      begin
        gameover.Visible:= true;
        gameover.top:= gameover.top +2
      end;
       if image2.Visible= true  then
      begin

        nivel1.top:= nivel1.top +2 ;
      end;

      if ovni1.top>=1000 then
      begin
         ovni1.top:= -400;
      end;
       if ovni2.top>=600 then
      begin
         ovni2.top:= -340;
      end;
       if ovni3.top>=800 then
      begin
         ovni3.top:= -600;
      end;
       if ovni4.top>=700 then
      begin
         ovni4.top:= -700;
      end;
        if ovni5.top>=900 then
      begin
         ovni5.top:= -800;
      end;
       if ovni6.top>=1400 then
      begin
         ovni6.top:= -900;
      end;
       if ovni7.top>=1250 then
      begin
         ovni7.top:= -470;
      end;
       if ovni8.top>=800 then
      begin
         ovni8.top:= -560;
      end;
       if ovni9.top>=1070 then
      begin
         ovni9.top:= -780;
      end;
       if ovni10.top>=1500 then
      begin
         ovni10.top:= -700;
      end;
       if ovni11.top>=1120 then
      begin
         ovni11.top:= -800;
      end;
       if ovni12.top>=1600 then
      begin
         ovni12.top:= -780;
      end;
       if ovni13.top>=780 then
      begin
         ovni13.top:= -100;
      end;
       if ovni14.top>=1200 then
      begin
         ovni14.top:= -200;
      end;
       if ovni15.top>=1300 then
      begin
         ovni15.top:= -300;
      end;




      if (gameover.Top >= 700) and (letrerofin.Visible=false) then
      begin
         close;
      end;
   (* if gameover.top>= 700 then
     begin
         image2.Visible:=false;
         button1.Visible:=true;
         button2.Visible:=true;
         image1.Visible:=true;
         continuar.Visible:=true;
         ovni1.Visible:= false;
         ovni2.Visible:= false;
         ovni3.Visible:= false;
         ovni4.Visible:= false;
         ovni5.Visible:= false;
         ovni6.Visible:= false;
         ovni7.Visible:= false;
         ovni8.Visible:= false;
         ovni9.Visible:= false;
         ovni10.Visible:= false;
         nave.Visible:=false;
         spaceship.Visible:= true;
         muenemigos.Caption:= '0';
         vida.caption:='0';
     end;      *)


    end;

   /////////////////////////////////////////////nivel2/////////////////////////
   (* if muenemigos.Caption= '10' then
         begin
           image2.Visible:=false;
           image3.Visible:=true;
         end;*)


      if (image2.Visible= true) and (subirdenivel.caption='2') then
      begin
       if (image2.Visible= true) and (ayuda2.Caption='1' ) then
         begin
            ovni1.Visible:= false;
            ovni2.Visible:= false;
            ovni3.Visible:= false;
            ovni4.Visible:= false;
            ovni5.Visible:= false;
            ovni6.Visible:= false;
            ovni7.Visible:= false;
            ovni8.Visible:= false;
            ovni9.Visible:= false;
            ovni10.Visible:= false;
            ovni11.Visible:= false;
            ovni12.Visible:= false;
            ovni13.Visible:= false;
            ovni14.Visible:= false;
            ovni15.Visible:= false;
            muenemigos.Caption:='0' ;
            ayuda.Caption:='ay';
            ayuda2.Caption:='2'
         end;
         if  ayuda2.Caption='2'  then
        begin

         nivel2.top:= nivel2.top +2 ;
         ayuda.Caption:='y';
         end;

     if (ayuda.Caption='y')and(image2.Visible= true ) and (vida3.Visible = true) and (nivel2.top>= 570) and (subirdenivel.Caption='2') then
      begin
         nivel2.Visible:= false;
         if (mision4.Visible=false) and (mision5.Visible=false) and (mision4y5.Caption='y')   then
         begin
             ayuda2.Caption:='1';
             mision4y5.Caption:='ya';
             mision4.Visible:=true;
             mision5.Visible:=true;
             ayuda2.Caption:='0';
         end;

       if ayuda2.Caption='0'   then
          begin
           ovni1.Left:= 80;
           ovni2.Left:= 300;
           ovni3.left:= 200;
           ovni4.Left:= 100;
           ovni5.Left:= 500;
           ovni6.left:= 250;
           ovni7.Left:= 130;
           ovni8.Left:= 800;
           ovni9.left:= 650;
           ovni10.left:= 700;
            ovni11.left:= 400;
           ovni12.Left:= 550;
           ovni13.Left:= 290;
          ovni14.left:= 490;
          ovni15.left:= 590;
            ovni1.top:= -260;
          ovni2.top:= -2100;
           ovni3.top:= -800;
           ovni4.top:= -700 ;
          ovni5.top:= -900 ;
          ovni6.top:= -1100 ;
          ovni7.top:= -1280 ;
          ovni8.top:= -1550;
          ovni9.top:= -1890;
          ovni10.top:= -400;
          ovni11.top:= -1180 ;
          ovni12.top:= -1350 ;
           ovni13.top:= -1410;
           ovni14.top:= -1650;
           ovni15.top:= -600;
           ovni1.Visible:= true;
           ovni2.Visible:= true;
           ovni3.Visible:= true;
           ovni4.Visible:= true;
           ovni5.Visible:= true;
           ovni6.Visible:= true;
           ovni7.Visible:= true;
           ovni8.Visible:= true;
           ovni9.Visible:= true;
           ovni10.Visible:= true;
           ovni11.Visible:= true;
           ovni12.Visible:= true;
           ovni13.Visible:= true;
           ovni14.Visible:= true;
           ovni15.Visible:= true;
           ayuda2.Caption:='3';
          end;

         (*ovni11.Top:= ovni11.Top+2;
         ovni12.Top:= ovni12.Top+2;
         ovni13.Top:= ovni13.Top+2;
         ovni14.Top:= ovni14.Top+2;
         ovni15.Top:= ovni15.Top+2;   *)



          ovni1.Top:= ovni1.Top+4;
          ovni2.Top:= ovni2.Top+5;
          ovni3.Top:= ovni3.Top+4;
          ovni4.Top:= ovni4.Top+6;
          ovni5.Top:= ovni5.Top+4;
          ovni6.Top:= ovni6.Top+5;
          ovni7.Top:= ovni7.Top+4;
          ovni8.Top:= ovni8.Top+5;
          ovni9.Top:= ovni9.Top+6;
          ovni10.Top:= ovni10.Top+5;
          ovni11.Top:= ovni11.Top+4;
          ovni12.Top:= ovni12.Top+5;
          ovni13.Top:= ovni13.Top+5;
          ovni14.Top:= ovni14.Top+4;
          ovni15.Top:= ovni15.Top+6;

      end;







      if ovni1.top>=1000 then
      begin
         ovni1.top:= -400;
      end;
       if ovni2.top>=600 then
      begin
         ovni2.top:= -340;
      end;
       if ovni3.top>=800 then
      begin
         ovni3.top:= -600;
      end;
       if ovni4.top>=700 then
      begin
         ovni4.top:= -700;
      end;
        if ovni5.top>=900 then
      begin
         ovni5.top:= -800;
      end;
       if ovni6.top>=1400 then
      begin
         ovni6.top:= -900;
      end;
       if ovni7.top>=1250 then
      begin
         ovni7.top:= -470;
      end;
       if ovni8.top>=800 then
      begin
         ovni8.top:= -560;
      end;
       if ovni9.top>=1070 then
      begin
         ovni9.top:= -780;
      end;
       if ovni10.top>=1500 then
      begin
         ovni10.top:= -700;
      end;
       if ovni11.top>=1120 then
      begin
         ovni11.top:= -800;
      end;
       if ovni12.top>=1600 then
      begin
         ovni12.top:= -780;
      end;
       if ovni13.top>=780 then
      begin
         ovni13.top:= -100;
      end;
       if ovni14.top>=1200 then
      begin
         ovni14.top:= -200;
      end;
       if ovni15.top>=1300 then
      begin
         ovni15.top:= -300;
      end;

       if (image2.Visible= true )AND (vida3.Visible = false ) and (letrerofin.Visible=false) then
      begin
        gameover.Visible:= true;
        gameover.top:= gameover.top +2 ;

      end;


      if (gameover.Top >= 700) and (letrerofin.Visible=false) then
      begin
         close;
      end;
     end;
////////////////////////////nivel3/////////////////////////////////////////
    if (image2.Visible= true) and (subirdenivel.caption='3') then
      begin
      ayuda2.Caption:='4';
       if (image2.Visible= true) and (ayuda2.Caption='4' ) then
         begin
            ovni1.Visible:= false;
            ovni2.Visible:= false;
            ovni3.Visible:= false;
            ovni4.Visible:= false;
            ovni5.Visible:= false;
            ovni6.Visible:= false;
            ovni7.Visible:= false;
            ovni8.Visible:= false;
            ovni9.Visible:= false;
            ovni10.Visible:= false;
            ovni11.Visible:= false;
            ovni12.Visible:= false;
            ovni13.Visible:= false;
            ovni14.Visible:= false;
            ovni15.Visible:= false;
            muenemigos.Caption:='0' ;
            ayuda.Caption:='ay';
            ayuda2.Caption:='5' ;
            aparicion.Top :=250;
         end;
         if  ayuda2.Caption='5'  then
        begin

         nivel3.top:= nivel3.top +2 ;
         ayuda.Caption:='y';
         end;

     if (ayuda.Caption='y')and(image2.Visible= true ) and (vida3.Visible = true) and (nivel3.top>= 570) and (subirdenivel.Caption='3') then
      begin
         nivel3.Visible:= false;
         if (mision7.Visible=false) and (mision8.Visible=false) and (mision7y8.Caption='y')   then
         begin
             ayuda2.Caption:='1';
             mision7y8.Caption:='ya';
             mision7.Visible:=true;
             mision8.Visible:=true;
             ayuda2.Caption:='6';



           ovni1.Left:= -100;
           ovni2.Left:= -100;
           ovni3.left:= -100;
           ovni4.Left:= -100;
           ovni5.Left:= -100;
           ovni6.left:= -100;
           ovni7.Left:= -100;
           ovni8.Left:= -100;
           ovni9.left:= -100;
           ovni10.left:= -100;
           ovni11.left:= -100;
           ovni12.Left:= -100;
           ovni13.Left:= -100;
           ovni14.left:= -100;
           ovni15.left:= -100;
           ayuda.Caption:='yay' ;
           jefeap.Caption:='1';
           letrero1.Visible:=false;
          letrero2.Visible:=false;
          muenemigos.Visible:=false;
          puntuacion.Visible:=false;
          end;



      end;
     if (mision7.Visible=false) and (mision8.Visible=false) and (jefeap.Caption='1') then
     begin
        jefe.top:=jefe.Top+2;
        if jefe.Top=30 then
       begin

       jefeap.Caption:='0'   ;
       jefemov.Caption:='1';

       end;
     end;
///////////////////////////////////////////1 , 2 y 3 golpes jefe/////////////////////

      if (vidajefe.Caption='1') or (vidajefe.Caption='2') or (vidajefe.Caption='3') or (vidajefe.Caption='4') or (vidajefe.Caption='5')then
   begin
   //0 hasta 780 en x
   if (jefe.Left <=780) and (jefesentido.Caption='1')  then
    begin
      if (rayo.left<= jefe.left+180) and (rayo.left>=jefe.left) and (rayo.top<= jefe.top+90) and (rayo.top>=jefe.top-90 )and (rayo.Visible = true) then

      begin
       j:=j+1;
       rayo.Visible:=false;

      end;
     if j>=1 then
       begin
        j:=0;
        vidajefe.Caption:= inttostr(StrToInt(vidajefe.caption)+1);

       end;
     jefe.Left:= jefe.Left +10;
     if jefe.Left+173 >= 780 then
     begin
       jefesentido.Caption:='2';
     end;

    end;
      if (jefe.Left >=0) and (jefesentido.Caption='2')  then
    begin
    if (rayo.top<= jefe.top+90) and (rayo.top>=jefe.top-90 ) and (rayo.left<= jefe.left+180) and (rayo.left>=jefe.left)and (rayo.Visible = true) then
      begin
       j:=j+1;
       rayo.Visible:=false;
      end;
     if j>=1 then
       begin
        j:=0;
        vidajefe.Caption:= inttostr(StrToInt(vidajefe.caption)+1);

       end;
     jefe.Left:= jefe.Left -10;
     if jefe.Left <= 0 then
     begin
       jefesentido.Caption:='1';
     end;

    end;





   end;

   ///////////////////////////////////////6,7,8,9y 10 golpes al jefe//////////////////////////////

   if (vidajefe.Caption='6') or (vidajefe.Caption='7') or (vidajefe.Caption='8') or (vidajefe.Caption='9') or (vidajefe.Caption='10')then
   begin
     if (jefe.Left <=780) and (jefesentido.Caption='1')  then
    begin
      if (rayo.left<= jefe.left+180) and (rayo.left>=jefe.left) and (rayo.top<= jefe.top+90) and (rayo.top>=jefe.top-90 )and (rayo.Visible = true) then

      begin
       j:=j+1;
       rayo.Visible:=false;

      end;
     if j>=1 then
       begin
        j:=0;
        vidajefe.Caption:= inttostr(StrToInt(vidajefe.caption)+1);

       end;
    end;
    //0 hasta 780 en x
   if (jefe.Left <=780) and (jefesentido.Caption='2') or (jefesentido.Caption='1') or (jefesentido.Caption='3')  then
    begin
      if (rayo.left<= jefe.left+180) and (rayo.left>=jefe.left) and (rayo.top<= jefe.top+90) and (rayo.top>=jefe.top-90 )and (rayo.Visible = true) then

      begin
       j:=j+1;
       rayo.Visible:=false;

      end;
     if j>=1 then
       begin
        j:=0;
        vidajefe.Caption:= inttostr(StrToInt(vidajefe.caption)+1);

       end;
     jefe.Left:= jefe.Left +20;
     if jefe.Left+173 >= 780 then
     begin
       jefesentido.Caption:='4';
     end;

    end;
      if (jefe.Left+173 >= 780) and (jefesentido.Caption='4')  then
    begin
    if (rayo.top<= jefe.top+90) and (rayo.top>=jefe.top-90 ) and (rayo.left<= jefe.left+180) and (rayo.left>=jefe.left)and (rayo.Visible = true) then
      begin
       j:=j+1;
       rayo.Visible:=false;
      end;
     if j>=1 then
       begin
        j:=0;
        vidajefe.Caption:= inttostr(StrToInt(vidajefe.caption)+1);

       end;
     jefe.top:= jefe.top +20 ;
     if jefe.top+90 >= 570 then
     begin
       jefesentido.Caption:='5';
     end;

    end;
     if (jefe.top+90 >= 570) and (jefesentido.Caption='5')  then
    begin
    if (rayo.top<= jefe.top+90) and (rayo.top>=jefe.top-90 ) and (rayo.left<= jefe.left+180) and (rayo.left>=jefe.left)and (rayo.Visible = true) then
      begin
       j:=j+1;
       rayo.Visible:=false;
      end;
     if j>=1 then
       begin
        j:=0;
        vidajefe.Caption:= inttostr(StrToInt(vidajefe.caption)+1);

       end;
     jefe.left:= jefe.left -20;

     if jefe.left <= 0then
     begin
       jefesentido.Caption:='6';
     end;

    end;


     if (jefe.left <= 0) and (jefesentido.Caption='6')  then
    begin
    if (rayo.top<= jefe.top+90) and (rayo.top>=jefe.top-90 ) and (rayo.left<= jefe.left+180) and (rayo.left>=jefe.left)and (rayo.Visible = true) then
      begin
       j:=j+1;
       rayo.Visible:=false;
      end;
     if j>=1 then
       begin
        j:=0;
        vidajefe.Caption:= inttostr(StrToInt(vidajefe.caption)+1);

       end;
     jefe.top:= jefe.top -20;
     if jefe.top<= 0 then
     begin
       jefesentido.Caption:='3';
     end;

    end;






   ////////////////////////////////7,8,9,y 10/////////////////////////////////////
    (*if (vidajefe.Caption='7') or (vidajefe.Caption='8') or (vidajefe.Caption='9') or (vidajefe.Caption='10')then
   begin
   //0 hasta 780 en x
   if (jefe.Left <=780) and (jefesentido.Caption='1')  then
    begin
      if (rayo.left<= jefe.left+180) and (rayo.left>=jefe.left) and (rayo.top<= jefe.top+90) and (rayo.top>=jefe.top-90 )and (rayo.Visible = true) then

      begin
       j:=j+1;
       rayo.Visible:=false;

      end;
     if j>=1 then
       begin
        j:=0;
        vidajefe.Caption:= inttostr(StrToInt(vidajefe.caption)+1);

       end;
     jefe.Left:= jefe.Left +10;
     if jefe.Left+173 >= 780 then
     begin
       jefesentido.Caption:='2';
     end;

    end;
   if (jefe.Left <=0) and  (jefesentido.Caption='4') or (jefesentido.Caption='5') or (jefesentido.Caption='6') or (jefesentido.Caption='3') then
    begin
      if (rayo.left<= jefe.left+180) and (rayo.left>=jefe.left) and (rayo.top<= jefe.top+90) and (rayo.top>=jefe.top-90 )and (rayo.Visible = true) then

      begin
       j:=j+1;
       rayo.Visible:=false;

      end;
     if j>=1 then
       begin
        j:=0;
        vidajefe.Caption:= inttostr(StrToInt(vidajefe.caption)+1);

       end;
     jefe.Left:= jefe.Left +15;
     if jefe.Left>=0 then
     begin
       jefesentido.Caption:='4';
     end;

    end;
      if (jefe.Left+173 >= 780) and (jefesentido.Caption='4') or (jefesentido.Caption='5') or (jefesentido.Caption='6') or (jefesentido.Caption='3')  then
    begin
    if (rayo.top<= jefe.top+90) and (rayo.top>=jefe.top-90 ) and (rayo.left<= jefe.left+180) and (rayo.left>=jefe.left)and (rayo.Visible = true) then
      begin
       j:=j+1;
       rayo.Visible:=false;
      end;
     if j>=1 then
       begin
        j:=0;
        vidajefe.Caption:= inttostr(StrToInt(vidajefe.caption)+1);

       end;
    jefe.Left:= jefe.Left -15;
     if jefe.Left+173 >= 780 then
     begin
       jefesentido.Caption:='5';
     end;

    end;
     if (jefe.top+90 >= 570) and (jefesentido.Caption='4') or (jefesentido.Caption='5') or (jefesentido.Caption='6') or (jefesentido.Caption='3')  then
    begin
    if (rayo.top<= jefe.top+90) and (rayo.top>=jefe.top-90 ) and (rayo.left<= jefe.left+180) and (rayo.left>=jefe.left)and (rayo.Visible = true) then
      begin
       j:=j+1;
       rayo.Visible:=false;
      end;
     if j>=1 then
       begin
        j:=0;
        vidajefe.Caption:= inttostr(StrToInt(vidajefe.caption)+1);

       end;

     jefe.Top:=  jefe.Top -15;
     if jefe.top+90 >= 570 then
     begin
       jefesentido.Caption:='6';
     end;

    end;


     if (jefe.top <= 0) and (jefesentido.Caption='4') or (jefesentido.Caption='5') or (jefesentido.Caption='6') or (jefesentido.Caption='3')  then
    begin
    if (rayo.top<= jefe.top+90) and (rayo.top>=jefe.top-90 ) and (rayo.left<= jefe.left+180) and (rayo.left>=jefe.left)and (rayo.Visible = true) then
      begin
       j:=j+1;
       rayo.Visible:=false;
      end;
     if j>=1 then
       begin
        j:=0;
        vidajefe.Caption:= inttostr(StrToInt(vidajefe.caption)+1);

       end;

     jefe.Top:=  jefe.Top +15;
     if jefe.top<= 0 then
     begin
       jefesentido.Caption:='3';
     end;

    end;




   end;

                *)

  end;
  if vidajefe.caption='11' then
   begin
     jefe.top:=jefe.top+1;
     jefe.Left:=jefe.Left+1;
   end;
   if (jefe.top>=900) and (jefe.Left>=900) then
   begin
     ganaste.top:=ganaste.top+2;
     bonus.Top:=bonus.Top+2;
   end;
   if bonus.top>= 700 then
   begin
     close;
   end;
    if (image2.Visible= true )AND (vida3.Visible = false ) and (letrerofin.Visible=false) then
      begin
        gameover.Visible:= true;
        gameover.top:= gameover.top +2 ;

      end;


      if (gameover.Top >= 700) and (letrerofin.Visible=false) then
      begin
         close;
      end;
 end;
end;


  ///////mision////////////////////////////////


 //////////////////////////NIVEL2(misiones)/////////////////////////////////////

  procedure TSpaceShip.Timer4Timer(Sender: TObject);
begin
     if (mision4.Visible=true) and (mision5.Visible=true) then
  begin

    mision4.Visible:=false;
    mision5.Visible:=false ;
  end;
end;
///////////////////////////////////////////////////////////////////////////
procedure TSpaceShip.Timer5Timer(Sender: TObject);
begin
    if (mision7.Visible=true) and (mision8.Visible=true) then
  begin

    mision7.Visible:=false;
    mision8.Visible:=false ;
  end;
 end;
/////////////////////////////////////////////////////////////////7
procedure TSpaceShip.Timer6Timer(Sender: TObject);

begin
if (mision1.Visible=true) and (mision2.Visible=true) then
  begin

    mision1.Visible:=false;
    mision2.Visible:=false;
  end;
   ////////////////////////////////////////////////choque con el jefe/////////////////////

end;



procedure TSpaceShip.Timer8Timer(Sender: TObject);
begin

end;

///////////////////////////////////////////////////////////////////////////////////////
 // CHOQUE ENTRA OBJETOS Y VIDA
  procedure TSpaceShip.Timer2Timer(Sender: TObject);
  var
  c,v: integer;  p:integer;
  begin
   c:= 0;
   v:= 0;
   p:= 0;


   if image2.Visible= true then
   begin
       if rayo.Visible = false then
      begin
       rayo.top:= nave.top;
       rayo.left:= nave.left;
      end;
      if rayo.Visible = true then
      begin
        rayo.top := rayo.Top -10;
           if rayo.Top <= -1 then begin
            rayo.Visible:=false;
           end;
        if (rayo.top<= ovni1.top+20) and (rayo.top>=ovni1.top-30 ) and (rayo.Left>= ovni1.left) and (rayo.left<=ovni1.left+15)and (rayo.Visible = true) then
         begin
          c:=c+1;
          p:=p+100;
          rayo.Visible := false;
          ovni1.Visible:=false;
          ovni1.left:= -10;
          vidaovni1.Caption:= 'mu';

         end;
          if (rayo.top<= ovni2.top+20) and (rayo.top>=ovni2.top-30 ) and (rayo.Left>= ovni2.left) and (rayo.left<=ovni2.left+15)and (rayo.Visible = true) then
         begin
          c:=c+1;
          p:=p+100;
          rayo.Visible := false;
          ovni2.Visible:=false;
          ovni2.left:= -10;
          vidaovni2.Caption := 'mu';

         end;
          if (rayo.top<= ovni3.top+20) and (rayo.top>=ovni3.top-30 ) and (rayo.Left>= ovni3.left) and (rayo.left<=ovni3.left+15)and (rayo.Visible = true) then
         begin
         c:= c+1;
         p:=p+100;
         rayo.Visible := false;
         ovni3.Visible:=false;
         ovni3.left:= -10;
         vidaovni3.Caption := 'mu' ;

         end;
           if (rayo.top<= ovni4.top+20) and (rayo.top>=ovni4.top-30 ) and (rayo.Left>= ovni4.left) and (rayo.left<=ovni4.left+15)and (rayo.Visible = true) then
         begin
         c:= c+1;
         p:=p+100;
         rayo.Visible := false;
         ovni4.Visible:=false;
         ovni4.left:= -10;
         vidaovni4.Caption := 'mu' ;

         end;
           if (rayo.top<= ovni5.top+20) and (rayo.top>=ovni5.top-30 ) and (rayo.Left>= ovni5.left) and (rayo.left<=ovni5.left+15)and (rayo.Visible = true) then
         begin
         c:= c+1;
         p:=p+100;
         rayo.Visible := false;
         ovni5.Visible:=false;
         ovni5.left:= -10;
         vidaovni5.Caption := 'mu' ;

         end;
           if (rayo.top<= ovni6.top+20) and (rayo.top>=ovni6.top-30 ) and (rayo.Left>= ovni6.left) and (rayo.left<=ovni6.left+15)and (rayo.Visible = true) then
         begin
         c:= c+1;
         p:=p+100;
         rayo.Visible := false;
         ovni6.Visible:=false;
         ovni6.left:= -10;
         vidaovni6.Caption := 'mu' ;

         end;
            if (rayo.top<= ovni7.top+20) and (rayo.top>=ovni7.top-30 ) and (rayo.Left>= ovni7.left) and (rayo.left<=ovni7.left+15)and (rayo.Visible = true) then
         begin
         c:= c+1;
         p:=p+100;
         rayo.Visible := false;
         ovni7.Visible:=false;
         ovni7.left:= -10;
         vidaovni7.Caption := 'mu' ;

         end;
            if (rayo.top<= ovni8.top+20) and (rayo.top>=ovni8.top-30 ) and (rayo.Left>= ovni8.left) and (rayo.left<=ovni8.left+15)and (rayo.Visible = true) then
         begin
         c:= c+1;
         p:=p+100;
         rayo.Visible := false;
         ovni8.Visible:=false;
         ovni8.left:= -10;
         vidaovni8.Caption := 'mu' ;

         end;
            if (rayo.top<= ovni9.top+20) and (rayo.top>=ovni9.top-30 ) and (rayo.Left>= ovni9.left) and (rayo.left<=ovni9.left+15)and (rayo.Visible = true) then
         begin
         c:= c+1;
         p:=p+100;
         rayo.Visible := false;
         ovni9.Visible:=false;
         ovni9.left:= -10;
         vidaovni9.Caption := 'mu' ;

         end;
         if (rayo.top<= ovni10.top+20) and (rayo.top>=ovni10.top-30 ) and (rayo.Left>= ovni10.left) and (rayo.left<=ovni10.left+15)and (rayo.Visible = true) then
         begin
         c:= c+1;
         p:=p+100;
         rayo.Visible := false;
         ovni10.Visible:=false;
         ovni10.left:= -10;
         vidaovni10.Caption := 'mu' ;

         end;
          if (rayo.top<= ovni11.top+20) and (rayo.top>=ovni11.top-30 ) and (rayo.Left>= ovni11.left) and (rayo.left<=ovni11.left+15)and (rayo.Visible = true) then
         begin
         c:= c+1;
         p:=p+100;
         rayo.Visible := false;
         ovni11.Visible:=false;
         ovni11.left:= -10;
         vidaovni11.Caption := 'mu' ;

         end;
          if (rayo.top<= ovni12.top+20) and (rayo.top>=ovni12.top-30 ) and (rayo.Left>= ovni12.left) and (rayo.left<=ovni12.left+15)and (rayo.Visible = true) then
         begin
         c:= c+1;
         p:=p+100;
         rayo.Visible := false;
         ovni12.Visible:=false;
         ovni12.left:= -10;
         vidaovni12.Caption := 'mu' ;

         end;
          if (rayo.top<= ovni13.top+20) and (rayo.top>=ovni13.top-30 ) and (rayo.Left>= ovni13.left) and (rayo.left<=ovni13.left+15)and (rayo.Visible = true) then
         begin
         c:= c+1;
         p:=p+100;
         rayo.Visible := false;
         ovni13.Visible:=false;
         ovni13.left:= -10;
         vidaovni13.Caption := 'mu' ;

         end;
         if (rayo.top<= ovni14.top+20) and (rayo.top>=ovni14.top-30 ) and (rayo.Left>= ovni14.left) and (rayo.left<=ovni14.left+15)and (rayo.Visible = true) then
         begin
         c:= c+1;
         p:=p+100;
         rayo.Visible := false;
         ovni14.Visible:=false;
         ovni14.left:= -10;
         vidaovni14.Caption := 'mu' ;

         end;
         if (rayo.top<= ovni15.top+20) and (rayo.top>=ovni15.top-30 ) and (rayo.Left>= ovni15.left) and (rayo.left<=ovni15.left+15)and (rayo.Visible = true) then
         begin
         c:= c+1;
         p:=p+100;
         rayo.Visible := false;
         ovni15.visible:=false;
         ovni15.left:= -10;
         vidaovni15.Caption := 'mu' ;

         end;














 //////////////////////////////////////////////////////////////////////////////////////////
         if p>=100 then
         begin
           puntuacion.Caption:= inttostr(StrToInt(puntuacion.Caption)+100)
         end;
         if c>=1 then
         begin
           muenemigos.Caption:= inttostr(StrToInt(muenemigos.caption)+1);
         end;
         if (muenemigos.Caption='10') and (ayuda3.Caption='1') then
         begin
           subirdenivel.Caption:='2' ;
           ayuda3.caption:='2';
         end;
         if (muenemigos.Caption='12') and (ayuda3.Caption='2') then
         begin
           subirdenivel.Caption:='3' ;
           ayuda3.caption:='3';
         end;

      end;
 /////////////////////////////////////////////////////////////////////////////////////////////////////////
      if (nave.top<= ovni1.top+20) and (nave.top>=ovni1.top-30 ) and (nave.Left>= ovni1.left-20) and (nave.left<=ovni1.left+20) then
      begin
         v:=v+1;
         nave.Visible := false;
      end;
       if (nave.top<= ovni2.top+20) and (nave.top>=ovni2.top-30 ) and (nave.Left>= ovni2.left-20) and (nave.left<=ovni2.left+20) then
      begin
        v:=v+1;
        nave.Visible := false;
      end;
       if (nave.top<= ovni3.top+20) and (nave.top>=ovni3.top-30 ) and (nave.Left>= ovni3.left-20) and (nave.left<=ovni3.left+20) then
       begin
          v:=v+1;
          nave.Visible := false;
       end;
          if (nave.top<= ovni4.top+20) and (nave.top>=ovni4.top-30 ) and (nave.Left>= ovni4.left-20) and (nave.left<=ovni4.left+20) then
       begin
          v:=v+1;
          nave.Visible := false;
       end;
          if (nave.top<= ovni5.top+20) and (nave.top>=ovni5.top-30 ) and (nave.Left>= ovni5.left-20) and (nave.left<=ovni5.left+20) then
       begin
          v:=v+1;
          nave.Visible := false;
       end;
          if (nave.top<= ovni6.top+20) and (nave.top>=ovni6.top-30 ) and (nave.Left>= ovni6.left-20) and (nave.left<=ovni6.left+20) then
       begin
          v:=v+1;
          nave.Visible := false;
       end;
           if (nave.top<= ovni7.top+20) and (nave.top>=ovni7.top-30 ) and (nave.Left>= ovni7.left-20) and (nave.left<=ovni7.left+20) then
       begin
          v:=v+1;
          nave.Visible := false;
       end;
           if (nave.top<= ovni8.top+20) and (nave.top>=ovni8.top-30 ) and (nave.Left>= ovni8.left-20) and (nave.left<=ovni8.left+15) then
       begin
          v:=v+1;
          nave.Visible := false;
       end;
           if (nave.top<= ovni9.top+20) and (nave.top>=ovni9.top-30 ) and (nave.Left>= ovni9.left-20) and (nave.left<=ovni9.left+15) then
       begin
          v:=v+1;
          nave.Visible := false;
       end;
           if (nave.top<= ovni10.top+20) and (nave.top>=ovni10.top-30 ) and (nave.Left>= ovni10.left-20) and (nave.left<=ovni10.left+15) then
       begin
          v:=v+1;
          nave.Visible := false;
       end;
        if (nave.top<= ovni11.top+20) and (nave.top>=ovni11.top-30 ) and (nave.Left>= ovni11.left-20) and (nave.left<=ovni11.left+15) then
       begin
          v:=v+1;
          nave.Visible := false;
       end;
        if (nave.top<= ovni12.top+20) and (nave.top>=ovni12.top-30 ) and (nave.Left>= ovni12.left-20) and (nave.left<=ovni12.left+15) then
       begin
          v:=v+1;
          nave.Visible := false;
       end;
        if (nave.top<= ovni13.top+20) and (nave.top>=ovni13.top-30 ) and (nave.Left>= ovni13.left-20) and (nave.left<=ovni13.left+15) then
       begin
          v:=v+1;
          nave.Visible := false;
       end;
       if (nave.top<= ovni14.top+20) and (nave.top>=ovni14.top-30 ) and (nave.Left>= ovni14.left-20) and (nave.left<=ovni14.left+20) then
       begin
          v:=v+1;
          nave.Visible := false;
       end;
       if (nave.top<= ovni15.top+20) and (nave.top>=ovni15.top-30 ) and (nave.Left>= ovni15.left-20) and (nave.left<=ovni15.left+20) then
       begin
          v:=v+1;
          nave.Visible := false;
       end;
       if (nave.left<= jefe.left+180) and (nave.left>=jefe.left) and (nave.top<= jefe.top+90) and (nave.top>=jefe.top-90 ) then
       begin
          v:=v+1;
          nave.Visible := false;
       end;

       if v>=1 then
       begin
         vida.Caption:= inttostr(StrToInt(vida.caption)+1);

       end;
       if vida.Caption = '1' then
        begin
          vida1.Visible:=false;
          tvida1.Caption:='mu';
        end;
       if vida.Caption = '2' then
        begin
          vida2.Visible:=false;
          tvida2.Caption:='mu';
        end;
       if vida.Caption = '3' then
        begin
          vida3.Visible:=false;
          tvida3.Caption:='mu' ;
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









