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

bool EsVocal (AnsiString a)
{ AnsiString vocales = "aeiou" ; bool ban = false ;
return vocales.Pos(a)>0;
}
AnsiString  SacarVocales (AnsiString t)
{ AnsiString pal ;
 if (t > 0) {
  char a = t[t.Length()];
  t.Delete(t.Length(), 1);
  pal = SacarVocales(t);
  if (EsVocal(a)) pal = pal + a;
 }




return pal;
}
void CargarVector (TStringGrid *v, AnsiString t, byte &c)
{
 if (t > 0 ) {
  t= t.Trim();
  byte pos = t.LastDelimiter(' ');
  AnsiString pal = t.SubString(pos+1,t.Length()-pos );
  t.Delete(pos+1, t.Length()-pos);
  CargarVector(v, t, c) ;
  AnsiString Vocales = SacarVocales (pal);
  v->Cells[c++][0]= Vocales ;

 }

}
void __fastcall TForm1::Button1Click(TObject *Sender)
{
 byte c = 0 ;
CargarVector(StringGrid1, Edit1->Text,c ) ;
StringGrid1->ColCount = c ;
}
//---------------------------------------------------------------------------
