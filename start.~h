//---------------------------------------------------------------------------

#ifndef startH
#define startH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <jpeg.hpp>
#include <Mmsystem.h>
#include "RzPanel.hpp"
#include "RzButton.hpp"
#include "about.h"
#include "menu.h"

//---------------------------------------------------------------------------
class TFstart : public TForm
{
__published:	// IDE-managed Components
        TImage *BackGround;
        TRzPanel *RzPanel1;
        TRzShapeButton *StartGame;
        TRzShapeButton *AboutUs;
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
        void __fastcall AboutUsClick(TObject *Sender);
        void __fastcall StartGameClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TFstart(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFstart *Fstart;
//---------------------------------------------------------------------------
#endif
