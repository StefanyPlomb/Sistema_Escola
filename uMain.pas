unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
  Estudantes: TPageControl;
    Login: TTabSheet;
    Menu: TTabSheet;
    Estudante: TTabSheet;
    Professores: TTabSheet;
    Disciplinas: TTabSheet;
    Turmas: TTabSheet;
    Matriculas: TTabSheet;
    m: TImage;
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
    but_main_estudante: TButton;
    procedure but_estudanteClick(Sender: TObject);
    procedure but_professorClick(Sender: TObject);
    procedure but_disciplinaClick(Sender: TObject);
    procedure but_turmaClick(Sender: TObject);
    procedure but_matriculaClick(Sender: TObject);
    procedure but_main_estudanteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  Form1: TForm1;

implementation

{$R *.dfm}

// Menu De Dire  o

procedure TForm1.but_disciplinaClick(Sender: TObject);
begin
  Estudantes.ActivePage := Disciplinas;
end;

procedure TForm1.but_estudanteClick(Sender: TObject);
begin
  Estudantes.ActivePage := Estudante;
end;

procedure TForm1.but_matriculaClick(Sender: TObject);
begin
  Estudantes.ActivePage := Matriculas;
end;

procedure TForm1.but_professorClick(Sender: TObject);
begin
  Estudantes.ActivePage := Professores;
end;

procedure TForm1.but_turmaClick(Sender: TObject);
begin
  Estudantes.ActivePage := Turmas;
end;

// Aba Estudantes

procedure TForm1.but_main_estudanteClick(Sender: TObject);
begin
  Estudantes.ActivePage := Menu;
end;


end.
