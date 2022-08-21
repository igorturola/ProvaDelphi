unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  classe.threads, Vcl.ComCtrls;

type
    TfTarefa2 = class(TForm)
    spbThreads: TSpeedButton;
    GroupBox1: TGroupBox;
    edt2: TEdit;
    edt1: TEdit;
    Label8: TLabel;
    Label3: TLabel;
    ProgressBar2: TProgressBar;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spbThreadsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     // Destruindo formulario
     Action := caFree;
     Release;
     fTarefa2 := nil;
end;

procedure TfTarefa2.FormShow(Sender: TObject);
begin
     Label1.Parent := progressBar1;
     Label1.AutoSize := False;
     Label1.Transparent := True;
     Label1.Top :=  0;
     Label1.Left :=  0;
     Label1.Width := progressBar1.ClientWidth;
     Label1.Height := progressBar1.ClientHeight;
     Label1.Alignment := taCenter;
     Label1.Layout := tlCenter;


     Label2.Parent := progressBar2;
     Label2.AutoSize := False;
     Label2.Transparent := True;
     Label2.Top :=  0;
     Label2.Left :=  0;
     Label2.Width := progressBar2.ClientWidth;
     Label2.Height := progressBar2.ClientHeight;
     Label2.Alignment := taCenter;
     Label2.Layout := tlCenter;
end;

procedure TfTarefa2.spbThreadsClick(Sender: TObject);
var Thread1 : Tthreads;
    Thread2 : Tthreads2;

begin
     if edt1.Text <> '' then
     begin
         Thread1 :=  Tthreads.Create;
         Thread1.FreeOnTerminate := True;
         Thread1.Start;
         edt1.Enabled := False;
     end
     else
         ShowMessage('Preencha o campo Thread 1');

     if edt2.Text <> '' then
     begin
         Thread2 :=  Tthreads2.Create;
         Thread2.FreeOnTerminate := True;
         Thread2.Start;
         edt2.Enabled := False;
     end
     else
        ShowMessage('Preencha o campo Thread 2');

end;

end.
