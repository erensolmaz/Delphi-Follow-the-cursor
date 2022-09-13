object OyunForm: TOyunForm
  Left = 411
  Top = 231
  Cursor = crCross
  Caption = 'OyunForm'
  ClientHeight = 750
  ClientWidth = 1000
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object dusman: TShape
    Left = 0
    Top = 0
    Width = 129
    Height = 119
    Brush.Color = clMaroon
    Shape = stRoundRect
  end
  object oyuncu: TShape
    Left = 800
    Top = 0
    Width = 73
    Height = 65
    Cursor = crCross
    Brush.Color = clGreen
    DragCursor = crDefault
    DragKind = dkDock
    Enabled = False
    Shape = stRoundRect
  end
  object basla: TButton
    Left = 360
    Top = 438
    Width = 257
    Height = 121
    Cursor = crHelp
    Caption = 'Yeniden Oyna'
    DragCursor = crArrow
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = baslaClick
  end
  object zamanlayici: TTimer
    Interval = 20
    OnTimer = zamanlayiciTimer
    Left = 576
    Top = 152
  end
end
