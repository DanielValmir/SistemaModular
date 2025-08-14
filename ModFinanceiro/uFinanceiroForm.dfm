object frmFinanceiro: TfrmFinanceiro
  Left = 0
  Top = 0
  Caption = 'M'#243'dulo Financeiro - Contas a Pagar'
  ClientHeight = 201
  ClientWidth = 299
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lblDescricao: TLabel
    Left = 8
    Top = 8
    Width = 51
    Height = 15
    Caption = 'Descri'#231#227'o'
  end
  object lblValor: TLabel
    Left = 8
    Top = 58
    Width = 26
    Height = 15
    Caption = 'Valor'
  end
  object lblVencimento: TLabel
    Left = 8
    Top = 108
    Width = 63
    Height = 15
    Caption = 'Vencimento'
  end
  object edtDescricao: TEdit
    Left = 8
    Top = 29
    Width = 280
    Height = 23
    TabOrder = 0
  end
  object edtValor: TEdit
    Left = 8
    Top = 79
    Width = 120
    Height = 23
    TabOrder = 1
  end
  object dtpVencimento: TDateTimePicker
    Left = 8
    Top = 129
    Width = 140
    Height = 24
    Date = 45450.000000000000000000
    Time = 45450.000000000000000000
    TabOrder = 2
  end
  object btnSalvar: TButton
    Left = 132
    Top = 159
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = btnSalvarClick
  end
  object btnCancelar: TButton
    Left = 213
    Top = 159
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = btnCancelarClick
  end
end
