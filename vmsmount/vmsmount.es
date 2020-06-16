# Language: Spanish
# Codepage: 850/858
#
# Translator: Eduardo
#
# Spaces before text must be kept. Be sure that no spaces are
# added to the end of the lines.
#
0.1:\nUso:\n
0.2:   VMSMOUNT [/H][/V|/Q|/QQ] [/L:<uni>] [/B:<tam>[K]] [/LFN [/M:<n>] [/CI|/CS]]\n
0.3:   VMSMOUNT [/V|/Q|/QQ] /U\n
0.4:        /H               - Muestra este mensaje y termina\n
0.5:        /V               - Muestra informaci¢n extra del sistema\n
0.6:        /Q               - Omite el mensaje de copyright\n
0.7:        /QQ              - No muestra ning£n mensaje\n
0.8:        /L:<unidad>      - Letra de unidad donde montar las carpetas\n
0.9:                           (si se omite, usa la primera disponible)\n
0.10:        /B:<tama¤o[K]>   - Tama¤o del buffer de lectura/escritura\n
0.11:                           (4K por defecto, aumentarlo mejora el rendimiento)\n
0.12:        /LFN             - Soporte para nombres de archivo largos\n
0.13:        /M:<n>           - Caracteres para componer el nombre £nico\n
0.14:                           (2 m¡nimo, 6 m ximo, 3 por defecto)\n
0.15:        /CI              - Servidor no distingue may£sculas y min£sculas\n
0.16:                           (Opci¢n por defecto)\n
0.17:        /CS              - Servidor distingue may£sculas y min£sculas\n
0.18:                           (genera nombres £nicos para archivos con min£sculas)\n
0.19:        /U               - Desinstalar\n
1.0: ERROR: La unidad %c: ya est  en uso\n
1.1: ERROR: No hay letras de unidades disponibles (LASTDRIVE es %c)\n
1.2: ERROR: Versi¢n %d.%d de DOS no soportada. Se necesita 5.0 o superior.\n
1.3: ERROR: No se est  ejecutando en VMware. VMSMOUNT no instalado.\n
1.4: ERROR: La unidad %c no es v lida (LASTDRIVE es %c)\n
1.5: ERROR: No se puede obtener la LoL\n
1.6: ERROR: No se permiten redirectores.\n
1.7: ERROR: Ya est  instalado. Use /U para desinstalar.\n
1.8: ERROR: No se han encontrado Carpetas Compartidas.\n
1.9: ERROR: No se puede obtener la SDA\n
1.10: ERROR: No se pueden obtener las tablas NLS.\n
1.11: ERROR: Tama¤o del buffer debe estar entre %u y %u bytes\n
1.12: ERROR: No se pudo desinstalar.\n
1.13: ERROR: Driver no instalado.\n
1.14: ERROR: Caracteres para /M deben estar entre %u y %u\n
1.15: ADVERTENCIA: TZ no definido, los tiempos se mostrar n en UTC.\n
1.16: ADVERTENCIA: No se encontr¢ la tabla Unicode: %s
1.17: ADVERTENCIA: No pudo cargarse tabla Unicode: %s
1.18: ADVERTENCIA: Formato de archivo incorrecto: %s
1.19: ADVERTENCIA: P gina de c¢digos activa no encontrada
1.20:. Se usar  cp437.\n
2.0: Montando carpetas compartidas en %c:\n
2.1: Desinstalado y eliminado correctamente de la memoria.\n
9.0: INFO: Funcionando en VMware %s Versi¢n %lu\n
9.1: INFO: Diferencia con UTC en segundos: %ld\n
9.2: INFO: La p gina activa es cp%d. Cargando tabla Unicode %s\n
9.3: INFO: Driver cargado en memoria ocupando %u bytes.\n
