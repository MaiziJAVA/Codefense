//---------------------------------------------------------------------------

#ifndef aboutH
#define aboutH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "start.h"
//---------------------------------------------------------------------------
class TFabout : public TForm
{
__published:	// IDE-managed Components
        TStaticText *StaticText1;
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
        __fastcall TFabout(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFabout *Fabout;
//---------------------------------------------------------------------------
#endif
