# Language: Brazil Port.
# File ending: PB
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

EDLIN 2.14

O programa edlin ‚ um editor de linhas compacto, desenvolvido para o FreeDOS
como um clone funcional do antigo programa edlin do MS-DOS. Ele se diferencia
do MS-edlin original por ser, primeiramente, software livre e, em segundo
lugar, por possuir uma interface de usu rio ligeiramente distinta em alguns
pontos. O motivo dessa mudan‡a ‚ poupar o usu rio de ter que digitar os
caracteres de controle exigidos pela sintaxe do MS-edlin.

INICIALIZA€ÇO DO EDLIN

O programa edlin ‚ iniciado sozinho:

  edlin

ou informando o nome de um arquivo que ser  carregado de imediato:

  edlin arquivo

COMANDOS INTERNOS DO EDLIN

Nas listas de comandos a seguir, os colchetes indicam parƒmetros opcionais.
O s¡mbolo # representa o n£mero de uma linha, que pode ser uma sequˆncia de
d¡gitos, um ponto (.) para a linha atual, um cifrÆo ($) para a £ltima linha
do arquivo, ou um n£mero somado ou subtra¡do de outro. Exemplo:

  .,.+1p

exibe a linha atual e a linha seguinte.

Um cifrÆo ($) nas listas abaixo representa uma cadeia de caracteres (string).
Elas podem estar entre aspas simples ou duplas e conter as seguintes
sequˆncias de escape:

  \a - sinal sonoro (alerta)
  \b - retrocesso (backspace)
  \e - escape
  \f - avan‡o de p gina (formfeed)
  \t - tabula‡Æo horizontal
  \v - tabula‡Æo vertical
  \" - aspas duplas
  \' - aspas simples
  \. - ponto
  \\ - barra invertida
  \xXX (X ‚ d¡gito hexa 0-9, a-f) - constante hexadecimal
  \dddd (d ‚ d¡gito decimal 0-9) - constante decimal
  \OOO (O ‚ d¡gito octal 0-7) - constante octal
  \^C - caractere de controle

O programa edlin suporta a seguinte sintaxe:

# - EDITAR UMA LINHA éNICA

O edlin exibe a linha escolhida pelo n£mero e a pr¢xima entrada do usu rio
substituir  integralmente essa linha no arquivo.

a - ANEXAR (APPEND)

Este comando equivale … entrada de $+1i .

[#],[#],#,[#]c - COPIAR INTERVALO DE LINHAS

Copia um bloco de linhas consecutivas para outra posi‡Æo no buffer. Os
parƒmetros significam:

  * Primeira linha a copiar (padrÆo = linha atual)
  * éltima linha a copiar (padrÆo = linha atual)
  * Linha antes da qual o bloco ser  inserido
  * Quantidade de c¢pias do bloco (padrÆo = 1)

Ap¢s a c¢pia, recomenda-se usar o comando l (list) para verificar a nova
numera‡Æo das linhas.

[#][,#]d - EXCLUIR BLOCO DE LINHAS

Exclui um bloco de linhas consecutivas. Os parƒmetros definem a primeira e a
£ltima linha do intervalo.

Se omitir o segundo parƒmetro, apenas a linha do primeiro ser  apagada. Sem
o primeiro parƒmetro, apaga da linha atual at‚ a linha indicada (mantenha a
v¡rgula). Se omitir ambos, apenas a linha atual ser  exclu¡da.

e arquivo - SALVAR E SAIR

Equivale … sequˆncia de comandos:

  w arquivo
  q

[#]i - MODO DE INSER€ÇO

Ativa o modo de inser‡Æo. O parƒmetro define a linha antes da qual o novo
texto ser  inserido.

Durante a inser‡Æo, as sequˆncias de escape mencionadas sÆo permitidas. Para
sair do modo, digite um ponto (.) em uma linha vazia (se precisar de uma
linha apenas com um ponto, use o caractere de escape).

Ap¢s sair, a linha seguinte ao texto inserido torna-se a atual, a menos que
o texto tenha sido anexado ao fim; nesse caso, a £ltima linha ser  a atual.

[#][,#]l - LISTAR LINHAS

Exibe linhas de texto na tela. Sem o primeiro parƒmetro, a exibi‡Æo come‡a
11 linhas antes da atual. Sem o segundo, mostra uma p gina inteira. Sem
ambos, mostra uma p gina a partir de 11 linhas antes da atual. Se o total de
linhas exceder uma tela, o programa far  uma pausa ap¢s cada p gina.

[#],[#],#m - MOVER BLOCO

Move um bloco de texto para antes da linha escolhida no terceiro parƒmetro.
Funciona como uma c¢pia seguida da exclusÆo do original.

[#][,#]p - PµGINA

Semelhante ao comando l, mas a exibi‡Æo padrÆo come‡a na linha atual, em vez
de 11 linhas antes.

q - SAIR (QUIT)

Encerra o programa sem realizar salvamentos adicionais.

[#][,#][?]r$,$ - SUBSTITUIR CADEIA

Substitui todas as ocorrˆncias da primeira string pela segunda no intervalo
escolhido. Sem o primeiro parƒmetro, inicia ap¢s a linha atual; sem o
segundo, termina na £ltima linha do arquivo.

O ponto de interroga‡Æo (?) exige confirma‡Æo antes de cada substitui‡Æo.

[#][,#][?]s$ - LOCALIZAR CADEIA

Busca a primeira linha que cont‚m a string indicada. Sem o primeiro
parƒmetro, busca a partir da atual; sem o segundo, busca at‚ o fim.

O ponto de interroga‡Æo (?) ativa a confirma‡Æo. Respondendo "N" (NÆo) a
busca prossegue; "S" (Sim) ela termina. Em caso de sucesso, a linha atual
ser  definida no local encontrado.

[#]t arquivo - TRANSFERIR ARQUIVO

Insere o conte£do de um arquivo externo antes da linha escolhida. Se nÆo for
especificado, utiliza a linha atual.

[#]w arquivo - GRAVAR ARQUIVO

Grava a quantidade de linhas indicada no arquivo de destino. Sem parƒmetros,
todo o conte£do do buffer ser  salvo.

AUTOR/MANUTEN€ÇO

Gregory Pietsch, gpietsch@comcast.net
