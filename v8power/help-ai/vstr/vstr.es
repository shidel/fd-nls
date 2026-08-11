# Language: Spanish
# File ending: es
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vstr [options]

Utilidad simple de procesamiento de cadenas. Env¡a resultados a STDOUT.

    /N          No escribe un CRLF al terminar.
    /U          Filtro de Entrada: Convierte a may£sculas.
    /D          Filtro de Entrada: Convierte a min£sculas.
    /B          Filtro de Entrada: Ignora l¡neas en blanco.
    /I          Filtro de Entrada: Ignora la sangr¡a.
    /C code     Escribe un c¢digo de car cter ASCII.
    /R times    Repite la siguiente escritura times n£mero de veces.
                (1-65535)
    /L line     Devuelve solo esta line de la entrada est ndar. (0-65535)
                (Nota: vline /L TOTAL devolver  el n£mero total de l¡neas.)
                Adem s, agregar :n emitir  n cantidad de l¡neas.
    /S s1 s2    Busca y reemplaza todas las apariciones de s1 con s2.
    /F s1 s2    Establece delimitador a s1 y solo devuelve posici¢n de
                campo o rango s2.
    /A code s2  Devuelve la posici¢n de campo delimitado por code o rango
                s2. (tab=0x09)
    /P s1       Imprime el texto s1.
    /T file ID  Busca ID en file y lo procesa como opciones de l¡nea de
                comandos. Cualquier opci¢n adicional despu‚s de este
                modificador se usa para llenar variables %1-%9 en el texto.

    tba         (A£n en desarrollo, m s por anunciar)
