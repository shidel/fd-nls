# Archivo de idioma Espa¤ol (850)
# Basado en el archivo FDPKG.EN
# Traducido por Lorenzo del Toro Saravia
#
# Mensaje de ayuda

0.0:FDPKG v0.2 - GPL por Blair Campbell 2005\n
0.1:Instala paquetes FreeDOS tanto en formato especializado como uno regular.\n
0.2:Sintaxis: FDPKG [/INSTALL] [/REMOVE] [/CHECK] [/CONFIGURE] [/E] PKGX.ZIP ...\n
0.3:   /INSTALL       Modo de instalaci¢n; paquete de intalaci¢n (predeterminado)\n
0.4:   /REMOVE        Modo de eliminaci¢n; eliminar paquete\n
0.5:   /CHECK         Modo de comprobaci¢n; verificar dependencias del paquete\n
0.6:   /CONFIGURE     Modo de configuraci¢n; configurar paquete\n
0.7:   /DESC[:CAMPO]  Ver la descrici¢n de un LSM. CAMPO (opcional) ser¡a el campo\n
0.8:                  del LSM para imprimir. Los LSM se buscan primero en el\n
0.9:                  directorio actual, de lo contrario en %%DOSDIR%%\\APPINFO\n
0.10:   /DISPLAY       Lista todos los paquetes instalados que coincidan con el\n                  argumento\n
0.11:   /E             Extraer solamente, no verifique las dependencias (a menos\n
0.12:                  que ya estâ€š instalado), no configurar\n
0.13:   /B             Sea compatible con versiones anteriores de fdpkg.bat\n
0.14:   /S[:|=]ARG     Cambia las barras diagonales inversas de ARG a barras\n                  diagonales\n
0.15:   /[-]F/[-]Y     Fuerza; No hace preguntas (POSIBLEMENTE PELIGROSO)\n
0.16:   /?[E]|/H[E]    Esta ayuda; /?E o /HE imprime ayuda extendida\n
0.17:   PKGX.ZIP       El paquete para instalar; m£ltiples nombres / comodines\n                  aceptados\n
0.18:C¢digos de salida:\n
0.19:   255            Ruta inv lida\n
0.20:   0              Sin problemas\n
0.21:   1              Dependencias no resueltas\n
0.22:   2              Nombre no v lido\n
0.23:   3              Variables de entorno no v lidas\n
0.24:   4              Opciones o argumentos no v lidos\n
0.25:   5              Cancelado por el usuario\n
0.26:   6              Desempaquetador no esta en la ruta\n
0.27:   7              Memoria insuficiente\n
0.28:   8              No se pudieron eliminar todos los archivos\n
0.29:   9              Fallo al extraer\n
0.30:   10             Cambio exitoso\n
0.31:   11             Interruptor fallido\n

# Mensajes FDPKG

1.0:Variables de entorno no v lidas.\n
1.1:Argumentos insuficientes.\n
1.2:Unidad o directorio no existente.\n
1.3:Opci¢n no v lida en %s\n
1.4:Campo LSM no v lido: %s\n

# FUNC mensajes miscel neos

2.0:Presione cualquier tecla...
2.1:Archivo no esta en la ruta.\n
2.2:No se pudo obtener la versi¢n de %s %s instalada.\n
2.3:No se pudo instalar la versi¢n.\n
2.4:La versi¢n a instalar es la misma que el paquete instalado.\n
2.5:La versi¢n del paquete instalado es \"%s\"\ny la versi¢n que se instalar  es \"%s\".\n¨Continuar? (S/N)
2.6:Advertencias extrayendo %s.\n
2.7:Error de desempaquetado para %s.\n
2.8:Configurando...\n
2.9:binarios
2.10:fuentes

# Mensajes FUNC

3.0:Este paquete necesita \"%s\" para instalarse\n ¨Intentar instalar? (S/N)
3.1:Este paquete entra en conflicto con \"%s\" ¨Eliminar? (S/N)
3.2:La ejecuci¢n depende de .bat\n
3.3:Comprobando la existencia...\n
3.4:No se encontr¢ el paquete: %s\n
3.5:Variable %%DOSDIR%% no v lida.\n
3.6:Actualizaci¢n...\n
3.7:Paquete extra¡do\n
3.8:Desempaquetado...\n
3.9:Paquete instalado.\n
3.10:No se pudo obtener el campo \"%s\" para: %s\n
3.11:¨Est s seguro? ¨Eliminar  el %s %s? (S/N)
3.12:No se pudieron eliminar todos los archivos\n
3.13:No se cumplen todas las dependencias.\n
3.14:Todas las dependencias se cumplen o no hay dependencias.\n
3.15:Configuraci¢n completa.\n
3.16:Configuraci¢n innecesaria.\n
3.17:Este paquete recomienda \"%s\"\n

# Car cter YES o SI

4.0:S
