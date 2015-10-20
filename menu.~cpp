//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "menu.h"
#include "start.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "RzBmpBtn"
#pragma link "RzPrgres"
#pragma link "RzButton"
#pragma link "RzPanel"
#pragma resource "*.dfm"
void setProcess();
TFmenu *Fmenu;
//---------------------------------------------------------------------------
__fastcall TFmenu::TFmenu(TComponent* Owner)
        : TForm(Owner)
{
	//初始化得分
	score = 0;
    Edit1->Text = IntToStr(score);
    //设置不同难度下每道题的权重。
    eachEasy = 5;
    eachNormal = 10;
    eachDifficult = 15;
}
//---------------------------------------------------------------------------
void TFmenu:: setProcess()
 {
 	if(gameLevel == "easy")
    {
    	//设置进度条
 		ProgressBar1->Max =400;
    	ProgressBar1->Position = ProgressBar1->Max;
       	//设置时间周期
       	Timer1->Interval=100; //0.1秒
       	Timer1->Enabled=true;

    }
    if(gameLevel == "normal")
    {
       	//设置进度条
 		ProgressBar1->Max =300;
    	ProgressBar1->Position = ProgressBar1->Max;
        //设置时间周期
        Timer1->Interval=100;  //0.1秒
       	Timer1->Enabled=true;
    }
    if(gameLevel == "difficult")
    {
       	//设置进度条
 		ProgressBar1->Max =200;
    	ProgressBar1->Position = ProgressBar1->Max;
        //设置时间周期
        Timer1->Interval=100;   //0.1秒
       	Timer1->Enabled=true;
    }
 }
//---------------------------------------------------------------------------
//检查正确答案并返回下标
int  TFmenu:: Check(char* word)
 {
 	int temp = -1;
    switch(*word)
    {
    	case'A' :
        	temp = 0;
            break;
        case 'B':
        	temp = 1;
            break;
        case 'C':
        	temp = 2;
            break;
        case 'D':
        	temp = 3;
            break;
    }
    return temp;
 }
//---------------------------------------------------------------------------
void __fastcall TFmenu::FormClose(TObject *Sender, TCloseAction &Action)
{
	//关闭音乐
	PlaySound(NULL,NULL,SND_ASYNC);
    exit(0);
}
//---------------------------------------------------------------------------


void __fastcall TFmenu::RzBmpButton1Click(TObject *Sender)
{
	Fchoose->Show();
}
//---------------------------------------------------------------------------

void __fastcall TFmenu::BitBtn1Click(TObject *Sender)
{
    StaticText1->Caption ="难度等级: "+gameLevel;
    //调整进度条
    setProcess();

	//连接数据库
    AnsiString DataBase = ExtractFilePath(Application->ExeName)+"data.mdb";
	if (FileExists(DataBase))
	{
    	ADOTable1->ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="+DataBase+";Persist Security Info=False";
    	ADOQuery1->ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="+DataBase+";Persist Security Info=False";
	}
    ADOTable1->TableName = gameLevel;
	ADOTable1->Active = true;

    ADOQuery1->Close();
	ADOQuery1->SQL->Clear();
    ADOQuery1->SQL->Add("select * from "+gameLevel);
    //激活数据库
    ADOQuery1->Active = true ;
    ADOQuery1->Open();

    //清理Item选项
    DBRadioGroup1->Items->Clear();
    DBquestion->Caption=ADOQuery1->Fields->FieldByName("问题")->AsString;
    DBRadioGroup1->DataField ="问题";
    DBRadioGroup1->Items->Add(ADOQuery1->Fields->FieldByName("A")->AsString);
    DBRadioGroup1->Items->Add(ADOQuery1->Fields->FieldByName("B")->AsString);
    DBRadioGroup1->Items->Add(ADOQuery1->Fields->FieldByName("C")->AsString);
    DBRadioGroup1->Items->Add(ADOQuery1->Fields->FieldByName("D")->AsString);
}
//---------------------------------------------------------------------------


void __fastcall TFmenu::Timer1Timer(TObject *Sender)
{
	if(ProgressBar1->Position>0)
    {
    	ProgressBar1->Position--;
    }
    else
    {
    	Timer1->Enabled =false;
        ShowMessage("游戏结束");
    }
}
//---------------------------------------------------------------------------




void __fastcall TFmenu::RzShapeButton1Click(TObject *Sender)
{
	//检查选项记录得分
    if(DBRadioGroup1->ItemIndex==Check(ADOQuery1->Fields->FieldByName("正确答案")->AsString.c_str()))
    {
    	if(gameLevel == "easy")
    		score = score + eachEasy;
    	if(gameLevel == "normal")
    		score = score + eachNormal;
    	if(gameLevel == "difficult")
    		score = score + eachDifficult;
    }
    //显示得分
    Edit1->Text = IntToStr(score);
    //连接数据库中下一条数据
    ADOQuery1->Next();
    //清理Item选项
    DBRadioGroup1->Items->Clear();
    //重新载入问题及选项
    DBquestion->Caption= ADOQuery1->Fields->FieldByName("问题")->AsString;
    DBRadioGroup1->Items->Add(ADOQuery1->Fields->FieldByName("A")->AsString);
    DBRadioGroup1->Items->Add(ADOQuery1->Fields->FieldByName("B")->AsString);
    DBRadioGroup1->Items->Add(ADOQuery1->Fields->FieldByName("C")->AsString);
    DBRadioGroup1->Items->Add(ADOQuery1->Fields->FieldByName("D")->AsString);

    //检查题库是否为空
    if(ADOQuery1->Eof)
    {
    	RzShapeButton1->Enabled = false;
        RzShapeButton1->Caption = "题库空了";
    }
}
//---------------------------------------------------------------------------









