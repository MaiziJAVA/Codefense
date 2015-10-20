//---------------------------------------------------------------------------

#ifndef chooseH
#define chooseH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "RzPanel.hpp"
#include <ExtCtrls.hpp>
#include "RzButton.hpp"
#include <jpeg.hpp>

#include "menu.h"
//---------------------------------------------------------------------------
class TFchoose : public TForm
{
__published:	// IDE-managed Components
	TRzPanel *RzPanel1;
	TImage *Image1;
	TRzShapeButton *easy;
	TRzShapeButton *normal;
	TRzShapeButton *difficult;
	void __fastcall easyClick(TObject *Sender);
	void __fastcall normalClick(TObject *Sender);
	void __fastcall difficultClick(TObject *Sender);
private:	// User declarations
	   AnsiString gameLevel;
public:		// User declarations
	__fastcall TFchoose(TComponent* Owner);
friend class TFmenu;
};
//---------------------------------------------------------------------------
extern PACKAGE TFchoose *Fchoose;
//---------------------------------------------------------------------------
#endif
