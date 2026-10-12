# fdnpkg, swedish, sv, cp858
# This translation was created by Google AI.
# Please help the FreeDOS group to improve it.
#

#### Help ####

1.0:Detta „r en n„tverkspakethanterare f”r FreeDOS.
1.1:Anv„ndning: FDNPKG †tg„rd [parametrar]
1.2:D„r †tg„rd „r en av f”ljande:
1.3: search [str„ng]   - s”k i paketf”rr†d efter paket som inneh†ller 'str„ng'
1.4: vsearch [str„ng]  - som 'search', men skriver „ven ut k„llf”rr†d
1.5: install pkg       - installera paketet 'pkg' (eller lokal zip-fil)
1.6: remove pkg        - ta bort paketet 'pkg'
1.7: dumpcfg           - skriv ut konfigurationen som l„sts in fr†n cfg-filen
1.8: license           - skriv ut licensen f”r detta program
1.9:FDNPKG „r l„nkad mot WatTCP-versionen nedan:
1.10: install-nosrc pkg - installera 'pkg' (eller zip) utan k„llkod
1.11: install-wsrc pkg  - installera 'pkg' (eller zip) med k„llkod
1.12: showinstalled [str] - visa installerade paket som inneh†ller 'str'
1.13: checkupdates      - s”k efter tillg„ngliga uppdateringar och visa dem
1.14: update pkg        - uppdatera paketet 'pkg' till en nyare version
1.15: update [pkg]      - uppdatera 'pkg' (eller alla) till senaste versionen
1.16: listlocal [str]   - visa lokala paket som inneh†ller 'str'
1.17:FDNPKG „r l„nkad mot Watt-32-versionen nedan:
1.18: listfiles pkg     - visa filer som tillh”r paketet 'pkg'
1.19: clearcache        - rensa FDNPKG:s lokala cacheminne


### General stuff ####

2.0:%TEMP% „r inte satt! Den b”r peka p† en skrivbar katalog.
2.1:Exempel: SET TEMP=C:\\TEMP
2.2:%DOSDIR% „r inte satt! Den b”r peka p† FreeDOS-huvudkatalogen.
2.3:Exempel: SET DOSDIR=C:\\FDOS
2.4:Ogiltigt antal argument. K”r fdnpkg utan parametrar f”r hj„lp.
2.5:Inget paketf”rr†d „r konfigurerat. Du beh”ver minst ett.
2.6:Du b”r l„gga till minst en rad av f”ljande form i konfigurationsfilen:
2.7:REPO www.freedos.org/repo
2.8:Listan ”ver konfigurerade fdnpkg-f”rr†d f”ljer:
2.9:Uppdaterar %s...
2.10:Nedladdning av f”rr†d misslyckades!
2.11:Ett fel uppstod vid inl„sning av f”rr†d fr†n tmp-fil...
2.12:Varning: %TZ% inte satt! Tidsst„mplar p† filer kan vara felaktiga.
2.13:Paketdatabasen har l„sts in fr†n lokalt cacheminne.
2.14:Slut p† minne! (%s)
2.15:Fel: TCP/IP-initiering misslyckades!
2.16:L„ser in %s...
2.17:VARNING: F”r lite virtuellt minne. FDNPKG kan upptr„da op†litligt.
2.18:FEL: Kan inte skriva till katalogen '%s'. Kontrollera variabeln %%TEMP%%.
2.19:Cacheminnet har rensats.


#### Installing package ####

3.0:Paketet %s „r redan installerat! Ta bort det f”rst f”r att uppgradera.
3.1:Inget paket '%s' hittades i n„tf”rr†den.
3.2:Paketet '%s' „r inte tillg„ngligt i f”rr†den.
3.3:%s „r tillg„ngligt fr†n flera f”rr†d. V„lj vilket som ska anv„ndas:
3.4:Ditt val:
3.5:Ogiltigt val!
3.6:Laddar ner paketet %s...
3.7:Fel vid nedladdning av paket. Avbr”ts.
3.8:Fel: Ogiltigt zip-arkiv! Paketet installerades inte.
3.9:Fel: Paketet inneh†ller en fil som redan finns lokalt:
3.10:Fel: Kunde inte skapa %s!
3.11:Paketet %s har installerats.
3.12:Fel: Paketet inneh†ller inte filen %s! Inte ett giltigt FreeDOS-paket.
3.13:Fel: Nedladdat paket hade felaktig CRC. Installationen avbr”ts.
3.14:Fel: Kunde inte ”ppna det nedladdade paketet. Installationen avbr”ts.
3.15:Fel: Slut p† minne vid ber„kning av paketets CRC!
3.16:Paketet %s har installerats (med k„llkod, om tillg„nglig).
3.17:Paketet %s har installerats (utan k„llkod).
3.18:Paketet %s „r redan installerat! Du kanske vill anv„nda 'update'.
3.19:Paket %s installerat: %d filer extraherade, %d fel.
3.20:Fel: Paketet inneh†ller en krypterad fil:
3.21:Fel: Kunde inte ”ppna l„nkfilen '%s' f”r l„sning.
3.22:Fel: Kunde inte ”ppna l„nkfilen '%s' f”r skrivning.
3.23:Fel: Paketet inneh†ller ett ogiltigt filnamn:


#### Removing package ####

4.0:Paketet %s „r inte installerat och togs d„rf”r inte bort.
4.1:Fel vid ”ppning av lst-fil!
4.2:Gr„ns f”r Dirlist n†dd. Katalogen %s kommer inte att tas bort!
4.3:Slut p† minne! Kunde inte spara katalogen %s!
4.4:tar bort %s
4.5:Paketet %s har tagits bort.


#### Searching package ####

5.0:Inget paket matchade s”kningen.
5.1:Slut p† minne vid bearbetning av paketbeskrivningar!


#### Package database handling ####

6.0:Fel: Ogiltig indexfil (felaktigt sidhuvud)! F”rr†det hoppades ”ver.
6.1:Fel: Ogiltig indexfil! F”rr†det hoppades ”ver.
6.2:Fel: Slut p† minne vid inl„sning av paketdatabas!
6.3:Fel: Kunde inte ”ppna datafilen vid '%s'.
6.4:Varning: Kunde inte ”ppna databasens cachefil vid %s!
6.5:Meddelande fr†n %s:


#### Loading configuration ####

7.0:Fel: f”rr†det '%s' „r listat tv† g†nger!
7.1:Fel: Kunde inte ”ppna konfigurationsfilen '%s'!
7.2:Varning: token utan v„rde p† rad %d
7.3:Varning: Token-spill i konfigurationsfilen p† rad %d
7.4:Varning: token med tomt v„rde p† rad %d
7.5:Varning: efterf”ljande blanksteg efter v„rde p† rad %d
7.6:Ett f”rr†d utesl”ts: f”r m†nga konfigurerade (max=%d)
7.8:Varning: Ok„nt token '%s' p† rad %d
7.9:Varning: V„rdespill i konfigurationsfilen p† rad %d
7.10:Varning: Ignorerade ett ogiltigt '%s'-v„rde p† rad %d
7.11:Varning: Ogiltigt 'DIR'-direktiv hittades p† rad %d
7.12:Fel: DIR-s”kv„gen „r f”r l†ng p† rad %d
7.13:Fel: Hittade icke-existerande milj”variabel '%s' p† rad %d
7.14:Fel: f”rr†det '%s' „r listat tv† g†nger!
7.15:Fel: anpassad katalog '%s' „r inte en giltig absolut s”kv„g!
7.16:Fel: anpassad katalog '%s' „r ett reserverat namn!


#### Unzipping package ####

8.0:Slut p† minne!
8.1:ok„nd zip-signatur: 0x%08lx
8.2:Fel: Paketet har en fil komprimerad med en metod som inte st”ds (%d):
8.3:Fel vid extrahering av '%s' till '%s'!


#### Handling the local list of installed packages ####

9.0:Fel: Kunde inte komma †t katalogen %s.
9.1:Fel: Det lokala paketet %s hittades inte.


#### Package updates ####

10.0:%s (lokal version: %s)
10.1:version %s p† %s
10.2:Ingen uppdatering hittades f”r paketet '%s'.
10.3:En uppdatering f”r '%s' har hittats. Uppdatering p†g†r...
10.4:%d paket uppdaterade, %d paket misslyckades.
10.5:%d paketuppdatering(ar) hittades.
10.6:Paketet %s „r inte installerat.
10.7:S”ker efter uppdateringar...


#### Downloading ####

11.0:Laddar ner %s... %ld byte

