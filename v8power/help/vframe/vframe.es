# Language: Spanish
# File ending: es
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vframe [options]

Dibuja un marco tipo ventana y mueve el cursor a la posici¢n
interior superior izquierda.

[none]          Dibuja un marco que encierra toda la pantalla.
/A n            Establece el atributo de texto a n.
/B color        Establece el atributo de texto de fondo a color
                (o un valor).
/F color        Establece el atributo de texto principal a color
                (o un valor).
/X column       Columna de pantalla para iniciar el marco.
/Y row          Fila de pantalla para iniciar el marco.
/W width        Ancho total del marco.
/H height       Altura total del marco.
/C              Centra el marco horizontal y verticalmente.
/T file ID      Busca ID en file y procesa como opciones de
                l¡nea de comandos. Opciones adicionales que siguen
                a este par metro llenan las variables %1-%9.
/P n            Establece un car cter de relleno invisible n para
                textbox y optionbox.
style           Estilos de marco son Single, Double, SingleSides,
                DoubleSides y Hidden.
shadow          Agrega una sombra de estilo 3D.
textbox         Dibuja un marco estilo textbox con algo de
                relleno y m rgenes.
optionbox       Dibuja un optionbox oculto para elecciones
                dentro de un marco.
