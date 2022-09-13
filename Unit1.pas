unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TOyunForm = class(TForm)
    dusman: TShape;
    oyuncu: TShape;
    zamanlayici: TTimer;
    basla: TButton;
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure zamanlayiciTimer(Sender: TObject);
    procedure baslaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OyunForm: TOyunForm;

implementation

{$R *.dfm}

procedure TOyunForm.zamanlayiciTimer(Sender: TObject);
var
overlay : TRect;
begin
if dusman.Left > oyuncu.left then dusman.Left:= dusman.Left-10;
if dusman.Left < oyuncu.left then dusman.Left:= dusman.Left+10;
if dusman.top > oyuncu.top then dusman.top:= dusman.top-10;
if dusman.top < oyuncu.top then dusman.top:= dusman.top+10;
if IntersectRect (overlay, dusman.BoundsRect,oyuncu.BoundsRect) then begin
  zamanlayici.Enabled:= false;
  if zamanlayici.Enabled = false then ShowMessage('Oyun Bitti!');
  if zamanlayici.Enabled = false then basla.Visible := true;
end;

end;

procedure TOyunForm.baslaClick(Sender: TObject);
begin
      oyuncu.Left := 880;
      oyuncu.Top := 250;
      dusman.Left := 80;
      dusman.Top := 250;
      zamanlayici.Enabled := true;
end;

procedure TOyunForm.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    if zamanlayici.Enabled = true then begin
    basla.Visible := false;
    oyuncu.Left := x - oyuncu.Width div 2;
    oyuncu.top := y - oyuncu.Height div 2;

end;
end;

end.
