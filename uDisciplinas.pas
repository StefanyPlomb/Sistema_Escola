unit uDisciplinas;

interface

uses
   System.SysUtils, System.Classes, System.Generics.Collections, REST.Json,
  System.IOUtils;

procedure AdicionarDisciplina(aNome: String);
procedure EditarDisciplina(aCodigo: Integer; aNome: String);
procedure ExcluirDisciplina(aCodigo: Integer);
function BuscarCodigoDisciplinaPeloNome(aNome: String): Integer;
procedure CarregarListaDisciplinas;
procedure SalvarListaDisciplinas;

type

  TDisciplina = class

  private

    FCodigo: Integer;
    FNomeDisciplinas: String;

  public

    constructor Create(Codigo: Integer; Nome: String);
    procedure SetCodigo(Codigo: Integer);
    procedure SetNome(Nome: String);
    function GetCodigo: Integer;
    function GetNome: String;

  end;

var
  ListaDisciplinas: TObjectList<TDisciplina>;

implementation

{ Operações da Disciplina}

procedure AdicionarDisciplina(aNome: String);
var
  i, maiorCodigo: Integer;
  disciplina: TDisciplina;
begin
  maiorCodigo := 1;
  for i := 0 to ListaDisciplinas.Count - 1 do
  begin
    if ListaDisciplinas[i].GetCodigo >= maiorCodigo then
    begin
      maiorCodigo := ListaDisciplinas[i].GetCodigo + 1;
    end;
  end;
  //disciplina := TDisciplina.Create;
  disciplina.SetCodigo(maiorCodigo);
  disciplina.SetNome(aNome);
  ListaDisciplinas.Add(disciplina);
end;

procedure EditarDisciplina(aCodigo: Integer; aNome: String);
var
  i: Integer;
  disciplina: TDisciplina;
begin
  for i := 0 to ListaDisciplinas.Count - 1 do
  begin
    if ListaDisciplinas[i].GetCodigo = aCodigo then
    begin
      disciplina := ListaDisciplinas[i];
      disciplina.SetNome(aNome);
      break;
    end;
  end;
end;

procedure ExcluirDisciplina(aCodigo: Integer);
var
  i: Integer;
  disciplina: TDisciplina;
begin
  for i := 0 to ListaDisciplinas.Count - 1 do
  begin
    if ListaDisciplinas[i].GetCodigo = aCodigo then
    begin
      disciplina := ListaDisciplinas[i];
      ListaDisciplinas.Extract(disciplina);
      disciplina.Free;
      break;
    end;
  end;
end;

function BuscarCodigoDisciplinaPeloNome(aNome: String): Integer;
var
  i: Integer;
begin
  Result := 0;
  for i := 0 to ListaDisciplinas.Count - 1 do
  begin
    if ListaDisciplinas[i].GetNome = aNome then
    begin
      Result := ListaDisciplinas[i].GetCodigo;
      break;
    end;
  end;
end;

procedure CarregarListaDisciplinas;
var
  caminho, linha, Json: String;
  i: Integer;
  disciplina: TDisciplina;
begin
  caminho := ExtractFilePath(ParamStr(0));
  if not DirectoryExists(caminho + '\data') then
  begin
    ForceDirectories(caminho + '\data')
  end;
  if TFile.Exists(caminho + '\data\disciplinas.json', false) then
  begin
    Json := TFile.ReadAllText(caminho + '\data\disciplinas.json',
      TEncoding.UTF8);
    ListaDisciplinas := TJson.JsonToObject < TObjectList < TDisciplina >> (Json);
  end;
end;

procedure SalvarListaDisciplinas;
var
  caminho, linha, Json: String;
  i: Integer;
begin
  caminho := ExtractFilePath(ParamStr(0));
  if not DirectoryExists(caminho + '\data') then
  begin
    ForceDirectories(caminho + '\data')
  end;
  Json := TJson.ObjectToJsonString(ListaDisciplinas);
  TFile.WriteAllText(caminho + '\data\disciplinas.json', Json, TEncoding.UTF8);
end;

{ TDisciplinas }

constructor TDisciplina.Create(Codigo: Integer; Nome: String);
begin

end;

procedure TDisciplina.SetCodigo(Codigo: Integer);
begin
  FCodigo := Codigo;
end;

procedure TDisciplina.SetNome(Nome: String);
begin
  FNomeDisciplinas := Nome;
end;

function TDisciplina.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TDisciplina.GetNome: String;
begin
  Result := FNomeDisciplinas;
end;

end.
