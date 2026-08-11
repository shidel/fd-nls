# Language: Spanish
# File ending: es
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vecho [options] [text]

Muestra texto en la pantalla.

    [none]      Realiza un Retorno de Carro y Salto de L¡nea en la
                pantalla.
    text        Escribe texto en la pantalla.
    /A n        Establece el atributo de texto a n.
    /B color    Establece el atributo de texto de fondo a color (o un
                valor).
    /F color    Establece el atributo de texto frontal a color (o un
                valor).
    /BlinkOn    Habilita el bit de Parpadeo/Intensidad. (Iniciar
                Parpadeo)
    /BlinkOff   Deshabilita el bit de Parpadeo/Intensidad. (Detener
                Parpadeo)
    /N          No escribe un CRLF al terminar.
    /P          Realiza un CRLF ahora.
    /S +        Inserta un espacio entre los par metros. (POR DEFECTO)
    /S -        No a¤ade un espacio entre m£ltiples par metros.
    /C code     Escribe un c¢digo de car cter ASCII.
    /R times    Repite la siguiente escritura times veces. (1-65535)
    /I          Escribe texto que puede estar esperando del dispositivo
                STDIN.
    /G          Escribe texto globalmente e ignora todos los marcos.
    /L          Escribe texto localmente respecto a los marcos. (POR
                DEFECTO)
    /K n        Usa n en lugar del car cter de marco para detectar los
                l¡mites.
    /X code     Borra el resto de la l¡nea usando c¢digo ASCII, pero no
                mueve el cursor.
    /E          Lo mismo que usar "/X 0x20" o "/X32".
    /T file ID  Busca ID en file y lo procesa como opciones de l¡nea de
                comandos. Las opciones adicionales tras este par metro
                rellenan las variables %1-%9 en la cadena de texto.

    tba         (A£n en desarrollo, m s por anunciar)
