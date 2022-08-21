unit classe.threads;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  Tthreads = class(TThread)
  protected
    procedure Execute; override;
  public
    constructor Create;
  end;

  Tthreads2 = class (TThread)
     protected
    procedure Execute; override;
  public
    constructor Create;
  end;

var
  threads1: Tthreads;

implementation

{$R *.dfm}

uses ufTarefa2;

constructor Tthreads.Create;
begin
   inherited Create(True);
end;

constructor Tthreads2.Create;
begin
   inherited Create(True);
end;

procedure Tthreads2.Execute;
var Contador : integer;
begin
   if fTarefa2.edt2.Text <> '' then
     begin
            fTarefa2.ProgressBar2.Max := 100;
            for Contador := 1 to 100 do
            begin
                 sleep(StrToInt(fTarefa2.edt2.text));
                 fTarefa2.ProgressBar2.Position := Contador;
                 fTarefa2.Label2.Caption := IntToStr(Contador);
            end;
            fTarefa2.edt2.Enabled := True;
            Terminate;
            WaitFor;
            Free;
     end;
end;

procedure Tthreads.Execute;
var Contador : integer;
begin
     if fTarefa2.edt1.Text <> '' then
     begin

    while not Terminated do
       begin
            fTarefa2.ProgressBar1.Max := 100;
            for Contador := 1 to 100 do
            begin
                 sleep(StrToInt(fTarefa2.edt1.text));
                 fTarefa2.ProgressBar1.Position := Contador;
                 fTarefa2.Label1.Caption := IntToStr(Contador);
            end;
            fTarefa2.edt1.Enabled := True;
            Terminate;
            WaitFor;
            Free;
       end;
     end;
end;

procedure sleep(miliseconds : integer);
var Numero : Integer;
begin
    Numero := GetTickCount;
    while Numero + miliseconds > GetTickCount do
    begin
        Application.ProcessMessages;
    end;
end;
end.
