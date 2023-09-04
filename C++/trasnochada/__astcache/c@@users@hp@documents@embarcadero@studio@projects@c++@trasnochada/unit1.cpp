﻿//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include <math.h>
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
byte DigMay (Cardinal num)
{
 byte mayor;
	if (num > 9 )
	{
	   byte num1 = num % 10 ;
	   mayor = DigMay(num / 10 );
		if  (num1 > mayor)
		 mayor = num1 ;
	}
	if  (num <= 9)
	 return num ;
 return mayor ;
}

void __fastcall TForm1::ejercicios2Click(TObject *Sender)
{
  Edit2->Text = IntToStr(DigMay(StrToInt(Edit1->Text)));
}
//---------------------------------------------------------------------------
bool EsPar (Byte num){
 return num % 2 == 0;
}

void EliminarPar (Cardinal &num ){

byte n;


 if (num > 9 ){
	byte n = num % 10 ;
	num = num / 10 ;
	EliminarPar(num );
	 if (!EsPar(n))  num = num *10 + n ;

 }
 if (num <= 9 )
 {
	 if (EsPar (num))
	   num = 0 ;
 }

}
void __fastcall TForm1::eliminarpares1Click(TObject *Sender)
{
  Cardinal n = StrToInt(Edit1->Text);
  EliminarPar(n) ;
  Edit2->Text = n;
}
//---------------------------------------------------------------------------

void CargarVector (TStringGrid *v, Cardinal num, byte &c ){

 if (num > 9 ){
  byte num1 = num % 100 ;
  CargarVector (v,num/100, c);
  byte a = num1 %10;
  byte b = num1 / 10 ;
  byte f = a*10+b;
  v->Cells[c++][0] = f;
 }
 if ((num <=9) && (num > 0)){
  v->Cells[c++][0] = num;
 }
}
void __fastcall TForm1::cargarvector1Click(TObject *Sender)
{
 Byte c = 0 ;
 CargarVector (StringGrid1, StrToInt(Edit1->Text), c);
 StringGrid1->ColCount = c;

}
//---------------------------------------------------------------------------
AnsiString CargarCad (TStringGrid *v, byte c){

AnsiString t ;

 if (c > 0 ){

  AnsiString num = v->Cells[c][0];
  t = CargarCad(v,--c);
  t = num + t ;
 }
 else
   t =  v->Cells[0][0];

 return t;
}

void __fastcall TForm1::generarcadena1Click(TObject *Sender)
{

 Edit2->Text = CargarCad(StringGrid1, StringGrid1->ColCount);

}
//---------------------------------------------------------------------------
AnsiString invertir1(AnsiString cadena){
byte nc = cadena.Length();
AnsiString s;
if(nc == 0){
	s = "";
}else{
	char a = cadena[1];         //hola   aloh
	cadena.Delete(1, 1);        // ola   alo
	s = invertir1(cadena);
	s = s + a;                  //  la   al
}                               //   a   a
return s;                       // ...
}


void EliminarVector (TStringGrid *v ,Byte n,byte  m ){

 if (n > 0){
  EliminarVector (v, n-1, m);
  v->Cells[n][0]= v->Cells[m+n][0];
 } if (n == 0 ) v->Cells[0][0]= v->Cells[m+n][0];
}
void __fastcall TForm1::eliminar1Click(TObject *Sender)
{
  EliminarVector(StringGrid1, StringGrid1->ColCount, StrToInt(Edit1->Text));
  StringGrid1->ColCount = StringGrid1->ColCount - StrToInt(Edit1->Text);
}
//---------------------------------------------------------------------------
void ElimVecPos (TStringGrid *v, byte n, byte m, byte p){

 if (n > 0 ){
   ElimVecPos(v,n-1,m,p);
	if ((n >=p ) && (n <= m+p))
	  v->Cells[n][0]= v->Cells[m+n][0];
 }
 if (n == 0)
	   if (n ==p ) v->Cells[0][0]= v->Cells[m+n][0];
}
void __fastcall TForm1::Eliminarvectorposicion1Click(TObject *Sender)
{
	ElimVecPos(StringGrid1, StringGrid1->ColCount, StrToInt(Edit1->Text), StrToInt(Edit2->Text));
	StringGrid1->ColCount = StringGrid1->ColCount - StrToInt(Edit1->Text);
}
//---------------------------------------------------------------------------
Cardinal Cargar (TStringGrid *v, byte n){
 Cardinal num;
 if (n > 0){
  AnsiString b = v->Cells[n][0];
  num = Cargar(v, n-1);
  num = (StrToInt(b) * pow(10,n)) + num ;
 }
 if (n == 0 ) return StrToInt(v->Cells[0][0]);
 return num ;
}

void __fastcall TForm1::examen2Click(TObject *Sender)
{
 Edit1->Text = Cargar(StringGrid1, StringGrid1->ColCount-1);
}
//---------------------------------------------------------------------------

//void CargarString(TSTringGrid *v, AnsiString t) {
//	AnsiString pal;
//	byte p, len = t.length();
//	if (len > 1 )
//	{
//
//	}
//}


void CargarV(TStringGrid *v, AnsiString t, byte &c){
 char Ch ;

 if (t.Length() > 1){

   Ch = t[t.Length()];
   t.Delete(t.Length(),1);
   CargarV(v, t, c);
   v->Cells[c][0] = Ch;
   --c;

 }else if (t.Length() == 1)
   {
   v->Cells[c][0] = t;
   --c;
   }
 }

void __fastcall TForm1::cargarvector2377321Click(TObject *Sender)
{
 Byte c;

 c = Edit1->Text.Length();
  StringGrid1->ColCount= c;
  c--;
  CargarV(StringGrid1, Edit1->Text, c ) ;
}
//---------------------------------------------------------------------------

void EliNumCad(AnsiString &t ){
 char Ch;
 if (t.Length() > 1){

	Ch = t[t.Length()];
	t.Delete(t.Length(),1);
	EliNumCad(t);
	if ( !isdigit(Ch) )
	  t = t + Ch;

 }else if (t.Length()==1){
	if ( isdigit(t[1]) )
	 t.Delete(1,1);



 }
}
void __fastcall TForm1::Eliminarnumerodelacadenahola12como1holacomo1Click(TObject *Sender)

{
 AnsiString t;
 t = Edit1->Text;
  EliNumCad(t);
 Edit1->Text = t;
}
//---------------------------------------------------------------------------
 double  SumarFrac(int n ){
  double frac ;
  int a ,b ;
  if (n == 1) {

	frac = (n+(3+n))/ pow(2,n);
	return frac ;

  } else  if (n > 1){
	  frac = SumarFrac(n-1);
	  frac = frac +  ((n+(3+n))/ pow(2,n));
	}
   return frac ;
 }

void __fastcall TForm1::sumarseriefraciones1Click(TObject *Sender)
{
 int n ;
  Edit2->Text = (SumarFrac(StrToInt(Edit1->Text)));
}
//---------------------------------------------------------------------------
 int comb(int a, int b){
  if (b == 0 || b == a) {
   return 1;
  } else {
   return comb(a-1, b-1)+comb(a-1, b);
  }
 }
void __fastcall TForm1::Combinatoria1Click(TObject *Sender)
{
  Label1->Caption = comb(StrToInt(Edit1->Text), StrToInt(Edit2->Text));
}
//---------------------------------------------------------------------------
bool Verificar (int n){
  bool b;
  if (n / 10 == 0) {
   return true;
  } else {
	b = Verificar(trunc(n / 10));
	b =  (b && ((n % 10) > ((n / 10)% 10)));
	return b;
  }
}

void __fastcall TForm1::verificarselosnumerosestanordenados1Click(TObject *Sender)

{

 if (Verificar (StrToInt(Edit1->Text))) {
	Edit2->Text = "true";
 } else {
	 Edit2->Text = "false";
 }
}

//---------------------------------------------------------------------------
void RepetirDigito(TStringGrid *v, Cardinal n, byte dig, byte pos){
  if (n >0 ) {
	n--;
	RepetirDigito(v,n,dig,pos);
	v->Cells[n+pos][0]= dig;
  }else v->Cells[pos][0]= dig;
}
void CargarVectorRep(TStringGrid *v, Cardinal num){

 if (num > 9) {

   byte dig = num % 10;
   CargarVectorRep(v, num / 10 );
   RepetirDigito (v, dig, dig, v->ColCount);
 } else RepetirDigito (v, num, num, 0);
}
void __fastcall TForm1::N202312Click(TObject *Sender)
{
//  Cardinal c = StrToInt(Edit1->Text);
//  RepetirDigito(StringGrid1, c,c, StrToInt(Edit2->Text) );
	CargarVectorRep(StringGrid1,StrToInt(Edit1->Text) );
}
//---------------------------------------------------------------------------

Cardinal Nserie(byte n){
Cardinal num;
 if (n == 1 ) {
   return n;
 } else {
   num = Nserie (n-1);
   num = num + pow (2, n-1);
   return num ;
 }

}
void __fastcall TForm1::seleccionarunnumero1Click(TObject *Sender)
{
  Edit2->Text = Nserie(StrToInt(Edit1->Text));
}
//---------------------------------------------------------------------------

bool EsVocal(char a)
{  AnsiString  pal = "aeiouAEIOU";
   return  pal.Pos(a) > 0 ;
}
byte ContVol (AnsiString t )
{ AnsiString Vocal = "aeiou";  byte c;
 if (t.Length() > 0) {
  char a = t[t.Length()];
  t.Delete(t.Length(),1);
  c = ContVol(t);
  if (EsVocal(a)) {
   c = c+1 ;
  }
 }

return c;
}
void __fastcall TForm1::Contarvocales1Click(TObject *Sender)
{
  Edit2->Text= ContVol(Edit1->Text);
}
//---------------------------------------------------------------------------

void Llenar(TStringGrid *m, Byte row, Byte col , byte &serie ){
 if (col > 1) {
	 m->Cells[col-1][row-1] = serie;
	 serie = serie +1;
	 Llenar (m, row, col-1, serie);
 } else {
	 m->Cells[col-1][row-1] = serie;
	 serie = serie +1;
 }
}
void Llenar2 (TStringGrid *m, Byte row, Byte col , byte &serie){
  if (row  > 1) {
      Llenar(m,row,col,serie);
	  Llenar2(m,row-1,col,serie);

  }else Llenar(m,row,col,serie);
}
void __fastcall TForm1::matriz1Click(TObject *Sender)
{
   byte serie = 1;
   byte row = SGMatriz->RowCount;
   byte col = SGMatriz->ColCount;
   Llenar2(SGMatriz , row,col , serie  ) ;
}
//---------------------------------------------------------------------------
Cardinal SumarPosImpar(Cardinal num, byte &c ){
 if (num <= 9) {
	if (c % 2 == 1) {
	   c--;
	   return num;
	}
	c--;
	return 0;
 } else {
	 byte dig = num % 10 ;
	 byte total = SumarPosImpar(num/10, c);
	 if (c % 2 == 1) {
	   c--;
	   return dig + total;
	}else {
	 c--;
	return total;
	}
 }
}

void __fastcall TForm1::Sumarlosdigitosenlaposicionimpar1Click(TObject *Sender)
{
  Cardinal c =  StrToInt(Edit1->Text);
  byte cant =  log10(c)+1 ;
   Edit2->Text = SumarPosImpar(c,cant);
}
//---------------------------------------------------------------------------
int SumImpAndParVec(TStringGrid *v, byte n){
 if (n == 1) {
   if (v->Cells[n-1][0] % 2 == 1) {
	  return StrToInt(v->Cells[n-1][0]);
   } else return  -1* StrToInt(v->Cells[n-1][0]) ;
   return 0;
 } else {
   int sum = SumImpAndParVec(v,n-1);
	if (v->Cells[n-1][0] % 2 == 1) {
	  return StrToInt(v->Cells[n-1][0]) + sum;
   } else return   sum -StrToInt(v->Cells[n-1][0]) ;

 }
}

void __fastcall TForm1::Sumarlosdigitosimparesyrestarlosdigitosparesenunvector1Click(TObject *Sender)

{
  Edit2->Text =  SumImpAndParVec(StringGrid1, StringGrid1->ColCount);
}
//---------------------------------------------------------------------------
String Cad(byte num){
String t;
 if (num == 1 ) {
	return IntToStr(num);
 } else {
	   t = Cad(num-1);
	   t = IntToStr(num) +  t  ;
	   return   t ;
 }
}
String CadRepNum (byte num ){
String t;
   if (num == 1) {
	 return IntToStr(num)+ "," ;
   } else {
	   t = CadRepNum(num-1);
	   t =  t + Cad(num)+",";
	   return   t ;
   }
}

void __fastcall TForm1::N51213214321543211Click(TObject *Sender)
{
	Edit2->Text = CadRepNum(StrToInt(Edit1->Text));
}
//---------------------------------------------------------------------------
Cardinal MediaAritmetica (TStringGrid *v, byte col, Cardinal sum, byte i ){

 if (i == col) {
	 return sum/col ;
 } else  {
	 sum += StrToInt(v->Cells[i][0]);
	 return MediaAritmetica(v, col, sum, i+1);
 }
}

void __fastcall TForm1::MediaAritmeticaVector1Click(TObject *Sender)
{
  Edit2->Text = MediaAritmetica(StringGrid1 ,StringGrid1->ColCount, 0, 0 );
}
//---------------------------------------------------------------------------
void EliminarPrim(TStringGrid *v, byte n){
 if (n > 0){
  EliminarPrim (v, n-1);
  v->Cells[n][0]= v->Cells[1+n][0];
 } if (n == 0 ) v->Cells[0][0]= v->Cells[1+n][0];  // caso base
}

void __fastcall TForm1::eliminarlosprimeroselementos1Click(TObject *Sender)
{
	EliminarPrim(StringGrid1, StringGrid1->ColCount);
	StringGrid1->ColCount = StringGrid1->ColCount - 1;
}
//---------------------------------------------------------------------------

void EliminarUltm(TStringGrid *v, byte n){
  if (n == v->ColCount-1) {        // caso base
	v->Cells[n][0] = v->Cells[n+1][0];
  } else {
	 EliminarUltm(v,n+1);
  }
}

void __fastcall TForm1::eliminarultimoelementos1Click(TObject *Sender)
{
   EliminarUltm(StringGrid1,0);
   StringGrid1->ColCount = StringGrid1->ColCount - 1;
}
//---------------------------------------------------------------------------


void EliminarVectorPrimero(TStringGrid *v){
 byte n = 0;

	while (n <= v->ColCount-1){
	 v->Cells[n][0] =  v->Cells[n+1][0] ;
	 n= n+1;
	}

}
void __fastcall TForm1::algoritmossinrecurcion2Click(TObject *Sender)
{
  EliminarVectorPrimero(StringGrid1);
  StringGrid1->ColCount = StringGrid1->ColCount - 1;
}
//---------------------------------------------------------------------------

void eliminarultimo(TStringGrid *v){
  v->Cells[v->ColCount-1][0] = v->Cells[v->ColCount][0];
}
void __fastcall TForm1::eliminarelultimo1Click(TObject *Sender)
{
 eliminarultimo(StringGrid1);
 StringGrid1->ColCount = StringGrid1->ColCount - 1;
}
//---------------------------------------------------------------------------
void Ordenar(TStringGrid *v){
	for(int i= 0; i<v->ColCount-1; i++){
	 for(int j= i+1; j<v->ColCount; j++) {
	   if (v->Cells[j][0]< v->Cells[i][0]) {
		 String a =  v->Cells[j][0];
		  v->Cells[j][0] = v->Cells[i][0] ;
		  v->Cells[i][0] = a;
	   }
	 }
	}
}
void __fastcall TForm1::eliminarelultimo2Click(TObject *Sender)
{
  Ordenar(StringGrid1);
}
//---------------------------------------------------------------------------

