# Language: Spanish
# File ending: es
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vtest [opciones]

Un probador de estado. Puede realizar varias comprobaciones que se pueden
reducir a TRUE o FALSE. El resultado se pasa como un errorlevel. Cuando
la respuesta es TRUE, se devuelve un cero. Si la respuesta es FALSE, se
devuelve un 1. El uso de una sintaxis incorrecta y otros errores similares
devolver n el c¢digo de salida 100.

Pruebas:

    val1 /eq val2    valores son iguales
    val1 /ne val2    valores no son iguales
    val1 /ge val2    val1 es mayor o igual a val2
    val1 /le val2    val1 es menor o igual a val2
    val1 /gt val2    val1 es mayor que val2
    val1 /lt val2    val1 es menor que val2
    string           string no es nulo
    /n string        string no es nulo
    /z string        string es nulo
    /v number        n£mero es v lido
    /f file          archivo existe
    /d dir           ruta existe
    /e file o dir    cualquier tipo de entrada de directorio

Operadores de expresi¢n:

    /c expression    Fuerza que un valor se trate como cadena y realiza
                     una comparaci¢n que distingue may£sculas.
    /i expression    Fuerza que un valor se trate como cadena y realiza
                     una comparaci¢n que no distingue may£sculas.
    exp1 /and exp2   Ambas expresiones deben ser TRUE.
    exp1 /or /exp2   Cualquier expresi¢n puede ser TRUE.
    /not expression  Invierte el resultado de una expresi¢n.

Otras opciones:

    /tf              Mostrar TRUE o FALSE al terminar.

Por defecto, la comparaci¢n de valores se basa en su tipo. Si ambos
valores son un n£mero (representado en decimal o hexadecimal), la
comparaci¢n se har  matem ticamente. De lo contrario, se realizar  una
comparaci¢n alfab‚tica que no distingue may£sculas de min£sculas. El uso
de las opciones /c o /i forzar  una comparaci¢n basada en texto,
independientemente del tipo de datos del valor. Un valor vac¡o no tiene
un valor num‚rico y forzar  que los dos elementos se comparen como cadenas.

Ejemplos b sicos:

Un archivo llamado TEST.TXT existe:          vtest /f TEST.TXT
Un archivo llamado TEST.TXT no existe:       vtest /not /f TEST.TXT
El archivo A.TXT o B.TXT existe:             vtest /f A.TXT /or /f B.TXT
Ni el archivo A.TXT ni B.TXT existen:        vtest /not /f A.TXT /and /not
                                             /f B.TXT
%1 es un n£mero:                             vtest /v %1
%1 es un n£mero del 1 al 10:                 vtest /v %1 /and 1 /le %1
                                             /le 10

Si bien las opciones /f, /d y /e prueban entradas de archivos o
directorios, pueden usar modificadores de expresi¢n como /not, /c e /i
y tambi‚n admiten comodines. Una vez que se ha comprobado la existencia
de una entrada coincidente en el sistema de archivos, se convierten en
el valor del primer elemento coincidente y pueden tratarse como valores.
Si no se encuentra ninguna coincidencia, el valor se vuelve nulo y muy
probablemente har  que una expresi¢n se eval£e como FALSE.

Al realizar una comparaci¢n de dos valores, si cada valor contiene un
n£mero v lido (decimal o hexadecimal), la comparaci¢n se realizar 
num‚ricamente. Si alguno de los valores no es un n£mero, se comparar 
alfab‚ticamente. Aunque es posible mezclar tipos de datos en una serie de
comparaciones, el resultado puede ser dif¡cil de predecir y generalmente
no se recomienda.

Las comillas NO se utilizan para cadenas con espacios. Los caracteres de
comillas siempre se tratan como caracteres de texto normales. El
analizador de la l¡nea de comandos solo separar  las cadenas cuando se
detecte un SWITCH_CHAR (normalmente /). Este es un ejemplo aceptable:

vtest a, b and c /lt d, e and f /and 6 /gt 5 /lt 7

El uso de comillas para simplemente envolver cadenas producir  resultados
err¢neos. El siguiente ejemplo SIEMPRE resultar  en TRUE
independientemente del valor de %1:

vtest /n "%1"

Adem s, si una cadena contiene el SWITCH_CHAR, la porci¢n que sigue al
SWITCH_CHAR se interpretar  como una opci¢n de programa a menos que se
escape insertando un SWITCH_CHAR adicional. Por ejemplo, "Y/N" se
interpretar¡a como la cadena "Y" y luego la opci¢n "/N". Para interpretar
ambos como una cadena ser¡a "Y//N". Por ejemplo:

vtest /n y//n
