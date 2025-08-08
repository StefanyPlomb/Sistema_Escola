unit uMatriculas;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections, Vcl.Forms;

type

CMatriculas = class

private

  vCodigoMatricula:Integer;
  vCodigoDisciplina:Integer;
  vCodigoEstudante:Integer;

public
    constructor Create(CodigoMatricula:Integer; CodigoDisciplina:Integer; CodigoEstudante:Integer);
    procedure SetCodigoMatricula(CodigoMatricula:Integer);
    procedure SetCodigoDisciplina(CodigoDisciplina:Integer);
    procedure SetCodigoEstudante(CodigoEstudante:Integer);
    function GetCodigoMatricula:Integer;
    function GetCodigoDisciplina:Integer;
    function GetCodigoEstudante:Integer;
  end;

implementation

{ CMatriculas }

constructor CMatriculas.Create(CodigoMatricula, CodigoDisciplina,
  CodigoEstudante: Integer);
begin

end;

procedure CMatriculas.SetCodigoMatricula(CodigoMatricula: Integer);
begin
  vCodigoMatricula:=CodigoMatricula;
end;

procedure CMatriculas.SetCodigoDisciplina(CodigoDisciplina: Integer);
begin
  vCodigoDisciplina:=CodigoDisciplina;
end;

procedure CMatriculas.SetCodigoEstudante(CodigoEstudante: Integer);
begin
  vCodigoEstudante:=CodigoEstudante;
end;

function CMatriculas.GetCodigoMatricula: Integer;
begin
  Result:= vCodigoMatricula;
end;

function CMatriculas.GetCodigoDisciplina: Integer;
begin
  Result:= vCodigoDisciplina;
end;

function CMatriculas.GetCodigoEstudante: Integer;
begin
  Result:= vCodigoEstudante;
end;

end.
