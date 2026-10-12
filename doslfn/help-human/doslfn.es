Ÿ Para el registro de cambios baje al final del archivo.

+---------------------------------------------------------------+
| DOSLFN - El controlador en modo real para Nombres de Archivo	|
|	   Largos que faltaba en DOS				|
|	   ­Compatible con Unicode y DBCS!			|
+---------------------------------------------------------------+

INTRODUCCIàN

En 1996 yo ya pensaba que era necesario un controlador NAL (LFN en ingl‚s, de
®Long File Names¯), pero, como algo as¡ le ser¡a £til a todo el mundo, decid¡
esperar a que otro lo crease. De ese modo estuve esperando, y el a¤o pasado
encontr‚ algunas herramientas, como LFNDOS.EXE; de 1998, no tan viejos como yo
esperaba.

Pero este programa estaba dise¤ado para ser compatible con el COMMAND.COM de
Win9x, y no funcionaba con mi gestor de archivos favorito, Volkov Commander
(No deja entrar en carpetas con nombres largos). Adem s la parte residente era
TAN LENTA y consum¡a 64 KB de memoria, ­demasiado! Tampoco puede crear archivos
ni carpetas con letras en min£scula (¨­Por qu‚!?), no hay manera de evitar las
virgulillas (tildes en ingl‚s, seg£n la clave de registro NameNumericTail=0) y
funciona mal con las di‚resis.


MI INTENTO:

Por supuesto un programa de este estilo tiene que estar escrito en ensamblador.
En el buen Turbo Assembler us‚ el infrecuentemente usado modo IDEAL para activar
los componentes de estructuras locales y otras mejoras, entre ellas las que
otorgan mayor velocidad. Yo ten¡a como objetivo no volver a repetir los errores
que encontr‚ en otros programas como el susodicho. Y tambi‚n ser compatible con
nombres largos en CDs (Joliet), algo muy £til para recuperar copias de seguridad
en DOS normal. Ya exist¡a una herramienta adecuada para esto, las herramientas
LFN de ODI, pero no eran controladores.

Personalmente tambi‚n me era importante que funcionase con Volkov Commander,
para mi el mejor clon de Norton Commander. Permite nombres largos, es m s
peque¤o y r pido que el original y tiene muchas capacidades. (Aunque tambi‚n
tiene sus defectos, como la falta de atajos de teclado para ordenar carpetas o
la uni¢n entre ordenadores)

Ahora que estoy programando debo decir que, a pesar de lo que yo cre¡a, no es
tan f cil escribir un controlador a prueba de balas y con todas las
funcionalidades que quiero. No me extra¤a no haber encontrado alg£n controlador
antes, con lo dif¡ciles que son de programar.

Al principio uno de mis objetivos era reducir el gasto de memoria a un m¡nimo,
sobre 4KB. Ahora me encuentro bastante lejos de ese objetivo, y me conformo con
menos de 12KB. Bastante bien, comparado con 64K.

Otro problema fue entender la sem ntica usada por Windows 9x para los nombres
largos. Si‚ndole ®cd ..¯ familiar a todo el mundo, ®cd ...¯ es algo nuevo
introducido en Windows 9x y sirve para subir dos niveles de directorios;
®cd ....¯ cuatro, etc (yo ya sab¡a que las rutas ®.¯ y ®..¯ no eran usadas
directamente por DOS). Tambi‚n la coincidencia de patrones con nombres largos:
algunos coinciden con UNIX (por ejemplo *1 coincide con todos los nombres de
archivos acabados en ®1¯), otros son espec¡ficos de Win32, como ®*.¯ que
coincide con todos los archivos sin extensi¢n. Despu‚s, una extensi¢n se define
como la parte despu‚s del éLTIMO punto que no est‚ en una cadena de puntos.
Esto hace que se puedan crear archivos que empiecen por espacios o puntos, pero
los espacios y puntos finales son cortados. Esto es necesario por culpa de ®*.¯,
puesto que no hay manera de encontrar archivos terminados en un punto. Por tanto
no se pueden crear archivos compuestos solo de espacios y puntos, con la
excepci¢n de las entradas ®.¯ y ®..¯. COMMAND.COM usa la funci¢n de DOS
Obtener Informaci¢n Extra sobre el Error [®Get Extended Error Information¯], lo
que me oblig¢ a usar la desagradable funci¢n complementaria para establecer el
c¢digo de error ante los problemas antes mencionados, para que COMMAND.COM
funcione correctamente.


EXPLICACIàN DE LAS OPCIONES:

~ (uso de la virgulilla): Por omisi¢n Win9x le a¤ade un ®~1¯ al final de
  cualquier nombre largo, ®~2¯ si ya existe otro, etc. Por lo tanto DOS normal
  no puede usar esos nombres. Esto parece ser culpa de problemas dentro de los
  programas que prob‚ (o eso creo, eran viejos programas de Microsoft).

  Esto no le es c¢modo ni a los usuarios de DOS ni a los de Windows. DOS normal
  es capaz de ®manejar¯ nombres largos trunc ndolos autom ticamente al formato
  8.3. El mismo nombre largo puede usarse para acceder a un archivo, excepto si
  tiene espacios o varios puntos, haya o no compatibilidad con NAL.
  Los usuarios pueden mantener la compatibilidad con algunos programas usen
  Win9x|DOSLFN o no.

  Puede cambiar el comportamiento de las virgulillas en Win9x a¤adiendo esta
  clave binaria:
	REGEDIT4
	[HKEY_LOCAL_MACHINE\System\CurrentControlSet\control\FileSystem]
	"NameNumericTail"=hex:00
  Y despu‚s reiniciar Windows. No se olvide de mantener ®May£s.¯ cuando pulse en
  ®reiniciar¯, no es necesario apagar y encender el ordenador.

  Tambi‚n puede buscar en la web con la palabra clave ®NameNumericTail¯.

t (efecto t£nel): Esto, que viene incluido en el sistema de archivos de Win9x,
  permite que los nombres largos no desaparezcan al modificar archivos con un
  programa que use el formato 8.3. Funciona de la siguiente manera:
  * Borrar el archivo <nombre>.bak, si existe
  * Mover el archivo original de <nombre>.txt a <nombre>.bak
  * Crear un nuevo archivo de nombre <nombre>.txt

  Tras este proceso se pierde el nombre largo. Pero con el ®efecto t£nel¯ activo
  Win9x y DOSLFN buscar n procesos borrar-mover-crear (BMC) y ®autom gicamente¯
  colgarle las partes truncadas del nombre largo al nuevo archivo, si se
  mantiene el mismo <nombre>.
  El proceso BMC tambi‚n puede reducirse a BM, BC, MM o MC; y tambi‚n se aplica
  a carpetas. Seg£n la documentaci¢n en el disco de MSDN el
  ®t£nel de informaci¢n¯ interno de Win9x se mantiene por 15 segundos, pero no
  puedo encontrarle ning£n olvido. Los t£neles en Win9x son bidireccionales,
  tambi‚n se mantendr  el nombre largo si un programa compatible con nombres
  largos hace lo mismo. Por lo tanto no se puede (sin reiniciar) eliminar la
  virgulilla de ®ARCHIV~1¯ solamente cambiando el nombre de
  ®Archivos de Programa¯ a ®Programa¯, y volviendo otra vez al nombre antiguo.

  Adem s, como sistema operativo multitarea, Win9x tiene varios
  ®t£neles de informaci¢n¯, lo que permite que varios procesos (programas de
  Win16 o DOS) hagan su propio proceso BMC de forma simult nea, o entrelazados
  dentro del mismo proceso. Por simplicidad DOSLFN solo es compatible con un
  solo ®t£nel de informaci¢n¯.

c (Compatibilidad con CD-ROM): Activa la compatibilidad con CD-ROM, esto hace
  que DOSLFN use m s memoria para mantener en memoria el c¢digo para iniciar y
  acceder al CDROM. Esto cambia los valores por omisi¢n est‚ SHSUCDX v3.01
  cargado o no (esta versi¢n de DOSLFN no funciona con MSCDEX o versiones m s
  antiguas de SHSUCDX). Tiene que usar la opci¢n c+ si carga DOSLFN antes de
  SHSUCDX, ­y si quiere nombres largos en los CDROM!

i (uso en InDOS): Los programas residentes que usen NAL necesitan saber si
  DOSLFN est  en ejecuci¢n. Para m s inri usar nombres cortos puede corromper
  datos si DOSLFN elimina NAL sin uso, o a¤ade otros a trav‚s de un t£nel (v‚ase
  la opci¢n -t). Los problemas que causa usar el indicador InDOS surgen de que,
  mientras DOSLFN llama a OldInt21, el indicador InDOS cambia su valor a 2. No
  conozco ninguna forma mejor para que InDOS no valga 0 _y_ llamar a DOS. Est 
  encendida por omisi¢n, pero si te causa problemas prueba a desactivarla.

z DOSLFN tiene que convertir Unicode a la p gina de codificaci¢n local, y esto
  depende del idioma del sistema. Puesto que DOS (o NLSFUNC) no tiene la tabla
  de conversi¢n necesaria es necesario tener una en DOSLFN. En estos momentos
  DOSLFN tiene 19 tablas de conversi¢n Unicode: para 437 (IBM normalizado, para
  reiniciar), 850 (Europa Occidental), 852 (Europa Oriental), 866 (cir¡lico),
  dos para el griego, entre otros. Una p gina puede cargarse o cambiarse incluso
  si DOSLFN es residente. La mayor¡a de europeos no suelen usar las di‚resis
  (por las abundantes incompatibilidades que existen en los distintos
  programas*), por lo tanto, olvidarse de cargar una tabla no es el fin del
  mundo. Pero si ves nombres de archivos con barras bajas fuera de lugar
  deber¡as cargar la tabla de conversi¢n (DOSLFN convierte sin avisar los
  caracteres Unicode que no puede transformar a ®_¯). Nota: DOSLFN carga la
  tabla ®correcta¯ al iniciarse, por lo tanto ya no es necesario este cambio,
  incluso en Europa Oriental. Adem s DOSLFN carga la tabla de conversi¢n
  necesaria si cambias la codificaci¢n de DOS con NLSFUNC; pero puede que
  necesites asignarle m s memoria al mont¢n (el DOS japon‚s necesita incluir
  /m18000 si carga DOSLFN en modo EE.UU.).

  * Suele ser el malvado software de Unix (p.e. ®tar¯) el que mata las di‚resis.
  Internamente Unix es m s un sistema operativo de 7 bits que de 32 bits, y esta
  limitaci¢n dejaba su huella por el mundo hasta hace poco (el est£pido UTF-7,
  las codificaciones MIME, etc).

m DOSLFN necesita un ®mont¢n¯ interno para almacenar datos, principalmente los
  ®Find Handles¯(gestores de b£squeda). El tama¤o de este  rea es de 1000 bytes
  por omisi¢n. Valores menores reducen el consumo de memoria de DOSLFN. Esta
  opci¢n no se puede usar si DOSLFN es residente, puesto que la memoria puede
  estar en uso.

m[sln] Indica el tama¤o m ximo de la ruta con nombres cortos [s] (80), con
  nombres largos [l] (260) y con nombres de archivos [n] (256). Tenga en cuenta
  que se puede especificar el tama¤o m ximo de la ruta extra larga, aunque DOS
  no la usar ; puede que eso cause que el tama¤o por omisi¢n de 80 puede no ser
  suficiente. Vea tambi‚n MVALUES, m s abajo.

l DOSLFN est  traducido a varios idiomas. Si se detecta que el sistema est 
  configurado para Austria, Suiza o Alemania se usar  la traducci¢n en alem n.
  Por omisi¢n se usa la versi¢n en ingl‚s. Para forzar un idioma use la opci¢n
  ®ld¯ para alem n y ®le¯ para ingl‚s: por ejemplo, para leer la ayuda en ingl‚s
  desde Austria use ®doslfn -le -h¯ o ®doslfn leh¯. Como ve DOSLFN ignora los
  prefijos y espacios en las opciones, un espacio final solo es necesario para
  la opci¢n z. Mientras DOSLFN sea residente se mantendr  el idioma forzado.

o Desplazamiento del huso horario. Se leer  desde TZ si no se indica ninguna
  zona horaria. V‚ase la siguiente opci¢n.

TZ Variable del entorno que indica el huso horario. Para pasar de una fecha en
  formato FAT a Win32 (entero de 64 bits que cuenta los nanosegundos
  transcurridos desde el 1/1/1601). El formato de la variable es [NOMBRE]H[:MM],
  donde NOMBRE es una abreviatura opcional, H son las horas y MM los
  minutos (opcionales). El n£mero indica la diferencia respecto a GMT, y
  dependiendo del signo indica si adelantando (negativo) o atrasando (positivo)
  la hora. Puesto que el horario de verano es diferente para cada pa¡s DOLFN
  necesitar¡a una tabla de todos los cambios de hora habidos y por haber para
  calcular las fechas respecto al huso horario de entonces, y no al actual (como
  hacen la mayor¡a de programas). Como tanto esto como usar las normas de
  horario de verano estadounidenses causar¡a problemas recomiendo que los
  usuarios ajusten su variable TZ. Por ejemplo, para Europa Central habr¡a que
  cambiar los valores en AUTOEXEC.BAT dos veces al a¤o:
	set TZ=MET-1		en invierno
	set TZ=MET-2		en verano

  De esta forma el programa no necesita conocer como funciona el horario de
  verano, pero tendr  que adaptar su AUTOEXEC.BAT dos veces al a¤o. No se
  necesita TZ para pasar del tiempo en CDFS al formato Win32, puesto que las
  fechas contienen informaci¢n sobre el huso horario (bloques de 15 min.
  almacenados en un octeto) del pa¡s en el que se cre¢ el CD. En cambio,
  para mantener la misma hora general, pasar de CDFS a FAT (tal como devuelven
  casi todas las funciones relacionadas con el tiempo) requiere de TZ y de la
  informaci¢n sobre el huso horario de CDFS para calcular el tiempo FAT, que
  siempre es local. Por esto es mejor usar el formato Win32 como paso intermedio
  internamente.

** Si se activ¢ el analizador **

p Muestra la informaci¢n recopilada - n£mero de llamadas, tiempo en segundos,
  descripci¢n.

pr Borra la informaci¢n recopilada - se borran el n£mero de llamadas y el
  tiempo.

pc Calibra la frecuencia del analizador. El an lisis usa la instrucci¢n Pentium
  Leer Contador de Segundos (RDTSC) para contar el tiempo. Deber  recompilar
  DOSLFN con su constante adecuada, excepto si tiene un P4 de 2,6Hz.


ACCIONES:

Las letras de las acciones deben ponerse al final del comando, puesto que es ah¡
donde se terminan de leer las opciones.

La acci¢n por omisi¢n es cargar DOSLFN, o activarlo y avisar de que DOSLFN ya
est  cargado y activo.

Descargar DOSLFN puede fallar si hay un programa residente usando Int21 o 2F
encima de DOSLFN. En este caso DOSLFN se desactiva y permanece en memoria hasta
que suceda otra acci¢n, como descargarlo o reactivarlo. Entonces tendr  que
descargar los programas residentes necesarios y volver a intentarlo. Si no
puede hacerlo (probablemente alguna mierda de Microsoft) ®simplemente¯ tendr 
que reiniciar el sistema.


APUNTES SOBRE LA IMPLEMENTACIàN:

Uno de los problemas que hay es la compatibilidad segura con nombres largos en
CD. Puesto que quer¡a crearla sobre MSCDEX tuve que conectar puentes entre
Joliet e ISO, ­pero resulta que no hay puentes seguros (WinOnCD integra una
Tabla Enlazada de ese tipo, pero a pesar de lo c¢modo que ser¡a no est 
normalizado)! Windows 9x y NT ®inventaron¯ nuevos nombres cortos y no usan la
parte ISO de los CD con Joliet. Adem s, los dos sistemas funcionan de formas
diferentes. Si intentas acceder a un disco con nombres largos desde un programa
DOS viejo ver s tres nombres cortos diferentes dependiendo si usas DOS, Windows
9x o Windows NT. Las herramientas de nombres largos de ODI no usan MSCDEX
(excepto para leer sectores), por lo que no sufre de este problema. El
controlador deber  convertir los nombres largos en cortos, mientras que MSCDEX
se encarga de los cortos.

Versiones anteriores de DOSLFN cargaban un archivo que conten¡a la conversi¢n
entre el nombre en Joliet y en ISO. Esta versi¢n ya no es compatible con MSCDEX,
ahora usa SHSUCDX v3; que usa el sistema Joliet junto con otro m‚todo para
generar nombres cortos.

Otro problema lo causan los accesos de escritura y la consistencia de los b£fer
de los sectores: Si tengo que almacenar datos en cach‚, pero la API NombreCorto
puede cambiar los contenidos del disco. Esto hace que se tenga que invalidar la
cach‚, al menos en ese disco, cada vez que DOS escribe en una carpeta; incluso
los viejos bloques de control de archivo. Esto reduce el rendimiento de DOSLFN.
Para ser compatible con el mayor n£mero de versiones de DOS posibles (no solo
MS) no voy a usar funciones internas de DOS sin documentar.


COMPROBADO QUE FUNCIONA BAJO

* MS Windows NT 4 DOS-Box, controladores FAT12 y FAT16 (pero use el paquete
   NTLFN, un buen programa gratis y de c¢digo abierto)
* MS-DOS 6.2
* MS-DOS 7.10, FAT32
* DR-DOS 7, con un disco magneto-¢ptico


COSAS QUE TODAVÖA NO FUNCIONAN

* Discos bajo JOIN (pero s¡ bajo SUBST)
* Discos bajo ASSIGN (pero no probado, puesto que debe funcionar al ser similar
  a SUBST)
* Bajo Windows 3.11 con acceso a archivos de 32 bits DOSLFN tiene que usar el
  modo Respaldo para los discos duros, puesto que VCACHE.386 impide acceso
  directo al disco mediante Int25/26 y Int21/AH=32. Mejor desactive el
  ®acceso de 32 bits a archivos¯, pero puede dejar el
  ®acceso de 32 bits a discos¯.


COSAS QUE NO TENGO PENSADO QUE FUNCIONEN

* Funciones sobre SUBST, AL=AAh 	(®query subst¯ disponible)
* Creaci¢n de archivos desde el servidor, AL=A9h
* Obtener informaci¢n del manejador, AL=A6h
* Reiniciar disco, AL=0Dh


NOTAS PARA LOS USUARIOS DE DBCS (chino, japon‚s, coreano; ergo CJK):

Carga DOSLFN como un usuario occidental, DOSLFN consume demasiada memoria si
carga la tabla DBCS a Unicode.

 MµS DETALLES:
DOS, cuando arranca desde un Disco de Emergencia de Win9x/Me, puede usar la
codificaci¢n 932, 936, 949 o 950; pero la fuente que se muestra es la 437 de la
BIOS. Adem s, la tabla de Octetos Iniciales de DBCS todav¡a no est  activa. Por
lo tanto, sin importar si est  usando DOSLFN, ver  mojibake al intentar mostrar
archivos cuyos nombres contengan letras chinas. Despu‚s de activar PDOS95.BAT,
creo, la pantalla cambia al formato de caracteres chinos a tama¤o completo 40x24
(cuadrados) (con katakana a medio tama¤o entremedias si usa CP932, Shift-JIS
japon‚s). La l¡nea 25 es para el Modificador del M‚todo de Entrada, una l¡nea
para seleccionar entre Romaji/Pinyin y Kanji/Kanxi. Esto es necesario por que,
en idiomas como el japon‚s, hay varios caracteres de diferente significado por
cada pronunciaci¢n. Adem s se activa la tabla de Octetos Iniciales de DCBS de
DOS, y DOSLFN deber¡a entonces convertir el Unicode de nombres largos a DBCS y
viceversa al escribir. Como los que lo probamos somos un usuario de la China
continental y yo, que se algo de japon‚s, las pruebas se reducen solo a las
codificaciones CP932 y CP936 (nos han dicho que CP950 funciona por ahora). Tenga
en cuenta que hay muchas herramientas mejores para substituir a PDOS95.BAT, por
ejemplo yo tengo el programa/controlador ®TechWay SCS V3.2¯ (disponible gracias
a wengier); que tambi‚n funciona con el DOS6 alem n. Una de las ventajas de este
programa es que detecta autom ticamente los famosos caracteres para dibujar
cajas, y no los convierte en caracteres chinos (como hace PDOS95.BAT). Esto
permite que pueda usar mi gestor de archivos (vc.com), mi editor de texto
(turbo.exe) y mi depurador (td.exe) preferidos sin problema alguno.


PROGRAMAS ®DOSLFNMS¯, ®MVALUES¯, ®MK_TABLE¯ Y ®LOWDMA¯:

DOSLFNMS est  pensado para ser usado con MS-DOS 7 (pero tambi‚n funcionar  bajo
FreeDOS), y tambi‚n tiene un tama¤o reducido al quitarle las siguientes
funcionalidades:
- No se desactiva al iniciar Windows
- No detecta cambios en la codificaci¢n
- No es compatible con codificaciones de varios octetos

MVALUES puede usarse para analizar sus discos para encontrar el tama¤o adecuado
de la opci¢n m. Esto tambi‚n puede ahorrarle ¬K de memoria residente. Solo
acepta un par metro, una cadena de texto que contenga la lista de discos a
analizar (por omisi¢n C).

MK_TABLE convierte una tabla Unicode (en formato ASCII), disponible para
descargar desde www.unicode.org, en el formato binario de Volkov Commander
usado por DOSLFN.

LOWDMA: vea LOWDMA.TXT

----------------------------------------------------------------------------
Registro de cambios: + a¤adido, - arreglado fallo, * cambio

Versi¢n 0.30 (01/01)
  Versi¢n inicial

Versi¢n 0.31 (04/01)
+ mejor soporte para Windows NT (ahora in£til)
+ soluci¢n de tiempo de espera (timeout) para mantener datos de medios
  extra¡bles
+ bloqueo autom tico de vol£menes en DOS7 antes de acceso de Escritura
* ajustes con el soporte de PKZIP 2.50 - sin soluci¢n final
* ISR termina con IRET en lugar de RETF 2, para trabajar con depuradores
  paso a paso

Versi¢n 0.32 (09/01)
- funciona con dispositivos internos como NUL,CON,LPT...
* el c¢digo fuente tiene la opci¢n para establecer el indicador InDOS
+ soporta tama¤o de mont¢n (heap) variable; el consumo de memoria de DOSLFN
  depende del usuario
+ funci¢n tipo PRINTF integrada (solo parte de c¢digo transitorio)
* cambiado el estilo de salida para la acci¢n "Estado" (Status)
+ cuatro tablas de traducci¢n de c¢digo incluidas en el paquete ZIP
- archivo l‚ame un poco menos provocador

Versi¢n 0.32a (10/01)
- directorio ra¡z err¢neo en algunos discos FAT32
  (este fallo fue reportado constantemente pero no me ocurri¢ hasta ahora)
- mal comportamiento cuando DOSLFN se iniciaba desde un disco FAT32
  (este fallo fue programado en la Versi¢n 0.32)
+ todas las tablas de traducci¢n de c¢digo disponibles incluidas en el paquete
  ZIP
+ MK_TABLE.C mejorado (fue hecho en 0.32) e incluido
* La numeraci¢n de versi¢n con "a" indica que hay otra versi¢n 0.33
  actualmente en desarrollo. Esta es m s bien una versi¢n de correcci¢n de
  errores.

Versi¢n 0.32b (10/01)
- AX inv lido en INT21/4E&4F, reportado por claude.caillet@free.fr
  (El comportamiento no estaba documentado en la lista de Ralf Brown 03/99)
- faltaba algo de texto en ingl‚s en DOSLFN.TXT (huso horario, condiciones de
  prueba)
  reportado por Wu Yongwei <adah@sh163.net>
- CP850UNI.TBL era incorrecto, copiado a CP858UNI.TBL (este era el que conten¡a
  el s¡mbolo del Euro, CP850 no contiene Euro.
  (por <ldzip@ldzip.freeservers.com>)
+ se a¤ade MKLINK, aunque el archivo de tabla de enlaces de salida es in£til por
  ahora

Versi¢n 0.32c (11/01)
- en algunas ocasiones, *. no funciona (p.e. fallo en "copy *. tmp")
- FindFirst de dispositivos de caracteres devuelve error pero no deber¡a
  (fallo en "copy con xx"), ambos reportados por wengierwu@sohu.com
* tama¤o de mont¢n predeterminado reducido, los sectores de CD a£n no est n
  dentro
* tama¤o de la Tabla de Enlaces interna ampliado a 32 bits

Versi¢n 0.32d (06/02)
- fallo completo en discos bajo SUBST modificados a sin-soporte-nal (LFN)
- la alineaci¢n a la derecha de la cola num‚rica insertando barras bajas era
  err¢nea (caillet)
* MKLINK modificado para comprobar la validez de la tabla de enlaces de
  CeQuadrat
- MKLINK ahora puede manejar discos multisesi¢n y de EasyCdCreator

Versi¢n 0.32e (06/02)
* c¢digo fuente reorganizado, m s ingl‚s en el  rea de declaraci¢n
+ uso del indicador InDOS (configurable por el usuario)
- VolumeStart entregado por MSCDEX era incorrecto, insertada rutina basada en
  IOCTL
* eliminado "checksum linkage" y la opci¢n "LoSA", "LoSA" se mover  a VxD
- LFN GetFAttr del directorio ra¡z en un CDROM
* cambiados los valores predeterminados (uso de virgulilla activado)
+ DOSLFN ahora puede cargar archivos generados por MKLINK (es decir, soporta
  todos los CDROMs Joliet)
+ Funci¢n de reporte del éltimo Error (LastError)
- correcci¢n menor en MKLINK (InSTab comparaba LowWord en lugar de LongInt)
* enlace de directorio ra¡z (conocido) incluido en *.JLT, MKLINK cambiado de
  nuevo
* MKLINK cambiado internamente, usa un objeto, a¤adida "comprobaci¢n de orden
  de  rbol"

Versi¢n 0.32f… (09/02)
- valor de retorno CX en LFN_FindFirst/FindNext
* llamada interna de Abrir/Crear Extendido(6C) en lugar de Creat(3C)
- reconoce CDs arrancables tambi‚n (MKLINK a£n no)
* preparaci¢n del efecto t£nel
Versi¢n 0.32f  (10/02)
- open/create extendido (fallo desde 0.32f…)
- eliminar LFN_DirEnt para lfn_rmdir (el fallo siempre estuvo presente)
* no m s llamadas recursivas a Int21 (excepto para acceso a .JLT)
* sin recursi¢n a sfn_unlink para lfn_unlink (m s r pido)
+ eliminar con comodines (no probado; a£n no para el modo DE RESERVA)
Versi¢n 0.32fƒ (11/02)
- interpretar etiqueta de volumen como componente de ruta
Versi¢n 0.32fÆ (12/02)
- la mayor¡a (con suerte todos) los fallos de EDIT.COM eliminados
- escritura fea en segmento equivocado eliminada (introducida en la versi¢n
  0.32e)
Versi¢n 0.32f„ (12/02)
+ Eliminar con comodines implementado ahora, al menos para discos FAT
Versi¢n 0.32f (12/02) - £ltima versi¢n "f"
- crear un directorio ya existente devuelve "archivo no encontrado" [wengier]
- el comando renombrar a veces olvida o destruye otro LFN (dos fallos)

Versi¢n 0.32g (12/02)
- fallo de VC Alt+F7 (se eliminaba la barra invertida final en la llamada
  lfn_name)
- fallo de eliminaci¢n recursiva de VC y de creaci¢n recursiva de PKZIP (fallo
  de FastOpenCache)
* desarrollo de la Versi¢n 0.33 detenido

Versi¢n 0.32h (12/02)
- Acceso a SFN con espacios (sorprendentemente, esta correcci¢n reduce el
  tama¤o del c¢digo)
- Correcciones menores en MKLINK: opci¢n de verbosidad, disposici¢n de tabla
+ MKLINK crea una tabla de enlaces si la LT de CeQuadrat no est  en la primera
  sesi¢n
+ MKLINK obtiene una p gina de c¢digos 437 integrada (para salida detallada)
- el directorio ra¡z del CDROM muestra las entradas . y ..
- el comando "cd" con barra invertida final fue desactivado por la correcci¢n
  del fallo de VC Alt+F7

Versi¢n 0.32i (12/02)
- cuelgue al iniciar DOSLFN con el CDROM como disco actual
- manejo incorrecto e inutilidad de la opci¢n /p
- tomar el directorio equivocado para la carga autom tica de la tabla Unicode

Versi¢n 0.32j (12/02 - Navidad)
+ escrito LFNXLAT.386 - una API de modo protegido para Windows y sus cajas DOS
+ interfaz Int2F para cargar ese VxD (Win3) o desactivarse a s¡ mismo (Win95+)
+ comprobaci¢n de versi¢n de DOS y Windows, rechazando mientras DOS<4 o Win9x
  est‚ ejecut ndose
+ notificaci¢n autom tica de cambio de p gina de c¢digos sobre Int2F (a£n no
  probada)
+ la funci¢n de reporte de éltimo Error ahora es funcional con cinco mensajes
+ c lculo autom tico del tama¤o del mont¢n basado en el archivo .JLT m s grande
+ opci¢n /c funcional
+ consumo de memoria reducido en modo SOLO-FAT (es decir, sin soporte de CDROM)
  POR FAVOR INCLUYA LA OPCIàN /c+ SI CARGA DOSLFN ANTES QUE MSCDEX Y QUIERE
  JOLIET
- carga de CeQuadrat LT desde CDROM si es multisesi¢n
- al menos tres fallos alrededor de la ampliaci¢n de directorios
- pod¡as crear un nombre de archivo conteniendo comodines en su nombre largo
+ soporte completo para discos SUBST
- Nombres largos ISO cuelgan DOSLFN - ahora simplemente truncados a 12
  caracteres
- renombrar falla al cambiar solo min£sculas/may£sculas
* manejo de errores tipo setjmp/longjmp o Catch/Throw simplifica el c¢digo
  fuente
+ efecto t£nel (preserva el nombre largo para editores antiguos, etc.)
- no puede crear archivo/directorio con el mismo nombre que la etiqueta del
  volumen
- la aceptaci¢n incompatible de la barra invertida final tiende a fallar con
  PKUNZIP
+ opci¢n /t funcional - ahora todas las opciones son funcionales
- fallo en el listado de CDROM Joliet en el directorio ra¡z (archivos se vuelven
  directorios)
+ soporte DBCS preparado

Versi¢n 0.32k (01/03)
- "dir makefile" no muestra el makefile
  (este peque¤o fallo requiri¢ reescribir una gran cantidad de DOSLFN)
* Sin ning£n .TBL, DOSLFN ahora usa por omisi¢n ISO-Latin1 en lugar de CP437.
  Esto se debe a cambios internos para el soporte DBCS.
  ­LOS USUARIOS DE EUROPA OCCIDENTAL NO DEBEN BORRAR EL ARCHIVO CP437UNI.TBL!
- no puede manejar archivos que tienen 0xE5 como primer octeto (fallo de
  "TRUENAME" de DOS @0.32j)
+ formato de archivo .TBL de DBCS ahora declarado, vea TBL.TXT
+ A¤adidas tres nuevas tablas de p ginas de c¢digos: Japon‚s (Shift-JIS),
  Chino Simplificado (GB2312, subconjunto de GBK), Chino Tradicional (BIG5)
+ A¤adido soporte DBCS completo, pero imposible de probar para m¡
  LOS USUARIOS CHINOS O JAPONESES deben incluir /m18000 o similar para dar m s
  mont¢n (Esta opci¢n se automatizar  en una versi¢n posterior.)
- despu‚s de acceder a dispositivos, puede ocurrir corrupci¢n de datos
- al trabajar con diferentes versiones de DOSLFN, pueden ocurrir cadenas
  incorrectas
- la opci¢n /z no funciona desde 0.32j

Versi¢n 0.32l (01/03)
- el soporte DBCS no funciona en absoluto (m£ltiples fallos), comprobado con
  TechWay SCS
- mensajes err¢neos al cargar DBCS sin soporte para CDROM
- tabla DBCS parcialmente sobrescrita
* secci¢n de "c¢digo de inicializaci¢n cr¡tico" m s estricta
+ c lculo autom tico del tama¤o del mont¢n ampliado para incluir el archivo .TBL
  los usuarios de CJK ya no necesitan ninguna opci¢n

Versi¢n 0.32m (01/03)
- solicitar ayuda con /? o -h cuelga DOS desde 0.32l (­uy!)
- valor de retorno err¢neo para el comando DEL desde 0.32f 
* rendimiento ligeramente mejorado para crear archivos con nombre corto, todo
  en may£sculas
- CP950UNI.TBL estaba en formato incorrecto (obsoleto)
+ cuarta tabla Unicode DBCS, CP949UNI (Coreano) a¤adida, ­pero necesito
  comentarios!

Versi¢n 0.32n (01/03)
+ la quinta CP936UNI.GBK es una tabla Unicode para rango completo de Chino
  Simplificado
- falla al cargar autom ticamente la tabla Unicode con el comando CHCP
- error de sobrescritura en l¡nea de comandos (no se pod¡an introducir rutas m s
  largas),  rea de variables completamente reorganizada
+ manejando nombres UNC en modo de Reserva (no probado a fondo)
- error truename en discos SUBST
- error al crear archivo/directorio en modo de Reserva
+ comprobaci¢n de ";?" (?=1..9) al final de los nombres de archivos ISO/Joliet
  en lugar de eliminar dos caracteres, ya que NERO puede generar dichos CDROMs
  no ISO
* problema con VCACHE.386 detectado, sin correcci¢n excepto no usar acceso a
  archivos de 32 bits
+ rastreador de mont¢n simple detecta el tama¤o y  reas libres
+ FMLFN.DRV, un proveedor de Nombres de Archivo Largos muy beta para el
  Administrador de Archivos de Windows
+ DOSLFN deber¡a estar disponible en SimTel (www.simtel.net)
+ MKLINK ahora tiene soporte Unicode y DBCS tambi‚n (para su salida por
  pantalla)
- enlaces m£ltiples en el archivo .JLT generados por MKLINK
- los tama¤os de directorio no m¢dulo 2048 pueden colgar MKLINK (no es
  est ndar ISO)

Versi¢n 0.32o (05/03)
- la opci¢n /? cuelga el sistema de nuevo
+ cadenas de texto en ruso disponibles pero a£n no implementadas
  Los siguientes cambios y correcciones est n inspirados por jadoxa@yahoo.com.au
  pero ‚l ha hecho mucho m s:
* optimizaciones menores del c¢digo
- establecer atributo SoloLectura (ReadOnly) al crear archivo SFN con efecto
  T£nel
* el acceso a sectores pasa por el cach‚ (no documentado) SmartDrive, mejora
  el rendimiento como se muestra al copiar algunos archivos de C:
  sin DOSLFN		25 s copiando a A:	7 s borrando de A:
  con DOSLFN 0.32n	78 s copiando a A:	12 s borrando de A:
  con DOSLFN 0.32o	43 s copiando a A:	7 s borrando de A:
* MKLINK ahora puede manejar directorios m s grandes de 64KB (raro, no probado)
* MKLINK.PAS puede compilar a una versi¢n DPMI para m s uso de memoria (probado)

Las siguientes versiones son todas de Jason Hood:

Versi¢n 0.32o, primera versi¢n jh (10/03)
* varias optimizaciones de tama¤o;
* generaci¢n modificada de nombres cortos de CD, generaci¢n de virgulilla de
  SHSUCDX 2.0;
+ opciones a¤adidas para especificar el tama¤o m ximo de rutas (/m[sln]);
- mantener la fecha de creaci¢n (solo funciones LFN);
- reconocer renombrados que solo cambien may£sculas/min£sculas;
- limpiar correctamente el acarreo (carry) para las funciones de atributo;
+ soporte primitivo para CDs de Linux Rock-Ridge;
* cargar la tabla de enlaces solo al leer un CD nuevo (determinado por el VSN);
- eliminar espacios finales de etiquetas de volumen Joliet codificadas
  incorrectamente;
- no escribir el b£fer para el truename LFN (Int21/AX=7160/CL=2) si el archivo
  no existe;
- permitir dispositivos de escritura cuando el disco actual es un CD;
* modificado el formato de archivo de la Tabla de Enlaces Joliet (.JLT) (el
  nombre de archivo usa el N£mero de Serie del Volumen en lugar de la etiqueta;
  TYPE lo mostrar );
- MKLINK: mejor mapeo de directorios vac¡os;
- MKLINK: problema potencial con las etiquetas de volumen Joliet corregido;
+ MKLINK: opci¢n para crear "manualmente" los enlaces;
- CP437UNI.TBL: corregida la traducci¢n del s¡mbolo "micro" (æ).

Versi¢n 0.32o, segunda versi¢n jh (10/03)
- establecer el c¢digo de error al usar la funci¢n de eliminaci¢n por comodines;
- corregido un fallo al buscar archivos para la eliminaci¢n por comodines.

Versi¢n 0.32o, tercera versi¢n jh (12/03, pero fechada el 10/03)
- borrar en un CD devolver  error 5 (acceso denegado), no 2 (archivo no
  encontrado);
- las tablas de enlaces de CeQuadrat ahora funcionan.

Versi¢n 0.33 (07/04)

Usuario:

+ funciones de conversi¢n de tiempo (NTFSDOS ahora har  un DIR de los tiempos
  correctos)
+ opci¢n o para especificar huso horario o leer la variable de entorno TZ
* cambiados los contadores de estad¡sticas a 7 d¡gitos (DWORDs)
+ el estado incluye el tama¤o de mont¢n usado y huso horario
+ lectura de nombres en min£sculas generados por XP
- volcar sectores sucios antes de cambiar de disco
- fallo corregido donde "ruta no encontrada" deber¡a ser "archivo no encontrado"
- evitar la carga de tablas DBCS si no se usa DBCS
- mejor soporte de modo de reserva (fallback) (discos de red y CDs no Joliet):
  - las funciones de obtener/establecer el tiempo de modificaci¢n funcionan;
    todas las dem s fallan, no tienen ‚xito err¢neamente
  - eliminaci¢n con comodines
  - la Informaci¢n de Volumen (71A0) devuelve sistema de archivos desconocido
    ("?")
- fallo corregido con la funci¢n de renombrar que corromp¡a la memoria
  (colgaba COMMAND.COM)
- devolver error 1 (subfunci¢n inv lida) para atrib/truename/alias/tiempo
  inv lidos
- fallar todas las funciones de atributo para dispositivos
- liberar la tabla de enlaces anterior si se carga un CD Rock-Ridge
- tama¤o de asignaci¢n de memoria corregido (llenar el mont¢n colgar¡a DOS) y
  su visualizaci¢n
- SFN para crear, pero LFN para usar (ej: SFN MkDir, LFN ChDir, DOSLFN no
  ver¡a el nuevo directorio); todav¡a podr¡a haber problemas con Crear Archivo
  Temporal (5A)
- Informaci¢n de Volumen devuelve "FAT32" si procede
- eliminar el archivo oculto creado cuando un directorio no pudo ser expandido
* evitar tener que recalcular el espacio libre (DOSLFNMS)

C¢digo fuente:

+ compilaciones condicionales:

    USEOLDDOS	habilita el filtrado LFN en funciones de b£squeda DOS
    USEWINTIME	habilita las conversiones reales de tiempo Win <-> DOS
    USEXP	habilita la lectura de nombres 8.3 en min£sculas de XP
    USEFREESPC	habilita el ajuste de la cuenta de cl£steres libres DPB
    PROFILE	habilita el an lisis de rendimiento (requiere y asume Pentium)
    PROFILECACHE habilita el an lisis de la cach‚ de fastopen (tambi‚n
		 requiere lo anterior)
    PATHLOOK	ver qu‚ (no) se est  almacenando en cach‚

* eliminado DT_BIGDOS, a¤adido DT_FAT12 e intercambiadas las posiciones de
  DT_FAT16/32 (DT_FAT?? es el n£mero de nibbles por entrada - optimizaci¢n de
  tama¤o); DT_DrvPar ahora solo se usa por CD (distingue Rock-Ridge de Joliet)
* corregidos algunos comentarios, c¢digo comentado eliminado
* instalar la entrada del nombre corto directamente (PF_Install_Short)
* optimizaciones de tama¤o, incluyendo:
  * la mayor parte del c¢digo de CD ahora se sobrescribe si no se requiere el
    soporte de CD
  * usar solo las funciones DPB/disco extendidas o est ndar
  * asumir que los n£meros de alias (tanto en DOSLFN como en SHSUCDX) son < 2560
  * parchear el c¢digo directamente en lugar de usar TEST [ctrl]
* leer 4 sectores FAT a la vez (b£fer de 2K)
* nueva cach‚ de fastopen (almacena en cach‚ 16 directorios y 16 nombres, en
  todos los discos)
* obtener/establecer atributo usa la entrada de directorio (m s r pido que
  usando DOS)
* los CDs siempre usan el sector 16 como inicio del volumen (esto es todo lo
  que hace SHSUCDX)
- corregido fallo de printf con n£meros con signo (se usaba CX, no ECX)
+ opci¢n p para mostrar datos de an lisis de rendimiento
+ opci¢n pr para restablecer datos de an lisis de rendimiento
+ opci¢n pc para calibrar el tiempo del analizador (recompilar con este valor)
* intentar usar un archivo como directorio fallar  inmediatamente (esto
  reemplaza la comprobaci¢n de atributo de directorio FindFirst)
* mont¢n modificado para usar asignaciones del tama¤o de un octeto, extendiendo
  la asignaci¢n si sobran 1, 2 o 3 octetos; eliminada la estrategia de
  asignaci¢n
* Alloc_Cluster crea su propia entrada de directorio

Versi¢n 0.33a (07/04)
- obtener el atributo del directorio ra¡z

Versi¢n 0.33b (07/04)
- eliminar todos los comodines, no solo el primero

Versi¢n 0.34 (11/04) (MSCDEX)
- correcci¢n de -r
- eliminado el l¡mite num‚rico de 2560
* CD: la etiqueta de volumen se encontrar  independientemente de la ruta dada
* CD: eliminado el c¢digo de SHSUCDX
* CD: eliminado el soporte Rock Ridge

Versi¢n 0.40 (11/04) (SHSUCDX v3)
* CD: ­esta versi¢n requiere SHSUCDX v3 para el soporte Joliet!
* CD: soporte mejorado de Rock Ridge (ya no requiere el ID de sistema "LINUX")
+ CD: a¤adido soporte de nombre largo ISO
* CD: -r ahora funciona por omisi¢n igual que SHSUCDX

Versi¢n 0.40a (03/05)
- corregido problema de cach‚ con las funciones de atributos (Fallo 1818 de
  FreeDOS)
- corregidos problemas de compilaci¢n con TASM 5.3
- corregido mkdir/rename/del en FAT inmediatamente despu‚s de acceso a CD
+ a¤adido soporte Joliet para SHSUCDX 3.01
- L: corregido problema con dir en Windows

Versi¢n 0.40b (10/05)
- corregido el fallo de cach‚ que causaba cuelgues cuando hab¡a poco mont¢n
  (problema particular con MPXPLAY)
- corregidos problemas de CD (instalaci¢n desde CD, ciertos programas no
  funcionaban)

Versi¢n 0.40c (11/05)
- corregido el establecimiento de la hora de creaci¢n cuando se creaba el
  archivo
- corregidos m s problemas de CD (longitudes de directorio codificadas
  incorrectamente, encontrar ruta, opci¢n /c- cuando CD estaba disponible)
- corregido el fallo de no encontrar archivos debido a los NULs almacenados en
  la entrada del directorio
* CD: reconocimiento mejorado de nombres largos ISO

Versi¢n 0.40d (09/2006)
* cambiar la apertura para lectura/escritura y solo escritura a £nicamente
  lectura/escritura (soluci¢n temporal para la incompatibilidad entre
  Win9X/DOS - DOS Navigator)
* cambiar el atributo al abrir un archivo existente como solo lectura
  (soluci¢n temporal para la incompatibilidad con DR-DOS 7.03 - los
  archivos de sistema no se abr¡an, lo que imped¡a las tuber¡as/pipes)
- preservar IF al filtrar LFNs de las funciones de b£squeda SFN
* encadenar el manejador Int21 en funciones desconocidas (funciones de
  64 bits de DR-DOS de Udo)
+ soporte para FAT+ (establecer el dword alto del tama¤o del archivo en
  los datos de b£squeda)

Versi¢n 0.40e (10/2006)
- correcci¢n de la incompatibilidad con FreeDOS generada por la
  incompatibilidad con DR-DOS.

Versi¢n 0.41 (12/2011)
- invalidar el sector despu‚s de obtener un nombre corto (corrige
  DIR despu‚s de COPY)
- correcci¢n al crear un nombre corto (cortes¡a de Japheth)
- evitar convertir a may£sculas los bytes finales (trail bytes) de
  DBCS
* dejar de usar el cach‚ de FASTOPEN (pero puede recompilarse con ‚l)
* tama¤o del archivo .com reducido (mediante una mejor definici¢n de
  las llamadas est ndar)
+ uso de XMS para almacenar las p ginas de c¢digos DBCS
+ a¤adido cp860uni.tbl (portugu‚s)

Versi¢n 0.41a (1/2012)
- la l¡nea de comandos se corromp¡a por variables (imped¡a que -z
  funcionara)

Versi¢n 0.41b (2/2012)
- correcci¢n de -z al cargar un archivo DBCS en XMS estando residente
+ a¤adido -f- para deshabilitar el modo de reserva (fallback), usando
  el manejador LFN anterior en su lugar (permite que herramientas como
  NTFSDOS o Paragon IFS usen sus propias funciones LFN)

Versi¢n 0.41c (11/2012)
- establecer expl¡citamente el acarreo (carry) asumiendo fallo antes
  de encadenar (soluci¢n para djgpp 2.04 en versiones anteriores
  a DOS7)

Versi¢n 0.41d (12/2021)
+ traducciones al franc‚s y turco (cortes¡a de Berki Yenign)
* Suiza ya no tiene el alem n como idioma predeterminado
- correcci¢n al leer la variable TZ sin un desplazamiento (offset)
+ documentaci¢n en espa¤ol (cortes¡a de parodper de FreeDOS)

Versi¢n 0.41e (3/2022)
- correcci¢n al extender un directorio bajo ciertas circunstancias

Versi¢n 0.41f (4/2022)
- m s correcciones al extender directorios
* a¤adir una comprobaci¢n de versi¢n b sica (si es diferente, fingir que no
  est  instalado)

Versi¢n 0.42 (8/2025)
- comprobar siempre si hay un dispositivo (ej. "con.*" sigue siendo un
  dispositivo)
- eliminar las referencias restantes a las tablas Joliet
- reemplazar la instrucci¢n no documentada SETALC (no soportada en algunos
   clones)
- restablecer la unidad antes de crear LFN (corrige un problema con FDNPKG en
  FreeDOS)
* ajustes en algunos mensajes
* traducciones al alem n (cortes¡a de Wilhelm Spiegl) y turco (bitigchi de
  fd-nls) actualizadas
+ eliminado -l, se usa %LANG%; los mensajes se leen desde archivos en un
  directorio NLS
* asumir arquitectura 386 (las instrucciones 386 se usaban antes de la prueba,
  nadie se quej¢)

Versi¢n 0.42a (10/2026)
- correcci¢n para DOS antiguo en 486 (­reportado y corregido por
  Lauren, gracias!)
- correcci¢n en la detecci¢n de FAT32 en el DOS 7 original (reportado
  por Artyom)


Problemas que quedan sin arreglar:
- No se ajusta/actualiza la fecha de £ltima modificaci¢n
- No se ajustan/eliminan los DirEnts de nombres largos al llamar a las
  funciones FCB
- Problema de VCACHE.386 que obliga a desactivar el acceso de 32 bits a archivos
  de Windows 3.11
- Problema en orden de carga de controladores de nombres largos: NTFSDOS debe
  cargarse despu‚s de DOSLFN
- No se comprueban las versiones, problemas al mezclar distintas versiones de
  DOSLFN
- TRUENAME no gestiona bien los discos
- Crear un nombre *muy largo* en un sector de 512 octetos. Crear un segundo
  sector fallar , otros tama¤os de sector tienen espacio suficiente.
- Cambiar un disco, formatearlo o cambiar el tama¤o de un disco en memoria no
  invalida la cach‚ para ese disco . Esto hace que DOSLFN piense que un
  archivo/carpeta todav¡a existe. Por ahora llene la cach‚ con entradas de otro
  disco, p.e. attrib /s.
- Desactivar DOSLFN puede hacer que la carpeta actual del CD se vuelva inv lida,
  como si se hubiera introducido otro disco.
- Los comandos internos de NIOS no funcionan. Este es un problema con NIOS y
  MS-DOS 7. Por ahora a¤ada un disco inv lido en PATH.
- A¤adir una barra inversa despu‚s del nombre de un archivo no encontrar  ese
  archivo, pero s¡ si es una carpeta.
- NTFSDOS a veces devuelve el tiempo incorrecto. Este es un problema de NTFSDOS.


correo-e:  jadoxa@yahoo.com.au
Descargar: http://adoxa.altervista.org/doslfn/
	   https://www-user.tu-chemnitz.de/~heha/hsn/dos/doslfn/
