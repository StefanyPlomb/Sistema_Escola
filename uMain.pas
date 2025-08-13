unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.Generics.Collections,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls, uEstudantes,uProfessores,uDisciplinas, Vcl.Mask;

type
  TMain = class(TForm)
    PaginaControle: TPageControl;
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
    img_disci: TImage;
    edit_codigo_disci: TEdit;
    edit_nome_disci: TEdit;
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
    painel_menu_lateral_estudante: TPanel;
    but_excluir_estudante: TButton;
    but_editar_estudante: TButton;
    but_voltar_estudante: TButton;
    but_adicionar_estudante: TButton;
    painel_main_estudantes: TPanel;
    img_estudantes: TImage;
    painel_controle_estudante: TPanel;
    label_codigo_estudante: TLabel;
    label_nome_estudante: TLabel;
    label_cpf_estudante: TLabel;
    edit_codigo_estudante: TEdit;
    edit_nome_estudante: TEdit;
    box_Materias_estudante: TListBox;
    box_nome_estudante: TComboBox;
    disciplinas_estudante: TLabel;
    label_estudantes: TLabel;
    but_limpar_estudante: TButton;
    edit_cpf_estudante: TMaskEdit;
    painel_menu_lateral_professor: TPanel;
    but_excluir_professor: TButton;
    but_editar_professor: TButton;
    but_voltar_professor: TButton;
    but_adicionar_professor: TButton;
    but_limpar_professor: TButton;
    painel_main_professor: TPanel;
    img_professor: TImage;
    label_professor: TLabel;
    painel_controle_professor: TPanel;
    label_codigo_professor: TLabel;
    label_nome_professor: TLabel;
    label_CPF_professor: TLabel;
    edit_codigo_professor: TEdit;
    edit_nome_professor: TEdit;
    edit_CPF_professor: TMaskEdit;
    box_nome_professor: TComboBox;
    but_salvar_estudante: TButton;
    but_salvar_professor: TButton;
    but_limpar_disciplinas: TButton;
    box_disciplinas: TComboBox;
    procedure but_estudanteClick(Sender: TObject);
    procedure but_professorClick(Sender: TObject);
    procedure but_disciplinaClick(Sender: TObject);
    procedure but_turmaClick(Sender: TObject);
    procedure but_matriculaClick(Sender: TObject);
    procedure but_voltar_estudanteClick(Sender: TObject);
    procedure but_voltar_profClick(Sender: TObject);
    procedure but_voltar_disciplinasClick(Sender: TObject);
    procedure but_voltar_turmasClick(Sender: TObject);
    procedure but_voltar_matriculaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure but_editar_estudanteClick(Sender: TObject);
    procedure but_adicionar_estudanteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure but_excluir_estudanteClick(Sender: TObject);
    procedure EstudanteShow(Sender: TObject);
    procedure box_nome_estudanteChange(Sender: TObject);
    procedure but_limpar_estudanteClick(Sender: TObject);
    procedure but_loginClick(Sender: TObject);
    procedure but_salvar_estudanteClick(Sender: TObject);
    procedure but_adicionar_professorClick(Sender: TObject);
    procedure but_editar_professorClick(Sender: TObject);
    procedure but_excluir_professorClick(Sender: TObject);
    procedure but_limpar_professorClick(Sender: TObject);
    procedure but_salvar_professorClick(Sender: TObject);
    procedure box_nome_professorChange(Sender: TObject);
    procedure ProfessorShow(Sender: TObject);
    procedure box_disciplinasChange(Sender: TObject);
    procedure but_adicionar_disciplinasClick(Sender: TObject);
    procedure but_editar_disciplinasClick(Sender: TObject);
    procedure but_excluir_disciplinasClick(Sender: TObject);
    procedure but_salvar_disciplinasClick(Sender: TObject);
    procedure but_limpar_disciplinasClick(Sender: TObject);
    procedure DisciplinasShow(Sender: TObject);

  private
    Operacao: String;
    procedure LimparEditsEstudantes;
    procedure EditarEditsEstudantes;
    procedure BloquearEditsEstudantes;
    function ValidarConteudoEditsEstudantes: Boolean;
    procedure RecarregarBoxEstudantes;

    procedure CarregarListas;
    procedure SalvarListas;
    procedure BloquearEdits;

    procedure LimparEditsProfessor;
    procedure EditarEditsProfessor;
    procedure BloquearEditsProfessor;
    function ValidarConteudoEditsProfessor: Boolean;
    procedure RecarregarBoxProfessor;

    procedure LimparEditsDisciplinas;
    procedure EditarEditsDisciplinas;
    procedure BloquearEditsDisciplinas;
    function ValidarConteudoEditsDisciplinas: Boolean;
    procedure RecarregarBoxDisciplinas;

  public
  end;

var
  Main: TMain;

implementation

{$R *.dfm}


{login}

procedure TMain.but_loginClick(Sender: TObject);
begin
  if (edit_login_user.Text = 'admin') and (edit_login_senha.Text = '123') then begin
    PaginaControle.ActivePage := Menu;
  end else begin
    ShowMessage('Usuário ou senha incorreto');
  end;
end;

{ Form }

procedure TMain.FormCreate(Sender: TObject);
begin
  PaginaControle.ActivePage := Login;
  CarregarListas;
  BloquearEdits;
end;

procedure TMain.CarregarListas;
begin
  CarregarListaEstudantes;
  CarregarListaProfessores;
  //CarregarListaTurmas;
  CarregarListaDisciplinas;
  //CarregarListaMatriculas;
end;

procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SalvarListas;
end;

procedure TMain.SalvarListas;
begin
  SalvarListaEstudantes;
  SalvarListaProfessores;
  //SalvarListaTurmas;
  SalvarListaDisciplinas;
  //SalvarListaMatriculas;
end;

procedure TMain.BloquearEdits;
begin
  BloquearEditsEstudantes;
  BloquearEditsProfessor;
  //BloquearEditsTurmas;
  //BloquearEditsDisciplinas;
  //BloquearEditsMatriculas;
end;

{ Menu Direção }

procedure TMain.but_disciplinaClick(Sender: TObject);
begin
  PaginaControle.ActivePage := Disciplinas;
end;

procedure TMain.but_estudanteClick(Sender: TObject);
begin
  PaginaControle.ActivePage := Estudante;
end;

procedure TMain.but_matriculaClick(Sender: TObject);
begin
  PaginaControle.ActivePage := Matriculas;
end;

procedure TMain.but_professorClick(Sender: TObject);
begin
  PaginaControle.ActivePage := Professores;
end;

procedure TMain.but_turmaClick(Sender: TObject);
begin
  PaginaControle.ActivePage := Turmas;
end;

{ Estudantes }

procedure TMain.but_voltar_estudanteClick(Sender: TObject);
begin
  PaginaControle.ActivePage := Menu;
end;

procedure TMain.but_adicionar_estudanteClick(Sender: TObject);
begin
  Operacao := 'Adicionar';
  LimparEditsEstudantes;
  EditarEditsEstudantes;
  edit_nome_estudante.SetFocus;
end;

procedure TMain.but_editar_estudanteClick(Sender: TObject);
begin
  Operacao := 'Editar';
  EditarEditsEstudantes;
  edit_nome_estudante.SetFocus;
end;

procedure TMain.but_excluir_estudanteClick(Sender: TObject);
begin
    ShowMessage('Excluir o estudante selecionado');
    ExcluirEstudante(BuscarCodigoEstudantePeloNome(box_nome_estudante.Text));
    RecarregarBoxEstudantes;
    LimparEditsEstudantes;
end;

procedure TMain.but_limpar_estudanteClick(Sender: TObject);
begin
  LimparEditsEstudantes;
end;

procedure TMain.but_salvar_estudanteClick(Sender: TObject);
begin

    if ValidarConteudoEditsEstudantes then begin
      if Operacao = 'Adicionar' then begin
        AdicionarEstudante(edit_nome_estudante.Text, edit_cpf_estudante.Text);
        LimparEditsEstudantes;
      end else if Operacao = 'Editar' then begin
        if MessageDlg('Tem certeza de que deseja editar o estudante selecionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
          EditarEstudante(StrToInt(edit_codigo_estudante.Text), edit_nome_estudante.Text, edit_cpf_estudante.Text);
        end;
      end;
      RecarregarBoxEstudantes;
      BloquearEditsEstudantes;
    end;

end;

{FUN ESTUDANTE}

procedure TMain.BloquearEditsEstudantes;
begin
  edit_nome_estudante.ReadOnly := True;
  edit_codigo_estudante.ReadOnly := True;
  edit_cpf_estudante.ReadOnly := True;
end;

procedure TMain.EditarEditsEstudantes;
begin
  edit_nome_estudante.ReadOnly := False;
  edit_codigo_estudante.ReadOnly := False;
  edit_cpf_estudante.ReadOnly := False;
end;

procedure TMain.LimparEditsEstudantes;
begin
  edit_nome_estudante.Clear;
  edit_codigo_estudante.Clear;
  edit_cpf_estudante.Clear;
  box_nome_estudante.Text := '';
end;

procedure TMain.RecarregarBoxEstudantes;
var i: Integer;
begin
  box_nome_estudante.Items.Clear;
  for i := 0 to ListaEstudantes.Count - 1 do begin
    box_nome_estudante.Items.Add(ListaEstudantes[i].GetNome);
  end;
end;

function TMain.ValidarConteudoEditsEstudantes: Boolean;
begin
  Result := false;
  if edit_nome_estudante.Text = '' then begin
    ShowMessage('É necessário preencher o nome do estudante para adicioná-lo');
  end;
  if edit_cpf_estudante.Text = '' then begin
    ShowMessage('É necessário preencher o CPF do estudante para adicioná-lo');
  end else begin
    Result := true;
  end;
end;

procedure TMain.box_nome_estudanteChange(Sender: TObject);
var i: Integer;
    estudante: TEstudante;
begin
  for i := 0 to ListaEstudantes.Count - 1 do begin
    if ListaEstudantes[i].GetNome = box_nome_estudante.Text then begin
      estudante := ListaEstudantes[i];
      edit_codigo_estudante.Text := IntToStr(estudante.GetCodigo);
      edit_nome_estudante.Text := estudante.GetNome;
      edit_cpf_estudante.Text := estudante.GetCPF;
      break;
    end;
  end;
end;

procedure TMain.EstudanteShow(Sender: TObject);
begin
  RecarregarBoxEstudantes;
end;

{ Professores }

procedure TMain.but_voltar_profClick(Sender: TObject);
begin
  PaginaControle.ActivePage := Menu;
end;

procedure TMain.but_adicionar_professorClick(Sender: TObject);
begin
  Operacao := 'Adicionar';
  LimparEditsProfessor;
  EditarEditsProfessor;
  edit_nome_professor.SetFocus;

end;

procedure TMain.but_editar_professorClick(Sender: TObject);
begin
  Operacao := 'Editar';
  EditarEditsProfessor;
  edit_nome_professor.SetFocus;
end;

procedure TMain.but_excluir_professorClick(Sender: TObject);
begin
ShowMessage('Excluir o professor selecionado');
    ExcluirProfessor(BuscarCodigoProfessorPeloNome(box_nome_professor.Text));
    RecarregarBoxProfessor;
    LimparEditsProfessor;
end;

procedure TMain.but_limpar_professorClick(Sender: TObject);
begin
  LimparEditsProfessor;
end;

procedure TMain.but_salvar_professorClick(Sender: TObject);
begin
    if ValidarConteudoEditsProfessor then begin
      if Operacao = 'Adicionar' then begin
        AdicionarProfessor(edit_nome_professor.Text, edit_cpf_professor.Text);
        LimparEditsProfessor;
      end else if Operacao = 'Editar' then begin
        if MessageDlg('Tem certeza de que deseja editar o professor selecionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
          EditarProfessor(StrToInt(edit_codigo_professor.Text), edit_nome_professor.Text, edit_cpf_professor.Text);
        end;
      end;
      RecarregarBoxProfessor;
      BloquearEditsProfessor;
    end;
end;

{FUN PROFESSORES}

procedure TMain.BloquearEditsProfessor;
begin
  edit_nome_professor.ReadOnly := True;
  edit_codigo_professor.ReadOnly := True;
  edit_CPF_professor.ReadOnly := True;
end;

procedure TMain.EditarEditsProfessor;
begin
  edit_nome_professor.ReadOnly := False;
  edit_codigo_professor.ReadOnly := False;
  edit_CPF_professor.ReadOnly := False;
end;

procedure TMain.LimparEditsProfessor;
begin
  edit_nome_professor.Clear;
  edit_codigo_professor.Clear;
  edit_cpf_professor.Clear;
  box_nome_professor.Text := '';
end;

procedure TMain.RecarregarBoxProfessor;
var i: Integer;
begin
  box_nome_professor.Items.Clear;
  for i := 0 to ListaProfessores.Count - 1 do begin
    box_nome_professor.Items.Add(ListaProfessores[i].GetNome);
  end;
end;


function TMain.ValidarConteudoEditsProfessor: Boolean;
begin
  Result := false;
  if edit_nome_professor.Text = '' then begin
    ShowMessage('É necessário preencher o nome do professor para adicioná-lo');
  end;
  if edit_CPF_professor.Text = '' then begin
    ShowMessage('É necessário preencher o CPF do professor para adicioná-lo');
  end else begin
    Result := true;
  end;
end;

procedure TMain.box_nome_professorChange(Sender: TObject);
var i: Integer;
    professor: TProfessor;
begin
  for i := 0 to ListaProfessores.Count - 1 do begin
    if ListaProfessores[i].GetNome = box_nome_professor.Text then begin
      professor := ListaProfessores[i];
      edit_codigo_professor.Text := IntToStr(professor.GetCodigo);
      edit_nome_professor.Text := professor.GetNome;
      edit_cpf_professor.Text := professor.GetCPF;
      break;
    end;
  end;
end;


procedure TMain.ProfessorShow(Sender: TObject);
begin
  RecarregarBoxProfessor;
end;


{ Diciplinas }

procedure TMain.but_voltar_disciplinasClick(Sender: TObject);
begin
  PaginaControle.ActivePage := Menu;
end;

procedure TMain.but_adicionar_disciplinasClick(Sender: TObject);
begin
  Operacao := 'Adicionar';
  LimparEditsdisciplinas;
  EditarEditsDisciplinas;
  edit_nome_disci.SetFocus;
end;

procedure TMain.but_editar_disciplinasClick(Sender: TObject);
begin
  Operacao := 'Editar';
  EditarEditsDisciplinas;
  edit_nome_disci.SetFocus;
end;

procedure TMain.but_excluir_disciplinasClick(Sender: TObject);
begin
    ShowMessage('Excluir a disciplina selecionada');
    ExcluirDisciplina(BuscarCodigoDisciplinaPeloNome(box_disciplinas.Text));
    RecarregarBoxDisciplinas;
    LimparEditsDisciplinas;
end;

procedure TMain.but_limpar_disciplinasClick(Sender: TObject);
begin
  LimparEditsDisciplinas;
end;

procedure TMain.but_salvar_disciplinasClick(Sender: TObject);
begin
    if ValidarConteudoEditsDisciplinas then begin
      if Operacao = 'Adicionar' then begin
        AdicionarDisciplina(edit_nome_disci.Text);
        LimparEditsDisciplinas;
      end else if Operacao = 'Editar' then begin
        if MessageDlg('Tem certeza de que deseja editar a disciplina selecionada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
          EditarDisciplina(StrToInt(edit_codigo_disci.Text), edit_nome_disci.Text);
        end;
      end;
      RecarregarBoxDisciplinas;
      BloquearEditsDisciplinas;
    end;
end;

{Funções Disciplinas }

 procedure TMain.BloquearEditsDisciplinas;
begin
  edit_nome_disci.ReadOnly := True;
  edit_codigo_disci.ReadOnly := True;

end;

 procedure TMain.EditarEditsDisciplinas;
begin
  edit_nome_disci.ReadOnly := False;
  //edit_codigo_disci.ReadOnly := False;

end;

procedure TMain.LimparEditsDisciplinas;
begin
  edit_nome_disci.Clear;
  edit_codigo_disci.Clear;
end;

procedure TMain.RecarregarBoxdisciplinas;
var i: Integer;
begin
  box_disciplinas.Items.Clear;
  for i := 0 to ListaDisciplinas.Count - 1 do begin
    box_disciplinas.Items.Add(ListaDisciplinas[i].GetNome);
  end;
end;

function TMain.ValidarConteudoEditsDisciplinas: Boolean;
begin
  Result := false;
  if edit_nome_disci.Text = '' then begin
    ShowMessage('É necessário preencher o nome da disciplina para adicioná-lo');
  end else begin
    Result := true;
  end;
end;

procedure TMain.box_disciplinasChange(Sender: TObject);
var i: Integer;
    disciplinas: TDisciplina;
begin
  for i := 0 to ListaDisciplinas.Count - 1 do begin
    if ListaDisciplinas[i].GetNome = box_disciplinas.Text then begin
      disciplinas := ListaDisciplinas[i];
      edit_codigo_disci.Text := IntToStr(disciplinas.GetCodigo);
      edit_nome_disci.Text := disciplinas.GetNome;
      break;
    end;
  end;
end;

procedure TMain.DisciplinasShow(Sender: TObject);
begin
  RecarregarBoxDisciplinas;
end;


{ Turma }

procedure TMain.but_voltar_turmasClick(Sender: TObject);
begin
  PaginaControle.ActivePage := Menu;
end;

{  Matricula }

procedure TMain.but_voltar_matriculaClick(Sender: TObject);
begin
  PaginaControle.ActivePage := Menu;
end;

end.
