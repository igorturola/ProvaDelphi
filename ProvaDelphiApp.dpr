program ProvaDelphiApp;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {uPrincipal},
  ufTarefa2 in 'ufTarefa2.pas' {fTarefa2},
  ufTarefa3 in 'ufTarefa3.pas' {fTarefa3},
  ufTarefa1 in 'ufTarefa1.pas' {fTarefa1},
  classe.threads in 'classe.threads.pas' {threads};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TuPrincipal, uPrincipal);
  Application.Run;
end.
