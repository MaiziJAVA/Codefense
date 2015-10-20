//---------------------------------------------------------------------------

#ifndef menuH
#define menuH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DBCtrls.hpp>

#include "choose.h"
#include "RzBmpBtn.hpp"
#include <Buttons.hpp>
#include "RzPrgres.hpp"
#include <ExtCtrls.hpp>
#include <ComCtrls.hpp>
#include <ADODB.hpp>
#include <DB.hpp>
#include "RzButton.hpp"
#include "RzPanel.hpp"
//---------------------------------------------------------------------------
class TFmenu : public TForm
{
__published:	// IDE-managed Components
	TRzBmpButton *RzBmpButton1;
	TStaticText *StaticText1;
	TBitBtn *BitBtn1;
	TTimer *Timer1;
	TProgressBar *ProgressBar1;
	TADOQuery *ADOQuery1;
	TDataSource *DataSource1;
	TDBRadioGroup *DBRadioGroup1;
	TLabel *DBquestion;
	TEdit *Edit1;
	TLabel *Label1;
	TAutoIncField *ADOQuery1ID;
	TWideStringField *ADOQuery1DSDesigner;
	TWideStringField *ADOQuery1A;
	TWideStringField *ADOQuery1B;
	TWideStringField *ADOQuery1C;
	TWideStringField *ADOQuery1D;
	TWideStringField *ADOQuery1DSDesigner2;
	TRzShapeButton *RzShapeButton1;
	TADOTable *ADOTable1;
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall RzBmpButton1Click(TObject *Sender);
	void __fastcall BitBtn1Click(TObject *Sender);
	void __fastcall Timer1Timer(TObject *Sender);
	void __fastcall RzShapeButton1Click(TObject *Sender);
private:	// User declarations
	AnsiString gameLevel;
    int score;
    int eachEasy;
    int eachNormal;
    int eachDifficult;
public:		// User declarations
        __fastcall TFmenu(TComponent* Owner);
	void setProcess();
    int Check(char* word);
friend class TFchoose;
};
//---------------------------------------------------------------------------
extern PACKAGE TFmenu *Fmenu;
//---------------------------------------------------------------------------
#endif
