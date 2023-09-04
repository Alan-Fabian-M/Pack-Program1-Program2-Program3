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
void InsertarLugar (TStringGrid *v, int x, byte &n)
{
   if (n == 0) { // caso base
	   v->Cells[0][0] = x ;
	   n = 1 ;
   }else{ // caso general
	int z=StrToInt( v->Cells[n-1][0]);
	   if (x >=z) {
		v-> Cells[n][0] = x ;
   }else {
		  n --;
		  InsertarLugar(v,x,n);
		  v-> Cells[n][0] = z;
	   }
	   n++;
   }
}
void InsertionS(TStringGrid *v, byte n)
{
	if (n > 1 ) { // caso general
	  InsertionS(v,n-1);
	  int x = StrToInt(v->Cells[n-1][0]);
	  n--;
	  InsertarLugar(v,x,n);

	}
}
void __fastcall TForm1::Button2Click(TObject *Sender)
{

  InsertionS(StringGrid1, StringGrid1->ColCount );
}
//---------------------------------------------------------------------------
bool BusBin (TStringGrid *v, int x, byte a , byte b)
{ bool h ; byte n = b-a+1;
 if (n ==0)  // 1er caso base
  h == false ;
  else if (n == 1 ) // edo caso base
	h = x == StrToInt (v->Cells[a][0]);
  else { // Caso general
   byte c = (a+b)/2;
	if (StrToInt(v->Cells[c][0])==x)
		 h = true ;
	else if (v->Cells[c][0]< x)
	  h = BusBin(v,x,c+1,b);
	else
	  h = BusBin(v,x,a,c-1);
  }




  return h ;
}
void __fastcall TForm1::Button1Click(TObject *Sender)
{
  if (BusBin(StringGrid1, StrToInt(Edit2->Text), 0 , StringGrid1-> ColCount-1)) {
	Edit3->Text = "Si esta en el vector" ;
  }else
	  Edit3->Text = "No esta en el vector ";

}
//---------------------------------------------------------------------------
