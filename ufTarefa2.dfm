object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  Caption = 'Tarefa 2'
  ClientHeight = 181
  ClientWidth = 447
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
  object spbThreads: TSpeedButton
    Left = 96
    Top = 135
    Width = 209
    Height = 33
    Caption = 'Ativar Thread'
    OnClick = spbThreadsClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 431
    Height = 121
    Caption = 'Defina um tempo em milisegundos para cada thread'
    TabOrder = 0
    object Label8: TLabel
      Left = 112
      Top = 24
      Width = 43
      Height = 13
      Caption = 'Thread 1'
    end
    object Label3: TLabel
      Left = 213
      Top = 24
      Width = 43
      Height = 13
      Caption = 'Thread 2'
    end
    object Label1: TLabel
      Left = 124
      Top = 83
      Width = 3
      Height = 13
    end
    object Label4: TLabel
      Left = 336
      Top = 64
      Width = 3
      Height = 13
    end
    object Label2: TLabel
      Left = 235
      Top = 87
      Width = 3
      Height = 13
    end
    object edt2: TEdit
      Left = 213
      Top = 43
      Width = 65
      Height = 21
      TabOrder = 1
    end
    object edt1: TEdit
      Left = 112
      Top = 43
      Width = 65
      Height = 21
      TabOrder = 0
    end
    object ProgressBar2: TProgressBar
      Left = 213
      Top = 83
      Width = 65
      Height = 17
      TabOrder = 2
    end
    object ProgressBar1: TProgressBar
      Left = 112
      Top = 83
      Width = 65
      Height = 17
      TabOrder = 3
    end
  end
end
