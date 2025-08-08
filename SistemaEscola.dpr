program SistemaEscola;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Main},
  uDisciplinas in 'uDisciplinas.pas',
  uEstudantes in 'uEstudantes.pas',
  uMatriculas in 'uMatriculas.pas',
  uProfessores in 'uProfessores.pas',
  uTumas in 'uTumas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
