NOMBRE

   CHOICE - Espera a que el usuario escoja una tecla de entre una lista
    de opciones

SINOPSIS

   CHOICE [/B] [/C[:]opciones] [/N] [/S] [/T[:]c,nn] [texto]

OPCIONES

 /B
    Hace pitidos al preguntar.

 /C[:]opciones
    Indica las teclas entre las que escojer. Cuando se muestre las
    teclas estar n separadas por comas y rodeadas por corchetes ( [] )
    seguidos del signo de interrogaci¢n. Si no se incluye la opci¢n /C
    se usar  sn por omisi¢n. Los dos puntos (:) son opcionales.
 /N
    No mostrar las teclas posibles. S¡ se muestra el texto previo a las
    teclas. Con esta opci¢n las teclas indicadas a£n son v lidas.

 /S
    Diferenciar entre may£sculas y min£sculas. Si no se especifica
    CHOICE aceptar  tanto las teclas may£sculas como las min£sculas.

 /T[:]c,nn
    Hace que CHOICE espera los segundos indicados antes de escojer la
    opci¢n por omisi¢n. La opci¢n /T acepta los siguientes par metros:

       c   Especifica  la  opci¢n  por  omisi¢n  tras  nn segundos. El
           caracter debe estar entre los especificados en la opci¢n /C

       nn  Indica el  n£mero de  segundos a  esperar.  Acepta  valores
           entre 0 y 99. Un valor de 0 har  que no se espere antes de
           seleccionar la opci¢n por omisi¢n.

   texto
     Pregunta a mostrar antes de las opciones.

ESTADO DE SALIDA

   ERRORLEVEL ser  la posici¢n ordinal de la tecla pulsada por el usuario.

AUTOR

   Jim Hall, jhall@freedos.org

