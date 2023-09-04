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
void InvertirNum ( TStringGrid *v, Cardinal &n, Byte &c )
{ byte b, num1, num2;
 if (n > 9) {
  b = n % 100;
  n = n / 100;
  InvertirNum(v ,n, c);
  num1 = b % 10;
  num2 = b / 10;
  v->Cells[c][0] = num1 * 10 + num2 ;
   c++;
 }else if (n > 0) {
		   v->Cells[c][0] = n;
			c++;
 }

 }


void __fastcall TForm1::Button1Click(TObject *Sender)
{

  Cardinal n = StrToInt(Edit1->Text);
  Byte c = 0 ;
  InvertirNum(StringGrid1 , n, c);
}
//---------------------------------------------------------------------------

//Char UltChar (AnsiString pal)
//{
//
//}
//AnsiString UltCar (TStringGrid *v, Byte &n)
//{ AnsiString pal, a ;
//	pal = UltCar(v, n-1);
//
//
//
//
//	return pal;
//}

void __fastcall TForm1::Button3Click(TObject *Sender)
{
//	Edit1->Text =  UltCar (StringGrid1);
}
//---------------------------------------------------------------------------
bool EsVocal(char a)
{  AnsiString  pal = "aeiouAEIOU";
   return  pal.Pos(a) > 0 ;
}
AnsiString SolVoc (AnsiString t )
{ AnsiString Vocal = "aeiou";  AnsiString cad;
 if (t.Length() > 0) {
  char a = t[t.Length()];
  t.Delete(t.Length(),1);
  cad = SolVoc(t);
  if (EsVocal(a)) {
   cad = cad + a ;
  }
 }

return cad;
}
void CargarVoc(TStringGrid *v, AnsiString t, Byte &c)
{ 
 if (t.Length()>0) {
  byte p = 	t.LastDelimiter(' ');
  AnsiString pal = t.SubString(p+1, t.Length());
  t.Delete(p+1, t.Length());
  t = t.Trim();
  CargarVoc(v, t,c);
  pal = SolVoc(pal);
  v->Cells[c++][0] = pal;
 }
	
	
 
}
void __fastcall TForm1::Button4Click(TObject *Sender)
{
  AnsiString pal = Edit1->Text;
  Byte c = 0; 
  CargarVoc(StringGrid1, pal, c);
  StringGrid1->ColCount = c;
}


//---------------------------------------------------------------------------
char SacarUltChar (AnsiString t)
{
   if (t.Length() > 0 ) {
     t = t.Trim();
   char a = t[t.Length()];
   return a ;  
   }
}
AnsiString UltCarVect(TStringGrid *v, Byte &c)
{   AnsiString pal, car ;
	 if (c > 0){ 
		pal = (v->Cells[c-1][0]);
		c--;
		car = UltCarVect (v, c);
		car = car + SacarUltChar(pal);
	  
	 } 
	 
 
 return car; 
}

void __fastcall TForm1::Button5Click(TObject *Sender)
{
Byte a = StringGrid1->ColCount ;
 AnsiString pal = UltCarVect(StringGrid1, a);	
 Edit1->Text = pal ;
}
//---------------------------------------------------------------------------

