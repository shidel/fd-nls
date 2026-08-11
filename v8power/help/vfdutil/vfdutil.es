# Language: Spanish
# File ending: es
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vfdutil [options]

Utilidad de archivos y directorios.

    [none]      No hace nada.
    /D file     Calcula y env¡a la letra de unidad de file a STDOUT.
    /P file     Calcula y env¡a la ruta de file a STDOUT.
    /C          Use antes de /D o /P para cambiar unidad o ruta sin
                salida de texto.
    /X          Use antes de /D o /P para devolver errorlevel 1-26
                de la letra de unidad.
    /F file     Calcula y env¡a el nombre completo del archivo a
                STDOUT.
    /B file     Calcula y env¡a el nombre del archivo con extensi¢n a
                STDOUT.
    /N file     Calcula y env¡a nombre del archivo sin extensi¢n a
                STDOUT.
    /E file     Calcula y env¡a la extensi¢n del archivo a STDOUT.
    /U template Calcula y env¡a nombre £nico de archivo/dir basado en
                template a STDOUT. La unidad y la ruta deben existir.
                Ejemplo: "vfdutil /u C:\TEMP\TEST????.$$$"
    /S filespec Busca en el PATH la filespec dada y env¡a todos los
                archivos coincidentes a STDOUT. El directorio actual
                no se busca. Si no se encuentra filespec en la ruta,
                sale con errorlevel 1.
    /T filespec Igual que /S, excepto que solo devuelve errorlevel.
    /M location Env¡a la cantidad de espacio libre en disco para
                location.
    /R required Use junto con /M para probar si la cantidad required
                de espacio est  disponible. Required se limita a
                65535. Pero puede anexarse con B, K, M, etc. Esto
                devolver  errorlevel 1 cuando no haya espacio
                suficiente.
    /A path     Prueba si existen archivos o directorios en un path,
                0=dir existe y no est  vac¡o, otros valores son
                c¢digos de error DOS de la prueba.

    tba         (A£n en desarrollo, se anunciar  m s adelante)
