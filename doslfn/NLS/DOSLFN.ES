# language: Spanish (Espa§ol, es)
# codepage: CP850
# translators: Gemini
# Este es un texto generado autom†ticamente. Si encuentra alg£n error,
# no dude en corregirlo e informar al grupo de FreeDOS.

cargado, consumiendo %u bytes.
cargado en memoria alta, consumiendo %u bytes.
\n≠No se puede encontrar/abrir el archivo de tabla Unicode %s!
\n≠Contenido incorrecto del archivo %s o no se puede leer!
desactivado.
\n(Otro TSR captur¢ Int21 y/o Int2F)
≠A£n no est† instalado!
≠requiere al menos DOS versi¢n 4!
par†metro(s) tomados
"
++ FREEWARE ++
Programa que soporta nombres de archivo largos en DOS puro.
USE ESTE PROGRAMA BAJO SU PROPIO RIESGO, ES POSIBLE LA PêRDIDA DE DATOS
Acciones:    - (ninguna)     cargar y/o activar TSR
	     - h o ?	     esta ayuda
	     - d	     desactivar DOSLFN
	     - s	     mostrar estado y configuraci¢n
?PROFILE
	     - p	     mostrar datos de perfil
	     - pr	     restablecer datos de perfil
	     - pc	     calibrar temporizaci¢n de perfil
?
	     - u	     descargar TSR
Par†metros:  - w{+|-}	     * acceso de escritura
	     - ~{+|-}	     * uso de tilde (NameNumericTail)
	     - t{+|-}	     * efecto t£nel (Preservar Nombres)
	     - f{+|-}	     * modo alternativo: LFN para todas las unidades
	     - c{+|-}	     * soporte de CD-ROM
	     - i{+|-}	     * bloqueo reentrada (InDOS/RESET)
	     - r{+|-}	     * bit de solo lectura para archivos de CD-ROM
?USEWINTIME
	     - o[N]	     * establecer zona horaria N o leer TZ
?
	     - z[:|=]tabla   cargar tabla Unicode (.TBL)
	     - m[:|=]bytes   declarar tama§o del heap, 600..50000
	     - ms[:|=]bytes  declarar tama§o de ruta corta, 16..141
	     - ml[:|=]bytes  declarar tama§o de ruta larga, 16..1024
	     - mn[:|=]bytes  declarar tama§o de nombre largo, 13..512
	     - p[:|=]ruta    declarar directorio de trabajo para .TBL/.386
Entorno:     LANG=cc	     idioma para mensajes (NLS\DOSLFN.cc)
?USEWINTIME
	     TZ=xxxNyyy      zona horaria N, sin horario de verano
?
Email:	  %s
Download: %s
	  %s
"
activo
activado.
eliminado de la memoria.
%7lu accesos de lectura
%7lu accesos de escritura
%7lu llamadas Int21/AH=71
acceso de escritura
uso de tilde
efecto t£nel
soporte de CD-ROM
modo alternativo
bit de solo lectura en archivos de CD
tama§o de heap inv†lido
ON
OFF
%40s %s\n
≠el directorio no existe!
\nno se puede establecer el directorio de trabajo
no se puede redimensionar el heap
par†metro rechazado
 - descargue el TSR primero.
\n≠Este programa es in£til en una caja de DOS de esta versi¢n de Windows!
Heap: tama§o=%u, usado=%u, libre=%u, m†x-disp=%u Bytes\n
Uso de bandera InDOS y RESET drive
Èltimo error: %u -\s
el usuario neg¢ el acceso de escritura
no se pudo expandir el directorio FAT
memoria insuficiente - aumente el heap
no se pudo cargar la tabla Unicode autom†ticamente
?USEWINTIME
La zona horaria es
%40s UTC%+d\n
?
?PROFILE
Perfil.\n
Perfil restablecido.\n
%7lu %2d.%03d %s\n
Calibrando perfil.\n
Constante de tiempo del perfil = %lu000\n
Error al ejecutar la calibraci¢n\n
?
