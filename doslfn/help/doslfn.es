Ÿ Para el texto en alem n consulte DOSLFN.DE (para v0.32o).
Ÿ Para el texto en ingl‚s consulte DOSLFN.TXT.
Ÿ Para el registro de cambios baje al final del archivo.

+---------------------------------------------------------------+
| DOSLFN - El controlador en modo real para Nombres de Archivo	|
|	   Largos que faltaba en DOS				|
|	   ­Compatible con Unicode y DBCS!			|
+---------------------------------------------------------------+

INTRODUCCIàN

En 1996 yo ya pensaba que era necesario un controlador NAL (LFN en ingl‚s, de
®Long File Names¯), pero, como algo as¡ le ser¡a util a todo el mundo, decid¡
esperar a que otro lo crease. De ese modo estuve esperando, y el a¤o pasado
encontr‚ algunas herramientas, como LFNDOS.EXE; de 1998, no tan viejos como yo
esperaba.

Pero este programa estaba dise¤ado para se compatible con el COMMAND.COM de
Win9x, y no funcionaba con mi gestor de archivos favorito, Volkov Commander
(No deja entrar en carpetas con nombres largos). Adem s la parte residente era
TAN LENTA y consum¡a 64 KB de memoria, ­demasiado! Tampoco puede crear archivos
ni carpetas con letras en min£scula (¨­Por qu‚!?), no hay manera de evitar las
virgudillas (tildes en ingl‚s, seg£n la clave de registro NameNumericTail=0) y
funciona mal con las di‚resis.


MI INTENTO:

Por supuesto un programa de este estilo tiene que estar escrito en ensamblador.
En el buen Turbo Assembler us‚ el infrecuentemente usado modo IDEAL para activar
los componentes de estructuras locales y otras mejoras, entre ellas las que
otorgan mayor velocidad. Yo ten¡a como objetivo no volver a repetir los errores
que encontr‚ en otros programas como el susodicho. Y tambi‚n se combatible con
nombres largos en CDs (Joilet), algo muy £til para recuperar copias de seguridad
en DOS normal. Ya exist¡a una herramienta adecuada para esto, las herramientas
LFN de ODI, pero no eran controladores.

Personalmente tambi‚n me era importante que funcionase con Volkov Commander,
para mi el mejor clon de Norton Commander. Permite nombres largos, es m s
peque¤o y r pido que el original y tiene muchas capacidades. (Aunque tambi‚n
tiene sus defectos, como la falta de atajos de teclado para ordenar carpetas o
la uni¢n entre ordenadores)

Ahora que estoy programando debo decir que, a pesar de lo que yo cre¡a, no es
tan facil escribir un controlador a prueba de balas y con todas las
funcionalidades que quiero. No me extra¤a no haber encontrado alg£n controlador
antes, con lo dif¡ciles que son de programar.

Al principio uno de mis objetivos era reducir el gasto de memoria a un m¡nimo,
sobre 4KB. Ahora me encuentro bastante lejos de ese objetivo, y me conformo con
menos de 12KB. Bastante bien, comparado con 64K.

Otro problema fue entender la sem ntica usada por Windows 9x para los nombres
largos. Siendole ®cd ..¯ familiar a todo el mundo, ®cd ...¯ es algo nuevo
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

~ (uso de la virgudilla): Por omisi¢n Win9x le a¤ade un ®~1¯ al final de
  cualquier nombre largo, ®~2¯ si ya existe otro, etc. Por lo tanto DOS normal
  no puede usar esos nombres. Esto parece ser culpa de problemas dentro de los
  programas que prob‚ (o eso creo, eran viejos programas de Microsoft).

  Esto no le es c¢modo ni a los usuarios de DOS ni a los de Windows. DOS normal
  es capaz de ®manejar¯ nombres largos trunc ndolos autom ticamente al formato
  8.3. El mismo nobre largo puede usarse para acceder a un archivo, excepto si
  tiene espacios o varios puntos, haya o no compatibilidad con NAL.
  Los usuarios pueden mantener la compatibilidad con algunos programas usen
  Win9x|DOSLFN o no.

  Puede cambiar el comportamiento de las virgudillas en Win9x a¤adiendo esta
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
  virgudilla de ®ARCHIV~1¯ solamente cambiando el nombre de
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
  de conversi¢n necesaria es necesario tener una en DOSLFN. En en estos momentos
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
  que se puede especificar el tama¤o m ximo de la ruta extra larga, a£nque DOS
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
  zona horaria. Vease la siguiente opci¢n.

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
Joilet e ISO, ­pero resulta que no hay puentes seguros (WinOnCD integra una
Tabla Enlazada de ese tipo, pero a pesar de lo c¢modo que ser¡a no est 
normalizado)! Windows 9x y NT ®inventaron¯ nuevos nombres cortos y no usan la
parte ISO de los CD con Joilet. Adem s, los dos sistemas funcionan de formas
diferentes. Si intentas acceder a un disco con nombres largos desde un programa
DOS viejo ver s tres nombres cortos diferentes dependiendo si usas DOS, Windows
9x o Windows NT. Las herramientas de nombres largos de ODI no usan MSCDEX
(excepto para leer sectores), por lo que no sufre de este problema. El
controlador deber  convertir los nombres largos en cortos, mientras que MSCDEX
se encarga de los cortos.

Versiones anteriores de DOSLFN cargaban un archivo que conten¡a la conversi¢n
entre el nombre en Joliet y en ISO. Esta versi¢n ya no es compatible con MSCDEX,
ahora usa SHSUCDX v3; que usa el sistema Joilet junto con otro m‚todo para
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


NOTAS PARA LOS USUARIOS DE DBCS (chin‚s, japon‚s, coreano; ergo CJK):

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
programa es que detecta automaticamente los famosos caracteres para dibujar
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

Version 0.30 (01/01)
  Initial version

Version 0.31 (04/01)
+ better support for Windows NT (now useless)
+ timeout solution for keeping data for removable media
+ Automatically locking volumes on DOS7 before Write access
* twiddeling with PKZIP 2.50 support - no final solution
* ISR terminates with IRET instead of RETF 2, for work with single-stepping
  debuggers

Version 0.32 (09/01)
- works with internal devices like NUL,CON,LPT...
* source code has option for setting InDOS flag
+ variable heap size supported; memory consumption of DOSLFN is up to user
+ built-in PRINTF-alike function (transient code part only)
* changed output style for "Status" action
+ four code translation tables included with ZIP package
- A little-bit deflamed readme file

Version 0.32a (10/01)
- erraneous root directory of some FAT32 drives
  (this bug was constantly reported but doesn't occur at me until now)
- misbehaviour when DOSLFN started from FAT32 drive
  (this bug was programmed in at Version 0.32)
+ all available code translation tables included with ZIP package
+ MK_TABLE.C enhanced (was made at 0.32) and included
* Version numbering with "a" indicates that there is another version 0.33
  currently in development. This is more a bugfix release.

Version 0.32b (10/01)
- invalid AX on INT21/4E&4F, reported by claude.caillet@free.fr
  (Behaviour was not documented in Ralf Brown list 03/99)
- some english text missing in DOSLFN.TXT (time zone, test conditions)
  reported by Wu Yongwei <adah@sh163.net>
- CP850UNI.TBL was wrong, copied to CP858UNI.TBL (this was one containing the
  Euro sign, CP850 does not contain Euro. (by <ldzip@ldzip.freeservers.com>)
+ MKLINK is added, although output link table file is useless yet

Version 0.32c (11/01)
- in some occations, *. doesn't work (e.g. failure on "copy *. tmp")
- FindFirst of character devices does return error but should not
  (failure on "copy con xx"), both reported by wengierwu@sohu.com
* reduced default heap size, CD sectors are not yet inside
* size for internal Link Table expanded to 32 bits

Version 0.32d (06/02)
- complete failure on SUBSTed drives modified to no-lfn-support
- right-align of numeric tail inserting underlines was erraneous (caillet)
* MKLINK modified to check validity of CeQuadrat link table
- MKLINK can now handle multi-session and EasyCdCreator disks

Version 0.32e (06/02)
* re-arranged source, more english in declaration area
+ use of InDOS flag (user-presettable)
- VolumeStart delivered by MSCDEX was wrong, IOCTL-based routine inserted
* removed "checksum linkage" and "LoSA" switch, "LoSA" will be moved into VxD
- LFN GetFAttr of root dir on a CDROM
* changed default settings (tilde usage set to ON)
+ DOSLFN can now load MKLINK-generated files (i.e. support all Joliet CDROMs)
+ LastError report feature
- minor bugfix in MKLINK (InSTab comparred LowWord instead of LongInt)
* (known) root directory link included in *.JLT, MKLINK changed again
* MKLINK changed internally, using an object, added "tree order check"

Version 0.32fà (09/02)
- return value CX at LFN_FindFirst/FindNext
* internal call of Extended Open/Create(6C) instead of Creat(3C)
- recognize bootable CDs too (MKLINK not yet)
* preparing of tunnel effect
Version 0.32fá (10/02)
- extended open/create (bug since 0.32fà)
- LFN_DirEnt remove for lfn_rmdir (bug was always present)
* no more recursive Int21 calls (except for .JLT access)
* no recursion to sfn_unlink for lfn_unlink (faster)
+ delete with wildcards (not tested; not yet for FALLBACK mode)
Version 0.32fâ (11/02)
- interpreting volume label as path component
Version 0.32fã (12/02)
- most (hopefully all) EDIT.COM bugs removed
- ugly write-to-wrong-segment removed (introduced in version 0.32e)
Version 0.32fä (12/02)
+ Delete with wildcards now implemented, at least for FAT drives
Version 0.32f (12/02) - last "f" version
- creating already existing directory returns "file not found" [wengier]
- rename command sometimes forget or destroy another LFN (two bugs)

Version 0.32g (12/02)
- VC Alt+F7 bug (trailing backslash on lfn_name call were stripped)
- VC recursive delete and PKZIP recursive create bug (FastOpenCache bug)
* development of Version 0.33 stopped

Version 0.32h (12/02)
- Access SFN with spaces (surprisingly, this fix reduces code size)
- Minor fixes in MKLINK: verbosity switch, table arrangement
+ MKLINK creates a link table if CeQuadrat LT is not at first session
+ MKLINK got a built-in code page 437 (for verbose output)
- root directory of CDROM shows . and .. entries
- "cd" command with trailing backslash was disabled by VC Alt+F7 bugfix

Version 0.32i (12/02)
- crash starting DOSLFN with CDROM as current drive
- incorrrect handling and uselessness of /p switch
- taking wrong directory for auto-loading Unicode table

Version 0.32j (12/02 - Xmas)
+ wrote LFNXLAT.386 - a protected mode API for Windows and its DOS boxes
+ Int2F interface for loading that VxD (Win3) or disabling itself (Win95+)
+ DOS and Windows version checking, refusing while DOS<4 or Win9x is running
+ automatic codepage change notification over Int2F (not yet tested)
+ LastError report feature now functional with five messages
+ automatic heap size calculation based on largest .JLT file
+ functional /c switch
+ shrinked memory consumption in FAT-ONLY mode (ie. no CDROM support)
  PLEASE INCLUDE /c+ SWITCH IF YOU LOAD DOSLFN BEFORE MSCDEX AND WANT JOLIET
- loading CeQuadrat LT from CDROM if multi-session
- at least three bugs around directory enlargement
- you could create a file name containing wildcards in its long name
+ full support for SUBSTed drives
- Long ISO names crash DOSLFN - now simply truncated to 12 characters
- renaming fails when changing case only
* setjmp/longjmp or Catch/Throw alike error handling simplifies source
+ tunnel effect (preserves long name for old editors etc.)
- cannot create file/directory with same name as volume label
- incompatible acception of trailing backslash tends to failure of PKUNZIP
+ functional /t switch - now all switches are functional
- bug in Joliet CDROM listing on root directory (files become directories)
+ DBCS support prepared

Version 0.32k (01/03)
- "dir makefile" doesn't show the makefile
  (this small bug required rewriting of large amount of DOSLFN)
* Without any .TBL, DOSLFN now defaults to ISO-Latin1 instead of CP437.
  This is due to internal changes for DBCS support.
  WESTERN-EUROPEAN USERS SHOULD NOT DELETE CP437UNI.TBL FILE!
- can't handle files that have 0xE5 as first byte (DOS TRUENAME "bug" @0.32j)
+ DBCS .TBL file format now declared, see TBL.TXT
+ Three new code page tables added: Japanese (Shift-JIS),
  Simplified Chinese (GB2312, subset of GBK), Traditional Chinese (BIG5)
+ Added full DBCS support, but impossible to test for me
  CHINESE OR JAPANESE USERS must include /m18000 or similar to give more heap
  (This switch will be automated in a later version.)
- after accessing devices, data corruption may occur
- when working with different versions of DOSLFN, wrong strings may occur
- /z switch doesn't work  since 0.32j

Version 0.32l (01/03)
- DBCS support doesn't work at all (multiple bugs), checked with TechWay SCS
- erraneous messages when loading DBCS without CDROM support
- partially overwritten DBCS table
* more strict "critical initialization code" section
+ automatic heap size calculation extended to include .TBL file
  CJK users need no switch anymore

Version 0.32m (01/03)
- query help with /? or -h crashes DOS  since 0.32l  (oops!)
- erraneous return value for DEL command  since 0.32fá
* slightly improved performance for creating short-name, all-uppercase files
- CP950UNI.TBL was in wrong (outdated) format
+ fourth DBCS Unicode table, CP949UNI (Korean) added, but I need feedback!

Version 0.32n (01/03)
+ fifth CP936UNI.GBK is a Unicode table for full-range Simplified Chinese
- fails to auto-load unicode table on CHCP command
- command line overwrite error (couldn't enter longer paths),
  variable area re-arranged completely
+ handling UNC names as FallBack mode (not throrougly tested)
- truename error on SUBSTed drives
- file/directory creation error in FallBack mode
+ checking for ";?" (?=1..9) at end of ISO/Joliet file names rather than
  strip two characters, since NERO can generate such non-ISO CDROMs
* VCACHE.386 problem detected, no fix except not using 32bit file access
+ simple heap walker detects size and free areas
+ FMLFN.DRV, a very beta Long Filename provider for Windows File Manager
+ DOSLFN should be available on SimTel (www.simtel.net)
+ MKLINK has now Unicode and DBCS support too (for its screen output)
- multiple links in .JLT file generated by MKLINK
- directory sizes not modulo 2048 can crash MKLINK (no ISO standard)

Version 0.32o (05/03)
- option /? crash system once again
+ Russian text strings available but not yet implemented
 Following changes and bugfixes are inspired by jadoxa@yahoo.com.au but
 he has much more done:
* minor code optimizations
- setting ReadOnly attribute when creating SFN file with Tunnel effect
* Sector access goes through (undocumented) SmartDrive cache, improves
  performance like shown when copying some files from C:
  without DOSLFN	25 s copy to A:		7 s delete from A:
  with DOSLFN 0.32n	78 s copy to A:		12 s delete from A:
  with DOSLFN 0.32o	43 s copy to A:		7 s delete from A:
* MKLINK can now handle directories larger than 64KB (rare, not tested)
* MKLINK.PAS can compile to a DPMI version for more memory usage (tested)

Following versions are all by Jason Hood:

Version 0.32o, first jh release (10/03)
* various size optimisations;
* modified generation of CD short names, SHSUCDX 2.0 tilde generation;
+ added options to specify the maximum size of paths (/m[sln]);
- keep the creation time (LFN functions only);
- recognise case-only renames;
- correctly clear carry for the attribute functions;
+ primitive support for Linux Rock-Ridge CDs;
* only load the link table when reading a new CD (as determined by the VSN);
- remove trailing spaces from incorrectly coded Joliet volume labels;
- don't write the buffer for LFN truename (Int21/AX=7160/CL=2) if the file
  doesn't exist;
- allow writable devices when current drive is a CD;
* modified the Joliet Link Table (.JLT) file format (filename uses the Volume
  Serial Number instead of the label; TYPE will show it);
- MKLINK: better mapping of empty directories;
- MKLINK: potential problem with Joliet volume labels corrected;
+ MKLINK: option to "manually" create the links;
- CP437UNI.TBL: fixed the translation of the "micro" symbol (æ).

Version 0.32o, second jh release (10/03)
- set the error code when using the wildcard unlink function;
- corrected a bug in finding files for the wildcard unlink.

Version 0.32o, third jh release (12/03, but dated 10/03)
- deleting on a CD will return error 5 (access denied), not 2 (file not found);
- CeQuadrat's link tables now work.

Version 0.33 (07/04)

User:

+ time conversion functions (NTFSDOS will now DIR correct times)
+ o switch to specify timezone or read TZ environment variable
* changed statistics counters to 7 digits (DWORDs)
+ status includes used heap size and timezone
+ read lowercase names generated by XP
- flush dirty sectors before changing drive
- fixed bug where "path not found" should be "file not found"
- prevent loading DBCS tables if not using DBCS
- better fallback mode support (network drives & non-Joliet CDs):
  - get/set modification time work; all others fail, not erroneously succeed
  - delete wildcards
  - Volume Information (71A0) returns unknown filesystem ("?")
- fixed bug with rename corrupting memory (crashed COMMAND.COM)
- return error 1 (invalid subfunction) for invalid attrib/truename/alias/time
- fail all attribute functions for devices
- free the previous link table if loading a Rock-Ridge CD
- fixed memory allocation size (filling the heap would crash DOS) & display
- SFN to create, but LFN to use (eg: SFN MkDir, LFN ChDir, DOSLFN would not
  see the new dir.); may still be problems with Create Temporary File (5A)
- Volume Information returns "FAT32" if appropriate
- remove the hidden file created when a directory couldn't be expanded
* prevent free space from having to be recalculated (DOSLFNMS)

Source:

+ conditional compiles:

    USEOLDDOS	enable LFN filtering on DOS find functions
    USEWINTIME	enable real Win <-> DOS filetime conversions
    USEXP	enable reading of XP lowercase 8.3 names
    USEFREESPC	enable setting of the DPB free cluster count
    PROFILE	enable profiling (requires & assumes Pentium)
    PROFILECACHE enable profiling of fastopen cache (also requires above)
    PATHLOOK	see what's (not) being cached

* removed DT_BIGDOS, added DT_FAT12 and swapped positions of DT_FAT16/32
  (DT_FAT?? is the number of nibbles per entry - size optimisation);
  DT_DrvPar is now only used by CD (distinguishes Rock-Ridge from Joliet)
* fixed some comments, removed some commented code
* install the shortname entry directly (PF_Install_Short)
* size optimisations, including:
  * most CD code is now overwritten if CD support is not required
  * use only extended or standard DPB/disk functions
  * assume alias numbers (both DOSLFN & SHSUCDX) are < 2560
  * patch code directly instead of TESTing [ctrl]
* read 4 FAT sectors at a time (2K buffer)
* new fastopen cache (caches 16 directories and 16 names, across all drives)
* get/set attribute uses directory entry (faster than using DOS)
* CDs always use sector 16 as volume start (this is all SHSUCDX does)
- fixed printf bug with signed numbers (was using CX, not ECX)
+ p switch to display profile data
+ pr switch to reset profile data
+ pc switch to calibrate profile timing (recompile with this value)
* trying to use a file as a directory will immediately fail (this replaces the
  FindFirst directory attribute test)
* modified heap to use byte-sized allocations, extending the allocation if
  there are 1, 2 or 3 bytes left over; removed allocation strategy
* Alloc_Cluster creates its own directory entry

Version 0.33a (07/04)
- get the attribute of the root directory

Version 0.33b (07/04)
- delete all wildcards, not just the first

Version 0.34 (11/04) (MSCDEX)
- fixed -r
- removed 2560 number limit
* CD: volume label will be found irrespective of given path
* CD: removed SHSUCDX code
* CD: removed Rock Ridge support

Version 0.40 (11/04) (SHSUCDX v3)
* CD: this version requires SHSUCDX v3 for Joliet support!
* CD: improved Rock Ridge support (no longer requires "LINUX" system ID)
+ CD: added long ISO name support
* CD: -r defaults to same as SHSUCDX

Version 0.40a (03/05)
- fixed cache problem with attribute functions (FreeDOS bug 1818)
- fixed compile problems with TASM 5.3
- fixed FAT mkdir/rename/del straight after CD access
+ added Joliet support for SHSUCDX 3.01
- L: fixed problem with dir on Windows

Version 0.40b (10/05)
- fixed cache causing crash when heap was low (particular problem with MPXPLAY)
- fixed CD problems (installing from CD, certain programs not working)

Version 0.40c (11/05)
- fixed setting creation time when file created
- fixed more CD problems (incorrectly coded directory lengths, finding path,
  /c- option when CD was available)
- fixed failing to find files due to NULs stored in the directory entry
* CD: improved recognition of long ISO names

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
Descargar: http://doslfn.adoxa.vze.com/
	   https://www-user.tu-chemnitz.de/~heha/hsn/dos/doslfn/
