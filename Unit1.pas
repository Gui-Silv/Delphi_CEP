unit Unit1;

interface
uses
  System.JSON, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Comp.Client, System.Classes,
  REST.Client, IPPeerClient, System.SysUtils;
function BuscarCEP(UmCEP: string): TStringList;
implementation
function BuscarCEP(UmCEP: string): TStringList;
var
  RESTClient: TRESTClient;
  RESTRequest: TRESTRequest;
  RESTResponse: TRESTResponse;
  Endereco: TStringList; // Armazenamento do endereço
  JSONData: TJSONObject;
  API_URLs: array of string;
  i: Integer;
begin
  // Definindo as URLs das APIs na ordem de preferência
  SetLength(API_URLs, 3);
  API_URLs[0] := 'https://viacep.com.br/ws/' + UmCEP + '/json/';
  API_URLs[1] := 'https://apicep.com/' + UmCEP + '.json';
  API_URLs[2] := 'https://api.awesomeapi.com.br/json/cep/' + UmCEP;
  // Criando objetos para comunicação REST
  RESTClient := TRESTClient.Create(nil);
  RESTRequest := TRESTRequest.Create(nil);
  RESTResponse := TRESTResponse.Create(nil);
  RESTRequest.Client := RESTClient;
  RESTRequest.Response := RESTResponse;
  // Inicializando Endereco
  Endereco := TStringList.Create;
  // Tentando acessar as APIs na ordem especificada
  for i := Low(API_URLs) to High(API_URLs) do
  begin
    try
      RESTClient.BaseURL := API_URLs[i];
      RESTRequest.Execute;
      JSONData := RESTResponse.JSONValue as TJSONObject;
      // Verificando se a resposta é válida
      if JSONData <> nil then
      begin
        // Adicionando informações de endereço ao TStringList
        Endereco.Add(JSONData.GetValue('uf').Value); // Estado
        Endereco.Add(JSONData.GetValue('localidade').Value); // Cidade
        Endereco.Add(JSONData.GetValue('bairro').Value); // Bairro
        Endereco.Add(JSONData.GetValue('logradouro').Value); //Rua
        Break;
      end;
    except
      // Em caso de falha, tenta a próxima API
      Continue;
    end;
  end;
  // Liberando recursos
  RESTClient.Free;
  RESTRequest.Free;
  RESTResponse.Free;
  Result := Endereco;
end;
end.

