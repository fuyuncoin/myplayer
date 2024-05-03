unit Unit4;
//Downmload by http://www.codefans.net
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons;

type
  TForm4 = class(TForm)
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    TrackBar4: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Shape1: TShape;
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
    procedure TrackBar4Change(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
       uses myplayer;
{$R *.dfm}

procedure TForm4.TrackBar1Change(Sender: TObject);
begin
form1.DSVideoWindowEx21.ColorControl.Brightness:=trackbar1.Position;
end;




procedure TForm4.TrackBar2Change(Sender: TObject);
begin
 Form1.DSVideoWindowEx21.ColorControl.Contrast:= TrackBar2.Position;
end;

procedure TForm4.TrackBar3Change(Sender: TObject);
begin
  Form1.DSVideoWindowEx21.ColorControl.Hue := TrackBar3.Position;
end;

procedure TForm4.TrackBar4Change(Sender: TObject);
begin
 Form1.DSVideoWindowEx21.ColorControl.Saturation := TrackBar4.Position;
end;

procedure TForm4.FormDeactivate(Sender: TObject);
begin
Close;
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
Form1.DSVideoWindowEx21.ColorControl.RestoreDefault;
 TrackBar4.Position := form1.DSVideoWindowEx21.ColorControl.Saturation;
  TrackBar3.Position := form1.DSVideoWindowEx21.ColorControl.Hue;
  TrackBar2.Position :=form1.DSVideoWindowEx21.ColorControl.Contrast;
  TrackBar1.Position := form1.DSVideoWindowEx21.ColorControl.Brightness;
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
begin
close;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
Color := Form1.DSVideoWindowEx21.ColorKey;
  Shape1.Brush.Color := Form1.DSVideoWindowEx21.ColorKey;
  Left := Form1.DSVideoWindowEx21.ClientOrigin.X + (Form1.DSVideoWindowEx21.Width div 2) - (Width div 2);
  Top := Form1.DSVideoWindowEx21.ClientOrigin.Y + (Form1.DSVideoWindowEx21.Height div 2) - (Height div 2);

  Trackbar1.Enabled := Form1.DSVideoWindowEx21.Capabilities.CanControlBrigtness;
  Trackbar1.SliderVisible := Form1.DSVideoWindowEx21.Capabilities.CanControlBrigtness;
  Trackbar2.Enabled := Form1.DSVideoWindowEx21.Capabilities.CanControlContrast;
  Trackbar2.SliderVisible := Form1.DSVideoWindowEx21.Capabilities.CanControlContrast;
  Trackbar3.Enabled := Form1.DSVideoWindowEx21.Capabilities.CanControlHue;
  Trackbar3.SliderVisible := Form1.DSVideoWindowEx21.Capabilities.CanControlHue;
  Trackbar4.Enabled := Form1.DSVideoWindowEx21.Capabilities.CanControlSaturation;
  Trackbar4.SliderVisible := Form1.DSVideoWindowEx21.Capabilities.CanControlSaturation;
 




Form1.DSVideoWindowEx21.ColorControl.RestoreDefault;
 TrackBar4.Position := form1.DSVideoWindowEx21.ColorControl.Saturation;
  TrackBar3.Position := form1.DSVideoWindowEx21.ColorControl.Hue;
  TrackBar2.Position :=form1.DSVideoWindowEx21.ColorControl.Contrast;
  TrackBar1.Position := form1.DSVideoWindowEx21.ColorControl.Brightness;
end;

end.
