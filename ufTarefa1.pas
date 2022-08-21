unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfTarefa1 = class(TForm)
    MemoColuna: TMemo;
    memoTabelas: TMemo;
    MemoCond: TMemo;
    memoSql: TMemo;
    GeraSql: TButton;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GeraSqlClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa1: TfTarefa1;

implementation

{$R *.dfm}

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     // Destruindo formulario
     Action := caFree;
     Release;
     fTarefa1 := nil;
end;

procedure TfTarefa1.GeraSqlClick(Sender: TObject);
begin
    ShowMessage('Infelizmente não consegui realizar essa tarefa, espero poder adquirir essa expêriencia sendo um SoftPlayer');
end;

end.
