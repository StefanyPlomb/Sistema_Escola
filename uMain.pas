unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TMain = class(TForm)
    Estudantes: TPageControl;
    Login: TTabSheet;
    Menu: TTabSheet;
    Estudante: TTabSheet;
    Professores: TTabSheet;
    Disciplinas: TTabSheet;
    Turmas: TTabSheet;
    Matriculas: TTabSheet;
    img_login: TImage;
    painel_login: TPanel;
    label_login_usuario: TLabel;
    label_login_senha: TLabel;
    edit_login_user: TEdit;
    edit_login_senha: TEdit;
    but_login: TButton;
    img_menu: TImage;
    painel_menu_esudantes: TPanel;
    painel_menu_professores: TPanel;
    painel_menu_disciplina: TPanel;
    painel_menu_turma: TPanel;
    painel_menu_matriculas: TPanel;
    but_estudante: TButton;
    but_professor: TButton;
    but_disciplina: TButton;
    but_turma: TButton;
    but_matricula: TButton;
    painel_controle_estudante: TPanel;
    img_estudantes: TImage;
    label_estudantes: TLabel;
    but_adicionar_estudante: TButton;
    but_editar_estudante: TButton;
    but_excluir_estudante: TButton;
    box_nome_estudante: TComboBox;
    edit_codigo_estudant: TEdit;
    edit_nome_estudante: TEdit;
    edit_cpf_estudante: TEdit;
    box_Materias_estudante: TListBox;
    but_Salvar_estudante: TButton;
    disciplinas_estudante: TLabel;
    label_codigo_estudante: TLabel;
    label_nome_estudante: TLabel;
    label_cpf_estudante: TLabel;
    img_prof: TImage;
    label_prof: TLabel;
    box_nome_prof: TComboBox;
    painel_controle_prof: TPanel;
    but_adicionar_prof: TButton;
    but_editar_prof: TButton;
    but_excluir_prof: TButton;
    but_salvar_prof: TButton;
    label_codigo_prof: TLabel;
    label_nome_prof: TLabel;
    label_cpf_prof: TLabel;
    label_turmas: TLabel;
    box_turmas_prof: TListBox;
    edit_codigo_prof: TEdit;
    edit_nome_prof: TEdit;
    edit_cpf_prof: TEdit;
    but_volta_estudante: TButton;
    but_voltar_prof: TButton;
    img_disci: TImage;
    box_disciplinas: TListBox;
    edit_codigo_disci: TEdit;
    edit_noms_disci: TEdit;
    painel_contrle_disci: TPanel;
    but_voltar_disciplinas: TButton;
    but_adicionar_disciplinas: TButton;
    but_editar_disciplinas: TButton;
    but_excluir_disciplinas: TButton;
    but_salvar_disciplinas: TButton;
    img_turma: TImage;
    box_turmas: TListBox;
    painel_botoes_turmas: TPanel;
    painel_controle_turma: TPanel;
    but_voltar_turmas: TButton;
    but_adiciona_turrmas: TButton;
    but_edita_turmas: TButton;
    but_excluir_turmas: TButton;
    but_salvar_turmas: TButton;
    edit_codigo_turma: TEdit;
    edit_codigoProfessor_turma: TEdit;
    edit_codigoDisciplina_turma: TEdit;
    label_codigo_turmas: TLabel;
    label_codigoProf_turmas: TLabel;
    label_codigoDiciplina_turma: TLabel;
    img_matricula: TImage;
    box_matriculas: TListBox;
    painel_botoes_matricula: TPanel;
    painel_controle_matriculas: TPanel;
    but_voltar_matricula: TButton;
    but_criar_matricula: TButton;
    but_editar_matricula: TButton;
    but_excluir_matricula: TButton;
    but_salvar_matricula: TButton;
    edit_codigo_matricula: TEdit;
    edit_codigoTurma_matricula: TEdit;
    edit_codigoEstudante_matricula: TEdit;
    label_codigo_matricula: TLabel;
    label_codigoTurma_matricula: TLabel;
    label_codigoEstudante_matricula: TLabel;
    procedure but_estudanteClick(Sender: TObject);
    procedure but_professorClick(Sender: TObject);
    procedure but_disciplinaClick(Sender: TObject);
    procedure but_turmaClick(Sender: TObject);
    procedure but_matriculaClick(Sender: TObject);
    procedure but_volta_estudanteClick(Sender: TObject);
    procedure but_voltar_profClick(Sender: TObject);
    procedure but_voltar_disciplinasClick(Sender: TObject);
    procedure but_voltar_turmasClick(Sender: TObject);
    procedure but_voltar_matriculaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}
// Menu De Direção

procedure TMain.but_disciplinaClick(Sender: TObject);
begin
  Estudantes.ActivePage := Disciplinas;
end;

procedure TMain.but_estudanteClick(Sender: TObject);
begin
  Estudantes.ActivePage := Estudante;
end;

procedure TMain.but_matriculaClick(Sender: TObject);
begin
  Estudantes.ActivePage := Matriculas;
end;

procedure TMain.but_professorClick(Sender: TObject);
begin
  Estudantes.ActivePage := Professores;
end;

procedure TMain.but_turmaClick(Sender: TObject);
begin
  Estudantes.ActivePage := Turmas;
end;

// Aba Estudantes

procedure TMain.but_volta_estudanteClick(Sender: TObject);
begin
  Estudantes.ActivePage := Menu;
end;


// Aba Professores

procedure TMain.but_voltar_profClick(Sender: TObject);
begin
  Estudantes.ActivePage := Menu;
end;

// Aba Diciplinas

procedure TMain.but_voltar_disciplinasClick(Sender: TObject);
begin
  Estudantes.ActivePage := Menu;
end;

// Aba Turma

procedure TMain.but_voltar_turmasClick(Sender: TObject);
begin
  Estudantes.ActivePage := Menu;
end;


//Aba Matricula

procedure TMain.but_voltar_matriculaClick(Sender: TObject);
begin
  Estudantes.ActivePage := Menu;
end;

end.
