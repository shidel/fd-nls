# Language: Spanish
# File ending: es
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

****************************************************************************
V8Power Tools
Copyright 2015-2024 Jerome Shidel
Lanzado bajo la GPL v2.0 License.
****************************************************************************

Poniendo la potencia de un motor de 8 cilindros bajo el cap¢ de los
archivos por lotes de DOS.

============================================================================

El proyecto V8Power Tools est  siendo dise¤ado en cooperaci¢n con
Jim Hall para el sistema operativo FreeDOS(TM) (http://www.freedos.org).
Su objetivo es expandir la funcionalidad de los scripts escritos usando
archivos por lotes y proporcionarles una interfaz de usuario con mejor
aspecto y mayor funcionalidad.

============================================================================

Compilando V8Power Tools

    Requisitos previos:

        Cpu 8086 o superior.
        Adaptador de video EGA o superior.
        FreeDOS(TM) 1.1 (http://www.freedos.org) o superior
        NASM para DOS versi¢n 2.16.01 (http://wwww.nasm.us) o m s reciente

    Compilaci¢n:

        Aseg£rese de que el directorio NASM est‚ en su ruta especificada.
        Descargue las £ltimas fuentes de http://github.com/LoopZ/V8Power
        Ejecute el script mkV8.bat.
        Todos los ejecutables se colocar n en el directorio BIN reci‚n
        creado.

    Para gente perezosa, como yo:

        Versiones precompiladas est n disponibles en
        http://up.lod.bz/V8Power.

============================================================================

Compatibilidad Probada de V8Power Tools

    FreeDOS 1.1+

Compatibilidad limitada de funciones avanzadas (sin soporte de lotes
"set /p"):

    MS-DOS 6.2 y 6.22
    PC-DOS 7.0, 7.01 y 2000
    DR-DOS 7.03
    DOSBox (la redirecci¢n de e/s o las consultas mediante stdout NO
        funcionar n usando el shell integrado de DOSBox. Sin embargo,
        funcionan bien en DOSBox cuando se usa un shell compatible
        como FreeCOM)
    Windows 3.11 Shell
    Windows 98 Shell y Command Line
    Windows XP SP3 Shell (excepto vcursor)

============================================================================

Uso de V8Power Tools

Aqu¡ hay informaci¢n b sica sobre todas las utilidades y c¢mo funcionan.

    Las opciones, valores y n£meros hexadecimales no distinguen
    may£sculas de min£sculas /f white es lo mismo que /F wHIte.

    Los n£meros hexadecimales pueden tener el prefijo 0x para evitar que
    sean tratados como base diez. (Ejemplo: 10 y 0x10)

    Los espacios son mayormente opcionales. /B7/f0 es lo mismo que
    /B 7 /F 0. Pero no / B7 / F0.

    Para usar una / o espacios en un valor, p¢ngalo entre comillas.
    Como "Jack and/or Jill".

    Use comillas m£ltiples para usar comillas. Como "Jack's house" o
    'Say "What?"'.

    A menos que se anule, la mayor¡a de las utilidades usan el atributo
    de texto en la ubicaci¢n actual del cursor.

============================================================================

Aqu¡ est  la tabla de colores utilizada para los interruptores /A, /F y /B:

    Decimal     Hex         Etiqueta (No distingue may£s./min£s.)

    0           0x00        Black
    1           0x01        Blue
    2           0x02        Green
    3           0x03        Cyan
    4           0x04        Red
    5           0x05        Magenta
    6           0x06        Brown
    7           0x07        Gray / Grey

    (Solo primer plano /f y /a)

    8           0x08        DarkGray / DarkGrey
    9           0x09        LightBlue
    10          0x0a        LightGreen
    11          0x0b        LightCyan
    12          0x0c        LightRed
    13          0x0d        LightMagenta
    14          0x0e        Yellow
    15          0x0f        White

La mayor¡a de las herramientas individuales que soportan el cambio de color
tambi‚n soportan cambiar la configuraci¢n de Blink/Intensity. Sin embargo,
la mayor¡a de las herramientas no lo mencionan.

    /BlinkOn    Habilitar el bit Blink/Intensity. (Comenzar parpadeo)
    /BlinkOff   Deshabilitar el bit Blink/Intensity. (Detener parpadeo)

============================================================================

La l¡nea de comandos de DOS (y archivos por lotes) est  limitada a unos
128 caracteres. Esto podr¡a dificultar que herramientas como vecho
impriman varias l¡neas a la vez. Sin embargo, muchas herramientas como
vecho, vstr, etc., admiten cargar recursos de texto desde un archivo con
el interruptor /T. Generalmente, el interruptor /T se usa para
proporcionar texto de "Traducci¢n" para un lote. Cuando se carga desde un
archivo, la utilidad V8Power Tools est  limitada a 10 kilobytes por l¡nea.
M s all  de eso, la utilidad ignorar  el texto restante en esa l¡nea.
10kb equivalen a 5 pantallas o m s de texto y es una exageraci¢n.
