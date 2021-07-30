TITLE=Herramienta de Creaci¢n de Im genes de Discos Mejorada, Versi¢n %_ %s
COPYRIGHT=Copyright (c) 2018, Jerome Shidel
LANGUAGE=Traducci¢n al castellano por Pablo

HELP_00="Opciones disponibles para EDICT: "
HELP_01=
HELP_02="  /d <disco>    letra de la unidad"
HELP_03="  /f <archivo>  nombre del archivo"
HELP_04="  /p <l¡mite>   m ximo n£mero de pases extra"
HELP_05=
HELP_06="  /t <tipo>     indica el tipo de disco, ignorando la bios"
HELP_07="                (0=360Kib, 1=1.2Mib, 2=720Kib, 3=1.44Mib, a=auto)"
HELP_08=
HELP_09="  /c <n£mero>   indica el n£mero de cilindros/pistas (0-1023)"
HELP_0a="  /r <n£mero>   indica el n£mero de lados/cabezas (0-255)"
HELP_0b="  /s <n£mero>   indica el n£mero de sectores por lado (0-63)"
HELP_0c="  /b <n£mero>   indica el n£mero de octetos por sector (1-8192)"
HELP_0d=
HELP_0e="  /h            muestra la ayuda" 


; Possible future additions to EDICT should be translated as well

HELP_??="  /T             solo probar lectura"
HELP_??="  /w             escribir imagen al disquete"
HELP_??="  /v             comprobar disquete"
HELP_??="  /i             solo informaci¢n"
HELP_??="  /o             solo un sector"
HELP_??="  /q             "
HELP_??="  /e             continuar a partir de una imagen existente"
HELP_??="  /m <archivo>   montar archivo de imagen"
HELP_??="  /u             desmotar archivo de imagen"
HELP_??="  /l             mostrar tipos de disco"

INVALID=%r "Comando inv lido: ®" %s "¯"
BAD_INT="Valor num‚rico inv lido."
BAD_VAL="Valor fuera de rango."

DRIVE=Unidad %_ %c: (ID 0x %b ) %_
DRIVE_TYPE=%_ (ID 0x %b )
DRIVE_TYPE_00=unidad de tipo desconocido
DRIVE_TYPE_01=unidad de 360Kib ®5,25"¯
DRIVE_TYPE_02=unidad de 1,2Mib ®5,25"¯
DRIVE_TYPE_03=unidad de 720Kib ®3,5"¯
DRIVE_TYPE_04=unidad de 1,44Mib ®3,5"¯
DRIVE_TYPE_05=tipo de unidad diferente

DRIVE_SPEC=%i %_ octetos, %_ %I %_ pistas, %_ %I %_ lado(s)

PASS_LIMIT=Permitidos hasta %_ %i %_ pases extra para leer el disquete
BUFFERS=B£fer del disquete: %i %_ octetos, b£fer de resultado de la pista: %i %_ octetos 

PASS=Paso %i de lectura del disquete. Quedan %_ %i %_ sector(es).

READ_FAST= %_ %i, CABEZA: %_ %i
READ_SLOW= %_ %i, CABEZA: %_ %i, SECTOR: %_ %i

FAILED=Fall¢ la creaci¢n de la imagen
ABORTED=Se abort¢ la creaci¢n de la imagen
COMPLETED=Imagen creada con ‚xito

; With a little modification, these BIOS and DOS error message texts are a
; slimmed down version of those available online from a great DOS and ASM
; resource at http://stanislavs.org/helppc/idx_interrupt.html

BErr=%r "BIOS c¢digo de error: 0x" %b %_ --> %_
BErr_01=comando inv lido pasado al controlador
BErr_02=marca no encontrada en la direcci¢n, o sector da¤ado
BErr_03=problema con los permisos de escritura del disquete
BErr_04=sector no encontrado
BErr_05=fall¢ el reinicio del disco duro
BErr_06=disquete cambiado o extra¡do
BErr_07=tabla de par metros del disco duro
BErr_08=DMA sobrecargada
BErr_09=DMA sobre l¡mite de 64k
BErr_0a=indicador del disco duro err¢neo
BErr_0b=cilindro del disco duro err¢neo
BErr_0c=pista no compatible
BErr_0d=n£mero de sectores del formato del disco duro err¢neos
BErr_0e=encontrada marca de la direcci¢n de los datos controlada por el disco duro
BErr_0f=nivel del arbitraje de la DMA del disco duro fuera de rango
BErr_10=error del ECC/CRC al leer el disco
BErr_11=datos del disco duro corruptos, arreglados por el ECC
BErr_20=problema del controlador
BErr_40=error al buscar posici¢n
BErr_80=disco sin preparar
BErr_aa=disco duro sin preparar
BErr_bb=error del disco duro desconocido
BErr_cc=problema del disco duro al escribir en la unidad seleccionada
BErr_e0=error en el estado del disco duro
BErr_ff=fall¢ operaci¢n de sentido

DErr=%r "DOS c¢digo de error: 0x" %b %_ --> %_
DErr_01=N£mero de funci¢n inv lido
DErr_02=Archivo no encontrado
DErr_03=Ruta no encontrada
DErr_04=Demasiados archivos abiertos
DErr_05=Acceso denegado
DErr_06=Manipulador inv lido
DErr_08=Memoria insuficiente
DErr_0f=Unidad especificada inv lida
DErr_15=Unidad no lista
