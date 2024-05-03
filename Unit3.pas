unit Unit3;
//Downmload by http://www.codefans.net
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, ExtCtrls, Buttons, ExtDlgs;

type
  TForm3 = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SavePictureDialog1: TSavePictureDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
//    procedure FormKeyPress(Sender: TObject; var Key: Char);

//    procedure FormDestroy(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
    uses myplayer;
{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
//form3.Width:=form1.Panel1.Width;
//form3.height:=form1.Panel1.Height+20;
   
end;
 
procedure TForm3.FormKeyPress(Sender: TObject; var Key: Char);
begin
 form3.Close;
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
  if SavePictureDialog1.Execute then
 Image1.Picture.SaveToFile(SavePictureDialog1.FileName);

end;

end.
