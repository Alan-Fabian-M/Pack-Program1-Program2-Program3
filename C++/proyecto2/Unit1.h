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
#include <FStream>
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
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall Edit1Exit(TObject *Sender);
	void __fastcall Button2Click(TObject *Sender);
private:	// User declarations
fstream *pf ;
AnsiString nomArch;
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
