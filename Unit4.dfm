object Form4: TForm4
  Left = 469
  Top = 217
  AlphaBlend = True
  BorderStyle = bsNone
  Caption = 'Form4'
  ClientHeight = 302
  ClientWidth = 331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 8
    Top = 0
    Width = 305
    Height = 281
    Pen.Color = clLime
    Pen.Width = 3
    Shape = stRoundRect
  end
  object Label1: TLabel
    Left = 32
    Top = 8
    Width = 241
    Height = 33
    AutoSize = False
    Caption = #39123#39118#24433#38899'-'#35270#39057#35774#32622
    Font.Charset = GB2312_CHARSET
    Font.Color = clLime
    Font.Height = -27
    Font.Name = #25991#40718#20013#38582#31616
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 56
    Width = 57
    Height = 13
    AutoSize = False
    Caption = #20142#24230#35843#33410
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 96
    Width = 76
    Height = 17
    AutoSize = False
    Caption = #23545#27604#24230#35843#33410
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 144
    Width = 89
    Height = 25
    AutoSize = False
    Caption = #33394#24230#35843#33410
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 184
    Width = 65
    Height = 21
    AutoSize = False
    Caption = #39281#21644#24230
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 40
    Top = 224
    Width = 121
    Height = 25
    Caption = #24674#22797#40664#35748
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 168
    Top = 224
    Width = 121
    Height = 25
    Caption = #20851#38381
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object TrackBar1: TTrackBar
    Left = 96
    Top = 56
    Width = 193
    Height = 33
    Max = 10000
    Frequency = 1000
    TabOrder = 0
    OnChange = TrackBar1Change
  end
  object TrackBar2: TTrackBar
    Left = 96
    Top = 96
    Width = 193
    Height = 25
    Max = 20000
    Frequency = 2000
    TabOrder = 1
    OnChange = TrackBar2Change
  end
  object TrackBar3: TTrackBar
    Left = 96
    Top = 136
    Width = 193
    Height = 25
    Max = 180
    Min = -180
    Frequency = 36
    TabOrder = 2
    OnChange = TrackBar3Change
  end
  object TrackBar4: TTrackBar
    Left = 96
    Top = 184
    Width = 193
    Height = 25
    Max = 20000
    Frequency = 2000
    TabOrder = 3
    OnChange = TrackBar4Change
  end
end
