unit uEstudantes;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections, Vcl.Forms;

type

  cEstudantes = class

  private

    vNome: String;
    vCodigo: Integer;
    vCPF: Integer;

  public

    constructor Create(Nome: string; Codigo: Integer; CPF: Integer);
    procedure SetNome(Nome: String);
    procedure SetCodigo(Codigo: Integer);
    procedure SetCPF(CPF: Integer);
    function GetNome: String;
    function GetCodigo: Integer;
    function GetCPF: Integer;

  end;

implementation

{ uEstudante }

constructor cEstudantes.Create(Nome: string; Codigo: Integer; CPF: Integer);
begin

end;

procedure cEstudantes.SetNome(Nome: String);
begin
  vNome:= Nome;
end;

procedure cEstudantes.SetCodigo(Codigo: Integer);
begin
  vCodigo:= Codigo;
end;

procedure cEstudantes.SetCPF(CPF: Integer);
begin
  vCPF:= CPF;
end;

function cEstudantes.GetNome: String;
begin
  Result:= vNome;
end;

function cEstudantes.GetCodigo: Integer;
begin
  Result:= vCodigo;
end;

function cEstudantes.GetCPF: Integer;
begin
  Result:= vCPF;
end;

end.
