# Language: Portuguese (Brazil)
# File ending: PB
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

# Welcome Message
WELCOME_DEF="Bem-vindo ao programa de instalaá∆o do" /fLightGreen %1 /fCyan %2 /fGray "."
WELCOME_ADV="Bem-vindo ao instalador" /fLightRed "avanáado" /fGray "do" /fLightGreen %1 /fCyan %2 /fGray /s- .
WELCOME_0=/p
WELCOME_1=/fLightGreen "%1" /fGray "Ç um sistema operacional completo. Se vocà optar por instalar em" /p "seu computador, poder†" /fLightRed /BlinkOn "sobrescrever" /BlinkOff /fGray "o sistema operacional atual (por" /p "exemplo, o Windows.)" /fGray
WELCOME_2=/fGray /c32 "Se esta n∆o for sua intená∆o, por favor" /fLightRed "pare AGORA!" /fGray
WELCOME_3=
WELCOME_4=
WELCOME_5=/fGray /p

HRULE=/fDarkGray /x 0xC4 /fGray

CONTINUE=/p "Deseja prosseguir" /c32
REBOOT=/p "Deseja reiniciar agora" /c32

AUTO_YES="[S,N]?" /fWhite "S" /fGray
AUTO_NO="[S,N]?" /fWhite "N" /fGray
AUTO_FMT=/s- "[C,R,N]?" /fWhite "R" /fGray

PROMPT_YESNO=/s SN
PROMPT_FMT=/s CRN

ABORTED=/fLightRed "A instalaá∆o do" %1 %2 "foi abortada." /e /fGray /bBlack

PARTITION_AUTO="Particionar automaticamente a unidade" /fWhite %1 /s- /fGray .
PARTITION_WARN=/fYellow "AVISO:" /fGray "Partiá∆o FAT16 abaixo de 2Gb Ç necess†ria para o KERNL86."
PARTITION_MBR="Atualizar o Master Boot Record na unidade" /fWhite %1 /s- /fGray .
PARTITION_ACTIVE="Definir partiá∆o da unidade" /fWhite %1 /fGray "como ativa."
PARTITION_DONE=/p "Vocà deve reiniciar o computador para que o novo esquema de particionamento entre em vigor."

FORMAT="A unidade" /fWhite %1 /fGray "n∆o parece estar formatada."
FORMAT_DEF="Deseja formatar sua unidade" /c32
FORMAT_ADV="Como deseja formatar sua unidade" /s- /c32 ( /fWhite "C" /fGray "ompleta," /c32 /fWhite "R" /fGray "†pida," /c32 /fWhite "N" /fGray "∆o)" /c32

FILESYSTEM_TEST="Testando o sistema de arquivos na unidade" /fWhite %1 /s- /fGray .
INSERT_DISKETTE="Insira o disquete" /fWhite #%1 /fGray (%2) "em" /fWhite %3 /fGray "."
PRESS_KEY="Pressione uma tecla para continuar."

TARGET_ASK="Onde vocà deseja instalar o" /fLightGreen %1 /s- /fGray "?" /c32
TARGET_PROMPT=/fWhite /bBlue %1
TARGET_BAD=/fLightRed "Unidade solicitada inv†lida. N∆o Ç poss°vel instalar em disquete."

CHANGE_PATH="O caminho" /fWhite %1 /fGray "j† existe." /p "Deseja alterar o diret¢rio de instalaá∆o" /c32

BACKUP_OLD="Um sistema operacional anterior foi detectado na unidade" /fWhite %1 /fGray /s- . /s+ /p "Deseja fazer backup dos arquivos antigos antes de instalar" /c32
BACKUP_ASK="Onde vocà deseja colocar os arquivos de backup?" /c32
BACKUP_PROMPT=/fWhite /bBlue %1
BACKUP_BAD=/fLightRed "Destino solicitado inv†lido. N∆o Ç poss°vel fazer backup neste local." /fGray

DELETE_OLD="Os arquivos existentes em" /fWhite %1 /fGray "podem ser apenas sobrescritos." /p "Deseja apagar completamente o diret¢rio antigo antes de instalar" /c32

FORCE_MBR="Foráar atualizaá∆o do Master Boot Record na unidade" /fWhite %1 /fGray /c32
SYS_FILES="Instalar novos arquivos de boot do sistema na unidade" /fWhite %1 /fGray /c32
CFG_FILES="Substituir arquivos de configuraá∆o do sistema na unidade" /fWhite %1 /fGray /c32

STATUS_MSG="Configuraá‰es de instalaá∆o:" /p
STATUS_CPU=/r4/c32 "Plataforma (CPU)" /fWhite %1 /fGray (%2)
STATUS_FROM=/r4/c32 "Instalar de" /fWhite %1 /fGray
STATUS_DRV=/r4/c32 "Unidade de destino" /fWhite %1 /fGray (disco %2, partiá∆o %3)
STATUS_DOS=/r4/c32 "Caminho do DOS" /fWhite %1 /fGray
STATUS_BAK=/r4/c32 "Backup do SO anterior" /fWhite %1 /fGray
STATUS_POS=/r4/c32 "Diret¢rio do SO anterior" /fWhite %1 /fGray
STATUS_MBR=/r4/c32 "Instalar novo MBR" /fWhite %1 /fGray
STATUS_SYS=/r4/c32 "Copiar arquivos de sistema" /fWhite %1 /fGray
STATUS_CFG=/r4/c32 "Copiar arquivos de config" /fWhite %1 /fGray

INSTALL_NOW="Estamos prontos para instalar o" /fLightGreen %1 /fCyan %2 /fGray /s- .
EXTRACTION="Extraá∆o de arquivos do" /fLightGreen %1 /fCyan %2 /fGray /s- .
UPDATE_LST="Atualizar arquivos de listagem de pacotes." /p

DO_BACKUP="Criando backup dos arquivos do SO anterior em" /fWhite %1 /fGray /s- .
DO_ERASE="Excluir diret¢rio antigo" /fWhite %1 /fGray " e arquivos."
DO_SYSFILES="Transferir novos arquivos de sistema para a unidade" /fWhite %1 /fGray /s- .
DO_FORCEMBR="Foráar atualizaá∆o do MBR na unidade" /fWhite %1 /fGray /s- .
DO_ACTIVATE="Definir partiá∆o de boot ativa no disco" /fWhite %1 /fGray "para a partiá∆o" /fWhite %2 /s- /fGray .
DO_CFGFILES="Transferir novos arquivos de configuraá∆o para a unidade" /fWhite %1 /fGray /s- .
DO_PREPARE="Preparando para instalar arquivos execut†veis e utilit†rios."
DO_INSTALL="Instalar arquivos do" /fLightGreen %1 /fGray "para" /fWhite %2 /fGray /s- .

DONE_NOW="A instalaá∆o do" /fLightGreen %1 /fCyan %2 /fGray "foi conclu°da."
REBOOT_NOW="Deseja reiniciar agora" /c32

REMOVE_MEDIA="Vocà deve remover quaisquer disquetes e m°dias de CD."

SUCCESS=/fLightGreen "Sucesso." /fGray
FAILED=/fLightRed "Falhou." /fGray

# Copyright and License Notices
TITLE=/fLightGreen %1 /fLightCyan %2 /s- /fWhite + /fGray " Instalador (" /fWhite FDI-x86 /fGray ")"
COPYRIGHT=/fDarkGray "Lanáado sob a Licenáa GPL v2.0."/p "Copyright" 2021-2022 "Jerome Shidel." /fGray /p
TRADEMARK="FreeDOS Ç uma marca comercial de Jim Hall," 2001-2022

# Help screen
HELP_0="uso: SETUP.BAT [opá‰es] [destino]"
HELP_1=""
HELP_2="  [sem opá‰es]    realiza a configuraá∆o usando os padr‰es"
HELP_3=
HELP_4="  adv             inicia a configuraá∆o no modo avanáado (mais avisos)"
HELP_5=
HELP_6="  auto            realiza a instalaá∆o automatizada sem avisos." /p/r18/c32 "isso n∆o Ç recomendado e deve ser usado apenas em hardware" /p/r18/c32 "sem um sistema operacional prÇ-existente."
HELP_7=
HELP_8="  [destino]       define uma unidade e/ou caminho para a instalaá∆o"
HELP_9=
HELP_10="  info            exibe as configuraá‰es do instalador e sai"
HELP_11=
HELP_12="  mbr             foráa uma atualizaá∆o no MBR e sai"
HELP_13=
HELP_14=/n
HELP_15=/n

# Error Messages
ERROR_CRITICAL=/fLightRed "Erro CR÷TICO:" /fGray /c32
ERROR_NoHDD="N∆o foi poss°vel localizar uma unidade de disco r°gido particionada e formatada."
ERROR_MINOR=/fLightRed "erro:" /fGray /c32
ERROR_Option="Opá∆o de linha de comando desconhecida ou inv†lida" /s- "`" /fWhite %1 /fGray "'."
ERROR_NoCfgEnv="N∆o foi poss°vel determinar as configuraá‰es b†sicas do sistema e caminhos."
ERROR_NotFreeCOM="Este arquivo batch requer o FreeCOM ou shell compat°vel para FreeDOS."
ERROR_MissingFreeCOM="N∆o foi poss°vel localizar o shell de comando do FreeDOS (FreeCOM)."
ERROR_MissingAUTOEXEC="N∆o foi poss°vel localizar o arquivo de inicializaá∆o do FreeDOS (FDAUTO.BAT)."
ERROR_MakeDir="N∆o foi poss°vel criar o diret¢rio" /fWhite %1 /fGray /s- .
ERROR_BackupCfg="N∆o foi poss°vel fazer backup dos arquivos de boot e/ou configuraá∆o."
ERROR_BackupOS="N∆o foi poss°vel fazer backup dos arquivos no diret¢rio de destino."
ERROR_Partition="Ocorreu um erro de particionamento. Um disco r°gido pode n∆o estar presente" /p "ou pode estar invis°vel para o sistema operacional atual." /p /p "ê necess†rio um mÇtodo diferente para o particionamento."
ERROR_NoPartition="N∆o foi poss°vel localizar a partiá∆o BIOS para" /fWhite %1 /fGray /s- . /s+ /p "Instalaá∆o manual (ou talvez modo avanáado sem MBR foráado) Ç recomendada."
ERROR_Format="Ocorreu um erro ao tentar formatar a unidade" /fWhite %1 /fGray /s- . /s+ /p /p "Um processo diferente ser† necess†rio para format†-la."
ERROR_FileSystem="N∆o foi poss°vel inicializar o espaáo tempor†rio na unidade" /fWhite %1 /s- /fGray .
ERROR_CfgBackup="N∆o foi poss°vel configurar o diret¢rio de backup."
ERROR_MBRBackup="N∆o foi poss°vel criar o backup do Master Boot Record da unidade" /fWhite %1 /fGray /s- .
ERROR_SysFiles="N∆o foi poss°vel copiar os arquivos de sistema para a unidade" /fWhite %1 /fGray /s- .
ERROR_BootSector="N∆o foi poss°vel atualizar o setor de boot da unidade" /fWhite %1 /fGray /s- .
ERROR_MBRUpdate="N∆o foi poss°vel atualizar o MBR da unidade" /fWhite %1 /fGray /s- .
ERROR_Activate="N∆o foi poss°vel definir a unidade" /fWhite %1 /fGray "para a partiá∆o de boot" /fWhite %2 /fGray /s- .
ERROR_CfgFiles="N∆o foi poss°vel instalar novos arquivos de configuraá∆o na unidade" /fWhite %1 /fGray /s- .
ERROR_XfrFiles="N∆o foi poss°vel duplicar o arquivo do instalador necess†rio para" /fWhite %1 /fGray /s- .
ERROR_SAF="Ocorreu um problema ao extrair o arquivo" /fWhite %1 /fGray "."
ERROR_WTF="Ocorreu um erro desconhecido e improv†vel durante uma operaá∆o simples."

