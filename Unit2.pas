unit Unit2;
//Downmload by http://www.codefans.net
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, BusinessSkinForm, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    bsSkinButton1: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
       uses myplayer;
{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin

form2.bsSkinStdLabel1.Caption:='쫷�Ӱ��-��ý�岥����'+#13+'��ӭʹ��'+#13+#13+'���մ�ѧ05���繤��'+#13+'copyleft-2007';
end;

procedure TForm2.bsSkinButton1Click(Sender: TObject);
begin
close;
end;

end.
