# Language: Spanish
# File ending: es
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vmath [options]

Utilidad matem tica simple. NO es una calculadora y la precedencia es
estrictamente de izquierda a derecha (puede que cambie eso). Soporta
matem tica de enteros de 64 bits en un 8086 y sin necesidad de un
coprocesador. Principalmente, es £til para bucles, determinar
desplazamientos de pantalla, etc.

+, ADD          Suma el siguiente n£mero a la suma.
-, SUB          Resta el siguiente n£mero a la suma.
*, MUL          Multiplica la suma por el siguiente n£mero.
/, DIV          Divide la suma por el siguiente n£mero.
\, MOD          Divide la suma por el siguiente n£mero y establece la
                suma al resto.

AND             AND l¢gico.
OR              OR l¢gico.
XOR             XOR l¢gico.
SHR             Desplazamiento de bits a la derecha.
SHL             Desplazamiento de bits a la izquierda.

/H o /B         Ajusta la salida a hexadecimal o binario. Aunque los
                c lculos se realizan usando matem tica de 64 bits, al
                generar salida en estos formatos los resultados se
                acortan al menor tama¤o de bit para su valor. Por
                ejemplo, n£meros de 64, 32, 16 u 8 bits seg£n sea
                necesario.
