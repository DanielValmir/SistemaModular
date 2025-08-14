object frmClientes: TfrmClientes
  Left = 0
  Top = 0
  Caption = 'M'#243'dulo de Clientes'
  ClientHeight = 194
  ClientWidth = 273
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lblNome: TLabel
    Left = 8
    Top = 8
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object lblCPF: TLabel
    Left = 8
    Top = 58
    Width = 21
    Height = 15
    Caption = 'CPF'
  end
  object lblTelefone: TLabel
    Left = 8
    Top = 108
    Width = 45
    Height = 15
    Caption = 'Telefone'
  end
  object edtNome: TEdit
    Left = 8
    Top = 29
    Width = 250
    Height = 23
    TabOrder = 0
  end
  object edtCPF: TEdit
    Left = 8
    Top = 79
    Width = 250
    Height = 23
    TabOrder = 1
  end
  object edtTelefone: TEdit
    Left = 8
    Top = 129
    Width = 250
    Height = 23
    TabOrder = 2
  end
  object btnSalvar: TButton
    Left = 102
    Top = 158
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = btnSalvarClick
  end
  object btnCancelar: TButton
    Left = 183
    Top = 158
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = btnCancelarClick
  end
end
