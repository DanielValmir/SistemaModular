// {$DEFINE STANDALONE} // comente esta linha para gerar DLL final

{$IFDEF STANDALONE}
program ModClientes;
{$APPTYPE GUI}
{$ELSE}
library ModClientes;
{$ENDIF}
{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters.

  Important note about VCL usage: when this DLL will be implicitly
  loaded and this DLL uses TWicImage / TImageCollection created in
  any unit initialization section, then Vcl.WicImageInit must be
  included into your library's USES clause. }

uses
  System.SysUtils,
  System.Classes,
  Vcl.Forms,
  uClientesForm in 'uClientesForm.pas' {frmClientes};

{$R *.res}

procedure ShowClientesForm; stdcall;
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := False;
  Application.CreateForm(TfrmClientes, frmClientes);
  try
    frmClientes.ShowModal;
  finally
    frmClientes.Free;
  end;
end;

{$IFNDEF STANDALONE}

exports
  ShowClientesForm;
{$ENDIF}

begin
  ReportMemoryLeaksOnShutdown := True;

{$IFDEF STANDALONE}
  ShowClientesForm;
{$ENDIF}

end.
