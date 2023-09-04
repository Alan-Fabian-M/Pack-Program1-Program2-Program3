//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Mask.hpp>
#include <Vcl.Menus.hpp>
#include <FStream>
#include <stdio.h>
#include <ctype.h>
//---------------------------------------------------------------------------
struct TFecha{
	byte dia;
	byte mes;
	Word ano;

};
struct RegAlumno{
	char mark; // marca de borrado
	Word cod;
	char nom[21];// cadena de 20 caracteres
	char dir[21];// cadena de 20 caracteres
	TFecha fecha;

} ;
struct RegIdxCod{
	String nom;    // codigo del estudiante
	Cardinal pos; // posicion en el archivo de datos de alumno
};
struct RegIdxNom{
	Char nom[21];//nombre del estudiante
	Cardinal pos; // posicion ene l archivo de datos de alumno
};
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TButton *Button1;
	TButton *Button2;
	TButton *Button3;
	TEdit *Edit1;
	TEdit *Edit2;
	TEdit *Edit3;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TLabel *Label5;
	TDateTimePicker *DateTimePicker1;
	TMaskEdit *MaskEdit1;
	TLabel *Label6;
	TLabel *Label7;
	TLabel *Label8;
	TMainMenu *MainMenu1;
	TMenuItem *indices1;
	TMenuItem *Porcodigo1;
	TMenuItem *PorNombre1;
	TButton *Button4;
	TButton *Button5;
	TButton *Button6;
	TButton *Button7;
	TMenuItem *ordenar1;
	TMenuItem *porcodigo2;
	TMenuItem *pornombre2;
	TButton *Button8;
	TMenuItem *tarea1;
	TMenuItem *actualizar1;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall Edit1Exit(TObject *Sender);
	void __fastcall Button2Click(TObject *Sender);
	void __fastcall Porcodigo1Click(TObject *Sender);
	void __fastcall Button4Click(TObject *Sender);
	void __fastcall Button7Click(TObject *Sender);
	void __fastcall Button6Click(TObject *Sender);
	void __fastcall Button5Click(TObject *Sender);
	void __fastcall porcodigo2Click(TObject *Sender);
	void __fastcall actualizar1Click(TObject *Sender);
	void __fastcall pornombre2Click(TObject *Sender);
	void __fastcall PorNombre1Click(TObject *Sender);
private:	// User declarations
fstream *pf, *pIdx ;
AnsiString nomArch, nomIdxCod;
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);

};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
