# Language: Spanish
# File ending: es
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vask [opciones]

Solicitar entrada de texto.

    [ninguno]   Usar configuraciones detectadas para la entrada.
    [texto]     Texto editado preestablecido.
    /S          Proporciona una opci¢n de car cter simple. Como choice
                est ndar.
                Cuando se usa, vask solo devuelve el errorlevel de la
                elecci¢n.
    /A n        Establecer el atributo de texto a n.
    /B color    Establecer el atributo de fondo de texto a color (o un
                valor).
    /F color    Establecer el atributo de primer plano de texto a color
                (o un valor).
    /G          Introducir texto globalmente e ignorar todos los marcos.
    /L          Introducir texto localmente con respecto a los marcos.
                (PREDETERMINADO)
    /K n        Usar n en lugar del car cter de marco para detectar l¡mites.
    /C          Cuando se especifica y se presiona Control-C, saldr  con
                errorlevel 200 y devolver  el valor predeterminado.
    /W ancho    Sobrescribir el ancho predeterminado de la barra.
                (el predeterminado es desde el cursor hasta el final de
                la l¡nea)
    /T arch. ID Buscar ID en archivo y procesarlo como opciones de l¡nea
                de comandos.
                Cualquier opci¢n adicional despu‚s de este interruptor se
                usa para llenar las variables %1-%9 en la cadena de texto.
    /D segundos Retraso en segundos antes de que la solicitud expire y
                devuelva el valor predeterminado inicial. (devuelve
                errorlevel 1)

    tba         (A£n en desarrollo, m s por anunciar)
