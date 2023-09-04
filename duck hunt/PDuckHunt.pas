unit PDuckHunt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.MPlayer,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, JPEG;

type
  Tproyecto = class(TForm)
    MediaPlayer1: TMediaPlayer;
    MPMusicaFondo: TTimer;
    ImagePato: TImageList;
    reloj: TTimer;
    ImageDog: TImageList;
    Tdog: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure relojTimer(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure TdogTimer(Sender: TObject);
  private
    { Private declarations }
  public
  //pato

    procedure FlyDerecha;
    procedure FlyIzquierda;
    procedure flyArriba;
    procedure Flyabajo;
    procedure FlyArribaderecha;
    procedure FlyArribaizquierda;
    procedure FlyAbajoDerecha;
    procedure FlyAbajoizquierda;


  // perro
    procedure caminando;
    { Public declarations }
  end;

var
  proyecto: Tproyecto ;
  ejeX,ejeY,derecha , izquierda ,
  Arriba,
 Abajo ,
 Arribaderecha ,
 ArribaIzquierda ,
 AbajoDerecha,
 AbajoIzquierda ,
 PatoMuerto ,
 PartoCayendo : integer ;

  derechadog, ejedogX : integer;

implementation

{$R *.dfm}

{ TForm1 }

procedure Tproyecto.caminando;
begin
  imagedog.draw(canvas, EjedogX,500,derechadog);
        inc(ejedogX,30);
        inc(derechadog);
         if derechadog > 4 then
          derechadog := 0;


end;

procedure Tproyecto.Flyabajo;
begin
 imagepato.draw(canvas,ejex,ejey,abajo);
  inc(ejey,30);
  Inc(abajo);
   if abajo > 11 then
    abajo :=  9;

end;

procedure Tproyecto.FlyAbajoDerecha;
begin
 imagepato.draw(canvas,ejex,ejey,AbajoDerecha);
  Inc(ejey, 30);
   inc(ejex , 30);
    Inc(AbajoDerecha);
     if AbajoDerecha > 20 then
      AbajoDerecha := 18;

end;

procedure Tproyecto.FlyAbajoizquierda;
begin
 imagePato.draw(canvas,ejex,ejey,Abajoizquierda);
    inc(ejey, 30);
    Dec(ejex , 30);
    Inc(Abajoizquierda);
     if Abajoizquierda > 23 then
      Abajoizquierda := 21;
end;

procedure Tproyecto.flyArriba;
begin
  imagePato.draw(canvas,ejex,ejey, Arriba);
   Dec(ejey,30);
    INC(Arriba);
     if Arriba > 8 then
      Arriba := 6  ;

end;

procedure Tproyecto.FlyArribaderecha;
begin
  imagepato.draw(canvas,ejex, ejey , ArribaDerecha);
   Dec(ejey,30);
   Inc(ejex,30);
    inc (ArribaDerecha);
    if ArribaDerecha > 14 then
      ArribaDerecha := 12 ;
end;

procedure Tproyecto.FlyArribaizquierda;
begin
 imagepato.draw(canvas,ejex,ejey, ArribaIzquierda);
   Dec(ejey,30);
   Dec(ejex,30);
    Inc(ArribaIZquierda);
      if Arribaizquierda > 17 then
        ArribaIzquierda:= 15
end;

procedure Tproyecto.FlyDerecha;
begin
   ImagePato.Draw(canvas,ejeX,ejeY,derecha);
        INC(ejex,30);
        Inc(derecha);
          if derecha > 2  then
           begin
             derecha := 0 ;
           end;


end;

procedure Tproyecto.FlyIzquierda;
begin
      ImagePato.Draw(canvas,ejeX,ejeY,Izquierda);
        dec(ejex,30);
        Inc(izquierda);
          if izquierda > 5  then
           begin
             izquierda := 3 ;
           end;
end;

procedure Tproyecto.FormCreate(Sender: TObject);
begin

 // posicion inicial del pato en ejeX y ejeY
 ejeX:= 1000;
 ejeY:= 400;


   // posiciones iniciales de las animacioines del pato
 Derecha:= 0 ; // patos de secuencia a la derecha de 0 a 2 en la ImageList
 Izquierda:=3; // patos en secuencia de 3 a 5  en la imageList
 Arriba:= 6; // patos en secuencia de 6 a 8  en la imageList
 Abajo := 9 ;//patos en secuencia de 9 a 11  en la imageList
 Arribaderecha := 12; // patos en secuencia de 12 a 14  en la imageList
 ArribaIzquierda := 15; // patos en secuencia de 15 a 17  en la imageList
 AbajoDerecha:= 18; // patos en secuencia de 18 a 20  en la imageList
 AbajoIzquierda := 21; // patos en secuencia de 21 a 23  en la imageList
 PatoMuerto := 24; // patos en secuencia de 24 a 26  en la imageList
 PartoCayendo := 27; //patos en secuencia de 27 a 29  en la imageList



   // posicion del perro
   derechadog:= 0;    // patos de secuencia a la derecha de 0 a 4 en la ImageList

end;

procedure Tproyecto.FormPaint(Sender: TObject);
var
JPG : TJPEGImage;
rec : Trect;
begin
  JPG := TJPEGImage.Create;
  JPG.LoadFromFile('fondito.jpg');
  Rec := rect(0,0,proyecto.ClientWidth,proyecto.ClientHeight);
  proyecto.Canvas.StretchDraw(rec,JPG);
  JPG.Free;

end;

procedure Tproyecto.relojTimer(Sender: TObject);
begin
  repaint;

     FlyDerecha;
     //FlyIzquierda;
     //lyArriba;
     //Flyabajo;
     //FlyArribaderecha;
     //FlyArribaizquierda;
     //FlyAbajoDerecha;
     //FlyAbajoizquierda;
end;

procedure Tproyecto.TdogTimer(Sender: TObject);
begin
 //repaint;
 caminando ;

end;

end.
