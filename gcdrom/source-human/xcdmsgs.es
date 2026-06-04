;
; XCDMSGS.ENG -- ®Spanish¯ XCDROM Initialization Messages.
; Written by Jack R. Ellis, 8-Feb-2006.
;
; Users who wish to ®Internationalize¯ XCDROM need to change only THIS
; file!   The new file may be named as desired, for example XCDMSGS.FR
; (French), XCDMSGS.DE (German) etc.   The desired file must be copied
; to XCDMSGS.TXT, and the desired driver can then be re-assembled with
; any NASM assembler (available from SourceForge), using the following
; command line:
;
;     NASM -o XCDROM.SYS -l XCDROM.LST -d language XCDROM.ASM
;
; Note that the conditional  -d language  causes the assembler to read
; XCDMSGS.TXT, rather than the default XCDMSGS.ENG file.
;
; The following RULES apply to modifying the messages shown below:
;
;  A)  All message LABELS ("XCMsg" etc.) must appear as shown.
;
;  B)  All CR, LF, and ending $ bytes must appear as shown.  Only the
;      message TEXT bytes (letters, numbers and punctuation) are open
;      to change.
;
;  C)  There must be at least 42 characters from the start of "XCMsg"
;      to the start of "Suffix", as the driver reads 40 bytes of data
;      into this area (the name of each drive) and suffixes an ending
;      $ before displaying the final CD-ROM drive name.
;
;  D)  Other messages MODIFIED by driver initialization are:
;
;	1) The 8 driver name bytes at "DvrMsg1".
;	2) The 4 controller address bytes at "CtlrAdr".
;	3) The 8 controller I.D. bytes at "CtlrID".
;	4) The drive unit-number byte at "UMsgNo".
;	5) The 4 UltraDMA mode bytes at "UDMode".
;
; For an "Internationalization" example, compare the file XDMAMSGS.ENG
; with the file XDMAMSGS.NL, both of which are included in the current
; XDMA driver package.   XDMAMSGS.NL translates all XDMA init messages
; into the Dutch language.   This file was written by Bernd Blaauw who
; suggested making XDMA, and now XCDROM, into "International" drivers.
;
;
XCMsg	db	CR,LF,'GCDROM '
	db	VER		;XCDROM.ASM provides version and date!
	db	CR,LF,'$'
DvrMsg	db	'Nombre del controlador: "'
DvrMsg1	db	'        "$'
CtlrMsg	db	'Controlador nativo IDE de SATA en la dir. E/S '
CtlrAdr0 db	'xxxxh/'
CtlrAdr	db	'xxxxh, ID del circuito integrado '
CtlrID	db	'xxxxxxxxh.',CR,LF,'$'
VEMsg	db	'.',CR,LF,'error al iniciar VDS$'
LEMsg	db	'.',CR,LF,'/L inv lido$'
SyEMsg	db	'.',CR,LF,'ERROR '
SyMsg	db	'Sincronizando E/S con el controlador XDMA$'
PRMsg	db	'Procesador no 80386+'
Suffix	db	'; ­GCDROM no cargado!',CR,LF,'$'
UnitMsg	db	'Unidad '
UMsgNo	db	'0:  $'
TOMsg	db	' vencimiento al seleccionar dispositivo$'
IDMsg	db	' error al identificar el dispositivo$'
NCMsg	db	' no es un CD-ROM ATAPI$'
NDMsg	db	'No hay unidad CD-ROM disponible$'
PriMsg	db	'Primario-$'
SecMsg	db	'Secondario-$'
MstMsg	db	'maestro$'
SlvMsg	db	'esclavo$'
ComMsg	db	', $'
UDMsg	db	', ATA-'
UDMode	db	'   $'
PIOMsg	db	', modo PIO$'
CRMsg	db	'.',CR,LF,'$'
