program BuscadorCEP;

uses
  Vcl.Forms,
  DesafioCEP in 'DesafioCEP.pas' {Form1},
  Unit1 in 'Unit1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
