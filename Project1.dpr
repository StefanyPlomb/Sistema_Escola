program Project1;

uses
  Vcl.Forms,
  main in 'C:\Delphi\SistemaAcademico\main.pas' {Projeto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TProjeto, Projeto);
  Application.Run;
end.
