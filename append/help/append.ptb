FreeDOS APPEND. Habilita os programas a abrir arquivos em diret¢rios espec°ficos
                como se os arquivos estivessem no diret¢rio corrente.
(C) 2004-2006 Eduardo Casino, sob os termos da licenáa GNU GPL vers∆o 2

Sintaxe:

  APPEND [[drive:]path[;...]] [/X[:ON|:OFF]] [/PATH:ON|/PATH:OFF] [/E]
  APPEND ;

    [drive:]path Drive e diret¢rio a anexar.
    /X[:ON]      Estende APPEND para busca e execuá∆o de comandos.
    /X:OFF       Aplica APPEND somente para requisiá‰ers de abertura de arquivos.
                 Por padr∆o, /X:OFF
    /PATH:ON     Busca diret¢rios anexados por requisiá‰es de arquivos que j†
                 incluem um caminho. Esta Ç a configuraá∆o padr∆o.
    /PATH:OFF    Desliga o /PATH:ON.
    /E           Armazena a lista de diret¢rios anexados no ambiente.
                 /E s¢ pode ser utilizado na primeira invocaá∆o de APPEND. Vocà
                 n∆o pode incluir nenhum caninho na mesma linha de comando de um /E.

  APPEND ; limpa a lista de diret¢rios anexados.
  APPEND sem parÉmetros exibe a lista de diret¢rios anexados.

Nota:

  APPEND instala a si mesmo como comando interno ap¢s sua primeira execuá∆o.
  As segunda e seguintes invocaá‰es DEVEM excluir caminho e extens∆o do arquivo.
