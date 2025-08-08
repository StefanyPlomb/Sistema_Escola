unit uProfessores;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections, Vcl.Forms;

type

  CProfessores = class

  private

    vNome: String;
    vCodigo: Integer;
    vCPF: Integer;

  public

    constructor Create(Nome: String; Codigo: Integer; CPF: Integer);
    procedure SetNome(Nome: String);
    procedure SetCodigo(Codigo: Integer);
    procedure SetCPF(CPF: Integer);
    function GetNome: String;
    function GetCodigo: Integer;
    function GetCPF: Integer;
  end;

implementation

{ CProfessores }

constructor CProfessores.Create(Nome: String; Codigo, CPF: Integer);
begin

end;

procedure CProfessores.SetNome(Nome: String);
begin
  vNome := Nome;
end;

procedure CProfessores.SetCodigo(Codigo: Integer);
begin
  vCodigo := Codigo;
end;

procedure CProfessores.SetCPF(CPF: Integer);
begin
  vCPF := CPF;
end;

function CProfessores.GetNome: String;
begin
  Result := vNome;
end;

function CProfessores.GetCodigo: Integer;
begin
  Result := vCodigo;
end;

function CProfessores.GetCPF: Integer;
begin
  Result := vCPF;
end;

end.
