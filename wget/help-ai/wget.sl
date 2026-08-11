# Language: Slovenian
# File ending: sl
# Codepage: 852
# This translation was created by Google AI.
# Please help the FreeDOS group to improve it.

GNU Wget 1.11.1, neinteraktivni omreßni prenosnik.
Uporaba: wget.exe [OPTION]... [URL]...

Obvezni argumenti za dolge opcije so obvezni tudi za kratke.

Zagon:
  -V,  --version                    prikaßi razliüico Wget in konüaj.
  -h,  --help                       izpiÁi to pomoü.
  -b,  --background                 pojdi v ozadje po zagonu.
  -e,  --execute=COMMAND            izvedi ukaz v slogu `.wgetrc'.

Beleßenje in vhodna datoteka:
  -o,  --output-file=FILE           zapisuj sporoüila v FILE.
  -a,  --append-output=FILE         dodajaj sporoüila v FILE.
  -d,  --debug                      izpiÁi veliko informacij o
                                    razhroÁüevanju.
       --wdebug                     izpiÁi izhod Watt-32 razhroÁüevanja.
  -q,  --quiet                      tiho (brez izpisa).
  -v,  --verbose                    bodi podroben (to je privzeto).
  -nv, --no-verbose                 izklopi podrobnost, ne da bi bil tiho.
  -i,  --input-file=FILE            prenesi URL-je, najdene v FILE.
  -F,  --force-html                 obravnavaj vhodno datoteko kot HTML.
  -B,  --base=URL                   dodaj URL pred relativne povezave v
                                    datoteki -F -i.

Prenos:
  -t,  --tries=NUMBER               nastavi Átevilo poskusov na NUMBER
                                    (0 je neomejeno).
       --retry-connrefused          poskusi znova, tudi üe je povezava
                                    zavrnjena.
  -O,  --output-document=FILE       zapiÁi dokumente v FILE.
  -nc, --no-clobber                 preskoüi prenose, ki bi prepisali
                                    obstojeüe datoteke.
  -c,  --continue                   nadaljuj prenos delno prenesene
                                    datoteke.
       --progress=TYPE              izberi vrsto kazalnika napredka.
  -N,  --timestamping               ne prenesi znova, razen üe so datoteke
                                    novejÁe od lokalnih.
  -S,  --server-response            izpiÁi odziv streßnika.
       --spider                     niüesar ne prenesi.
  -T,  --timeout=SECONDS            nastavi vse üasovne omejitve na
                                    SECONDS.
       --dns-timeout=SECS           nastavi DNS üasovno omejitev na SECS.
       --connect-timeout=SECS       nastavi üasovno omejitev povezave
                                    na SECS.
       --read-timeout=SECS          nastavi üasovno omejitev branja
                                    na SECS.
  -w,  --wait=SECONDS               poüakaj SECONDS med prenosi.
       --waitretry=SECONDS          poüakaj 1..SECONDS med poskusi.
       --random-wait                poüakaj 0...2*WAIT sek med prenosi.
       --no-proxy                   izrecno izklopi posredniÁki streßnik.
  -Q,  --quota=NUMBER               nastavi kvoto prenosa na NUMBER.
       --bind-address=ADDRESS       veßi na lokalni ADDRESS (ime/IP).
       --limit-rate=RATE            omeji hitrost prenosa na RATE.
       --no-dns-cache               onemogoüi predpomnjenje DNS poizvedb.
       --restrict-file-names=OS     omeji znake v imenih datotek za OS.
       --ignore-case                prezri velikost ürk pri iskanju.
  -4,  --inet4-only                 poveßi se samo z IPv4 naslovi.
  -6,  --inet6-only                 poveßi se samo z IPv6 naslovi.
       --prefer-family=FAMILY       najprej se poveßi s to drußino,
                                    ena od IPv6, IPv4 ali none.
       --user=USER                  nastavi FTP in HTTP uporabnika na USER.
       --password=PASS              nastavi FTP in HTTP geslo na PASS.

Imeniki:
  -nd, --no-directories             ne ustvarjaj imenikov.
  -x,  --force-directories          vsiljeno ustvari imenike.
  -nH, --no-host-directories        ne ustvarjaj imenikov gostitelja.
       --protocol-directories       uporabi ime protokola v imenikih.
  -P,  --directory-prefix=PREFIX    shrani datoteke v PREFIX/...
       --cut-dirs=NUMBER            prezri NUMBER komponent oddaljenega
                                    imenika.

Moßnosti HTTP:
       --http-user=USER             nastavi HTTP uporabnika na USER.
       --http-password=PASS         nastavi HTTP geslo na PASS.
       --no-cache                   ne dovoli predpomnjenih podatkov
                                    streßnika.
  -E,  --html-extension             shrani HTML dokumente s konünico
                                    `.html'.
       --ignore-length              prezri polje glave `Content-Length'.
       --header=STRING              vstavi STRING med glave.
       --max-redirect               najveüje Átevilo preusmeritev na stran.
       --proxy-user=USER            nastavi USER kot proxy uporabnika.
       --proxy-password=PASS        nastavi PASS kot proxy geslo.
       --referer=URL                vkljuüi glavo `Referer: URL'.
       --save-headers               shrani HTTP glave v datoteko.
  -U,  --user-agent=AGENT           identificiraj se kot AGENT namesto
                                    Wget.
       --no-http-keep-alive         onemogoüi HTTP keep-alive.
       --no-cookies                 ne uporabljaj piÁkotkov.
       --load-cookies=FILE          naloßi piÁkotke iz FILE pred sejo.
       --save-cookies=FILE          shrani piÁkotke v FILE po seji.
       --keep-session-cookies       naloßi in shrani sejne piÁkotke.
       --post-data=STRING           uporabi metodo POST; poÁlji STRING.
       --post-file=FILE             uporabi metodo POST; poÁlji vsebino
                                    FILE.
       --content-disposition        upoÁtevaj glavo Content-Disposition
                                    pri izbiri lokalnih imen datotek.
       --auth-no-challenge          PoÁlji osnovno HTTP avtentikacijo
                                    brez üakanja na izziv streßnika.

Moßnosti HTTPS (SSL/TLS):
       --secure-protocol=PR         izberi varen protokol, enega izmed
                                    auto, SSLv2, SSLv3 in TLSv1.
       --no-check-certificate       ne preverjaj certifikata streßnika.
       --certificate=FILE           datoteka s certifikatom odjemalca.
       --certificate-type=TYPE      vrsta certifikata odjemalca, PEM
                                    ali DER.
       --private-key=FILE           datoteka z zasebnim kljuüem.
       --private-key-type=TYPE      vrsta zasebnega kljuüa, PEM ali DER.
       --ca-certificate=FILE        datoteka s paketom CA.
       --ca-directory=DIR           imenik s seznamom zgoÁüevanj CA.
       --random-file=FILE           datoteka z nakljuünimi podatki za
                                    SSL PRNG.
       --egd-file=FILE              datoteka, ki poimenuje vtiünico EGD.

Moßnosti FTP:
       --ftp-user=USER              nastavi FTP uporabnika na USER.
       --ftp-password=PASS          nastavi FTP geslo na PASS.
       --no-remove-listing          ne odstranjuj datotek `.listing'.
       --no-glob                    izklopi razÁirjanje imen datotek FTP.
       --no-passive-ftp             onemogoüi "pasivni" naüin prenosa.
       --retr-symlinks              pri rekurziji prenesi povezane
                                    datoteke.
       --preserve-permissions       ohrani pravice oddaljenih datotek.

Rekurzivni prenos:
  -r,  --recursive                  doloüi rekurzivni prenos.
  -l,  --level=NUMBER               najveüja globina rekurzije (inf/0).
       --delete-after               po prenosu izbriÁi datoteke lokalno.
  -k,  --convert-links              naj povezave v HTML kaßejo lokalno.
  -K,  --backup-converted           pred pretvorbo datoteke X naredi
                                    varnostno kopijo kot X.orig.
  -m,  --mirror                     blißnjica za -N -r -l inf
                                    --no-remove-listing.
  -p,  --page-requisites            pridobi vse slike itd. za stran HTML.
       --strict-comments            vklopi strogo (SGML) obravnavo
                                    komentarjev HTML.

Rekurzivno sprejemanje/zavraüanje:
  -A,  --accept=LIST                z vejico loüen seznam sprejetih
                                    konünic.
  -R,  --reject=LIST                z vejico loüen seznam zavrnjenih
                                    konünic.
  -D,  --domains=LIST               z vejico loüen seznam sprejetih domen.
       --exclude-domains=LIST       z vejico loüen seznam zavrnjenih
                                    domen.
       --follow-ftp                 sledi FTP povezavam iz HTML
                                    dokumentov.
       --follow-tags=LIST           z vejico loüen seznam spremljanih
                                    oznak HTML.
       --ignore-tags=LIST           z vejico loüen seznam prezrtih
                                    oznak HTML.
  -H,  --span-hosts                 pojdi na tuje gostitelje pri
                                    rekurziji.
  -L,  --relative                   sledi samo relativnim povezavam.
  -I,  --include-directories=LIST   seznam dovoljenih imenikov.
  -X,  --exclude-directories=LIST   seznam izkljuüenih imenikov.
  -np, --no-parent                  ne pojdi v nadrejeni imenik.

Poroüila o napakah in predloge poÁljite na <bug-wget@gnu.org>.
