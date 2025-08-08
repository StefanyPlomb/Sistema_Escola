unit uDisciplinas;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections, Vcl.Forms;

type

  CDisciplinas = class

  private

    vCodigo: Integer;
    vNomeDisciplinas: String;

  public

    constructor Create(Codigo: Integer; Nome: String);
    procedure SetCodigo(Codigo: Integer);
    procedure SetNome(Nome: String);
    function GetCodigo: Integer;
    function GetNome: String;

  end;

implementation

{ CDisciplinas }

constructor CDisciplinas.Create(Codigo: Integer; Nome: String);
begin

end;

procedure CDisciplinas.SetCodigo(Codigo: Integer);
begin
  vCodigo := Codigo;
end;

procedure CDisciplinas.SetNome(Nome: String);
begin
  vNomeDisciplinas := Nome;
end;

function CDisciplinas.GetCodigo: Integer;
begin
  Result := vCodigo;
end;

function CDisciplinas.GetNome: String;
begin
  Result := vNomeDisciplinas;
end;

end.
