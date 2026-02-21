FreeDOS APPEND. Permite que los programas abran archivos de cualquier carpeta
                como si estuvieran en el directorio actual, es, cp850/858
(C) 2004-2006 Eduardo Casino, bajo las condiciones de la GNU GPL, Versi¢n 2

Sintaxis:

  APPEND [[unidad:]ruta[;...]] [/X[:ON|:OFF]] [/PATH:ON|/PATH:OFF] [/E]
  APPEND ;

    [unidad:]ruta Unidad y directorio a anexar.
    /X[:ON]       Usar APPEND en las b£squedas y en la ejecuci¢n de comandos.
    /X:OFF        Usar APPEND solo al abrir ficheros.
                  Se usa /X:OFF por omisi¢n.
    /PATH:ON      Al recibir peticiones de archivos que incluyan una ruta se
                  anexar n las carpetas indicadas. Opci¢n por omisi¢n.
    /PATH:OFF     Desactiva /PATH:ON.
    /E            Se guarda la lista de carpetas anexadas en la variable APPEND
                  del entorno. /E solo se puede usar la primera vez que se
                  use APPEND. No se pueden incluir directorios y /E a la vez.

  APPEND ; borra la lista de directorios anexados.
  APPEND sin par metros muestra los directorios anexados

Aviso:                                                               

  APPEND se transforma en un comando interno tras su primera ejecuci¢n
  Sus sucesivas ejecuciones deber n prescindir de la ruta y extensi¢n
  del ejecutable.
