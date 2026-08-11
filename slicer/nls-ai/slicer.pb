; Language: Brazilian Portuguese
; File ending: pb
; Codepage: 850
; This translation was made by Google Gemini.
; Please help the FreeDOS group to improve it.

; English Langauge Resource and Translation File
; changes by W. Spiegl: added %0 and %1 in line 84
; note %_ is a space, %% is percent, %r is CRLF,
; %0-F (1 char hex) are params, % alone is next param.
; Items that start VERB_ are Verbose mode versions.

LANGUAGE=pb
TITLE=%, Vers∆o %
COPYRIGHT=Copyright (c) 2019-%, Jerome Shidel

; Same params as reporting
INC_FILE=%9%2 %8
INC_CONT=%2 (continuaá∆o)
INC_DIR=%2
INC_TEXT=embutir texto: %2 %8
INC_HEAD=texto: %2 %8
USE_COMP=compress∆o pass-through ativada para %0

VERB_PRE_SCAN=escaneados % itens para adicionar ao arquivo
VERB_INC_FILE=incluir: %9%2 (%A)\[%3] %8
VERB_INC_CONT=continuar: %2 [%3] (continuaá∆o do offset %6)
VERB_INC_DIR=subdiret¢rio: %2 (%3)
VERB_INC_HEAD=embutir texto de cabeáalho: %2 %8

; Excluded file or dir
VERB_EXCLUDE=excluir: %0 (corresponde a "%1")

; Lists %0 is list, %1 is file
LIST_ITEM=%
LIST_FILE=adicionar "%1" Ö lista %0
LIST_INC=incluir
LIST_EXC=excluir

; Same params as reporting
EXT_DIR=diret¢rio: %2
EXT_FILE=arquivo: %9%2, %8
EXT_PART=parcial: %9%2, %7 de %8
VERB_EXT_RPCL=arquivo %9%2 existe, substitu°do
VERB_EXT_SKIP=arquivo %9%2 existe, ignorado

; Report & Extraction parameters
; %0 block ID    (all)
; %1 block size  (all)
; %2 name       (dir & file name, or text language)
; %3 unique ID (all)
; %4 attributes (dir & file attribs, or text verbose level)
; %5 time stamp (dir & file only)
; %6 file offest (file only)
; %7 file bytes (file only)
; %8 total file size (file and text only)
; %9 path (file only)
; %A path ID (file only)
REP_CAT=categoria: %2
REP_DIR=diret¢rio: %2
REP_FILE=arquivo: %9%2, %8
REP_PART=parcial: %9%2, %7 de %8
REP_TEXT=texto: %2, %8
REP_MORE=continuaá∆o: %2, %8
REP_CONF=aceitar: %2, %8

VERB_REP_CAT=definir categoria: %2, %1
VERB_REP_DIR=diret¢rio: %2 (%3), %1 %4 %5
VERB_REP_FILE=arquivo completo: %9%2 (%A)\[%3], %1
VERB_REP_FILE2=%4 %5 tamanho do arquivo %8
VERB_REP_PART=arquivo parcial: %9%2 (%A)\[%3], %1
VERB_REP_PART2=%4 %5 %7 de %8 (offset %6)
VERB_REP_TEXT=texto: %2 %4 {%3}, %8
VERB_REP_MORE=continuaá∆o: %2 %4 {%3}, %8
VERB_REP_CONF=aceitar: %2 %4 {%3}, %8
VERB_REP_SIG=assinatura: %2 [%3], %1
VERB_REP_NULL=bloco nulo, %1
VERB_REP_OTHER=bloco desconhecido %0, %1
VERB_REP_SLICE=selecionar parte %

SAF_CREATE=Criar novo arquivo slicer %
SAF_OPEN=Abrir arquivo slicer existente %
SAF_APPEND=Anexar ao arquivo slicer existente %
SAF_DATE=Criado em %2/%1/%0 Ös %3:%4:%5
SAF_SLICE=Criar nova parte de arquivo %
SAF_CAT=Definir categoria de arquivo %
SAF_SLICING=Dividindo arquivo em %
VERB_SAF_IUP=Atualizar informaá‰es estat°sticas do arquivo %

MEDIA=Insira o disquete contendo o arquivo %0 na unidade %1.
PAUSE=Pressione qualquer tecla para continuar.

PROMPT_YES=Sim
PROMPT_NO=N∆o
PROMPT_Y=S
PROMPT_N=N
PROMPT_OVER=Sobrescrever %2%1, %0?
PROMPT_ACCEPT=Aceitar %?
PROMPT_STOP=O arquivo %1 est† corrompido. Abortar extraá∆o %0?

SUMMARY=%0 parte(s), %1 dir(s), %2 arquivo(s), %3

USAGE=uso: % [opá‰es]

; All help lines are displayed in order until the first missing number is
; encountered. You can add lines. But, keep the numbers in order by renumbering
; all lines after your additional help message. %0 is the Switch Character / or -
HELP_0=Informaá‰es das opá‰es do SLICER:
HELP_1=
HELP_2=  %0q        desativar todas as mensagens de status
HELP_3=  %0v        ativar mensagens de status detalhadas
HELP_4=  %0t        modo de teste
HELP_5=  %0h        exibir informaá‰es de ajuda
HELP_6=
HELP_7=  %0i ?      incluir itens correspondentes Ö especificaá∆o
HELP_8=  %0I ?      incluir itens da lista de arquivos
HELP_9=  %0e ?      excluir itens correspondentes Ö especificaá∆o
HELP_10=  %0E ?      excluir itens da lista de arquivos
HELP_11=
HELP_12=  %0d        excluir diret¢rios vazios
HELP_13=  %0D        n∆o incluir subdiret¢rios recursivamente
HELP_14=  %0a        incluir todos os itens ocultos e de sistema
HELP_15=  %0o        sobrescrever arquivos existentes
HELP_16=  %0k        n∆o ignorar mai£sculas/min£sculas nos nomes de arquivos
HELP_17=
HELP_18=  %0g ?      especificar categoria de grupo
HELP_19=  %0s ?      tamanho para dividir arquivo, K, M ou bytes. (s¢ v†lido
HELP_20=             ao criar um novo arquivo ou re-dividir um existente)
HELP_21=
HELP_22=  %0y        aceitar automaticamente qualquer prompt (exceto
HELP_23=             ao sobrescrever arquivos).
HELP_24=Operaá‰es relacionadas a todo o arquivo:
HELP_25=
HELP_26=  %0f ?      especificar nome do arquivo a ser criado ou aberto
HELP_27=  %0c        criar um novo arquivo
HELP_28=  %0r        anexar a um arquivo existente
HELP_29=  %0x        extrair de um arquivo existente
HELP_30=  %0R        gerar relat¢rio do arquivo
HELP_31=  %0O ?      definir caminho de extraá∆o de destino
HELP_32=
HELP_33=Texto embutido, avisos e mensagens:
HELP_34=
HELP_35=  %0L ?      sobrescrever o idioma padr∆o do sistema
HELP_36=  %0m ?      embutir texto de mensagem de um arquivo
HELP_37=  %0M ?      embutir texto de mensagem que exige acordo do usu†rio
HELP_38=
HELP_39=Compress∆o pass-through:
HELP_40=
HELP_41=  %0p ?      ativar compress∆o pass-through (GZ, talvez outros depois)
HELP_42=

; Reserved for future use
; HELP_00=  %0u        update existing archive
; HELP_00=  %0S        re-slice archive
; HELP_00=  %0w        write verification
; HELP_00=  %0z        use compression

NEEDHELP=Terra da confus∆o. Para ajuda, use a opá∆o "%0h".

FATAL=ERRO FATAL:%_
ERROR=ERRO:%_
BAD_OPT=ParÉmetro de linha de comando inv†lido "%0%1"
BAD_CMB=N∆o Ç poss°vel combinar parÉmetros "%0%1" com "%0%2"
BAD_MCO=Faltando dados de linha de comando para "%0%1"
BAD_INT=Valor numÇrico inv†lido "%2" para "%0%1"
BAD_VAL=Valor numÇrico "%2" fora do intervalo "%3 - %4" para "%0%1"
BAD_MAX=N£mero m†ximo de partes de arquivo excedido para "%1"
BAD_VER=O arquivo "%1" pode conter estruturas de dados n∆o suportadas.
BAD_EMB=S¢ Ç poss°vel especificar um arquivo de texto de mensagem por vez.
BAD_MSG=Aviso de mensagem "%1" muito grande. Truncado para %2.
BAD_CMP=Compress∆o pass-through n∆o suportada "%2"
BAD_TMP=Diret¢rio TEMP necess†rio.
ER_UNK=c¢digo de erro #%0, erro n∆o especificado com "%1" %2
ER_2=O arquivo "%1" n∆o foi encontrado.
ER_3=O caminho do arquivo "%1" n∆o foi encontrado.
ER_8=Uhm, fiquei sem mem¢ria.
ER_11=O arquivo "%1" possui um formato n∆o reconhecido.
ER_13=O arquivo "%1" possui dados corrompidos.
ER_14=Encerrado pelo usu†rio.
ER_23=Incompatibilidade de assinatura. O arquivo "%1" possui dados corrompidos.

; Used for date time stamps
; DATE = %0 4 digit Year, %1 2 digit Month, %2 2 digit Day,
;        %3 2 digit year, %4 1-2 digit Month, %5 1-2 digit day
DATE=%2/%1/%0
; TIME = %0 Hour (24 hour), %1 Minute, %2 Second
;        %3 12 hour clock, %4 AM/PM
TIME=%0:%1:%2
AM=a
PM=p
; STAMP = %0 date, %1 time
STAMP=%0 Ös %1

BYTES=% byte(s)
KBYTES=% KiB
MBYTES=% MiB
FLOPPY=% disquete
