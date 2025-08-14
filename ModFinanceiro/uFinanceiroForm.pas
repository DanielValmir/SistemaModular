unit uFinanceiroForm;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Classes,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.Dialogs;

type
  TfrmFinanceiro = class(TForm)
    lblDescricao: TLabel;
    lblValor: TLabel;
    lblVencimento: TLabel;
    edtDescricao: TEdit;
    edtValor: TEdit;
    dtpVencimento: TDateTimePicker;
    btnSalvar: TButton;
    btnCancelar: TButton;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  end;

var
  frmFinanceiro: TfrmFinanceiro;

implementation

{$R *.dfm}

procedure TfrmFinanceiro.btnSalvarClick(Sender: TObject);
begin
  ShowMessage(Format('Conta lançada:%sDescrição: %s%sValor: %s%sVencimento: %s', [sLineBreak, edtDescricao.Text,
    sLineBreak, edtValor.Text, sLineBreak, DateToStr(dtpVencimento.Date)]));
end;

procedure TfrmFinanceiro.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
