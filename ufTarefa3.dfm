object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  Caption = 'Tarefa 3'
  ClientHeight = 375
  ClientWidth = 495
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 96
    Height = 13
    Caption = 'Valores por projeto:'
  end
  object Label2: TLabel
    Left = 385
    Top = 282
    Width = 40
    Height = 13
    Caption = 'Total R$'
  end
  object Label3: TLabel
    Left = 385
    Top = 329
    Width = 85
    Height = 13
    Caption = 'Total divis'#245'es R$:'
  end
  object DBGrid: TDBGrid
    Left = 8
    Top = 27
    Width = 479
    Height = 230
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IdProjeto'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProjeto'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Width = 105
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 304
    Top = 295
    Width = 75
    Height = 25
    Caption = 'Obter Total'
    TabOrder = 1
    OnClick = Button1Click
  end
  object edtTotal: TEdit
    Left = 385
    Top = 297
    Width = 89
    Height = 21
    TabOrder = 2
    OnExit = edtTotalExit
  end
  object Button2: TButton
    Left = 264
    Top = 342
    Width = 115
    Height = 25
    Caption = 'Obter Total Divis'#245'es'
    TabOrder = 3
    OnClick = Button2Click
  end
  object edtTotalDiv: TEdit
    Left = 385
    Top = 344
    Width = 89
    Height = 21
    TabOrder = 4
    OnExit = edtTotalDivExit
  end
end
