//---------------------------------------------------------------------------

#ifndef UCH
#define UCH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <System.ImageList.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ExtDlgs.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.Menus.hpp>
#include <FStream.h>

//---------------------------------------------------------------------------

class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TOpenTextFileDialog *OpenTextFileDialog1;
	TMainMenu *MainMenu1;
	TImageList *ImageList1;
	TMenuItem *Cargar1;
	TMenuItem *Probar1;
	TMenuItem *Salir1;
	void __fastcall Cargar1Click(TObject *Sender);
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall Probar1Click(TObject *Sender);
private:	// User declarations
	char Laberinto [100][100];
	byte m,n; // dimension del laberinto
	int x,y; // posicion del hamster
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
	void Cargar (String);
	bool BackTrack( char Lab[][100], int x , int y );
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
