# Language: Spanish
# File ending: ES
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

Informaci¢n de traducci¢n de idiomas para EDICT

Nota: la informaci¢n de las variables es de varios tipos y sigue un orden
espec¡fico que no se puede cambiar (por ahora). Los espacios en blanco
m£ltiples se comprimen autom ticamente en un solo espacio, a menos que est‚n
entre comillas. Para mostrar una comilla, esta debe estar entre comillas de
un tipo diferente. Finalmente, no se insertan espacios autom ticamente antes
o despu‚s de cualquier variable.

Su archivo de idioma traducido debe proporcionarse en formato UTF-8 junto con
una versi¢n de codepage de DOS para evitar posibles errores de conversi¢n.
Por ejemplo, los archivos turcos son EDICT.TR para la versi¢n de DOS y
EDICT.TR.UTF-8 para la versi¢n UTF-8.

Consulte https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes para obtener
m s informaci¢n sobre los c¢digos de idioma y de pa¡s.

Use uno de los archivos de traducci¢n existentes, como EDICT.EN, como punto de
partida para su traducci¢n. De esta manera, no faltar  ning£n texto necesario.

Variables:

    %_          Un solo car cter de espacio
    %%          Un solo s¡mbolo de porcentaje
    %r          Un CRLF (salto de l¡nea)

    %c          Inserta la variable de car cter £nico
    %s          Inserta la variable de cadena de texto
    %b          Inserta la variable de valor hexadecimal de byte
    %w          Inserta la variable de valor hexadecimal de palabra (no utilizada)
    %i          Inserta la variable de n£mero entero
    %I          Inserta la variable (entero + 1)


TITLE es el t¡tulo del programa.
COPYRIGHT es mi mensaje de derechos de autor.

LANGUAGE no est  en la traducci¢n predeterminada y probablemente deber¡a estar
en el idioma de la traducci¢n. Puede proporcionar algo como uno de estos:

LANGUAGE=Traducci¢n al espa¤ol por [Nombre]

HELP_* es el texto para la pantalla de ayuda. Cada entrada se muestra en su
propia l¡nea. La primera vez que se encuentra un elemento faltante, la salida
del texto de ayuda se detiene. Se admite hasta 0xff (255).

INVALID se usa cuando se proporciona un modificador de l¡nea de comandos no
reconocido.

BAD_INT se usa cuando ocurre un error al analizar un n£mero de la l¡nea de
comandos.
BAD_VAL se usa cuando un n£mero est  fuera de rango.

BErr_* son mensajes de error de la BIOS.
DErr_* son mensajes de error de DOS.

Con una peque¤a modificaci¢n, los textos de los mensajes de error de la BIOS
y de DOS en la versi¢n externa predeterminada en ingl‚s son una versi¢n
reducida de los disponibles en l¡nea en un excelente recurso de DOS y ASM en:

    http://stanislavs.org/helppc/idx_interrupt.html

Aunque es posible que los cambie por mensajes de error personalizados menos
mon¢tonos.

