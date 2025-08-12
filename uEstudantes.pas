unit uEstudantes;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections, REST.Json,
  System.IOUtils;

procedure AdicionarEstudante(aNome, aCPF: String);
procedure EditarEstudante(aCodigo: Integer; aNome, aCPF: String);
procedure ExcluirEstudante(aCodigo: Integer);
function BuscarCodigoEstudantePeloNome(aNome: String): Integer;
procedure CarregarListaEstudantes;
procedure SalvarListaEstudantes;

type

  TEstudante = class
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
  ListaEstudantes: TObjectList<TEstudante>;

implementation

{ Operações do Estudante }

procedure AdicionarEstudante(aNome, aCPF: String);
var
  i, maiorCodigo: Integer;
  estudante: TEstudante;
begin
  maiorCodigo := 1;
  for i := 0 to ListaEstudantes.Count - 1 do
  begin
    if ListaEstudantes[i].GetCodigo >= maiorCodigo then
    begin
      maiorCodigo := ListaEstudantes[i].GetCodigo + 1;
    end;
  end;
  estudante := TEstudante.Create;
  estudante.SetCodigo(maiorCodigo);
  estudante.SetNome(aNome);
  estudante.SetCPF(aCPF);
  ListaEstudantes.Add(estudante);
end;

procedure EditarEstudante(aCodigo: Integer; aNome, aCPF: String);
var
  i: Integer;
  estudante: TEstudante;
begin
  for i := 0 to ListaEstudantes.Count - 1 do
  begin
    if ListaEstudantes[i].GetCodigo = aCodigo then
    begin
      estudante := ListaEstudantes[i];
      estudante.SetNome(aNome);
      estudante.SetCPF(aCPF);
      break;
    end;
  end;
end;

procedure ExcluirEstudante(aCodigo: Integer);
var
  i: Integer;
  estudante: TEstudante;
begin
  for i := 0 to ListaEstudantes.Count - 1 do
  begin
    if ListaEstudantes[i].GetCodigo = aCodigo then
    begin
      estudante := ListaEstudantes[i];
      ListaEstudantes.Extract(estudante);
      estudante.Free;
      break;
    end;
  end;
end;

function BuscarCodigoEstudantePeloNome(aNome: String): Integer;
var
  i: Integer;
begin
  Result := 0;
  for i := 0 to ListaEstudantes.Count - 1 do
  begin
    if ListaEstudantes[i].GetNome = aNome then
    begin
      Result := ListaEstudantes[i].GetCodigo;
      break;
    end;
  end;
end;

procedure CarregarListaEstudantes;
var
  caminho, linha, Json: String;
  i: Integer;
  estudante: TEstudante;
begin
  caminho := ExtractFilePath(ParamStr(0));
  if not DirectoryExists(caminho + '\data') then
  begin
    ForceDirectories(caminho + '\data')
  end;
  if TFile.Exists(caminho + '\data\estudantes.json', false) then
  begin
    Json := TFile.ReadAllText(caminho + '\data\estudantes.json',
      TEncoding.UTF8);
    ListaEstudantes := TJson.JsonToObject < TObjectList < TEstudante >> (Json);
  end;
end;

procedure SalvarListaEstudantes;
var
  caminho, linha, Json: String;
  i: Integer;
begin
  caminho := ExtractFilePath(ParamStr(0));
  if not DirectoryExists(caminho + '\data') then
  begin
    ForceDirectories(caminho + '\data')
  end;
  Json := TJson.ObjectToJsonString(ListaEstudantes);
  TFile.WriteAllText(caminho + '\data\estudantes.json', Json, TEncoding.UTF8);
end;

{ TEstudante }

procedure TEstudante.SetNome(Nome: String);
begin
  FNome := Nome;
end;

procedure TEstudante.SetCodigo(Codigo: Integer);
begin
  FCodigo := Codigo;
end;

procedure TEstudante.SetCPF(CPF: String);
begin
  FCPF := CPF;
end;

function TEstudante.GetNome: String;
begin
  Result := FNome;
end;

function TEstudante.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TEstudante.GetCPF: String;
begin
  Result := FCPF;
end;

initialization

ListaEstudantes := TObjectList<TEstudante>.Create;

finalization

ListaEstudantes.Free;

end.
