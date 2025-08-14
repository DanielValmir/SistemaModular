unit uClientesForm;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Classes,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.StdCtrls,
  Vcl.Dialogs;

type
  TfrmClientes = class(TForm)
    lblNome: TLabel;
    lblCPF: TLabel;
    lblTelefone: TLabel;
    edtNome: TEdit;
    edtCPF: TEdit;
    edtTelefone: TEdit;
    btnSalvar: TButton;
    btnCancelar: TButton;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

procedure TfrmClientes.btnSalvarClick(Sender: TObject);
begin
  ShowMessage(Format('Cliente salvo:%sNome: %s%sCPF: %s%sTelefone: %s', [sLineBreak, edtNome.Text, sLineBreak,
    edtCPF.Text, sLineBreak, edtTelefone.Text]));
end;

procedure TfrmClientes.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
