unit uProfessores;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections, REST.Json,
  System.IOUtils;

procedure AdicionarProfessor(aNome, aCPF: String);
procedure EditarProfessor(aCodigo: Integer; aNome, aCPF: String);
procedure ExcluirProfessor(aCodigo: Integer);
function BuscarCodigoProfessorPeloNome(aNome: String): Integer;
procedure CarregarListaProfessores;
procedure SalvarListaProfessores;

type

  TProfessor = class
  private
    FNome: String;
    FCodigo: Integer;
    FCPF: String;
  public
    procedure SetNome(Nome: String);
    procedure SetCodigo(Codigo: Integer);
    procedure SetCPF(CPF: String);
    function GetNome: String;
    function GetCodigo: Integer;
    function GetCPF: String;
  end;

var
  ListaProfessores: TObjectList<TProfessor>;

implementation

procedure AdicionarProfessor(aNome, aCPF: String);
var
  i, maiorCodigo: Integer;
  professor: TProfessor;
begin
  maiorCodigo := 1;
  for i := 0 to ListaProfessores.Count - 1 do
  begin
    if ListaProfessores[i].GetCodigo >= maiorCodigo then
      maiorCodigo := ListaProfessores[i].GetCodigo + 1;
  end;
  professor := TProfessor.Create;
  professor.SetCodigo(maiorCodigo);
  professor.SetNome(aNome);
  professor.SetCPF(aCPF);
  ListaProfessores.Add(professor);
end;

procedure EditarProfessor(aCodigo: Integer; aNome, aCPF: String);
var
  i: Integer;
  professor: TProfessor;
begin
  for i := 0 to ListaProfessores.Count - 1 do
  begin
    if ListaProfessores[i].GetCodigo = aCodigo then
    begin
      professor := ListaProfessores[i];
      professor.SetNome(aNome);
      professor.SetCPF(aCPF);
      Break;
    end;
  end;
end;

procedure ExcluirProfessor(aCodigo: Integer);
var
  i: Integer;
  professor: TProfessor;
begin
  for i := 0 to ListaProfessores.Count - 1 do
  begin
    if ListaProfessores[i].GetCodigo = aCodigo then
    begin
      professor := ListaProfessores[i];
      ListaProfessores.Extract(professor);
      professor.Free;
      Break;
    end;
  end;
end;

function BuscarCodigoProfessorPeloNome(aNome: String): Integer;
var
  i: Integer;
begin
  Result := 0;
  for i := 0 to ListaProfessores.Count - 1 do
  begin
    if ListaProfessores[i].GetNome = aNome then
    begin
      Result := ListaProfessores[i].GetCodigo;
      Break;
    end;
  end;
end;

procedure CarregarListaProfessores;
var
  caminho, Json: String;
begin
  caminho := ExtractFilePath(ParamStr(0));
  if not DirectoryExists(caminho + '\data') then
    ForceDirectories(caminho + '\data');

  if TFile.Exists(caminho + '\data\professores.json', False) then
  begin
    Json := TFile.ReadAllText(caminho + '\data\professores.json', TEncoding.UTF8);
    ListaProfessores.Free;
    ListaProfessores := TJson.JsonToObject<TObjectList<TProfessor>>(Json);
  end;
end;

procedure SalvarListaProfessores;
var
  caminho, Json: String;
begin
  caminho := ExtractFilePath(ParamStr(0));
  if not DirectoryExists(caminho + '\data') then
    ForceDirectories(caminho + '\data');

  Json := TJson.ObjectToJsonString(ListaProfessores);
  TFile.WriteAllText(caminho + '\data\professores.json', Json, TEncoding.UTF8);
end;

{ TProfessor }

procedure TProfessor.SetNome(Nome: String);
begin
  FNome := Nome;
end;

procedure TProfessor.SetCodigo(Codigo: Integer);
begin
  FCodigo := Codigo;
end;

procedure TProfessor.SetCPF(CPF: String);
begin
  FCPF := CPF;
end;

function TProfessor.GetNome: String;
begin
  Result := FNome;
end;

function TProfessor.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TProfessor.GetCPF: String;
begin
  Result := FCPF;
end;

initialization

ListaProfessores := TObjectList<TProfessor>.Create;

finalization

ListaProfessores.Free;

end.

