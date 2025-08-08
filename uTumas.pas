unit uTumas;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections, Vcl.Forms;

type

CTurma = class

private

  vCodigoTurma:Integer;
  vCodigoProfessor:Integer;
  vCodigoEstudante:Integer;

  public
    constructor Create(CodigoTurma:Integer;CodigoProfessor:Integer;CodigoEstudante:Integer);
    procedure SetCodigoTurma(CodigoTurma:Integer);
    procedure SetCodigoProfessor(CodigoProfessor:Integer);
    procedure SetCodgoEstudante(CodigoEstudante:Integer);
    function GetCodigoTurma:Integer;
    function GetCodigoProfessor:Integer;
    function GetCodigoEstudante:Integer;

  end;

implementation

{ CTurma }

constructor CTurma.Create(CodigoTurma, CodigoProfessor,
  CodigoEstudante: Integer);
begin

end;

procedure CTurma.SetCodigoTurma(CodigoTurma: Integer);
begin
  vCodigoTurma:= CodigoTurma;
end;

procedure CTurma.SetCodgoEstudante(CodigoEstudante: Integer);
begin
  vCodigoEstudante:= CodigoEstudante;
end;

procedure CTurma.SetCodigoProfessor(CodigoProfessor: Integer);
begin
  vCodigoProfessor:= CodigoProfessor;
end;

function CTurma.GetCodigoTurma: Integer;
begin
  Result:= vCodigoTurma;
end;

function CTurma.GetCodigoEstudante: Integer;
begin
  Result:= vCodigoEstudante;
end;

function CTurma.GetCodigoProfessor: Integer;
begin
  Result:= vCodigoProfessor;
end;

end.
