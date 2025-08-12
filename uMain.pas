unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.Generics.Collections,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls, uEstudantes, Vcl.Mask;

type
  TMain = class(TForm)
    PageControl: TPageControl;
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
    procedure edit_cpf_estudanteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure but_excluir_estudanteClick(Sender: TObject);
    procedure EstudanteShow(Sender: TObject);
    procedure box_nome_estudanteChange(Sender: TObject);
    procedure but_limpar_estudanteClick(Sender: TObject);
    procedure but_loginClick(Sender: TObject);
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
  public
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

{ Form }

procedure TMain.FormCreate(Sender: TObject);
begin
  PageControl.ActivePage := Login;
  CarregarListas;
  BloquearEdits;
end;

procedure TMain.CarregarListas;
begin
  CarregarListaEstudantes;
end;

procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SalvarListas;
end;

procedure TMain.SalvarListas;
begin
  SalvarListaEstudantes;
end;

procedure TMain.BloquearEdits;
begin
  BloquearEditsEstudantes;
end;

{ Tab Menu }

procedure TMain.but_disciplinaClick(Sender: TObject);
begin
  PageControl.ActivePage := Disciplinas;
end;

procedure TMain.but_estudanteClick(Sender: TObject);
begin
  PageControl.ActivePage := Estudante;
end;

procedure TMain.but_matriculaClick(Sender: TObject);
begin
  PageControl.ActivePage := Matriculas;
end;

procedure TMain.but_professorClick(Sender: TObject);
begin
  PageControl.ActivePage := Professores;
end;

procedure TMain.but_turmaClick(Sender: TObject);
begin
  PageControl.ActivePage := Turmas;
end;

{ Tab Estudantes }

procedure TMain.but_voltar_estudanteClick(Sender: TObject);
begin
  PageControl.ActivePage := Menu;
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

procedure TMain.EditarEditsEstudantes;
begin
  edit_nome_estudante.ReadOnly := False;
  edit_codigo_estudante.ReadOnly := False;
  edit_cpf_estudante.ReadOnly := False;
end;

procedure TMain.BloquearEditsEstudantes;
begin
  edit_nome_estudante.ReadOnly := True;
  edit_codigo_estudante.ReadOnly := True;
  edit_cpf_estudante.ReadOnly := True;
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

procedure TMain.edit_cpf_estudanteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
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
end;

procedure TMain.EstudanteShow(Sender: TObject);
begin
  RecarregarBoxEstudantes;
end;

procedure TMain.but_excluir_estudanteClick(Sender: TObject);
begin
  if MessageDlg('Tem certeza de que deseja excluir o estudante selecionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
    ExcluirEstudante(BuscarCodigoEstudantePeloNome(box_nome_estudante.Text));
    RecarregarBoxEstudantes;
    LimparEditsEstudantes;
  end;
end;

procedure TMain.but_limpar_estudanteClick(Sender: TObject);
begin
  LimparEditsEstudantes;
end;

procedure TMain.but_loginClick(Sender: TObject);
begin
  if (edit_login_user.Text = 'admin') and (edit_login_senha.Text = 'admin') then begin
    PageControl.ActivePage := Menu;
  end else begin
    ShowMessage('Usuário ou senha incorreto');
  end;
end;

{ Tab Professores }

procedure TMain.but_voltar_profClick(Sender: TObject);
begin
  PageControl.ActivePage := Menu;
end;

{ Tab Diciplinas }

procedure TMain.but_voltar_disciplinasClick(Sender: TObject);
begin
  PageControl.ActivePage := Menu;
end;

{ Tab Turma }

procedure TMain.but_voltar_turmasClick(Sender: TObject);
begin
  PageControl.ActivePage := Menu;
end;

{ Tab Matricula }

procedure TMain.but_voltar_matriculaClick(Sender: TObject);
begin
  PageControl.ActivePage := Menu;
end;

end.
