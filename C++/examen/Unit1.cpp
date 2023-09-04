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


AnsiString Cadena (TStringGrid *v, Byte c)
{ AnsiString pal;
  if (c > 0 ) {
   Cardinal num = StrToInt(v->Cells[c-1][0]);
   pal = Cadena(v, c-1);
   pal = String(num) + pal ;
  }
  return pal;
}
void __fastcall TForm1::Button1Click(TObject *Sendeaar)
{
 Byte c = StringGrid1->ColCount;
 AnsiString cad = Cadena (StringGrid1 , c);
 Edit1->Text = cad ;
}
//---------------------------------------------------------------------------
void RepetirDigito (Cardinal &num, Byte dig)
{
	if (num > 1) {
	 num--;
	 RepetirDigito(num, dig);
	 num= num *10 + dig ;
	} else num= dig ;
}

void   Vector(TStringGrid *v, AnsiString t, Byte &c)
{
 if (t.Length()> 0) {
   Cardinal num = StrToInt(t[t.Length()]);
   t.Delete(t.Length(), 1);
   Vector (v, t, c);
   RepetirDigito(num , num  );
   v->Cells[c++][0] = num;

 }
}
void __fastcall TForm1::Button2Click(TObject *Sender)
{
 Byte c = 0;
 StringGrid1->ColCount = Edit1->Text.Length();
 Vector(StringGrid1, Edit1->Text, c);


}
//---------------------------------------------------------------------------
