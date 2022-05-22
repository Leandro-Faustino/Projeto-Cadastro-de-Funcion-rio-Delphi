program Project1;

uses
  Vcl.Forms,
  UTesteEmpresa in 'UTesteEmpresa.pas' {CadFuncionario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCadFuncionario, CadFuncionario);
  Application.Run;
end.
