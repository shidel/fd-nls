# Language: Spanish
# File ending: es
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vcls [options]

Borra la pantalla,  rea o fila (l¡nea).

    [none]      Borra la pantalla con el atributo de texto actual.
    n           Establece el atributo de texto a n.
    /A n        Establece el atributo de texto a n.
    /B color    Establece el atributo de texto de fondo a color (o
                un valor).
    /F color    Establece el atributo de texto frontal a color (o
                un valor).
    /G          Borrado Global de Pantalla. (Por defecto)
    /L          Borrado Local de Pantalla. Detecta su entorno y solo
                borra eso. Probablemente una caja o l¡nea o algo.
                Realmente no necesitas esta opci¢n. Porque tal vez
                simplemente puedas redibujar la caja.
    /K n        Usa n en lugar de caracteres de marco para detectar
                l¡mites.
    TEXT        Borra solo el texto. Deja todos los colores intactos
                e ignora sus atributos de color.
    EOL         Borra solo desde el cursor hasta el final de la
                l¡nea.
    /C code     Borra rellenando con un c¢digo de car cter ASCII.
    /X column   Columna absoluta de la pantalla para iniciar el
                borrado.
    /Y row      Fila absoluta de la pantalla para iniciar el
                borrado.
    /W width    Ancho total del  rea a borrar.
    /H height   Altura total del  rea a borrar.
