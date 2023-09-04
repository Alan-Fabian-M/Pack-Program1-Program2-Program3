//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "laboratorio.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

void ElimDI (Cardinal &x)
{
  if (x < 10  ) { // caso base  n = 1
	 if (x % 2 == 1 )
	   x = 0;
  } else{ // caso general
	  byte d = x % 10 ;
	  x = x / 10 ;
	  ElimDI(x);
		if (d % 2 == 0){
		 x = x * 10 + d ;
		}
  }
}
void __fastcall TForm1::Button1Click(TObject *Sender)
{ Cardinal z ;
  z = StrToInt (Edit1 -> Text) ;
  ElimDI(z);
  Edit1-> Text = z ;

}


//---------------------------------------------------------------------------
bool EstaOrd(Cardinal x)
{ bool e ;
   if (x < 10 ){// caso base n = 1
	  e = true ;
   }
   else {// caso general n> 1
	 byte u = x % 10 ;
	 byte pu = x / 10 % 10 ;
	 e = EstaOrd(x/ 10) and (pu <= u);

   }
 return e ;
}


void __fastcall TForm1::Button2Click(TObject *Sender)
{
 if  (EstaOrd(StrToInt(Edit1->Text)))
	  Edit2 -> Text = "Si esta ordenado";
  else
	 Edit2 -> Text = "No esta ordenado" ;
}
//---------------------------------------------------------------------------

Byte MenorNum (Cardinal x)
{ Byte Men1 ;
  if (x < 10 )   Men1 = x ;
  else {
   Byte d = x % 10;
		x = x / 10 ;
	  Men1 = MenorNum (x);
	 if (d < Men1 ) Men1 =  d ;
  }
 return Men1 ;
}
void __fastcall TForm1::Button3Click(TObject *Sender)
{
 Edit3 -> Text =  StrToInt(MenorNum(StrToInt(Edit1-> Text)));
}
//---------------------------------------------------------------------------

