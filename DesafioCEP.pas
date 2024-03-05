unit DesafioCEP;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit1; // Adiciono a unit que contém a função BuscarCEP
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
  // Tiro as formatações do CEP
  CEP := Edit1.Text;
  CEP := StringReplace(CEP, '.', '', [rfReplaceAll]);
  CEP := StringReplace(CEP, '-', '', [rfReplaceAll]);
  // Chamo a função BuscarCEP para obter o endereço
  Endereco := BuscarCEP(CEP);
  // Preencho os Edits com as informações do endereço, se disponíveis
  if Assigned(Endereco) and (Endereco.Count = 4) then
  begin
    edtEstado.Text := Endereco[0];
    edtCidade.Text := Endereco[1];
    edtBairro.Text := Endereco[2];
    edtRua.Text := Endereco[3];
  end
  else
  begin
    // Limpo os Edits se as informações do CEP não foram encontradas
    edtEstado.Clear;
    edtCidade.Clear;
    edtBairro.Clear;
    edtRua.Clear;
    ShowMessage('Não foi possível encontrar informações para este CEP.');
  end;
end;
end.

