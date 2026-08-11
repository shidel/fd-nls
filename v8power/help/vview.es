# Language: Spanish
# File ending: es
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vview [options] file

Visor de archivos. Soporta archivos de hasta 2GB usando finales de
l¡nea CRLF, CR o LF. A diferencia de la mayor¡a de herramientas V8Power,
esta utilidad usa la pantalla completa por defecto. Para usar VVIEW en
un cuadro VFRAME, deber  especificar el modo de visualizaci¢n local.

/A n            Establece el atributo de texto a n.
/B color        Establece el atributo de texto de fondo a color.
/F color        Establece el atributo de texto de primer plano a color.
/G              Usa la pantalla completa. (Por defecto)
/L              Pantalla local dentro de VFRAME. Detecta su entorno
                y usa solo una porci¢n de la pantalla. Probablemente
                una caja, l¡nea o similar.
/K n            Usa n en lugar de caracteres de marco para l¡mites.

Mientras ve un archivo, puede usar las teclas Up, Down, Left, Right,
PgUp, PgDn, Home y End para navegar. Para dejar de ver un archivo,
presione Escape. Si se especific¢ m s de un archivo, se ver n uno por
uno.

tba             (A£n en desarrollo, se anunciar  m s adelante)
