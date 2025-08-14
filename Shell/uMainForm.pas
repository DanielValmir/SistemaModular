unit uMainForm;

interface

uses
  System.SysUtils,
  System.Classes,
  System.UITypes,
{$IFDEF MSWINDOWS}Winapi.Windows{$ENDIF},
  Winapi.Messages,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Menus;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    MenuCadastro: TMenuItem;
    MenuClientes: TMenuItem;
    MenuFinanceiro: TMenuItem;
    MenuSair: TMenuItem;
    procedure MenuClientesClick(Sender: TObject);
    procedure MenuFinanceiroClick(Sender: TObject);
    procedure MenuSairClick(Sender: TObject);
  private
    procedure ExecutarModulo(const pDllName, pProcName: string);
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

type
  TShowFormProc = procedure; stdcall;

procedure TfrmMain.ExecutarModulo(const pDllName, pProcName: string);
var
  lHLib: HMODULE;
  lShowForm: TShowFormProc;
begin
  lHLib := LoadLibrary(PChar(pDllName));
  if lHLib = 0 then
  begin
    MessageDlg(Format('Não foi possível carregar o módulo %s', [pDllName]), mtError, [mbOK], 0);
    Exit;
  end;
  try
    @lShowForm := GetProcAddress(lHLib, PChar(pProcName));
    if not Assigned(lShowForm) then
    begin
      MessageDlg(Format('Função %s não encontrada em %s', [pProcName, pDllName]), mtError, [mbOK], 0);
      Exit;
    end;
    lShowForm;
  finally
    FreeLibrary(lHLib);
  end;
end;

procedure TfrmMain.MenuClientesClick(Sender: TObject);
begin
  ExecutarModulo('ModClientes.dll', 'ShowClientesForm');
end;

procedure TfrmMain.MenuFinanceiroClick(Sender: TObject);
begin
  ExecutarModulo('ModFinanceiro.dll', 'ShowFinanceiroForm');
end;

procedure TfrmMain.MenuSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
