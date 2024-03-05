unit DesafioCEP;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit1; // Adiciono a unit que cont�m a fun��o BuscarCEP
type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtCidade: TEdit;
    edtBairro: TEdit;
    edtRua: TEdit;
    edtEstado: TEdit;
    procedure Button1Click(Sender: TObject);
  private
  public
  end;
var
  Form1: TForm1;
implementation
{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
var
  CEP: string;
  Endereco: TStringList;
begin
  // Tiro as formata��es do CEP
  CEP := Edit1.Text;
  CEP := StringReplace(CEP, '.', '', [rfReplaceAll]);
  CEP := StringReplace(CEP, '-', '', [rfReplaceAll]);
  // Chamo a fun��o BuscarCEP para obter o endere�o
  Endereco := BuscarCEP(CEP);
  // Preencho os Edits com as informa��es do endere�o, se dispon�veis
  if Assigned(Endereco) and (Endereco.Count = 4) then
  begin
    edtEstado.Text := Endereco[0];
    edtCidade.Text := Endereco[1];
    edtBairro.Text := Endereco[2];
    edtRua.Text := Endereco[3];
  end
  else
  begin
    // Limpo os Edits se as informa��es do CEP n�o foram encontradas
    edtEstado.Clear;
    edtCidade.Clear;
    edtBairro.Clear;
    edtRua.Clear;
    ShowMessage('N�o foi poss�vel encontrar informa��es para este CEP.');
  end;
end;
end.

