# Language: Spanish
# File ending: ES
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

tee

Guarda una copia de la entrada (STDIN) en uno o m s archivos y la muestra.
Uso:

tee [opciones] [d:][ruta]archivo [[d:][ruta]archivo2] ...
Opciones:

/A   A¤adir a los archivos: A¤ade a los archivos de salida en lugar de
     sobrescribirlos.

/I   Ignorar interrupciones: ignora los intentos de interrupci¢n por parte
     de un usuario.

[d:][ruta]archivo [[d:][ruta]archivo2] ...   Especifica los archivos de salida.
Ejemplos:

echo "­Hola, mundo!" | tee hola.txt
Muestra "­Hola, mundo!" en la pantalla y lo guarda en hola.txt.

tee log.txt otro_log.txt < entrada.txt
Muestra el contenido de entrada.txt y lo guarda en log.txt y otro_log.txt.

catdoc carta.doc | tee /I carta.txt | wc
Guarda el contenido de carta.doc procesado por catdoc en carta.txt y lo pasa
a wc para contar las palabras.
No permite interrupciones por parte de un usuario.

Este archivo forma parte de la Documentaci¢n de Ayuda HTML de FreeDOS y est 
cubierto bajo los t‚rminos de la GNU FDL.

