# Language: Swedish
# File ending: sv
# Codepage: 850
# This translation was created by Google AI.
# Please help the FreeDOS group to improve it.

GNU Wget 1.11.1, en icke-interaktiv n„tverksh„mtare.
Anv„ndning: wget.exe [OPTION]... [URL]...

Obligatoriska argument f”r l†nga flaggor „r obligatoriska „ven f”r korta.

Start:
  -V,  --version                    visa versionen av Wget och avsluta.
  -h,  --help                       visa denna hj„lp.
  -b,  --background                 g† till bakgrunden efter start.
  -e,  --execute=COMMAND            k”r ett kommando i `.wgetrc'-stil.

Loggning och indatafil:
  -o,  --output-file=FILE           logga meddelanden till FILE.
  -a,  --append-output=FILE         l„gg till meddelanden i FILE.
  -d,  --debug                      skriv ut mycket fels”kningsinfo.
       --wdebug                     skriv ut Watt-32 fels”kningsutdata.
  -q,  --quiet                      tyst (ingen utdata).
  -v,  --verbose                    var utf”rlig (detta „r standard).
  -nv, --no-verbose                 inaktivera utf”rlighet, utan att
                                    vara tyst.
  -i,  --input-file=FILE            h„mta URL:er som hittas i FILE.
  -F,  --force-html                 behandla indatafil som HTML.
  -B,  --base=URL                   l„gg till URL f”re relativa l„nkar
                                    i -F -i fil.

Nedladdning:
  -t,  --tries=NUMBER               s„tt antal f”rs”k till NUMBER
                                    (0 „r obegr„nsat).
       --retry-connrefused          f”rs”k igen „ven om anslutningen
                                    nekas.
  -O,  --output-document=FILE       skriv dokument till FILE.
  -nc, --no-clobber                 hoppa ”ver nedladdningar som skulle
                                    skriva ”ver befintliga filer.
  -c,  --continue                   †teruppta en delvis nedladdad fil.
       --progress=TYPE              v„lj typ av f”rloppsindikator.
  -N,  --timestamping               ladda inte ner filer om de inte „r
                                    nyare „n lokala.
  -S,  --server-response            skriv ut serverns svar.
       --spider                     ladda inte ner n†got.
  -T,  --timeout=SECONDS            s„tt alla tidsgr„nser till SECONDS.
       --dns-timeout=SECS           s„tt DNS-tidsgr„ns till SECS.
       --connect-timeout=SECS       s„tt anslutningstidsgr„ns till SECS.
       --read-timeout=SECS          s„tt l„stidsgr„ns till SECS.
  -w,  --wait=SECONDS               v„nta SECONDS mellan nedladdningar.
       --waitretry=SECONDS          v„nta 1..SECONDS mellan f”rs”k.
       --random-wait                v„nta 0...2*WAIT sekunder mellan
                                    nedladdningar.
       --no-proxy                   st„ng uttryckligen av proxy.
  -Q,  --quota=NUMBER               s„tt nedladdningskvot till NUMBER.
       --bind-address=ADDRESS       bind till lokal ADDRESS (namn/IP).
       --limit-rate=RATE            begr„nsa nedladdningshastighet till
                                    RATE.
       --no-dns-cache               inaktivera cache f”r DNS-s”kningar.
       --restrict-file-names=OS     begr„nsa tecken i filnamn f”r OS.
       --ignore-case                ignorera skiftl„ge vid s”kning.
  -4,  --inet4-only                 anslut endast till IPv4-adresser.
  -6,  --inet6-only                 anslut endast till IPv6-adresser.
       --prefer-family=FAMILY       anslut f”rst till denna familj,
                                    en av IPv6, IPv4 eller none.
       --user=USER                  s„tt FTP- och HTTP-anv„ndare till
                                    USER.
       --password=PASS              s„tt FTP- och HTTP-l”senord till
                                    PASS.

Kataloger:
  -nd, --no-directories             skapa inga kataloger.
  -x,  --force-directories          tvinga skapande av kataloger.
  -nH, --no-host-directories        skapa inga v„rdkataloger.
       --protocol-directories       anv„nd protokollnamn i kataloger.
  -P,  --directory-prefix=PREFIX    spara filer i PREFIX/...
       --cut-dirs=NUMBER            ignorera NUMBER
                                    fj„rrkatalogsdelar.

HTTP-alternativ:
       --http-user=USER             s„tt HTTP-anv„ndare till USER.
       --http-password=PASS         s„tt HTTP-l”senord till PASS.
       --no-cache                   till†t inte servercachad data.
  -E,  --html-extension             spara HTML-dokument med
                                    `.html'-„ndelse.
       --ignore-length              ignorera `Content-Length'-huvudet.
       --header=STRING              infoga STRING bland huvuden.
       --max-redirect               maximalt till†tna omdirigeringar per
                                    sida.
       --proxy-user=USER            s„tt USER som proxy-anv„ndarnamn.
       --proxy-password=PASS        s„tt PASS som proxy-l”senord.
       --referer=URL                inkludera `Referer: URL'-huvud i
                                    beg„ran.
       --save-headers               spara HTTP-huvuden i en fil.
  -U,  --user-agent=AGENT           identifiera som AGENT ist„llet f”r
                                    Wget.
       --no-http-keep-alive         inaktivera HTTP keep-alive.
       --no-cookies                 anv„nd inte kakor (cookies).
       --load-cookies=FILE          ladda kakor fr†n FILE f”re session.
       --save-cookies=FILE          spara kakor till FILE efter session.
       --keep-session-cookies       ladda och spara sessionskakor.
       --post-data=STRING           anv„nd POST-metoden; skicka STRING.
       --post-file=FILE             anv„nd POST-metoden; skicka FILE:s
                                    inneh†ll.
       --content-disposition        respektera Content-Disposition-huvud
                                    vid val av lokala filnamn.
       --auth-no-challenge          Skicka Basic HTTP-autentisering utan
                                    att v„nta p† serverns utmaning.

HTTPS (SSL/TLS)-alternativ:
       --secure-protocol=PR         v„lj s„kert protokoll, ett av auto,
                                    SSLv2, SSLv3 och TLSv1.
       --no-check-certificate       validera inte serverns certifikat.
       --certificate=FILE           klientcertifikatsfil.
       --certificate-type=TYPE      klientcertifikatstyp, PEM eller DER.
       --private-key=FILE           privat nyckelfil.
       --private-key-type=TYPE      privat nyckeltyp, PEM eller DER.
       --ca-certificate=FILE        fil med CA-paketet.
       --ca-directory=DIR           katalog d„r CA-hashlista „r lagrad.
       --random-file=FILE           fil med slumpm„ssig data f”r SSL
                                    PRNG.
       --egd-file=FILE              fil som namnger EGD-uttaget.

FTP-alternativ:
       --ftp-user=USER              s„tt FTP-anv„ndare till USER.
       --ftp-password=PASS          s„tt FTP-l”senord till PASS.
       --no-remove-listing          ta inte bort `.listing'-filer.
       --no-glob                    st„ng av FTP-filnamnsmatchning.
       --no-passive-ftp             inaktivera "passivt" ”verf”ringsl„ge.
       --retr-symlinks              vid rekursion, h„mta l„nkade filer.
       --preserve-permissions       bevara fj„rrfilsr„ttigheter.

Rekursiv nedladdning:
  -r,  --recursive                  ange rekursiv nedladdning.
  -l,  --level=NUMBER               maximalt rekursionsdjup (inf/0 f”r
                                    o„ndligt).
       --delete-after               radera filer lokalt efter
                                    nedladdning.
  -k,  --convert-links              g”r l„nkar i HTML lokala.
  -K,  --backup-converted           innan filen X konverteras, g”r en
                                    s„kerhetskopia som X.orig.
  -m,  --mirror                     genv„g f”r -N -r -l inf
                                    --no-remove-listing.
  -p,  --page-requisites            h„mta alla bilder etc. f”r
                                    HTML-sidan.
       --strict-comments            sl† p† strikt (SGML) hantering av
                                    HTML-kommentarer.

Rekursiv acceptera/avvisa:
  -A,  --accept=LIST                kommaseparerad lista ”ver
                                    accepterade „ndelser.
  -R,  --reject=LIST                kommaseparerad lista ”ver avvisade
                                    „ndelser.
  -D,  --domains=LIST               kommaseparerad lista ”ver
                                    accepterade dom„ner.
       --exclude-domains=LIST       kommaseparerad lista ”ver avvisade
                                    dom„ner.
       --follow-ftp                 f”lj FTP-l„nkar fr†n HTML-dokument.
       --follow-tags=LIST           kommaseparerad lista ”ver f”ljda
                                    HTML-taggar.
       --ignore-tags=LIST           kommaseparerad lista ”ver ignorerade
                                    HTML-taggar.
  -H,  --span-hosts                 g† till fr„mmande v„rdar vid
                                    rekursion.
  -L,  --relative                   f”lj endast relativa l„nkar.
  -I,  --include-directories=LIST   lista ”ver till†tna kataloger.
  -X,  --exclude-directories=LIST   lista ”ver uteslutna kataloger.
  -np, --no-parent                  g† inte upp till ”verordnad katalog.

Skicka felrapporter och f”rslag till <bug-wget@gnu.org>.
