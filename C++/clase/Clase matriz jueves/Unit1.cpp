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
void LlenarF4(TStringGrid *A, Byte f, byte n , byte d)
{
	if (n > 0){ // caso general
	 LlenarF4(A,f,n-1,d);
	 A->Cells[n-1][f]= d ;
	 A->Cells[f][n-1]= d ;
	}
}

void Cargar4(TStringGrid *A, byte m)
{
 if (m>0 ) { // caso general
	 Cargar4 (A, m-1);
	 LlenarF4(A, m-1, m ,m);
	// LlenarC4(A,m-1,m,m);

 }
}
void __fastcall TForm1::Button1Click(TObject *Sender)
{  StringGrid1->RowCount=StrToInt(Edit1->Text);
   StringGrid1->ColCount=StringGrid1->RowCount;
   Cargar4(StringGrid1, StringGrid1->RowCount);
}
//---------------------------------------------------------------------------
void LlenarF5(TStringGrid *A, byte f, byte a , byte b , byte d )
{ byte n = b-a +1;
 if (n > 0) { // caso general
	 LlenarF5 (A,f,a,b-1,d);
	 A->Cells[b][f]= d;
	 A->Cells[f][b]= d;
 }
}
void Cargar5(TStringGrid *A, byte fa, byte fb)
{ byte m = fb-fa+1;
  if (m == 1 )  // 2do caso base
   A->Cells[fa][fb]=1;
   else if (true) { // caso general
	Cargar5(A, fa+1, fb -1);
	LlenarF5(A,fb,fa,fb,m/2+1);
	LlenarF5(A,fa,fa,fb,m/2+1);
   }


}
void __fastcall TForm1::Button2Click(TObject *Sender)
{
	StringGrid1->RowCount= StrToInt(Edit1->Text);
	StringGrid1->ColCount= StringGrid1-> RowCount;
	Cargar5(StringGrid1, 0, StringGrid1->Rowcount - 1);
}
//---------------------------------------------------------------------------
