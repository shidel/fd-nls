VERSION=%0 (versi¢n %1)
LICENSE=Licencia BSD de 3 cl usulas
COPYRIGHT=Copyright (c) %1, %0
RIGHTS=Todos los derechos reservados.

; Si desea cr‚dito por su traducci¢n mostrada en el programa, simplemente
; edite el campo IDIOMA y complete el campo TRADUCTOR. :-)

LANGUAGE=espa¤ol
TRANSLATOR=Google Translate

THANKS=Un agradecimiento especial a %0 por proporcionar las traducciones al %1.

LOADING=Cargando %0...
STANDBY=Procesamiento en espera...
GORT=Klaatu barada nikto

COMBO.ALTPLUS=(Alt+%0)
COMBO.CTLPLUS=(Ctrl+%0)

; Elementos del men£ principal
MENU.FILE=Archivo
MENU.FILE.NEW.FONT=Nueva Fuente
MENU.FILE.NEW.IMAGE=Nueva Imagen
MENU.FILE.NEW.SPRITE=Nueva Sprite

MENU.FILE.OPEN=Abrir...
MENU.FILE.IMPORT=Importar...
MENU.FILE.SAVE=Guardar
MENU.FILE.SAVEAS=Guardar como...
MENU.FILE.EXPORT=Exportar...
MENU.FILE.SAVEAS.IMGIGG=Gr fico IGG
MENU.FILE.SAVEAS.SPRIGS=Sprite IGS
MENU.FILE.SAVEAS.IMGBMP=Imagen BMP
MENU.FILE.SAVEAS.IMGPCX=imagen PCX
MENU.FILE.SAVEAS.IMGTIF=Imagen TIF
MENU.FILE.SAVEAS.IMGGIF=imagen GIF
MENU.FILE.SAVEAS.IMGJPG=Imagen JPG
MENU.FILE.SAVEAS.IMGJP2=Imagen JP2
MENU.FILE.SAVEAS.IMGXPM=Imagen XPMv3
MENU.FILE.SAVEAS.IMGASM=Nasm incluye
MENU.FILE.SAVEAS.IMGPAS=C¢digo Pascal
MENU.FILE.SAVEAS.IMGXBM=C¢digo C
MENU.FILE.EXIT=Salir

MENU.EDIT=Editar
MENU.EDIT.COPY=Copiar
MENU.EDIT.PASTE=Pegar

MENU.EDIT.FRAME.ADD=Agregar fotograma
MENU.EDIT.FRAME.DEL=Eliminar fotograma
MENU.EDIT.SEQ.ADD=Agregar secuencia
MENU.EDIT.SEQ.DEL=Eliminar secuencia

MENU.TOOLS=Herramientas
MENU.IMAGE.CLEAR=Borrar
MENU.IMAGE.INVERT=Invertir
MENU.IMAGE.ROTATE=Rotar
MENU.IMAGE.FLIP=Voltear
MENU.IMAGE.SHIFT=May£s...
MENU.IMAGE.SHIFT.UP=Arriba
MENU.IMAGE.SHIFT.DOWN=Abajo
MENU.IMAGE.SHIFT.LEFT=Izquierda
MENU.IMAGE.SHIFT.RIGHT=Derecha

MENU.HELP=Ayuda
MENU.HELP.ABOUT=Acerca de...

COLOR.DRAW=Dibujar
COLOR.ERASE=Borrar

NOFILES=no hay archivos coincidentes
DLG.BUTTON.OK=confirmar
DLG.BUTTON.CANCEL=cancelar

DLG.OPEN.CAPTION=Abrir un archivo
DLG.IMPORT.CAPTION=Importar una gr fica
DLG.EXPORT.CAPTION=Exportar c¢mo
DLG.SAVEAS.FORMAT=Formato de archivo


; Algunas cadenas m s por venir con respecto a las secuencias de animaci¢n
; de sprites.

ERROR.MOUSE=no se puede localizar el mouse. es realmente necesario.
ERROR.VIDEO=no se puede encontrar ning£n controlador de gr ficos adecuado

ERROR.DRIVER.FIND=no se puede localizar el controlador %0
ERROR.DRIVER.INIT=no se puede inicializar el controlador %0
ERROR.DRIVER.MODE=abriendo el controlador de gr ficos %0 modo %1

ERROR.NOHELP=ayuda no disponible
ERROR.FORMAT=no se pudo reconocer el formato del archivo %0

ERROR.TOOBIG=la imagen supera el l¡mite de tama¤o de %0 x %1 p¡xeles

ERROR.1=funci¢n inv lida
ERROR.2=archivo no encontrado
ERROR.3=ruta no encontrada
ERROR.4=demasiados archivos abiertos
ERROR.5=acceso al archivo denegado
ERROR.8=memoria insuficiente
ERROR.201=verificaci¢n de rango de datos
ERROR.202=desbordamiento de pila
ERROR.203=desbordamiento de memoria
ERROR.204=operaci¢n de puntero
ERROR.220=verificaci¢n del tipo de datos
ERROR.221=operaci¢n no admitida
ERROR.222=formato de archivo no v lido
ERROR.223=estructura demasiado grande
ERROR.224=verificaci¢n de datos
ERROR.225=puntero no asignado
ERROR.226=eliminar activo bloqueado
ERROR.227=error de imagen comprimida
ERROR.230=falla de inicializaci¢n
ERROR.231=controlador difamado
ERROR.232=tipo de controlador no admitido
ERROR.233=tipo de controlador no v lido
ERROR.234=verificaci¢n del controlador
ERROR.240=falla del controlador de gr ficos
ERROR.241=falla del controlador de audio
ERROR.242=falla del controlador del teclado
ERROR.243=falla del controlador del mouse
ERROR.244=falla del controlador del joystick

; Atajos de teclado. Todos est n asignados a ALT + la letra. Tenga en cuenta
; que los programas que se ejecutan bajo esta GUI no utilizan el teclado DOS
; conductor. Tuve que escribir mi propio controlador que permite m£ltiples
; aplicaciones simult neas pulsaciones de teclas para apoyar cosas como
; A + R + D + (DERECHA-MAYéS). Entonces, si tu idioma el atajo espec¡fico
; requiere una tecla que no est  presente en un teclado ingl‚s est ndar,
; deber s avisarme para que pueda asignarlo a ese c¢digo de car cter. Tambi‚n,
; use solo letras min£sculas. May£sculas requerir¡a tambi‚n presionar un cambio
; para activar el atajo.

MKEY.FILE=
MKEY.FILE.NEW.FONT=f
MKEY.FILE.NEW.IMAGE=i
MKEY.FILE.NEW.SPRITE=p

MKEY.FILE.OPEN=a
MKEY.FILE.SAVE=g
MKEY.FILE.SAVEAS=
MKEY.FILE.IMPORT=m
MKEY.FILE.EXPORT=

MKEY.FILE.EXIT=s

MKEY.EDIT=
MKEY.EDIT.COPY=c
MKEY.EDIT.PASTE=v
MKEY.EDIT.FRAME.ADD=+
MKEY.EDIT.FRAME.DEL=-
MKEY.EDIT.SEQ.ADD=
MKEY.EDIT.SEQ.DEL=

MKEY.TOOLS=
MKEY.IMAGE.CLEAR=b
MKEY.IMAGE.INVERT=r
MKEY.IMAGE.ROTATE=t
MKEY.IMAGE.FLIP=l

; Estos tambi‚n se pueden configurar. Pero, el editor mapea directamente
; MAYéS + FLECHA pulsaciones de teclas para realizar las acciones de cambio
; de imagen.

MKEY.IMAGE.SHIFT=
MKEY.IMAGE.SHIFT.UP=
MKEY.IMAGE.SHIFT.DOWN=
MKEY.IMAGE.SHIFT.LEFT=
MKEY.IMAGE.SHIFT.RIGHT=

MKEY.HELP=
MKEY.HELP.ABOUT=
