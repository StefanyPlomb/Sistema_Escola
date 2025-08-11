unit uEstudantes;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections, Vcl.Forms;

procedure Adicionar(aNome, aCPF: String);

type

  TEstudante = class
  private
    FNome: String;
    FCodigo: Integer;
    FCPF: Integer;
  public
    procedure SetNome(Nome: String);
    procedure SetCodigo(Codigo: Integer);
    procedure SetCPF(CPF: Integer);
    function GetNome: String;
    function GetCodigo: Integer;
    function GetCPF: Integer;
  end;

var
  ListaEstudantes: TObjectList<TEstudante>;

implementation

procedure Adicionar(aNome, aCPF: String);
begin
  ListaEstudantes.Add(TEstudante.Create());  
end;

procedure AdicionarCodigo(aCodigo: Integer);
begin

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

procedure TEstudante.SetCPF(CPF: Integer);
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

function TEstudante.GetCPF: Integer;
begin
  Result := FCPF;
end;

end.
