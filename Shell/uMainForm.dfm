object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Shell - Sistema Modular'
  ClientHeight = 280
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poScreenCenter
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 216
    Top = 56
    object MenuCadastro: TMenuItem
      Caption = 'M'#243'dulos'
      object MenuClientes: TMenuItem
        Caption = '&Clientes'
        OnClick = MenuClientesClick
      end
      object MenuFinanceiro: TMenuItem
        Caption = '&Financeiro - Contas a Pagar'
        OnClick = MenuFinanceiroClick
      end
    end
    object MenuSair: TMenuItem
      Caption = '&Sair'
      OnClick = MenuSairClick
    end
  end
end
