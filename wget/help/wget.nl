# Language: Dutch
# File ending: nl
# Codepage: 850
# This translation was created by Google AI.
# Please help the FreeDOS group to improve it.

GNU Wget 1.11.1, een niet-interactieve netwerk downloader.
Gebruik: wget.exe [OPTION]... [URL]...

Verplichte argumenten voor lange opties gelden ook voor korte opties.

Starten:
  -V,  --version                    toon de versie van Wget en sluit af.
  -h,  --help                       toon deze help.
  -b,  --background                 ga naar de achtergrond na het starten.
  -e,  --execute=COMMAND            voer een `.wgetrc'-stijl commando uit.

Logging en invoerbestand:
  -o,  --output-file=FILE           log berichten naar FILE.
  -a,  --append-output=FILE         voeg berichten toe aan FILE.
  -d,  --debug                      toon veel debug-informatie.
       --wdebug                     toon Watt-32 debug-uitvoer.
  -q,  --quiet                      stil (geen uitvoer).
  -v,  --verbose                    wees uitgebreid (standaard).
  -nv, --no-verbose                 schakel uitgebreidheid uit,
                                    zonder stil te zijn.
  -i,  --input-file=FILE            download URL's gevonden in FILE.
  -F,  --force-html                 behandel invoerbestand als HTML.
  -B,  --base=URL                   voeg URL toe aan relatieve links.

Downloaden:
  -t,  --tries=NUMBER               stel aantal pogingen in op NUMBER
                                    (0 is oneindig).
       --retry-connrefused          probeer opnieuw, zelfs als de
                                    verbinding is geweigerd.
  -O,  --output-document=FILE       schrijf documenten naar FILE.
  -nc, --no-clobber                 sla downloads over die bestaande
                                    bestanden zouden overschrijven.
  -c,  --continue                   hervat een gedeeltelijk gedownload
                                    bestand.
       --progress=TYPE              selecteer het type
                                    voortgangsindicator.
  -N,  --timestamping               download bestanden niet opnieuw
                                    tenzij ze nieuwer zijn.
  -S,  --server-response            toon de reactie van de server.
       --spider                     download niets.
  -T,  --timeout=SECONDS            stel alle time-outs in op SECONDS.
       --dns-timeout=SECS           stel DNS time-out in op SECS.
       --connect-timeout=SECS       stel verbindings time-out in op
                                    SECS.
       --read-timeout=SECS          stel lees time-out in op SECS.
  -w,  --wait=SECONDS               wacht SECONDS tussen downloads.
       --waitretry=SECONDS          wacht 1..SECONDS tussen pogingen.
       --random-wait                wacht 0...2*WAIT sec tussen
                                    downloads.
       --no-proxy                   schakel proxy expliciet uit.
  -Q,  --quota=NUMBER               stel downloadquota in op NUMBER.
       --bind-address=ADDRESS       bind aan lokaal ADDRESS (naam/IP).
       --limit-rate=RATE            beperk de downloadsnelheid tot RATE.
       --no-dns-cache               schakel DNS-zoekcache uit.
       --restrict-file-names=OS     beperk tekens in bestandsnamen voor
                                    OS.
       --ignore-case                negeer hoofdletters/kleine letters.
  -4,  --inet4-only                 verbind alleen met IPv4-adressen.
  -6,  --inet6-only                 verbind alleen met IPv6-adressen.
       --prefer-family=FAMILY       verbind eerst met deze familie,
                                    een van IPv6, IPv4 of none.
       --user=USER                  stel FTP/HTTP-gebruiker in op USER.
       --password=PASS              stel FTP/HTTP-wachtwoord in op PASS.

Mappen:
  -nd, --no-directories             maak geen mappen aan.
  -x,  --force-directories          forceer het aanmaken van mappen.
  -nH, --no-host-directories        maak geen host-mappen aan.
       --protocol-directories       gebruik de protocolnaam in mappen.
  -P,  --directory-prefix=PREFIX    sla bestanden op in PREFIX/...
       --cut-dirs=NUMBER            negeer NUMBER externe
                                    mapcomponenten.

HTTP-opties:
       --http-user=USER             stel HTTP-gebruiker in op USER.
       --http-password=PASS         stel HTTP-wachtwoord in op PASS.
       --no-cache                   sta niet toe dat de server data
                                    cacht.
  -E,  --html-extension             sla HTML-documenten op met `.html'.
       --ignore-length              negeer het `Content-Length'
                                    header-veld.
       --header=STRING              voeg STRING in tussen de headers.
       --max-redirect               maximaal toegestane omleidingen
                                    per pagina.
       --proxy-user=USER            stel USER in als proxy-gebruiker.
       --proxy-password=PASS        stel PASS in als proxy-wachtwoord.
       --referer=URL                neem `Referer: URL' header op in
                                    aanvraag.
       --save-headers               sla HTTP-headers op in een bestand.
  -U,  --user-agent=AGENT           identificeer als AGENT in plaats
                                    van Wget.
       --no-http-keep-alive         schakel HTTP keep-alive uit.
       --no-cookies                 gebruik geen cookies.
       --load-cookies=FILE          laad cookies uit FILE voor sessie.
       --save-cookies=FILE          sla cookies op in FILE na sessie.
       --keep-session-cookies       laad en sla sessie-cookies op.
       --post-data=STRING           gebruik POST-methode; verzend STRING.
       --post-file=FILE             gebruik POST-methode; verzend FILE
                                    inhoud.
       --content-disposition        respecteer de Content-Disposition
                                    header bij het kiezen van namen.
       --auth-no-challenge          Stuur Basic HTTP-authenticatie
                                    zonder te wachten op de server.

HTTPS (SSL/TLS)-opties:
       --secure-protocol=PR         kies een veilig protocol, een van
                                    auto, SSLv2, SSLv3 en TLSv1.
       --no-check-certificate       valideer het servercertificaat
                                    niet.
       --certificate=FILE           clientcertificaatbestand.
       --certificate-type=TYPE      type clientcertificaat, PEM of DER.
       --private-key=FILE           bestand met priv‚sleutel.
       --private-key-type=TYPE      type priv‚sleutel, PEM of DER.
       --ca-certificate=FILE        bestand met de bundel van CA's.
       --ca-directory=DIR           map met de CA hashlijst.
       --random-file=FILE           bestand met willekeurige data voor
                                    SSL PRNG.
       --egd-file=FILE              bestand met de naam van de
                                    EGD-socket.

FTP-opties:
       --ftp-user=USER              stel FTP-gebruiker in op USER.
       --ftp-password=PASS          stel FTP-wachtwoord in op PASS.
       --no-remove-listing          verwijder geen `.listing'
                                    bestanden.
       --no-glob                    schakel FTP bestandsnaam-globbing
                                    uit.
       --no-passive-ftp             schakel de "passieve" modus uit.
       --retr-symlinks              haal bij recursie gekoppelde
                                    bestanden op.
       --preserve-permissions       behoud externe bestandsrechten.

Recursief downloaden:
  -r,  --recursive                  specificeer recursief downloaden.
  -l,  --level=NUMBER               maximale recursiediepte (inf/0 is
                                    oneindig).
       --delete-after               verwijder bestanden lokaal na
                                    download.
  -k,  --convert-links              maak links in HTML lokaal.
  -K,  --backup-converted           maak voor conversie een back-up
                                    van bestand X als X.orig.
  -m,  --mirror                     snelkoppeling voor -N -r -l inf
                                    --no-remove-listing.
  -p,  --page-requisites            haal alle afbeeldingen etc. op
                                    voor HTML.
       --strict-comments            schakel strikte (SGML) verwerking
                                    van HTML-commentaar in.

Recursief accepteren/weigeren:
  -A,  --accept=LIST                kommagescheiden lijst van
                                    geaccepteerde extensies.
  -R,  --reject=LIST                kommagescheiden lijst van
                                    geweigerde extensies.
  -D,  --domains=LIST               kommagescheiden lijst van
                                    geaccepteerde domeinen.
       --exclude-domains=LIST       kommagescheiden lijst van
                                    geweigerde domeinen.
       --follow-ftp                 volg FTP-links vanuit
                                    HTML-documenten.
       --follow-tags=LIST           kommagescheiden lijst van gevolgde
                                    HTML-tags.
       --ignore-tags=LIST           kommagescheiden lijst van
                                    genegeerde HTML-tags.
  -H,  --span-hosts                 ga naar vreemde hosts bij recursie.
  -L,  --relative                   volg alleen relatieve links.
  -I,  --include-directories=LIST   lijst van toegestane mappen.
  -X,  --exclude-directories=LIST   lijst van uitgesloten mappen.
  -np, --no-parent                  stijg niet op naar de
                                    bovenliggende map.

Stuur bugrapporten en suggesties naar <bug-wget@gnu.org>.
