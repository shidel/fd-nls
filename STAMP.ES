
                        STAMP 2.0


Contenido
---------

        1. Caracter¡sticas
        2. Niveles de error
        3. Que hacer
        4. Historia
        5. Autor


1. Caracter¡sticas
------------------

- cambiar fecha/hora para archivos
- cambiar artributos para archivos y directorios
- compara fecha/hora y atributos para atributos para archivos y directorios
- Las opciones de fecha/hora permiten obtener valores de la fecha/hora 
  actual y del archivo simult neamente con n£meros expl¡citos
- comparaci¢n compleja de fecha/hora con la fecha/hora actual, del mismo
  modo con el archivo
- fecha/hora en formatos, que conforma la configuraci¢n de COUNTRY
- Se permiten parches UMC y NetWare
- multiplica objetivos en una l¡nea de comandos
- comodines extendidos: los nombres pueden contener cualquier n£mero de '*'
  y tambi‚n como '?'; "nombre" significa "nombre", pero "*" significa "*.*"
- car cter autom tico de opci¢n ('/' o '-')
- opci¢n para incluir nombres de directorios en la b£squeda de comodines
- opci¢n para procesar archivos y directorios en todos los subdirectorios
  de distino
- opci¢n para procesar el archivo con la lista de objetivos; argumento
  perdido entrada est ndar media


2. Niveles de error
-------------------

0   - fecha/hora y configuraci¢n de atributos o comparaci¢n exitosa
1   - comparar (uno de) no tiene ‚xito
2   - error al acceder al archivo o establecer la fecha/hora/atributos del
      archivo
128 - Opci¢n inv lida o duplicada
129 - Opciones incompatibles, ninguno objetivos o argumentos inv lidos
130 - error interno (memoria insuficiente o directorio demasiado profundo)


3. Que hacer
------------

- Mostrar listas de archivos procesados
- comparar/copiar fecha/hora/atributos archivo a archivo
- incremento/decremento para campos de fecha/hora
- mayor/menor comparaci¢n de atributos


4. Historia
----------

        1.0 [16.02.98]
+ Primera edici¢n

        1.1 [19.02.98]
+ Ahora acepta fecha/hora en formatos, los que conforma la configuraci¢n
  COUNTRY

        1.2 [21.02.98]
* Interpretaci¢n ligeramente mejorada de campos y argumentos omitidos
* Disminuci¢n del tama¤o del archivo ejecutable
+ Added -a opci¢n para modificar los atributos de archivos y directorios

        1.3 [21.02.98]
+ Ahora se aceptan objetivos m£ltiples en una l¡nea de comandos
+ -a opcion ahora se puede utilizar en comparaci¢n

        1.4 [26.02.98]
# Ahora la ejecuci¢n no se detiene cuando se encuentra un error para el
  archivo, pero contin£a para el siguiente objetivo
# Ouput ahora no se duplica en la consola cuando se redirige al archivo
* -@ opci¢n de renombrado a -c
+ La fecha/hora de los directorios ahora tambi‚n se puede verificar en
  comparaci¢n
+ Ahora se aceptan comodines para objetivos
+ -r habilita el procesamiento de directorios mediante comodines

        1.41 [28.02.98]
+ Car cter para las opciones seleccionadas autom ticamente por la primera
  aparici¢n de '/' o '-'
+ Solo un par de caracteres de opci¢n ("--" or "//") detiene la b£squeda
  de opciones
+ Car cter de opci¢n solo significa entrada est ndar
- Agregar el car cter de opci¢n antes del nombre como argumento ahora
  causa un mensaje de error; para pasar nombres arbitrarios inserte solo
  un par de caracteres de opci¢n antes

        1.5 [14.03.98]
# Correcci¢n de errores: para algunas condiciones pasaron expl¡citamente
  correctamente los valores del d¡a 30 y 31 fueron rechazados
# Correcci¢n de errores: el nombre de los objetivos ahora est  en
  may£sculas seg£n la configuraci¢n del COUNTRY
+ /s procesa archivos y directorios tambi‚n en todos los subdirectorios
  de destino

        2.0 [14.04.98]
# Correcci¢n de errores: segundos perdidos m s bit de signo cuando se lee
  el tiempo de archivo
+ /@ para procesar el archivo con la lista de objetivos
* El car cter de opci¢n solo ahora especific¢ la entrada est ndar solo como
  argumento de opci¢n /@
* Disminuci¢n del tama¤o del archivo ejecutable
+ DIET utilizada para comprimir archivos ejecutables


5. Autor
--------
                                        Arkady Belousov
                                        E-mail: ark@mos.ru
