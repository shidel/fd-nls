# Language: Spanish
# File ending: es
# Codepage: 850
# This translation was created by Google AI.
# Please help the FreeDOS group to improve it.

GNU Wget 1.11.1, un descargador de red no interactivo.
Uso: wget.exe [OPTION]... [URL]...

Argumentos obligatorios para opciones largas tambi‚n lo son para cortas.

Inicio:
  -V,  --version                    muestra la versi¢n de Wget y sale.
  -h,  --help                       muestra esta ayuda.
  -b,  --background                 pasa a segundo plano tras iniciar.
  -e,  --execute=COMMAND            ejecuta comando estilo `.wgetrc'.

Registro y archivo de entrada:
  -o,  --output-file=FILE           registra los mensajes en FILE.
  -a,  --append-output=FILE         a¤ade los mensajes a FILE.
  -d,  --debug                      muestra mucha info de depuraci¢n.
       --wdebug                     muestra salida de depuraci¢n Watt-32.
  -q,  --quiet                      silencioso (sin salida).
  -v,  --verbose                    detallado (por defecto).
  -nv, --no-verbose                 desactiva detalle, sin ser silencioso.
  -i,  --input-file=FILE            descarga URLs encontradas en FILE.
  -F,  --force-html                 trata el archivo de entrada como HTML.
  -B,  --base=URL                   a¤ade URL a enlaces rel. en -F -i.

Descarga:
  -t,  --tries=NUMBER               fija intentos en NUMBER (0 sin l¡mite).
       --retry-connrefused          reintenta aunque se rechace conexi¢n.
  -O,  --output-document=FILE       escribe los documentos en FILE.
  -nc, --no-clobber                 omite descargas que sobrescribir¡an
                                    archivos existentes.
  -c,  --continue                   reanuda descarga de archivo parcial.
       --progress=TYPE              selecciona tipo de barra de progreso.
  -N,  --timestamping               no vuelve a descargar si no es m s
                                    reciente que el local.
  -S,  --server-response            muestra la respuesta del servidor.
       --spider                     no descarga nada.
  -T,  --timeout=SECONDS            fija todos los tiempos en SECONDS.
       --dns-timeout=SECS           fija tiempo de espera DNS en SECS.
       --connect-timeout=SECS       fija tiempo de conexi¢n en SECS.
       --read-timeout=SECS          fija tiempo de lectura en SECS.
  -w,  --wait=SECONDS               espera SECONDS entre descargas.
       --waitretry=SECONDS          espera 1..SECONDS entre reintentos.
       --random-wait                espera 0...2*WAIT seg entre descargas.
       --no-proxy                   desactiva el proxy expl¡citamente.
  -Q,  --quota=NUMBER               fija la cuota de descarga a NUMBER.
       --bind-address=ADDRESS       enlaza a ADDRESS (nombre/IP) local.
       --limit-rate=RATE            limita la tasa de descarga a RATE.
       --no-dns-cache               desactiva cach‚ de b£squedas DNS.
       --restrict-file-names=OS     restringe caracteres de nombres para OS.
       --ignore-case                ignora may£s./min£s. al buscar.
  -4,  --inet4-only                 conecta solo a direcciones IPv4.
  -6,  --inet6-only                 conecta solo a direcciones IPv6.
       --prefer-family=FAMILY       conecta primero a esta familia,
                                    una de IPv6, IPv4 o none.
       --user=USER                  fija usuario ftp y http a USER.
       --password=PASS              fija contrase¤a ftp y http a PASS.

Directorios:
  -nd, --no-directories             no crea directorios.
  -x,  --force-directories          fuerza la creaci¢n de directorios.
  -nH, --no-host-directories        no crea directorios de anfitri¢n.
       --protocol-directories       usa el nombre de protocolo en dirs.
  -P,  --directory-prefix=PREFIX    guarda los archivos en PREFIX/...
       --cut-dirs=NUMBER            ignora NUMBER directorios remotos.

Opciones HTTP:
       --http-user=USER             fija usuario http a USER.
       --http-password=PASS         fija contrase¤a http a PASS.
       --no-cache                   rechaza datos en cach‚ del servidor.
  -E,  --html-extension             guarda documentos HTML con ext. `.html'.
       --ignore-length              ignora el campo `Content-Length'.
       --header=STRING              inserta STRING entre las cabeceras.
       --max-redirect               m ximas redirecciones por p gina.
       --proxy-user=USER            fija USER como usuario del proxy.
       --proxy-password=PASS        fija PASS como contrase¤a del proxy.
       --referer=URL                incluye cabecera `Referer: URL'.
       --save-headers               guarda cabeceras HTTP en archivo.
  -U,  --user-agent=AGENT           se identifica como AGENT y no Wget.
       --no-http-keep-alive         desactiva HTTP keep-alive.
       --no-cookies                 no usa cookies.
       --load-cookies=FILE          carga cookies de FILE antes de sesi¢n.
       --save-cookies=FILE          guarda cookies en FILE tras sesi¢n.
       --keep-session-cookies       carga y guarda cookies de sesi¢n.
       --post-data=STRING           usa m‚todo POST; env¡a STRING.
       --post-file=FILE             usa m‚todo POST; env¡a cont. de FILE.
       --content-disposition        respeta Content-Disposition al
                                    elegir nombres de archivo locales.
       --auth-no-challenge          Env¡a autenticaci¢n HTTP b sica sin
                                    esperar desaf¡o del servidor.

Opciones HTTPS (SSL/TLS):
       --secure-protocol=PR         elige protocolo seguro, uno de auto,
                                    SSLv2, SSLv3 y TLSv1.
       --no-check-certificate       no valida certificado del servidor.
       --certificate=FILE           archivo de certificado del cliente.
       --certificate-type=TYPE      tipo de cert. del cliente, PEM o DER.
       --private-key=FILE           archivo de clave privada.
       --private-key-type=TYPE      tipo de clave privada, PEM o DER.
       --ca-certificate=FILE        archivo con el paquete de CA.
       --ca-directory=DIR           directorio con lista hash de CA.
       --random-file=FILE           archivo con datos aleatorios para PRNG.
       --egd-file=FILE              archivo que nombra el socket EGD.

Opciones FTP:
       --ftp-user=USER              fija usuario ftp a USER.
       --ftp-password=PASS          fija contrase¤a ftp a PASS.
       --no-remove-listing          no elimina los archivos `.listing'.
       --no-glob                    desactiva el globbing de nombres FTP.
       --no-passive-ftp             desactiva el modo de transf. "pasivo".
       --retr-symlinks              en recursi¢n, baja archivos enlazados.
       --preserve-permissions       preserva permisos de archivos remotos.

Descarga recursiva:
  -r,  --recursive                  especifica descarga recursiva.
  -l,  --level=NUMBER               profundidad m x. de recursi¢n (inf/0).
       --delete-after               borra archivos locales tras descarga.
  -k,  --convert-links              apunta enlaces en HTML a arch. locales.
  -K,  --backup-converted           antes de convertir X, lo respalda
                                    como X.orig.
  -m,  --mirror                     atajo de -N -r -l inf
                                    --no-remove-listing.
  -p,  --page-requisites            baja im genes etc. para p gina HTML.
       --strict-comments            activa manejo estricto (SGML) de
                                    comentarios HTML.

Aceptar/rechazar recursivamente:
  -A,  --accept=LIST                lista de extensiones aceptadas.
  -R,  --reject=LIST                lista de extensiones rechazadas.
  -D,  --domains=LIST               lista de dominios aceptados.
       --exclude-domains=LIST       lista de dominios rechazados.
       --follow-ftp                 sigue enlaces FTP desde docs. HTML.
       --follow-tags=LIST           lista de etiquetas HTML a seguir.
       --ignore-tags=LIST           lista de etiquetas HTML a ignorar.
  -H,  --span-hosts                 va a anfitriones externos en recursi¢n.
  -L,  --relative                   sigue solo enlaces relativos.
  -I,  --include-directories=LIST   lista de directorios permitidos.
  -X,  --exclude-directories=LIST   lista de directorios excluidos.
  -np, --no-parent                  no asciende al directorio padre.

Env¡a informes de errores y sugerencias a <bug-wget@gnu.org>.
