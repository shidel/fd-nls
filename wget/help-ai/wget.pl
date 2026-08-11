# Language: Polish
# File ending: pl
# Codepage: 852
# This translation was created by Google AI.
# Please help the FreeDOS group to improve it.

GNU Wget 1.11.1, nieinteraktywny program do pobierania z sieci.
U¾ycie: wget.exe [OPTION]... [URL]...

Argumenty obowi¥zkowe dla dˆugich opcji s¥ obowi¥zkowe dla kr¢tkich.

Uruchamianie:
  -V,  --version                    wy˜wietl wersj© Wget i wyjd«.
  -h,  --help                       wy˜wietl t© pomoc.
  -b,  --background                 przejd« do tˆa po uruchomieniu.
  -e,  --execute=COMMAND            wykonaj komend© w stylu `.wgetrc'.

Logowanie i plik wej˜ciowy:
  -o,  --output-file=FILE           zapisz logi do pliku FILE.
  -a,  --append-output=FILE         dopisz logi do pliku FILE.
  -d,  --debug                      wy˜wietl du¾o informacji debugowania.
       --wdebug                     wy˜wietl wyj˜cie debugowania Watt-32.
  -q,  --quiet                      tryb cichy (brak wyj˜cia).
  -v,  --verbose                    tryb gadatliwy (domy˜lny).
  -nv, --no-verbose                 wyˆ¥cz gadatliwo˜†, nie b©d¥c cichym.
  -i,  --input-file=FILE            pobierz adresy URL znalezione w FILE.
  -F,  --force-html                 traktuj plik wej˜ciowy jako HTML.
  -B,  --base=URL                   dodaj URL do wzgl©dnych link¢w w -F -i.

Pobieranie:
  -t,  --tries=NUMBER               ustaw liczb© pr¢b na NUMBER
                                    (0 = nieskoäczono˜†).
       --retry-connrefused          pon¢w pr¢b© nawet przy odrzuceniu
                                    poˆ¥czenia.
  -O,  --output-document=FILE       zapisz dokumenty do pliku FILE.
  -nc, --no-clobber                 pomiä pobieranie, kt¢re nadpisaˆoby
                                    istniej¥ce pliki.
  -c,  --continue                   wzn¢w pobieranie cz©˜ciowo pobranego
                                    pliku.
       --progress=TYPE              wybierz typ paska post©pu.
  -N,  --timestamping               nie pobieraj ponownie, je˜li nie jest
                                    nowszy ni¾ lokalny.
  -S,  --server-response            wy˜wietl odpowied« serwera.
       --spider                     nie pobieraj niczego.
  -T,  --timeout=SECONDS            ustaw wszystkie limity czasu na
                                    SECONDS.
       --dns-timeout=SECS           ustaw limit czasu DNS na SECS.
       --connect-timeout=SECS       ustaw limit czasu poˆ¥czenia na SECS.
       --read-timeout=SECS          ustaw limit czasu odczytu na SECS.
  -w,  --wait=SECONDS               czekaj SECONDS mi©dzy pobraniami.
       --waitretry=SECONDS          czekaj 1..SECONDS mi©dzy pr¢bami.
       --random-wait                czekaj 0...2*WAIT sek mi©dzy pobraniami.
       --no-proxy                   wyˆ¥cz jawnie proxy.
  -Q,  --quota=NUMBER               ustaw limit pobierania na NUMBER.
       --bind-address=ADDRESS       powi¥¾ z lokalnym adresem ADDRESS.
       --limit-rate=RATE            ogranicz pr©dko˜† pobierania do RATE.
       --no-dns-cache               wyˆ¥cz buforowanie zapytaä DNS.
       --restrict-file-names=OS     ogranicz znaki w nazwach dla systemu OS.
       --ignore-case                ignoruj wielko˜† liter przy szukaniu.
  -4,  --inet4-only                 ˆ¥cz si© tylko z adresami IPv4.
  -6,  --inet6-only                 ˆ¥cz si© tylko z adresami IPv6.
       --prefer-family=FAMILY       ˆ¥cz si© najpierw z rodzin¥, jedna z
                                    IPv6, IPv4 lub none.
       --user=USER                  ustaw u¾ytkownika FTP i HTTP na USER.
       --password=PASS              ustaw hasˆo FTP i HTTP na PASS.

Katalogi:
  -nd, --no-directories             nie tw¢rz katalog¢w.
  -x,  --force-directories          wymu˜ tworzenie katalog¢w.
  -nH, --no-host-directories        nie tw¢rz katalog¢w hosta.
       --protocol-directories       u¾yj nazwy protokoˆu w katalogach.
  -P,  --directory-prefix=PREFIX    zapisz pliki w PREFIX/...
       --cut-dirs=NUMBER            zignoruj NUMBER komponent¢w katalogu.

Opcje HTTP:
       --http-user=USER             ustaw u¾ytkownika HTTP na USER.
       --http-password=PASS         ustaw hasˆo HTTP na PASS.
       --no-cache                   nie u¾ywaj danych z pami©ci podr©cznej.
  -E,  --html-extension             zapisz dokumenty HTML z rozszerzeniem
                                    `.html'.
       --ignore-length              ignoruj pole nagˆ¢wka `Content-Length'.
       --header=STRING              wstaw STRING mi©dzy nagˆ¢wki.
       --max-redirect               maksymalna liczba przekierowaä na
                                    stron©.
       --proxy-user=USER            ustaw USER jako u¾ytkownika proxy.
       --proxy-password=PASS        ustaw PASS jako hasˆo proxy.
       --referer=URL                wstaw nagˆ¢wek `Referer: URL' w zapytaniu.
       --save-headers               zapisz nagˆ¢wki HTTP do pliku.
  -U,  --user-agent=AGENT           identyfikuj si© jako AGENT, nie Wget.
       --no-http-keep-alive         wyˆ¥cz HTTP keep-alive.
       --no-cookies                 nie u¾ywaj ciasteczek.
       --load-cookies=FILE          wczytaj ciasteczka z FILE przed sesj¥.
       --save-cookies=FILE          zapisz ciasteczka do FILE po sesji.
       --keep-session-cookies       wczytaj i zapisz ciasteczka sesji.
       --post-data=STRING           u¾yj metody POST; wy˜lij STRING.
       --post-file=FILE             u¾yj metody POST; wy˜lij zawarto˜† FILE.
       --content-disposition        respektuj nagˆ¢wek Content-Disposition
                                    przy wyborze lokalnych nazw plik¢w.
       --auth-no-challenge          Wy˜lij podstawowe uwierzytelnianie HTTP
                                    bez czekania na wyzwanie serwera.

Opcje HTTPS (SSL/TLS):
       --secure-protocol=PR         wybierz bezpieczny protok¢ˆ, jeden z
                                    auto, SSLv2, SSLv3 i TLSv1.
       --no-check-certificate       nie sprawdzaj certyfikatu serwera.
       --certificate=FILE           plik certyfikatu klienta.
       --certificate-type=TYPE      typ certyfikatu klienta, PEM lub DER.
       --private-key=FILE           plik klucza prywatnego.
       --private-key-type=TYPE      typ klucza prywatnego, PEM lub DER.
       --ca-certificate=FILE        plik z zestawem certyfikat¢w CA.
       --ca-directory=DIR           katalog z list¥ hash¢w CA.
       --random-file=FILE           plik z danymi losowymi dla SSL PRNG.
       --egd-file=FILE              plik wskazuj¥cy socket EGD.

Opcje FTP:
       --ftp-user=USER              ustaw u¾ytkownika FTP na USER.
       --ftp-password=PASS          ustaw hasˆo FTP na PASS.
       --no-remove-listing          nie usuwaj plik¢w `.listing'.
       --no-glob                    wyˆ¥cz dopasowywanie nazw FTP.
       --no-passive-ftp             wyˆ¥cz "pasywny" tryb transferu.
       --retr-symlinks              przy rekurencji pobierz pliki
                                    linkowane.
       --preserve-permissions       zachowaj uprawnienia plik¢w zdalnych.

Pobieranie rekurencyjne:
  -r,  --recursive                  okre˜l pobieranie rekurencyjne.
  -l,  --level=NUMBER               maks. gˆ©boko˜† rekurencji (inf/0).
       --delete-after               usuä pliki lokalnie po pobraniu.
  -k,  --convert-links              przeksztaˆ† linki w HTML na lokalne.
  -K,  --backup-converted           przed konwersj¥ pliku X, zr¢b backup
                                    jako X.orig.
  -m,  --mirror                     skr¢t dla -N -r -l inf
                                    --no-remove-listing.
  -p,  --page-requisites            pobierz wszystkie obrazy itp. dla HTML.
       --strict-comments            wˆ¥cz ˜cisˆe (SGML) traktowanie
                                    komentarzy HTML.

Rekurencyjne akceptowanie/odrzucanie:
  -A,  --accept=LIST                rozdzielona przecinkami lista
                                    akceptowanych rozszerzeä.
  -R,  --reject=LIST                rozdzielona przecinkami lista
                                    odrzucanych rozszerzeä.
  -D,  --domains=LIST               rozdzielona przecinkami lista
                                    akceptowanych domen.
       --exclude-domains=LIST       rozdzielona przecinkami lista
                                    odrzucanych domen.
       --follow-ftp                 pod¥¾aj za linkami FTP z HTML.
       --follow-tags=LIST           rozdzielona przecinkami lista
                                    ˜ledzonych tag¢w HTML.
       --ignore-tags=LIST           rozdzielona przecinkami lista
                                    ignorowanych tag¢w HTML.
  -H,  --span-hosts                 przejd« do obcych host¢w przy rekurencji.
  -L,  --relative                   pod¥¾aj tylko za linkami wzgl©dnymi.
  -I,  --include-directories=LIST   lista dozwolonych katalog¢w.
  -X,  --exclude-directories=LIST   lista wykluczonych katalog¢w.
  -np, --no-parent                  nie wchod« do katalogu nadrz©dnego.

Raporty o bˆ©dach i sugestie prosimy przesyˆa† na adres <bug-wget@gnu.org>.
