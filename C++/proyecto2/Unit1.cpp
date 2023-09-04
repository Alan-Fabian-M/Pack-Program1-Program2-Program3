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
Cardinal StrtoInt(AnsiString cad)
{Cardinal nu= 0;
 for (byte i = 1; i <cad.Length(); i++) {
	 if ((cad[i]>='0')&&(cad[i]<='9')) {
		 nu = nu * 10 + cad[i]- 48;
	 }
	 return nu ;
 }

}
void __fastcall TForm1::FormCreate(TObject *Sender)
{ nomArch= "Alumnos.dat";
pf = new fstream(nomArch.c_str(), ios::in | ios:: binary );
 if (pf->fail()) {
  delete(pf);
  pf= new fstream(nomArch.c_str(), ios:: out | ios :: binary);
 }
 pf->close();
 delete(pf);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormClose(TObject *Sender, TCloseAction &Action)
{
 pf->flush();
 pf->close();
 delete pf ;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{  bool hallado= false;
    AnsiString cad;
	RegAlumno reg,regNuevo ;
	regNuevo.mark='0';
	regNuevo.cod = StrToInt(Edit1->Text);
	cad= Edit2 ->Text;
	strcpy(regNuevo.nom, cad.c_str());
	cad= Edit3->Text;
	strcpy(regNuevo.dir, cad.c_str());
	cad= MaskEdit1->Text;
	regNuevo.fecha.dia= StrToInt(cad.SubString(1,2));
	regNuevo.fecha.mes= StrToInt(cad.SubString(4,2));
	regNuevo.fecha.ano= StrToInt(cad.SubString(7,4));
	pf= new fstream(nomArch.c_str(), ios::in |ios:: out |ios::binary );
	if (pf->is_open()) {
	 do{
	  pf ->read((char*)&reg, sizeof (reg));
	  hallado = (reg.cod == regNuevo.cod)&&(reg.mark!='*');
	 }while (!hallado && !pf->eof());
	 if (hallado)
	   pf ->seekg(-sizeof(reg), ios::cur);
	 else
		pf->seekg(0,ios::end);
	 pf->write((char*)&regNuevo, sizeof (regNuevo));
	 Edit2->Text = "" ; Edit3->Text=""; MaskEdit1->Text="";
	 Edit1->SetFocus();
	 pf->close();
	}
	pf->flush();
	pf->close();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit1Exit(TObject *Sender)
{ bool hallado= false;
RegAlumno reg;
Word codi;
codi= StrToInt(Edit1->Text);
pf= new fstream(nomArch.c_str(), ios:: in| ios :: binary );
 if (pf->is_open()) {
	 do{
	  pf->read((char*)&reg, sizeof (reg));
	  hallado = (reg.cod==codi)&&(reg.mark!='*');

	 } while (!hallado && !pf->eof());


	 if (hallado ) {
	  Edit2->Text= reg.nom;
	  Edit3->Text= reg.dir;
	  MaskEdit1->Text= IntToStr(reg.fecha.dia)+"/"+ IntToStr(reg.fecha.mes)+"/"+IntToStr(reg.fecha.ano);
	  Edit2->SetFocus();

	 }else{
		 // sino limpiar la pantalla
		 Edit2->Text = "" ; Edit3->Text=""; MaskEdit1->Text="";
	 }
 }
 pf->close();
 delete(pf);


}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{ bool hallado = false;
 RegAlumno reg;
 Word cod; reg.mark='0';
 cod=StrToInt(Edit1->Text);
 pf= new fstream(nomArch.c_str(), ios::in |ios::out |ios:: binary);
 if (pf->is_open()) {
	 do{
		 pf ->read ((char*)&reg, sizeof(reg));
		 hallado=(reg.cod==cod)&&(reg.mark!='*');
	 } while (!hallado && !pf->eof());
	 if (hallado) {
	  reg.mark='*'; // marcado como borrado
	  pf->seekg(-sizeof(reg), ios::cur);
	  pf->write((char*)&reg, sizeof(reg));
	  //Limpiar();
	  Edit1->Text=""; Edit2->Text = "" ; Edit3->Text=""; MaskEdit1->Text="";
	  Edit1->SetFocus();
	 }
 }
 pf->close();
 delete(pf);

}
//---------------------------------------------------------------------------


