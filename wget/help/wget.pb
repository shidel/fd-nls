# Language: Brazilian Portuguese
# File ending: pb
# Codepage: 850
# This translation was created by Google AI.
# Please help the FreeDOS group to improve it.

GNU Wget 1.11.1, um carregador de rede n∆o interativo.
Uso: wget.exe [OPTION]... [URL]...

Argumentos obrigat¢rios para opá‰es longas s∆o obrigat¢rios para curtas.

In°cio:
  -V,  --version                    mostra a vers∆o do Wget e sai.
  -h,  --help                       mostra esta ajuda.
  -b,  --background                 vai para segundo plano ap¢s iniciar.
  -e,  --execute=COMMAND            executa um comando estilo `.wgetrc'.

Registro e arquivo de entrada:
  -o,  --output-file=FILE           loga mensagens no FILE.
  -a,  --append-output=FILE         adiciona mensagens ao FILE.
  -d,  --debug                      mostra muitas info de depuraá∆o.
       --wdebug                     mostra sa°da de depuraá∆o Watt-32.
  -q,  --quiet                      silencioso (sem sa°da).
  -v,  --verbose                    ser detalhado (este Ç o padr∆o).
  -nv, --no-verbose                 desativa detalhamento, sem ser quieto.
  -i,  --input-file=FILE            baixa URLs encontradas no FILE.
  -F,  --force-html                 trata o arquivo de entrada como HTML.
  -B,  --base=URL                   adiciona URL a links relativos no
                                    arquivo -F -i.

Download:
  -t,  --tries=NUMBER               define tentativas para NUMBER (0 ilim.).
       --retry-connrefused          tenta novamente mesmo se recusado.
  -O,  --output-document=FILE       escreve documentos no FILE.
  -nc, --no-clobber                 pula downloads que sobrescreveriam
                                    arquivos existentes.
  -c,  --continue                   continua download de arquivo parcial.
       --progress=TYPE              seleciona tipo de barra de progresso.
  -N,  --timestamping               n∆o baixa novamente se n∆o for mais
                                    recente que o local.
  -S,  --server-response            mostra a resposta do servidor.
       --spider                     n∆o baixa nada.
  -T,  --timeout=SECONDS            define todos os tempos em SECONDS.
       --dns-timeout=SECS           define tempo limite DNS em SECS.
       --connect-timeout=SECS       define tempo limite conex∆o em SECS.
       --read-timeout=SECS          define tempo limite leitura em SECS.
  -w,  --wait=SECONDS               espera SECONDS entre downloads.
       --waitretry=SECONDS          espera 1..SECONDS entre tentativas.
       --random-wait                espera 0...2*WAIT seg entre downloads.
       --no-proxy                   desativa o proxy explicitamente.
  -Q,  --quota=NUMBER               define cota de download para NUMBER.
       --bind-address=ADDRESS       liga ao ADDRESS (nome/IP) local.
       --limit-rate=RATE            limita taxa de download para RATE.
       --no-dns-cache               desativa cache de buscas DNS.
       --restrict-file-names=OS     restringe caracteres nos nomes para OS.
       --ignore-case                ignora mai£sculas/min£sculas.
  -4,  --inet4-only                 conecta apenas a endereáos IPv4.
  -6,  --inet6-only                 conecta apenas a endereáos IPv6.
       --prefer-family=FAMILY       conecta primeiro a esta fam°lia,
                                    uma de IPv6, IPv4 ou none.
       --user=USER                  define usu†rio FTP e HTTP para USER.
       --password=PASS              define senha FTP e HTTP para PASS.

Diret¢rios:
  -nd, --no-directories             n∆o cria diret¢rios.
  -x,  --force-directories          foráa a criaá∆o de diret¢rios.
  -nH, --no-host-directories        n∆o cria diret¢rios de host.
       --protocol-directories       usa o nome do protocolo nos diret¢rios.
  -P,  --directory-prefix=PREFIX    salva arquivos em PREFIX/...
       --cut-dirs=NUMBER            ignora NUMBER diret¢rios remotos.

Opá‰es HTTP:
       --http-user=USER             define usu†rio HTTP para USER.
       --http-password=PASS         define senha HTTP para PASS.
       --no-cache                   rejeita dados em cache do servidor.
  -E,  --html-extension             salva HTML com extens∆o `.html'.
       --ignore-length              ignora o campo `Content-Length'.
       --header=STRING              insere STRING entre os cabeáalhos.
       --max-redirect               m†ximo de redirecionamentos por p†gina.
       --proxy-user=USER            define USER como usu†rio do proxy.
       --proxy-password=PASS        define PASS como senha do proxy.
       --referer=URL                inclui cabeáalho `Referer: URL'.
       --save-headers               salva cabeáalhos HTTP no arquivo.
  -U,  --user-agent=AGENT           identifica como AGENT, n∆o Wget.
       --no-http-keep-alive         desativa HTTP keep-alive.
       --no-cookies                 n∆o usa cookies.
       --load-cookies=FILE          carrega cookies do FILE antes da sess∆o.
       --save-cookies=FILE          salva cookies no FILE ap¢s a sess∆o.
       --keep-session-cookies       carrega e salva cookies de sess∆o.
       --post-data=STRING           usa mÇtodo POST; envia STRING.
       --post-file=FILE             usa mÇtodo POST; envia conte£do de FILE.
       --content-disposition        respeita Content-Disposition ao
                                    escolher nomes de arquivo locais
                                    (EXPERIMENTAL).
       --auth-no-challenge          Envia autenticaá∆o HTTP b†sica sem
                                    esperar o desafio do servidor.

Opá‰es HTTPS (SSL/TLS):
       --secure-protocol=PR         escolhe protocolo seguro, um de auto,
                                    SSLv2, SSLv3 e TLSv1.
       --no-check-certificate       n∆o valida certificado do servidor.
       --certificate=FILE           arquivo de certificado do cliente.
       --certificate-type=TYPE      tipo de cert. do cliente, PEM ou DER.
       --private-key=FILE           arquivo de chave privada.
       --private-key-type=TYPE      tipo de chave privada, PEM ou DER.
       --ca-certificate=FILE        arquivo com o pacote de CA.
       --ca-directory=DIR           diret¢rio com lista hash de CA.
       --random-file=FILE           arquivo com dados aleat¢rios para PRNG.
       --egd-file=FILE              arquivo que nomeia o socket EGD.

Opá‰es FTP:
       --ftp-user=USER              define usu†rio FTP para USER.
       --ftp-password=PASS          define senha FTP para PASS.
       --no-remove-listing          n∆o remove arquivos `.listing'.
       --no-glob                    desativa globbing de nomes FTP.
       --no-passive-ftp             desativa modo de transferància "passivo".
       --retr-symlinks              na recurs∆o, baixa arquivos ligados.
       --preserve-permissions       preserva permiss‰es de arquivos remotos.

Download recursivo:
  -r,  --recursive                  especifica download recursivo.
  -l,  --level=NUMBER               profundidade m†x. recurs∆o (inf/0).
       --delete-after               apaga arquivos locais ap¢s download.
  -k,  --convert-links              faz links no HTML apontarem localmente.
  -K,  --backup-converted           antes de converter X, faz backup
                                    como X.orig.
  -m,  --mirror                     atalho para -N -r -l inf
                                    --no-remove-listing.
  -p,  --page-requisites            baixa imagens etc. para p†gina HTML.
       --strict-comments            ativa manipulaá∆o estrita (SGML) de
                                    coment†rios HTML.

Aceitar/rejeitar recursivamente:
  -A,  --accept=LIST                lista de extens‰es aceitas.
  -R,  --reject=LIST                lista de extens‰es rejeitadas.
  -D,  --domains=LIST               lista de dom°nios aceitos.
       --exclude-domains=LIST       lista de dom°nios rejeitados.
       --follow-ftp                 segue links FTP de docs. HTML.
       --follow-tags=LIST           lista de tags HTML seguidas.
       --ignore-tags=LIST           lista de tags HTML ignoradas.
  -H,  --span-hosts                 vai a hosts externos na recurs∆o.
  -L,  --relative                   segue apenas links relativos.
  -I,  --include-directories=LIST   lista de diret¢rios permitidos.
  -X,  --exclude-directories=LIST   lista de diret¢rios exclu°dos.
  -np, --no-parent                  n∆o sobe ao diret¢rio pai.

Envie relat¢rios de erros e sugest‰es para <bug-wget@gnu.org>.
