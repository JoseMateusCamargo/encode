unit untArquivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type

  TArray = array[0..100] of String;

  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    btnLerArquivo: TButton;
    menResultArquivo: TMemo;
    edtCaminhoArquivo: TEdit;
    GroupBox2: TGroupBox;
    btnGravaArquivo: TButton;
    edtNovoArquivo: TEdit;
    menValArquivo: TMemo;
    procedure btnLerArquivoClick(Sender: TObject);
    procedure percorreArquivoTexto  ( nomeDoArquivo: String );
    procedure gravaArquivoTexto     ( nomeDoArquivo: String; vetLista : TArray; tamVet : Integer );
    procedure btnGravaArquivoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

//****************************************************************************//
{Procedure de leitura de um arquivo testo}
Procedure TForm1.percorreArquivoTexto ( nomeDoArquivo: String );
VAR
  arq: TextFile; //Variável q recebe arquivo.
  linha: String; //Variável q receberá a linha corrente.
Begin

  AssignFile ( arq, nomeDoArquivo ); //Associação do arquivo ao "arq".

  If FileExists(nomeDoArquivo) Then //Verifica se o arquivo existe.
  Begin

    Reset ( arq ); //Abre o arquivo efetivamente.
    while not Eof ( arq ) do //Procede o loop até a ultima linha do arquivo aberto.
    Begin
      ReadLn ( arq, linha ); //Pega a linha corrente do arquivo.
      menResultArquivo.Lines.Add(linha); //Mostra a linha no MEMO.
    End;

    CloseFile ( arq ); //fecha o arquivo.
  End
  Else
    ShowMessage('Arquivo inexistente para leitura.');

End;
//****************************************************************************//
{Procedure para gravação em um arquivo existente ou não no micro.}
Procedure TForm1.gravaArquivoTexto ( nomeDoArquivo: String;
                                     vetLista : TArray;
                                     tamVet : Integer );
VAR
  arq: TextFile; //Variável q recebe arquivo.
  I: Integer; //Variável do for.
Begin

  AssignFile ( arq, nomeDoArquivo ); //Associação do arquivo ao "arq".

  If FileExists( nomeDoArquivo ) Then
    Append(arq) //Se existir, apenas adiciona as novas linhas.
  Else
    ReWrite(arq); //Cria um novo arquivo se não existir.

  For I := 0 To tamVet - 1 Do
  Begin
    WriteLn ( arq, vetLista[I]); //Grava a linha no arquivo.
  End;

  CloseFile(arq)

End;
//****************************************************************************//
//****************************************************************************//

{Abre o arquivo e mostra em um Memo.}
Procedure TForm1.btnLerArquivoClick(Sender: TObject);
Begin
  menResultArquivo.Clear;
  percorreArquivoTexto( edtCaminhoArquivo.Text );
End;

{Le um memo, transfere a informação para um vetor e grava em arquivo.}
Procedure TForm1.btnGravaArquivoClick(Sender: TObject);
VAR
  vetLista : TArray;  //Array de linhas.
  I : Integer;        //Variável do for.
  tamMemo : Integer;  //Guarda a quantidade de linhas do MEMO.
Begin

  tamMemo := menValArquivo.Lines.Count; //Verifica quantas linhas tem em um MEMO.

  For I := 0 to tamMemo - 1 do
  Begin
    vetLista[I] := menValArquivo.Lines[I]; //Transfere as linhas de um memo para o Array.
  End;

  gravaArquivoTexto(edtNovoArquivo.Text, vetLista, tamMemo);
  menValArquivo.Clear;

  //Se for o mesmo de leitura e escrita, aciona a leitura (refresh).
  If (edtNovoArquivo.Text = edtCaminhoArquivo.Text) Then
  Begin
    menResultArquivo.Clear;
    percorreArquivoTexto( edtCaminhoArquivo.Text );
  End;

End;

END.
