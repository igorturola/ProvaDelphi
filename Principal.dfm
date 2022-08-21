object uPrincipal: TuPrincipal
  Left = 0
  Top = 0
  Caption = 'uPrincipal'
  ClientHeight = 287
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = Tarefas
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Tarefas: TMainMenu
    Left = 48
    Top = 24
    object tarefa1: TMenuItem
      Caption = 'Tarefa 1'
      OnClick = tarefa1Click
    end
    object tarefa2: TMenuItem
      Caption = 'Tarefa 2'
      OnClick = tarefa2Click
    end
    object tarefa3: TMenuItem
      Caption = 'Tarefa 3'
      OnClick = tarefa3Click
    end
  end
end
