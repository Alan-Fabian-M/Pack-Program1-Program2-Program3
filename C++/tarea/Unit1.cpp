//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
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
void ElimPrimCar (AnsiString &t, Cardinal n)
{
   if (n == 1 )  {
	   t.Delete(1,1);
   }
	else {
		 ElimPrimCar(t, n-1);
		char a = t[n];
		char b = t[n-1];
		 if ((b == 32)&& (a!= 32 ) ){
		  t.Delete(n,1);

		 }
	}

}
void __fastcall TForm1::Button1Click(TObject *Sender)
{
  AnsiString a = Edit1->Text;
  ElimPrimCar(a, a.Length());
  // Edit1->Text = a ;
}
//---------------------------------------------------------------------------
