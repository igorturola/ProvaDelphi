unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, ufTarefa2, ufTarefa3,
  ufTarefa1;

type
  TuPrincipal = class(TForm)
    Tarefas: TMainMenu;
    tarefa1: TMenuItem;
    tarefa2: TMenuItem;
    tarefa3: TMenuItem;
    procedure tarefa1Click(Sender: TObject);
    procedure tarefa2Click(Sender: TObject);
    procedure tarefa3Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uPrincipal: TuPrincipal;

implementation

{$R *.dfm}

procedure TuPrincipal.tarefa1Click(Sender: TObject);
begin
    // Verificando se formulario existe
    if not Assigned(fTarefa1) then
    begin
         // Metodo criando o formulario
         fTarefa1 := TfTarefa1.Create(self);
           // Abrindo formulario
         fTarefa1.Show;
    end;
end;

procedure TuPrincipal.tarefa2Click(Sender: TObject);
begin
    // Verificando se formulario existe
    if not Assigned(fTarefa2) then
    begin
         // Metodo criando o formulario
         fTarefa2 := TfTarefa2.Create(self);
           // Abrindo formulario
         fTarefa2.Show;
    end;
end;

procedure TuPrincipal.tarefa3Click(Sender: TObject);
begin
    // Verificando se formulario existe
    if not Assigned(fTarefa3) then
    begin
         // Metodo criando o formulario
         fTarefa3 := TfTarefa3.Create(self);
           // Abrindo formulario
         fTarefa3.Show;
    end;
end;

end.

