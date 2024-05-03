unit myplayer;
//Downmload by http://www.codefans.net
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinData, BusinessSkinForm, Menus, bsSkinCtrls, bsSkinBoxCtrls,
  MPlayer, StdCtrls, bsfilectrl, bsSkinShellCtrls, bsTrayIcon, ExtCtrls,
  bsMessages,MMSystem, bsSkinHint,{ MSNPopUp,} bsSkinMenus, Buttons, DSPack,
  ComCtrls,DirectShow9,dsutil, ImgList,ShellAPI;

type
  TForm1 = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinData1: TbsSkinData;
    bsCompressedStoredSkin1: TbsCompressedStoredSkin;
    bsSkinMainMenu1: TbsSkinMainMenu;
    F1: TMenuItem;
    P1: TMenuItem;
    V1: TMenuItem;
    A1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    X1: TMenuItem;
    bsSkinMainMenuBar1: TbsSkinMainMenuBar;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    L1: TMenuItem;
    A2: TMenuItem;
    OpenDialog1: TOpenDialog;
    Timer1: TTimer;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    D1: TMenuItem;
    C1: TMenuItem;
    N7: TMenuItem;
    L2: TMenuItem;
    S1: TMenuItem;
    bsSkinPopupMenu1: TbsSkinPopupMenu;
    P2: TMenuItem;
    N8: TMenuItem;
    S2: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    P3: TMenuItem;
    N11: TMenuItem;
    S3: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    bsSkinPopupMenu2: TbsSkinPopupMenu;
    P4: TMenuItem;
    A3: TMenuItem;
    N15: TMenuItem;
    C2: TMenuItem;
    N16: TMenuItem;
    S4: TMenuItem;
    L3: TMenuItem;
    FilterGraph1: TFilterGraph;
    Panel1: TPanel;
    DSVideoWindowEx21: TDSVideoWindowEx2;
    ListBox1: TListBox;
    bsSkinPanel2: TbsSkinPanel;
    bsSkinStatusBar1: TbsSkinStatusBar;
    bsSkinSlider1: TbsSkinSlider;
    bsSkinToolBar1: TbsSkinToolBar;
    bsSkinSpeedButton1: TbsSkinSpeedButton;
    bsSkinSpeedButton2: TbsSkinSpeedButton;
    bsSkinSpeedButton3: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinSpeedButton5: TbsSkinSpeedButton;
    bsSkinSpeedButton6: TbsSkinSpeedButton;
    bsSkinStatusPanel1: TbsSkinStatusPanel;
    bsSkinPanel3: TbsSkinPanel;
    DSTrackBar1: TDSTrackBar;
    bsSkinStatusPanel2: TbsSkinStatusPanel;
    N17: TMenuItem;
    S5: TMenuItem;
    SampleGrabber1: TSampleGrabber;
    D2: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    S6: TMenuItem;
    SpeedButton1: TSpeedButton;
    N20: TMenuItem;
    N21: TMenuItem;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinSpeedButton4: TbsSkinSpeedButton;
    N22: TMenuItem;
    XP1: TMenuItem;
    OpenDialog2: TOpenDialog;
    VISTA1: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    bsSkinStdLabel3: TbsSkinStdLabel;
    Timer2: TTimer;
    N25: TMenuItem;
    bsSkinSpeedButton7: TbsSkinSpeedButton;
    N26: TMenuItem;
    ImageList2: TImageList;
    procedure N1Click(Sender: TObject);
    procedure bsSkinSlider1Change(Sender: TObject);
    procedure A2Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure L2Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure bsSkinSpeedButton1Click(Sender: TObject);
    procedure X1Click(Sender: TObject);
    procedure bsSkinSpeedButton3Click(Sender: TObject);
    procedure bsSkinSpeedButton2Click(Sender: TObject);
    procedure bsSkinSpeedButton5Click(Sender: TObject);
    procedure bsSkinSpeedButton6Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure DSVideoWindowEx21KeyPress(Sender: TObject; var Key: Char);
    procedure DSTrackBar1Timer(sender: TObject; CurrentPos,
      StopPos: Cardinal);
    procedure S5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure P3Click(Sender: TObject);
    procedure P2Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure S3Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure P4Click(Sender: TObject);
    procedure A3Click(Sender: TObject);
    procedure D2Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure S4Click(Sender: TObject);
    procedure L3Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure S6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure bsSkinSpeedButton4Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure XP1Click(Sender: TObject);
    procedure VISTA1Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
   procedure listboxscrollar(sender:TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DSVideoWindowEx21DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bsSkinSpeedButton7Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
  private
    { Private declarations }
     function GetDosCommand(Command: string): string;


  public
 //  procedure ReadStreamProperties;
    { Public declarations }
       OsdChanged : Boolean;
  end;
 var
 OsdChanged : Boolean;
var
  Form1: TForm1;

implementation
      uses unit2,unit3,unit4,IniFiles;//ColorControl;
{$R *.dfm}


   procedure TForm1.listboxscrollar(sender:TObject);
   var
   i,maxwidth:integer;
  begin
     maxwidth:=0;
     for i:=0 to form1.ListBox1.Items.Count-1 do
     if maxwidth<form1.ListBox1.Canvas.TextWidth(form1.ListBox1.Items.Strings[i]) then
     maxwidth:=form1.ListBox1.Canvas.TextWidth(form1.ListBox1.Items.Strings[i]);
     sendmessage(form1.ListBox1.Handle,LB_SETHORIZONTALEXTENT,maxwidth+20,0);

  end;

procedure TForm1.N1Click(Sender: TObject);   //菜单栏－打开文件
begin
  if OpenDialog1.Execute then
  begin
    if not FilterGraph1.Active then FilterGraph1.Active := true;
    FilterGraph1.ClearGraph;
    FilterGraph1.RenderFile(OpenDialog1.FileName);
 //   VideoWindow.PopupMenu := PopupMenu;
form1.bsSkinSlider1.Value:= FilterGraph1.Volume;
    FilterGraph1.Play;
  end;
end;

procedure TForm1.bsSkinSlider1Change(Sender: TObject);     //音量控制
var
tmp:TBitmap;
begin
tmp:=TBitmap.Create;
Imagelist2.GetBitmap(0,tmp);
form1.FilterGraph1.Volume:=form1.bsSkinSlider1.Value;
DSVideoWindowEx21.Canvas.CopyRect(Rect(10, DSVideoWindowEx21.Height - 65, 218, DSVideoWindowEx21.Height - 27), Tmp.Canvas, Rect(0, 0, 104, 23));
Imagelist2.GetBitmap(1, Tmp);
DSVideoWindowEx21.Canvas.CopyRect(Rect(10, DSVideoWindowEx21.Height - 65, 10 + Trunc((104 / 10000) * bsSkinSlider1.Value) * 2, DSVideoWindowEx21.Height - 27), Tmp.Canvas, Rect(0,0,Trunc((104 / 10000) * bsSkinSlider1.Value), 23));
  Tmp.Free;
   OsdChanged := True;
end;

procedure TForm1.A2Click(Sender: TObject);   //播放列表－添加
var
i,k:integer;
str:string;
ini:Tinifile;
Command, SourceFile, TargetFile: string;
begin
ini:=Tinifile.Create(ExtractFilePath(Application.ExeName)+'playlist.ini');
if form1.OpenDialog1.Execute then
begin
for i:=0 to form1.OpenDialog1.Files.Count-1 do
 begin
   str:=form1.OpenDialog1.Files.Strings[i];
 //  ini.WriteString('飓风影音播放列表',inttostr(i+1),ExtractFilePath(str)+ExtractFilename(str));
    SourceFile:=str;
   k:= pos('mp4',str);
   if k>0 then
   begin
      str:=copy(str,1,k-1 );
      str:=str+'avi';
      TargetFile:=str;
      //showmessage(str);
      //ffmpeg -i input.mp4 output.avi
      if not FileExists(TargetFile) then
      begin
      //    2: Command := 'ffmpeg -i ' + SourceFile + ' -acodec copy -vcodec copy -f mp4 ' + TargetFile; // ts视频转mp4
      //ffmpeg -i .\Video.avi -c copy -map 0 video.mp4
      //ffmpeg -i road_2.mp4 -q:v 6  road_2.avi
       Command := ExtractFilePath(Application.ExeName)+'ffmpeg.exe -i ' + SourceFile + ' -q:v 6 '+ TargetFile;
        // 在DOS窗口中运行转换命令
     Command := GetDosCommand(Command);
     ShellExecute(Handle, 'open', 'cmd.exe', PChar(Command), nil, SW_HIDE);
     showmessage('正把MP4视频文件转换成AVI视频文件中,请稍后...');
     end;
   end;

   ini.WriteString('飓风影音播放列表',inttostr(i+1),ExtractFilePath(str)+ExtractFilename(str));
   ListBox1.Items.Add(ExtractFilename(str));

 end;
 end;
 ini.Free;



  end;

procedure TForm1.S1Click(Sender: TObject);    //播放列表－保存列表
var   i:integer;
      ini:Tinifile;
  begin
      ini:=Tinifile.Create(ExtractFilePath(Application.ExeName)+'playlist.ini');
      for   i:=0   to   form1.ListBox1.Items.Count-1   do
      begin
        ini.WriteString('飓风影音播放列表',inttostr(i+1),form1.ListBox1.Items.Strings[i]);
      end;
      ini.Free;
     showmessage('列表保存完毕！');
  end;
procedure TForm1.L2Click(Sender: TObject);     //播放列表－加载列表
 var
      SL:TStringList;
      I:Integer;
  begin
      SL:=TStringList.Create;
      with   TIniFile.Create(ExtractFilePath(Application.ExeName)+'playlist.ini')   do   begin
          ReadSection('飓风影音播放列表',SL);
          for   I:=0   to   SL.Count-1   do
          begin

          form1.ListBox1.Items.Add(ReadString('飓风影音播放列表',SL.Strings[I],''));
          end;
          Free;
      listboxscrollar(nil);
          end;

  end;

procedure TForm1.A1Click(Sender: TObject);   //关于
begin
        form2.Show;
end;

procedure TForm1.bsSkinSpeedButton1Click(Sender: TObject);//播放
begin
  if listbox1.ItemIndex>=0 then
    ListBox1DblClick(nil)
 else
    begin
 try
 form1.bsSkinSlider1.Value:= FilterGraph1.Volume;
    FilterGraph1.Play;
{form1.bsSkinStatusPanel2.Caption:='当前播放:'+#13+extractfilename(listbox1.Items.Strings[listbox1.itemindex]);
form1.MSNPopUp1.Title:='飓风影音 ';
form1.MSNPopUp1.TimeOut:=4;
form1.MSNPopUp1.Text:='当前播放:'+extractfilename(listbox1.Items.Strings[listbox1.itemindex]);
form1.MSNPopUp1.ShowPopUp;
 }
 except
 filtergraph1.Play;
 end;
  end;
 end;

procedure TForm1.X1Click(Sender: TObject); //菜单栏－退出
begin
 FilterGraph1.ClearGraph;
 FilterGraph1.Active:=false;
close;
end;

procedure TForm1.bsSkinSpeedButton3Click(Sender: TObject);    //停止
begin
FilterGraph1.Stop;
FilterGraph1.Active:=false;
form1.ListBox1.ItemIndex:=0;
end;

procedure TForm1.bsSkinSpeedButton2Click(Sender: TObject); //暂停
begin
  FilterGraph1.Pause;
form1.ListBox1.ItemIndex:=-1;
end;

procedure TForm1.bsSkinSpeedButton5Click(Sender: TObject); //上一曲
begin
form1.ListBox1.ItemIndex:=form1.ListBox1.ItemIndex-1;
ListBox1DblClick(nil);
end;

procedure TForm1.bsSkinSpeedButton6Click(Sender: TObject);  //下一曲
begin
form1.listBox1.ItemIndex:=form1.ListBox1.ItemIndex+1;
ListBox1DblClick(nil);
end;

procedure TForm1.ListBox1DblClick(Sender: TObject);
begin
  try
    if not FilterGraph1.Active then FilterGraph1.Active := true;
    FilterGraph1.ClearGraph;
    FilterGraph1.RenderFile(form1.ListBox1.Items.Strings[form1.ListBox1.Itemindex]);
    form1.bsSkinSlider1.Value:= FilterGraph1.Volume;
    FilterGraph1.Play;
    form1.bsSkinStatusPanel2.Caption:='当前播放:'+extractfilename(listbox1.Items.Strings[listbox1.itemindex]);
//form1.MSNPopUp1.Title:='飓风影音 ';
//form1.MSNPopUp1.TimeOut:=4;
//form1.MSNPopUp1.Text:='当前播放:'+#13+extractfilename(listbox1.Items.Strings[listbox1.itemindex]);
//form1.MSNPopUp1.ShowPopUp;

  except
  showmessage('没有选择任何文件！');
  end;
 end;

procedure TForm1.C1Click(Sender: TObject);
begin
form1.ListBox1.Clear;       //播放列表－清空
end;

procedure TForm1.D1Click(Sender: TObject);
begin
listbox1.DeleteSelected;              //播放列表－删除
end;

procedure TForm1.N5Click(Sender: TObject);   //全屏
begin
  If DSVideoWindowEx21.FullScreen then
    DSVideoWindowEx21.NormalPlayback
  else
       DSVideoWindowEx21.StartFullScreen;
end;

procedure TForm1.DSVideoWindowEx21KeyPress(Sender: TObject; var Key: Char);
begin
//DSVideoWindowEx21.FullScreen:=false;
end;



procedure TForm1.DSTrackBar1Timer(sender: TObject; CurrentPos,
  StopPos: Cardinal);
{var
  CurrPos : Int64;
  Value, H, M, S : Integer;
  MediaSeeking: IMediaSeeking;
begin
  FilterGraph1.QueryInterface(IMediaSeeking, MediaSeeking);
  with MediaSeeking do
  Begin
    GetCurrentPosition(CurrPos);
    Value := Trunc(CurrPos / 10000000);
    H := value div 3600;
    M := (value mod 3600) div 60;
    S := (value mod 3600) mod 60;
    form1.bsSkinStatusPanel1.Caption := Format('%d:%2.2d:%2.2d', [H, M, S]);
  End;
  If OsdChanged then
  Begin
   DSVideoWindowEx21.ClearBack;
    OsdChanged := False;
  End;
end;
 }

 begin
 form1.bsSkinStatusPanel1.Caption:=format('%s / %s',
    [TimeToStr(CurrentPos / MiliSecPerDay), TimeToStr(StopPos / MiliSecPerDay)]);
   If OsdChanged then
  Begin
    DSVideoWindowEx21.ClearBack;
    OsdChanged := False;
  End;
 end;

procedure TForm1.S5Click(Sender: TObject);  //视频设置
begin
form4.Show;
end;

procedure TForm1.N4Click(Sender: TObject);      //菜单栏－截图
begin
  form3.show;
  SampleGrabber1.GetBitmap(form3.Image1.Picture.Bitmap);
  //form3.Width:=form3.Image1.Width;
//form3.Height:=form3.Image1.Height;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
speedbutton1.Align:=alright;
//form1.FilterGraph1.Active:=true;
end;

procedure TForm1.P3Click(Sender: TObject); // 菜单栏－播放
begin
bsSkinSpeedButton1Click(nil);
end;

procedure TForm1.P2Click(Sender: TObject);
begin
bsSkinSpeedButton1Click(nil);
end;

procedure TForm1.N11Click(Sender: TObject);  //菜单栏－暂停
begin
bsSkinSpeedButton2Click(nil);
end;

procedure TForm1.S3Click(Sender: TObject); //菜单栏－停止
begin
bsSkinSpeedButton3Click(nil);
end;

procedure TForm1.N8Click(Sender: TObject);
begin
bsSkinSpeedButton2Click(nil);
end;

procedure TForm1.S2Click(Sender: TObject);
begin
bsSkinSpeedButton3Click(nil);
end;

procedure TForm1.N13Click(Sender: TObject);    //菜单栏－上一首
begin
bsSkinSpeedButton5Click(nil);
end;

procedure TForm1.N14Click(Sender: TObject);  //菜单栏－下一首
begin
bsSkinSpeedButton6Click(nil);
end;

procedure TForm1.P4Click(Sender: TObject);
begin
bsSkinSpeedButton1Click(nil);
end;

procedure TForm1.A3Click(Sender: TObject);
begin
A2Click(nil);
end;

procedure TForm1.D2Click(Sender: TObject);
begin
D1Click(nil);
end;

procedure TForm1.C2Click(Sender: TObject);
begin
C1Click(nil);
end;

procedure TForm1.S4Click(Sender: TObject);
begin
S1Click(nil);
end;

procedure TForm1.L3Click(Sender: TObject);
begin
L2Click(nil);
end;

procedure TForm1.N10Click(Sender: TObject);
begin
N4Click(nil);
end;

procedure TForm1.N19Click(Sender: TObject);
begin
N5Click(nil);
end;

procedure TForm1.S6Click(Sender: TObject);
begin
S5Click(nil);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);     //折叠列表
begin
if form1.SpeedButton1.Caption='>>' then
begin
 form1.Panel1.Width:=form1.Panel1.Width+form1.bsSkinPanel1.Width;
 form1.bsSkinPanel1.Width:=0;
 form1.SpeedButton1.Caption:='<<';
end
else
begin
 form1.Panel1.Width:=(form1.Width div 10)*7;
  form1.bsSkinPanel1.Width:=(form1.Width div 10)*3;
form1.SpeedButton1.Caption:='>>';
 end;


end;

procedure TForm1.N21Click(Sender: TObject);
begin
SpeedButton1Click(nil);
end;

procedure TForm1.bsSkinSpeedButton4Click(Sender: TObject);
begin
N5Click(nil);         //全屏
end;

procedure TForm1.N22Click(Sender: TObject);      //更换皮肤－默认
begin
   openDialog2.FileName:=extractfilepath(application.ExeName)+'\skins\sputnik\SKIN.INI';
 bsSkinData1.LoadFromFile( openDialog2.FileName);
 end;

procedure TForm1.XP1Click(Sender: TObject);  // 更换皮肤－XP银白
begin
 openDialog2.FileName:=extractfilepath(application.ExeName)+'\skins\WinXPSilver\SKIN.INI';
 bsSkinData1.LoadFromFile( openDialog2.FileName);
// MessageDlg('更换皮肤成功',(mtinformation),[mbOK],0);
 end;



procedure TForm1.VISTA1Click(Sender: TObject);
begin                  //更换皮肤－VISTA
 openDialog2.FileName:=extractfilepath(application.ExeName)+'\skins\Longhorn\SKIN.INI';
 bsSkinData1.LoadFromFile( openDialog2.FileName);
// MessageDlg('更换皮肤成功',(mtinformation),[mbOK],0);
end;

procedure TForm1.N23Click(Sender: TObject);
begin          //更换皮肤－橙黑风情
 openDialog2.FileName:=extractfilepath(application.ExeName)+'\skins\copper_desk_2\SKIN.INI';
 bsSkinData1.LoadFromFile( openDialog2.FileName);
// MessageDlg('更换皮肤成功',(mtinformation),[mbOK],0);
end;

procedure TForm1.N24Click(Sender: TObject);
begin          //更换皮肤－深蓝天空
  openDialog2.FileName:=extractfilepath(application.ExeName)+'\skins\Smooth_Blue\SKIN.INI';
 bsSkinData1.LoadFromFile( openDialog2.FileName);
// MessageDlg('更换皮肤成功',(mtinformation),[mbOK],0);
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
form1.bsSkinStdLabel3.Caption:='     飓风影音'+#13+'安徽大学05网络工程';
if form1.bsSkinStdLabel3.Top>-21 then
form1.bsSkinStdLabel3.Top:=form1.bsSkinStdLabel3.Top-2
else
begin
  form1.bsSkinStdLabel3.Top:=25;
end;

end;

procedure TForm1.N25Click(Sender: TObject);    //前端显示
begin
if   N25.Checked then
 begin
 n25.Checked:=false;
  SetWindowPos(handle,hwnd_notopmost,0,0,0,0,swp_nomove   or   swp_nosize)
end
  else
  begin
   SetWindowPos(handle,hwnd_topmost,0,0,0,0,swp_nomove   or   swp_nosize);
   n25.Checked:=true;
   end;
  end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
form1.Timer2.Enabled:=false;
form1.FilterGraph1.Active:=false;
end;

procedure TForm1.DSVideoWindowEx21DblClick(Sender: TObject);
begin
      N5Click(nil);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FilterGraph1.ClearGraph;
     FilterGraph1.Active := false;
end;

procedure TForm1.bsSkinSpeedButton7Click(Sender: TObject);  // 桌面全屏
begin
if Not DSVideoWindowEx21.DesktopPlayback then
 begin
// form1.WindowState:=wsMinimized;
  DSVideoWindowEx21.StartDesktopPlayback ;

 end
  else
    DSVideoWindowEx21.NormalPlayback;


end;

procedure TForm1.N26Click(Sender: TObject);
begin
bsSkinSpeedButton7Click(nil);
end;

function TForm1.GetDosCommand(Command: string): string;
begin
   // 将命令转换为可执行的DOS命令
  Result := 'cmd.exe /c ' + Command;

end;

end.

