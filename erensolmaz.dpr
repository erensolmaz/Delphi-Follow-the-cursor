program erensolmaz;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {OyunForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TOyunForm, OyunForm);
  Application.Run;
end.
