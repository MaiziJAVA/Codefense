//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "start.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "RzPanel"
#pragma link "RzButton"
#pragma resource "*.dfm"
TFstart *Fstart;
//---------------------------------------------------------------------------
__fastcall TFstart::TFstart(TComponent* Owner)
        : TForm(Owner)
{
         PlaySound("Ìì¿ÕÖ®³Ç.wav",NULL,SND_ASYNC);
}
//---------------------------------------------------------------------------
void __fastcall TFstart::FormClose(TObject *Sender, TCloseAction &Action)
{
        PlaySound(NULL,NULL,SND_ASYNC);
        exit(0);        
}
//---------------------------------------------------------------------------

void __fastcall TFstart::AboutUsClick(TObject *Sender)
{
       Fstart->Hide();
       Fabout->Show();
}
//---------------------------------------------------------------------------

void __fastcall TFstart::StartGameClick(TObject *Sender)
{
        Fstart->Hide();
        Fmenu->Show();
}
//---------------------------------------------------------------------------



