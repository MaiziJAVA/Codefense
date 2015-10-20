//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
//---------------------------------------------------------------------------
USEFORM("start.cpp", Fstart);
USEFORM("about.cpp", Fabout);
USEFORM("menu.cpp", Fmenu);
USEFORM("choose.cpp", Fchoose);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TFstart), &Fstart);
		Application->CreateForm(__classid(TFabout), &Fabout);
		Application->CreateForm(__classid(TFmenu), &Fmenu);
		Application->CreateForm(__classid(TFchoose), &Fchoose);
		Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        catch (...)
        {
                 try
                 {
                         throw Exception("");
                 }
                 catch (Exception &exception)
                 {
                         Application->ShowException(&exception);
                 }
        }
        return 0;
}
//---------------------------------------------------------------------------