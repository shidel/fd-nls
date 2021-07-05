#
# FDNPKG archivo de idioma
#
# Idioma............: Castellano
# P gina de c¢digos : 850
# Traductor.........: Lorenzo del Toro Saravia
#


#### Ayuda ####

1.0:Este es un administrador de paquete de red para FreeDOS.
1.1:Uso: FDNPKG acci¢n [par metros]
1.2:Donde la acci¢n es una de las siguientes:
1.3: search [cadena]   - Busca en red repositorios de paquetes con "cadena"
1.4: vsearch [cadena]  - Igual que 'search', pero imprime repositorios de origen
1.5: install pkg       - Instala el paquete 'pkg' (o archivo zip local)
1.6: remove pkg        - Eliminar el paquete 'pkg'
1.7: dumpcfg           - Imprime la configuraci¢n cargada desde el archivo cfg
1.8: license           - Imprime la licencia de este programa
1.9:FDNPKG se vincula con la versi¢n de WatTCP a continuaci¢n:
1.10: install-nosrc pkg - Instala el paquete 'pkg'(o archivo zip local) sin fuentes
1.11: install-wsrc pkg  - Instala el paquete 'pkg'(o archivo zip local) con fuentes
1.12: showinstalled     - Muestra la lista de todos los paquetes instalados que         [cadena]          contienen 'cadena'
1.13: checkupdates      - Verifique las actualizaciones disponibles de los paquetes                       y visual¡celos
1.14: update pkg        - actualizar el paquete 'pkg' a una versi¢n m s nueva
1.15: update [pkg]      - actualiza 'pkg' a la £ltima versi¢n (o todos los paquetes                       si no hay argumento)
1.16: listlocal         - Lista todos los paquetes locales (instalados) que             [cadena]          contienen 'cadena'
1.17:FDNPKG se vincula con la versi¢n de Watt-32 a continuaci¢n:
1.18: listfiles pkg     - Lista de archivos propiedad del paquete 'pkg'


### Cosas generales ####

2.0:­%TEMP% no establecido! Debe hacer que apunte a un directorio grabable.
2.1:Ejemplo: SET TEMP=C:\\TEMP
2.2:­%DOSDIR% no establecido! Debe se¤alar al directorio principal de FreeDOS.
2.3:Ejemplo: SET DOSDIR=C:\\FDOS
2.4:N£mero inv lido de argumentos. Ejecute FDNPKG sin ning£n par metro para         obtener ayuda.
2.5:No se configura ning£n repositorio. Necesitas al menos uno.
2.6:Debe colocar en su archivo de configuraci¢n al menos una entrada de dicho       formulario:
2.7:REPOSITORIOS www.freedos.org/repo
2.8:La lista de repositorios confugurados de FDNPKG sigue:
2.9:Actualizaci¢n %s...
2.10:­Fall¢ la descarga del repositorio!
2.11:Produjo un error el intento de carga repositorio desde archivo tmp ...
2.12:Advertencia: ­%TZ% no establecido! Las marcas de tiempo en los                  archivos instalados pueden ser inexactas.
2.13:Base de datos del paquete cargada desde el cachâ€š local.
2.14:­Sin memoria! (%s)
2.15:Error: ­La instalaci¢n TCP/IP a fallado!
2.16:Cargando %s...
2.17:ADVERTENCIA: Memoria virtual demasiado baja. FDNPKG podr¡a comportarse          de manera poco fiable.
2.18:ERROR: no se puede escribir en el directorio '%s'. Verifique su                 variable %%TEMP%%.


#### Instalaci¢n del paquete ####

3.0:­El paquete %s ya est  instalado! Elim¡nelo primero si necesita actualizar.
3.1:No se encontr¢ el paquete '%s' en los repositorios en l¡nea.
3.2:El paquete '%s' no est  disponible en repositorios.
3.3:%s est  disponible en varios repositorios. Elija cu l usar:
3.4:Su elecci¢n:
3.5:­Elecci¢n inv lida!
3.6:Descargando el paquete %s...
3.7:Error al descargar el paquete. Abortado.
3.8:Error: ­Archivo zip inv lido! Paquete no instalado.
3.9:Error: El paquete contiene un archivo que ya existe localmente:
3.10:Error: ­No se pudo crear %s!
3.11:Paquete %s instalado.
3.12:Error: ­El paquete no contiene el archivo %s! No es un paquete                  v lido de FreeDOS.
3.13:Error: El paquete descargado ten¡a un CRC incorrecto. Instalaci¢n abortada.
3.14:Error: No se pudo abrir el paquete descargado. Instalaci¢n abortada.
3.15:Error: ­Falta de memoria al calcular el CRC del paquete!
3.16:Paquete %s instalado (con fuentes, si est  disponible).
3.17:Paquete %s instalado (sin fuentes).
3.18:­El paquete %s ya est  instalado! El posible que desee utilizar la              acci¢n 'actualizar'.
3.19:Paquete %s instalado: %d archivos extra¡dos, %d errores.
3.20:Error: El paquete contiene un archivo cifrado:
3.21:Error: Error al abrir el archivo de enlace '%s' para acceso de lectura.
3.22:Error: Error al abrir el archivo de enlace '%s' para acceso de escritura.
3.23:Error: El paquete contiene un nombre de archivo no v lido:


#### Eliminando el paquete ####

4.0:El paquete %s no est  instalado, por lo que no se elimin¢.
4.1:­Error al abrir el archivo lst!
4.2:L¡mite alcanzado de Dirlist. ­El directorio %s no se eliminar !
4.3:­Sin memoria! ­No se pudo almancenar el directorio %s!
4.4:eliminar %s
4.5:Se ha eliminado el paquete %s.


#### Buscando paquete ####

5.0:Ning£n paquete coincide con la b£squeda.
5.1:­Sin memoria al procesar las descripciones de los paquetes!


#### Manejo de la base de datos del paquete ####

6.0:Error: ­Archivo de ¡ndice inv lido (encabezado incorrecto)! Repositorio         omitido.
6.1:Error: ­Archivo de ¡ndice inv lido! Repositorio omitido.
6.2:Error: ­Memoria insugiciente al cargar la base de datos del paquete!
6.3:Error: No se pudo abrir el archivo de datos en '%s'.
6.4:Advertencia: ­No se pudo abrir el archivo db cache en %s!


#### Cargando configuraci¢n ####

7.0:Error: ­El repositorio '%s' aparece dos veces!
7.1:Error: ­No se pudo abrir el archivo de configuraci¢n '%s'!
7.2:Advertencia: Sin valor simb¢lico en la l¡nea #%d
7.3:Advertencia: Desbordamiento del archivo simb¢dico de configuraci¢n en           la l¡nea #%d
7.4:Advertencia: Simb¢lico con valor vac¡o en la l¡nea #%d
7.5:Advertencia: Espacios en blanco al final del valor en la l¡nea #%d
7.6:Se descart¢ un repositorio: demasiados configurados (m x =%d)
7.8:Advertencia: Simb¢lico desconocido '%s' en la l¡nea #%d
7.9:Advertencia: Desbordamiento del valor del archivo de configuraci¢n en la l¡nea  #%d
7.10:Advertencia: Se ignor¢ un valor ilegal '%s' en la l¡nea #%d
7.11:Advertencia: Directiva 'DIR' no v lida encontrada en a l¡nea #%d
7.12:Error: Ruta DIR demasiado larga en la l¡nea #%d
7.13:Error: No encuentra la variable de entorno '%s' en la l¡nea #%d
7.14:Error: ­El repositorio '%s' aparece dos veces!
7.15:Error: ­El directorio personalizado '%s' no es una ruta absoluta v lida!
7.16:Error: ­El directorio personalizado '%s' es un nombre reservado!


#### Descomprimir paquete ####

8.0:­Sin memoria!
8.1:C¢digo zip desconocido: 0x%08lx
8.2:Error: El paquete contiene un archivo comprimido con un mâ€štodo no compatible (%d):
8.3:­Error al extraer '%s' a '%s'!


#### Manejo de la lista local de paquetes instalados ####

9.0:Error: No se pudo acceder al directorio %s.
9.1:Error: Paquete local %s no encontrado.


#### Actualizaciones de paquetes ####

10.0:%s (versi¢n local: %s)
10.1:versi¢n %s en %s
10.2:No se encontr¢ ninguna actualizaci¢n para el paquete '%s'.
10.3:Se ha encontrado una actualizaci¢n de '%s'. Actualizaci¢n en progreso...
10.4:%d paquete(s) verificado, %d paquete(s) actualizado, %d paquete(s) fallido.
10.5:%d actualizaci¢n(es) de paquete encontradas.
10.6:El paquete %s no est  instalado.
10.7:Buscando actualizaciones...


#### Descargando ####

11.0:Descargando %s... %ld bytes
