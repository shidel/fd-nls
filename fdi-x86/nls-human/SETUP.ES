# Welcome Message
WELCOME_DEF=Bienvenido al programa de instalaci¢n /fLightGreen %1 /fCyan %2 /fGray
WELCOME_ADV=Bienvenido al instalador /fLightRed avanzado /fGray para /fLightGreen %1 /fCyan %2 /fGray /s- .
WELCOME_0=/p
WELCOME_1=/fLightGreen "%1" /fGray es un sistema operativo completo. Si escoje instalarlo en su /p ordenador puede /fLightRed /BlinkOn "ser que sobrescriba el sistema operativo que ya tenga" /BlinkOff /p (por ejemplo, Windows.) /fGray /p
WELCOME_2=/fGray /c32 Si no quiere que pase /fLightRed "eso salga ahora." /fGray
WELCOME_3=
WELCOME_4=
WELCOME_5=/fGray /p

HRULE=/fDarkGray /x 0xC4 /fGray

CONTINUE=/p ®Quiere continuar? /c32
REBOOT=/p ®Quiere reiniciar ahora? /c32

AUTO_YES=/s- [S,N]? /fWhite S /fGray
AUTO_NO=/s- [S,N]? /fWhite N /fGray
AUTO_FMT=/s- "[F,Q,N]?" /fWhite "Q" /fGray

PROMPT_YESNO=/s SN
PROMPT_FMT=/s FQN

ABORTED=/fLightRed Instalaci¢n de %1 %2 abortada. /e /fGray /bBlack

PARTITION_AUTO=Dividir la unidad /fWhite %1 /s- /fGray automaticamente.
PARTITION_WARN=/fYellow AVISO: /fGray se necesita una partici¢n FAT16 de un tama§o menor a 2Gb para KERNL86.
PARTITION_MBR=Actualizar MBR de la unidad /fWhite %1 /s- /fGray .
PARTITION_ACTIVE=Indicar la partici¢n /fWhite %1 /fGray como activa.
PARTITION_DONE=/p Debe reiniciar el ordenador para que se actualice la tabla de particiones.

FORMAT=Drive /fWhite %1 /fGray no parece tener formato.
FORMAT_DEF=®Quiere darle formato al disco? /c32
FORMAT_ADV=®QuÇ formato le quiere dar? /s- /c32 ( /fWhite F /fGray ull, /c32 /fWhite Q /fGray uick, /c32 /fWhite N /fGray o) /c32

FILESYSTEM_TEST=Probando sistema de archivos en la unidad /fWhite %1 /s- /fGray .
INSERT_DISKETTE=Introduzca el disquete /fWhite #%1 /fGray (%2) en /fWhite %3 /s- /fGray .
PRESS_KEY=Pulse cualquier tecla para continuar.

TARGET_ASK=®D¢nde quiere instalar /fLightGreen %1 /s- /fGray ? /c32
TARGET_PROMPT=/fWhite /bBlue %1
TARGET_BAD=/fLightRed Unidad inv†lida. No se pudo instalar al disquete.

CHANGE_PATH=La carpeta /fWhite %1 /fGray ya existe. /p ®Quiere cambiar la carpeta de instalaci¢n? /c32

BACKUP_OLD=Se ha detectado un sistema operativo ya instalado en la unidad /fWhite %1 /fGray /s- . /s+ /p ®Quiere hacerle una copia de seguridad antes de instalar? /c32
BACKUP_ASK=®Donde quiere guardar la copia de seguridad? /c32
BACKUP_PROMPT=/fWhite /bBlue %1
BACKUP_BAD=/fLightRed Destino inv†lido. No se pudo hacer la copia de seguridad. /fGray

DELETE_OLD=Se pueden sobreescribir los archivos viejos en /fWhite %1 /fGray /s- . /s+ /p ®Quiere borrar la carpeta antigua antes de instalar? /c32

FORCE_MBR=Forzar actualizaci¢n del MBR en /fWhite %1 /fGray /c32
SYS_FILES=Instalar nuevos archivos de arranque en la unidad /fWhite %1 /fGray /c32
CFG_FILES=Substituir la configuraci¢n del sistema en /fWhite %1 /fGray /c32

STATUS_MSG=Par†metros de instalaci¢n: /p
STATUS_CPU=/r4/c32 Platforma (CPU) /fWhite %1 /fGray (%2)
STATUS_FROM=/r4/c32 Instalar desde /fWhite %1 /fGray
STATUS_DRV=/r4/c32 Unidad de destino /fWhite %1 /fGray (%2:%3)
STATUS_DOS=/r4/c32 Ruta de instalaci¢n de DOS /fWhite %1 /fGray
STATUS_BAK=/r4/c32 Hacer copia de seguridad del SO previo /fWhite %1 /fGray
STATUS_POS=/r4/c32 Carpeta del SO previo /fWhite %1 /fGray
STATUS_MBR=/r4/c32 Instalar MBR nuevo /fWhite %1 /fGray
STATUS_SYS=/r4/c32 Copiar archivos del sistema /fWhite %1 /fGray
STATUS_CFG=/r4/c32 Copiar configuraci¢n del sistema /fWhite %1 /fGray

INSTALL_NOW=Todo listo para instalar /fLightGreen %1 /fCyan %2 /fGray /s- .
EXTRACTION=Archivo /fLightGreen %1 /fCyan %2 /fGray extra°do.
UPDATE_LST=Actualiar listas de archivos. /p

DO_BACKUP=Crear copia de seguridad del SO previo en /fWhite %1 /fGray /s- .
DO_ERASE=Borrar archivos y carpetas viejos /fWhite %1 /fGray /s- .
DO_SYSFILES=Pasar nuevos archivos del sistema /fWhite %1 /fGray /s- .
DO_FORCEMBR=Actualizar el MBR en la unidad /fWhite %1 /fGray /s- .
DO_ACTIVATE=Establecer partici¢n /fWhite %1 /fGray /s- : /s + /fWhite %2 /fGray como activa de arranque.
DO_CFGFILES=Pasar nuevos archivos con la configuraci¢n /fWhite %1 /fGray /s- .
DO_PREPARE=Prepar†ndose para instalar ejecutables y utilidades.
DO_INSTALL=Instalar /fLightGreen %1 /fGray archivos para /fWhite %2 /fGray /s- .

DONE_NOW=Instalaci¢n de /fLightGreen %1 /fCyan %2 /fGray completada.
REBOOT_NOW=®Quiere reiniciar? /c32

REMOVE_MEDIA=Deber°a quitar los disquetes y CD que tenga.

SUCCESS=/fLightGreen êxito. /fGray
FAILED=/fLightRed Fallo. /fGray

# Copyright and License Notices
TITLE=/fLightGreen %1 /fLightCyan %2 /s- /fWhite + /fGray " Instalador (" /fWhite FDI-x86 /fGray ")"
COPYRIGHT=/fDarkGray Licenciado bajo la GPL v2.0 ./pCopyright 2021-2022 Jerome Shidel. /fGray /p
TRADEMARK=FreeDOS es una marca registrada de Jim Hall, 2001-2021

# Help screen
HELP_0="uso: SETUP.BAT [opciones] [objetivo]"
HELP_1=""
HELP_2="  [sin opciones]    instalaci¢n con valores por omisi¢n"
HELP_3=
HELP_4="  adv             modo experto. (preguntar m†s)"
HELP_5=
HELP_6="  auto            realizar instalaci¢n sin preguntar nada." /p/r18/c32 "no se recomienda hacerlo as°," /p/r18/c32 "excepto en m†quinas sin SO previo."
HELP_7=
HELP_8="  [target]        unidad y/o ruta en la que instalar"
HELP_9=
HELP_10="  info            mostrar configuraci¢n y salir"
HELP_11=
HELP_12="  mbr             actualizar MBR y salir"
HELP_13=
HELP_14=/n
HELP_15=/n

# Error Messages
ERROR_CRITICAL=/fLightRed error CR÷TICO: /fGray /c32
ERROR_NoHDD=No se pudo encontrar un disco duro dividido y con formato.
ERROR_MINOR=/fLightRed error: /fGray /c32
ERROR_Option=Opci¢n inv†lida /s- "`" /fWhite %1 /fGray "'."
ERROR_NoCfgEnv=No se pudieron detectar la configuraci¢n y ruta del sistema b†sico.
ERROR_NotFreeCOM=Este archivo de ejecuci¢n por lotes necesita FreeCOM o alg£n intÇrprete de ¢rdenes compatible.
ERROR_MissingFreeCOM=No se pudo encontrar el intÇrprete de ¢rdenes de FreeDOS, FreeCOM.
ERROR_MissingAUTOEXEC=No se pudo encontrar el archivo de ejecuci¢n por lotes FDAUTO.BAT para arrancar FreeDOS.
ERROR_MakeDir=No se pudo crear la carpeta /fWhite %1 /fGray /s- .
ERROR_BackupCfg=No se pudo crear una copia de seguridad de los archivos de arranque y/o configuraci¢n.
ERROR_BackupOS=No se pudo crear una copia de seguridad en la carpeta indicada.
ERROR_Partition=Error al dividir en particiones. Puede que no haya disco duro o /p que el sistema operativo lo oculte. /p /p Busque otra forma de dividir el disco en particiones.
ERROR_NoPartition=No se pudo encontrar la partici¢n de la BIOS en /fWhite %1 /fGray /s- . /s+ /p Se recomienda la instalaci¢n manual, sino pruebe con el modo experto sin actualizar el MBR.
ERROR_Format=Ocurri¢n un error al intentar darle formato a la unidad /fWhite %1 /fGray /s- . /s+ /p /p Busque otra forma de darle formato.
ERROR_FileSystem=No se pudo inicializar un espacio temporal en la unidad /fWhite %1 /s- /fGray .
ERROR_CfgBackup=No se pudo configurar la carpeta de la copia de seguridad.
ERROR_MBRBackup=No se pudo hacer una copia de seguridad del MBR de la unidad /fWhite %1 /fGray /s- .
ERROR_SysFiles=No se pudiero copiar los archivos del sistema a la unidad /fWhite %1 /fGray /s- .
ERROR_BootSector=No se pudo actualizar el sector de arranque de la unidad /fWhite %1 /fGray /s- .
ERROR_MBRUpdate=No se pudo actualizar el sector de arranque de la unidad /fWhite %1 /fGray /s- .
ERROR_Activate=No se pudo configurar la unidad /fWhite %1 /fGray para que arranque la partici¢n /fWhite %2 /fGray /s- .
ERROR_CfgFiles=No se pudo instalar la nueva configuraci¢n en la unidad /fWhite %1 /fGray /s- .
ERROR_XfrFiles=No se pudieron duplicar los archivos que necesita el instalador en /fWhite %1 /fGray /s- .
ERROR_SAF=Ha habido un problema al extrar el archivo /fWhite %1 /fGray .
ERROR_WTF=Ha ocurrido un error desconocido e improbable durante una operci¢n simple.
