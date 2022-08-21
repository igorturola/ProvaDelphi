object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 1'
  ClientHeight = 297
  ClientWidth = 645
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 167
    Width = 57
    Height = 13
    Caption = 'SQL Gerado'
  end
  object Label2: TLabel
    Left = 24
    Top = 24
    Width = 42
    Height = 13
    Caption = 'Colunas:'
  end
  object Label3: TLabel
    Left = 200
    Top = 24
    Width = 41
    Height = 13
    Caption = 'Tabelas:'
  end
  object Label4: TLabel
    Left = 376
    Top = 24
    Width = 53
    Height = 13
    Caption = 'Condi'#231#245'es:'
  end
  object MemoColuna: TMemo
    Left = 24
    Top = 40
    Width = 129
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object memoTabelas: TMemo
    Left = 200
    Top = 40
    Width = 129
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 1
  end
  object MemoCond: TMemo
    Left = 376
    Top = 40
    Width = 129
    Height = 89
    TabOrder = 2
  end
  object memoSql: TMemo
    Left = 24
    Top = 184
    Width = 593
    Height = 89
    TabOrder = 3
  end
  object GeraSql: TButton
    Left = 542
    Top = 72
    Width = 75
    Height = 25
    Caption = 'GeraSql'
    TabOrder = 4
    OnClick = GeraSqlClick
  end
  object ProgressBar1: TProgressBar
    Left = 72
    Top = 160
    Width = 249
    Height = 1
    TabOrder = 5
  end
end
