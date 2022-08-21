unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Datasnap.DBClient;

type
  TfTarefa3 = class(TForm)
    DBGrid: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    edtTotal: TEdit;
    Button2: TButton;
    Label3: TLabel;
    edtTotalDiv: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtTotalExit(Sender: TObject);
    procedure edtTotalDivExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa3       : TfTarefa3;
  ClientTarefa3  :  TClientDataSet;
  DataSource     :  TDataSource;
implementation

{$R *.dfm}

procedure TfTarefa3.Button1Click(Sender: TObject);
var Total: Currency;
begin
    Total := 0;
    ClientTarefa3.DisableControls;
    try
       while not ClientTarefa3.EOF do begin
       Total := Total + ClientTarefa3.FieldByName('VALOR').AsFloat;
       ClientTarefa3.Next;
    end;
    finally
         ClientTarefa3.EnableControls;
         edtTotal.Text := FormatFloat('0.00', Total);
    end;
end;

procedure TfTarefa3.Button2Click(Sender: TObject);
var Total: Currency;
begin
    ClientTarefa3.First;
    while not ClientTarefa3.eof do begin
          Total:= Total + ClientTarefa3.FieldByName('VALOR').AsCurrency / ClientTarefa3.RecordCount ;
          ClientTarefa3.edit;
          ClientTarefa3.post;
          ClientTarefa3.next;
    end;
    ClientTarefa3.first;
    edtTotalDiv.Text := CurrToStr(Total);
end;

procedure TfTarefa3.edtTotalDivExit(Sender: TObject);
begin
    edtTotalDiv.Text:= FormatFloat('0.00', StrtoFloat(edtTotalDiv.Text));
end;

procedure TfTarefa3.edtTotalExit(Sender: TObject);
begin
    edtTotal.Text:= FormatFloat('0.00', StrtoFloat(edtTotal.Text));
end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
     Release;
     fTarefa3 := nil;
     FreeAndNil(ClientTarefa3);
     FreeAndNil(DataSource);
end;

procedure TfTarefa3.FormShow(Sender: TObject);
var
  I, L, M: Integer;
  Num: array[0..11 - 1] of Integer;
begin
    ClientTarefa3 := TClientDataSet.Create(nil);

    ClientTarefa3.FieldDefs.Add('IDPROJETO', ftInteger);
    ClientTarefa3.FieldDefs.Add('NOMEPROJETO', ftString, 60);
    ClientTarefa3.FieldDefs.Add('VALOR', ftCurrency);

    ClientTarefa3.CreateDataSet;

    Randomize;
    for I := 0 to 11 - 1 do
       Num[I] := I;
    for I := 11 - 1 downto 1 do
    begin
        M := Random(I + 1);

        While M = 0 do
        M := Random(I + 1);

        L := Num[I];
        Num[I] := Num[M];
        Num[M] := L;

        ClientTarefa3.Insert;
        ClientTarefa3.FieldByName('IDPROJETO').AsInteger := Num[i];
        ClientTarefa3.FieldByName('NOMEPROJETO').AsString := 'PROJETO ' + IntToStr(ClientTarefa3.FieldByName('IDPROJETO').AsInteger);
        ClientTarefa3.FieldByName('VALOR').AsCurrency := Random(1000)    ;
    end;

     DataSource := TDataSource.Create(Self);
     DBGrid.DataSource := DataSource;
     DataSource.DataSet := ClientTarefa3;
end;


end.
