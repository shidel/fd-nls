# Language: Portuguese (Brazil)
# File ending: PB
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

TITLE=Enhanced Disk Image Creation Tool, Vers∆o %_ %s
COPYRIGHT=Copyright (c) 2018, Jerome Shidel

HELP_00="Informaá‰es de opá‰es do EDICT: "
HELP_01=
HELP_02="  /d <unidade>   especificar letra da unidade"
HELP_03="  /f <nomearquivo> especificar nome do arquivo"
HELP_04="  /p <limite>    limitar n£mero m†ximo de passagens adicionais"
HELP_05=
HELP_06="  /t <tipo>      ignorar a bios e selecionar configuraá‰es para o tipo de disco"
HELP_07="                 (0=360Kib, 1=1.2Mib, 2=720Kib, 3=1.44Mib, a=auto)"
HELP_08=
HELP_09="  /c <n£mero>    ignorar n£mero de cilindros/trilhas (0-1023)"
HELP_0a="  /r <n£mero>    ignorar n£mero de lados/cabeáas por trilha (0-255)"
HELP_0b="  /s <n£mero>    ignorar n£mero de setores por lado (0-63)"
HELP_0c="  /b <n£mero>    ignorar n£mero de bytes por setor (1-8192)"
HELP_0d=
HELP_0e="  /h             exibir informaá‰es de ajuda"

HELP_??="  /T             teste apenas de leitura"
HELP_??="  /w             gravar imagem no disquete"
HELP_??="  /v             verificar disquete"
HELP_??="  /i             apenas informaá∆o"
HELP_??="  /o             apenas um setor"
HELP_??="  /q             modo silencioso"
HELP_??="  /e             continuar de um arquivo de imagem existente"
HELP_??="  /m <nomearquivo> montar arquivo de imagem"
HELP_??="  /u             desmontar arquivo de imagem"
HELP_??="  /l             listar tipos de disco"

INVALID=%r "Comando inv†lido: `" %s "'"
BAD_INT="Valor numÇrico inv†lido."
BAD_VAL="Valor fora do intervalo."

DRIVE=Unidade %_ %c: (ID 0x %b ) %_
DRIVE_TYPE=%_ (ID 0x %b )
DRIVE_TYPE_00=tipo de unidade desconhecido
DRIVE_TYPE_01=unidade de '5.25"' 360Kib
DRIVE_TYPE_02=unidade de '5.25"' 1.2Mib
DRIVE_TYPE_03=unidade de '3.5"' 720Kib
DRIVE_TYPE_04=unidade de '3.5"' 1.44Mib
DRIVE_TYPE_05=outro tipo de unidade

DRIVE_SPEC=%i %_ bytes, %_ %I %_ setores, %_ %I %_ trilhas, %_ %I %_ lado(s)

PASS_LIMIT=AtÇ %_ %i %_ passagens extras permitidas para ler o disquete
BUFFERS=%i %_ byte buffer de disquete, %_ %i %_ byte buffer de resultado de trilha

PASS=Passagem de leitura de disquete nß %i. %_ %i %_ setor(es) restante(s).

READ_FAST=LER TRILHA: %_ %i, CABEÄA: %_ %i
READ_SLOW=LER TRILHA: %_ %i, CABEÄA: %_ %i, SETOR: %_ %i

FAILED=Falha no processo de imagem.
ABORTED=Processo de imagem abortado.
COMPLETED=Processo de imagem conclu°do.

BErr=%r "C¢digo de erro BIOS: 0x" %b %_ --> %_
BErr_01=comando inv†lido passado ao driver
BErr_02=marca de endereáo n∆o encontrada ou setor defeituoso
BErr_03=erro de proteá∆o de gravaá∆o no disquete
BErr_04=setor n∆o encontrado
BErr_05=falha no reset do disco fixo
BErr_06=disquete alterado ou removido
BErr_07=tabela de parÉmetros do disco fixo inv†lida
BErr_08=estouro de DMA
BErr_09=acesso DMA atravÇs do limite de 64k
BErr_0a=sinalizador de setor de disco fixo inv†lido
BErr_0b=cilindro de disco fixo inv†lido
BErr_0c=trilha n∆o suportada
BErr_0d=n£mero de setores inv†lido no formato do disco fixo
BErr_0e=marca de endereáo de dados controlada pelo disco fixo detectada
BErr_0f=n°vel de arbitragem DMA do disco fixo fora do intervalo
BErr_10=erro ECC/CRC na leitura do disco
BErr_11=erro de dados de disco fixo recuper†vel, dados corrigidos por ECC
BErr_20=erro da controladora
BErr_40=falha na busca (seek)
BErr_80=unidade n∆o pronta
BErr_aa=unidade de disco fixo n∆o pronta
BErr_bb=erro de disco fixo indefinido
BErr_cc=falha de gravaá∆o no disco fixo na unidade selecionada
BErr_e0=erro de status do disco fixo
BErr_ff=falha na operaá∆o de detecá∆o

DErr=%r "C¢digo de erro DOS: 0x" %b %_ --> %_
DErr_01=N£mero de funá∆o inv†lido
DErr_02=Arquivo n∆o encontrado
DErr_03=Caminho n∆o encontrado
DErr_04=Muitos arquivos abertos
DErr_05=Acesso negado
DErr_06=Handle inv†lido
DErr_08=Mem¢ria insuficiente
DErr_0f=Unidade especificada inv†lida
DErr_15=Unidade n∆o pronta

