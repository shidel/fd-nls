; Spanish Langauge Resource and Translation File
; My broken spanish with help from google translate

; note %_ is a space, %% is percent, %r is CRLF
; %0-F (1 char hex) are params, % alone is next param.
; Items that start VERB_ are Verbose mode versions.

LANGUAGE=es
TITLE=%, versi¢n %
COPYRIGHT=Copyright (c) 2019-%, Jerome Shidel

; Same params as reporting
INC_FILE=%9%2 %8
INC_CONT=%2 (continuado)
INC_DIR=%2
INC_TEXT=incrustar: %2 %8
INC_HEAD=incrustar texto: %2 %8

VERB_INC_FILE=incluir: %9%2 (%A)\[%3] %8
VERB_INC_CONT=continuar: %2 [%3] (continuado desde desplazamiento %6)
VERB_INC_DIR=directorio: %2 (%3)
VERB_INC_HEAD=insertar texto de encabezado: %2 %8

; Excluded file or dir
VERB_EXCLUDE=excluir: %0 (matches "%1")

; Lists %0 is list, %1 is file
LIST_ITEM=%
LIST_FILE=agregar "%1" a la lista de %0
LIST_INC=incluir
LIST_EXC=excluir

; Same params as reporting
EXT_DIR=directorio: %2
EXT_FILE=archivo: %9%2, %8
EXT_PART=parcial: %9%2, %7 of %8

; Report parameters
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
REP_CAT=categor¡a: %2
REP_DIR=directorio: %2
REP_FILE=archivo: %9%2, %8
REP_PART=parcial: %9%2, %7 of %8
REP_TEXT=texto: %2, %8
REP_MORE=continuado: %2, %8
REP_CONF=aceptar: %2, %8

VERB_REP_CAT=establecer categor¡a: %2, %1
VERB_REP_DIR=directorio: %2 (%3), %1 %4 %5
VERB_REP_FILE=archivo completo: %9%2 (%A)\[%3], %1
VERB_REP_FILE2=%4 %5 archivo %8
VERB_REP_PART=archivo parcial: %9%2 (%A)\[%3], %1
VERB_REP_PART2=%4 %5 %7 of %8 (desplazamiento %6)
VERB_REP_TEXT=texto de mensaje: %2 %4 {%3}, %8
VERB_REP_MORE=texto continuado: %2 %4 {%3}, %8
VERB_REP_CONF=aceptar texto: %2 %4 {%3}, %8
VERB_REP_SIG=firma de verificaci¢n: %2 [%3], %1
VERB_REP_NULL=bloque nulo, %1
VERB_REP_OTHER=bloque desconocido %0, %1
VERB_REP_SLICE=Abrir archivo de corte %

SAF_CREATE=Crear nuevo archivo de Slicer %
SAF_OPEN=Abra el archivo Slicer existente %
SAF_APPEND=Agregar el archivo Slicer existente  %
SAF_DATE=Creado el %1/%2/%0 a las %3:%4:%5
SAF_SLICE=Crear nuevo archivo de corte de archivo %
SAF_CAT=establecer categor¡a de archivo %
SAF_SLICING=Cortando archivos en %
VERB_SAF_IUP=Actualizar informaci¢n estad¡stica de archivo %

MEDIA=Inserte el disquete que contiene el archivo %0 en la unidad %1.
PAUSE=Presione cualquier tecla para continuar.

PROMPT_YES=Si
PROMPT_NO=No
PROMPT_Y=S
PROMPT_N=N
PROMPT_OVER=¨Sobrescribir el archivo %2%1, %0?
PROMPT_ACCEPT=¨Aceptar %?
PROMPT_STOP=El archivo %1 est  da¤ado. ¨Abortar extracci¢n %0?

SUMMARY=%0 sector(es), %1 directorio(s), %2 archivo(s), %3

USAGE=uso: % [opciones]

; All help lines are displayed in order until the first missing number is
; encountered. You can add lines. But, keep the numbers in order by renumbering
; all lines after your additional help message. %0 is the Switch Character / or -
HELP_0=SLICER opciones b sicas:
HELP_1=
HELP_2=  %0q        deshabilitar todos los mensajes de estado
HELP_3=  %0v        habilitar mensajes de estado detallados
HELP_4=  %0t        correr en modo de prueba
HELP_5=  %0h        mostrar informaci¢n de ayuda
HELP_6=
HELP_7=  %0i ?      incluir elementos que coincidan con la especificaci¢n de archivo
HELP_8=            (se supone la opci¢n)
HELP_9=  %0I ?      incluir elementos de la lista de archivos
HELP_10=  %0e ?      excluir elementos que coinciden con especificaci¢n de archivos
HELP_11=  %0E ?      excluir elementos de la lista de archivos
HELP_12=
HELP_13=  %0d        excluir directorios vac¡os
HELP_14=  %0D        no recurse subdirectorios
HELP_15=  %0a        incluir todos los elementos ocultos y del sistema
HELP_16=  %0o        sobrescribir archivos existentes
HELP_17=  %0k        no ignore el caso del nombre del archivo
HELP_18=
HELP_19=  %0g ?      especificar categor¡a de grupo
HELP_20=  %0s ?      especificar el tama¤o para cortar el archivo, K, M o bytes. (solo
HELP_21=            es v lido al crear un nuevo archivo o volver a cortar un archivo)
HELP_22=
HELP_23=  %0y        acepta autom ticamente cualquier solicitud (sin incluir la
HELP_24=            sobrescritura del archivo).
HELP_25=
HELP_26=Acciones relacionadas con archivos completos:
HELP_27=
HELP_28=  %0f ?      especificar nombre de archivo
HELP_29=  %0c        crear un nuevo archivo
HELP_30=  %0r        agregar al archivo
HELP_31=  %0x        extraer de un archivo existente
HELP_32=  %0R        generar informe de archivo
HELP_33=  %0O ?      establecer ruta de extracci¢n de destino
HELP_34=
HELP_35=Texto incorporado, avisos y mensajes:
HELP_36=
HELP_37=  %0L ?      anular el idioma predeterminado del sistema
HELP_38=  %0m ?      incrustar texto de mensaje desde el archivo
HELP_39=  %0M ?      incrustar el texto del mensaje desde el archivo que requiere
HELP_40=            confirmaci¢n
HELP_41=

; Reserved for future use
; HELP_00=  %0u        actualizar el archivo existente
; HELP_00=  %0S        modificar el corte de archivo
; HELP_00=  %0w        verificaci¢n de escritura
; HELP_00=  %0z        usar compresi¢n

NEEDHELP=Tierra de confusi¢n. Para obtener ayuda, use la opci¢n "%0h".

FATAL=ERROR FATAL:%_
ERROR=ERROR:%_
BAD_OPT=Par metro de l¡nea de comando no v lido "%0%1"
BAD_CMB=No se pueden combinar los par metros "%0%1" con "%0%2"
BAD_MCO=Faltan datos de l¡nea de comando para "%0%1"
BAD_INT=Valor num‚rico no v lido "2%" para "%0%1"
BAD_VAL=El valor num‚rico "%2" est  fuera del rango "%3 - %4" para "%0%1"
BAD_MAX=Se excedi¢ el recuento m ximo de segmentos de archivo para "%1"
BAD_VER=El archivo "%1" puede contener estructuras de datos no compatibles.
BAD_EMB=Solo puede especificar un archivo de texto de mensaje a la vez.
BAD_MSG=Del mensaje "%1" es demasiado grande. Truncado en %2.
ER_UNK=c¢digo de error #%0, error no especificado con  "%1" %2
ER_2=No se encontr¢ el archivo "%1".
ER_3=No se encontr¢ la ruta del archivo "%1".
ER_8=Umm, se me acab¢ la memoria.
ER_11=El archivo "%1" tiene un formato no reconocido.
ER_13=El archivo "%1" tiene datos corruptos.
ER_14=Usuario terminado.
ER_23=Firma no coincidente. El archivo "%1" tiene datos corruptos.

; Used for date time stamps
; DATE = %0 4 digit Year, %1 2 digit Month, %2 2 digit Day,
;        %3 2 digit year, %4 1-2 digit Month, %5 1-2 digit day
DATE=%0-%1-%2
; TIME = %0 Hour (24 hour), %1 Minute, %2 Second
;        %3 12 hour clock, %4 AM/PM
TIME=%3:%1:%2%4
AM=a
PM=p
; STAMP = %0 date, %1 time
STAMP=%0 at %1

BYTES=% byte(s)
KBYTES=% KiB
MBYTES=% MiB
FLOPPY=% disquete
