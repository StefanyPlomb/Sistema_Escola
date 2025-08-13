unit uDisciplinas;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections, Vcl.Forms;

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

implementation

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
