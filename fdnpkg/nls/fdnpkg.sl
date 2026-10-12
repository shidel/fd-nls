# FDNPKG language file
#
# Language..: Slovene
# Translator: Matej Horvat (http://matejhorvat.si/)
# Updated...: 2016-12-12 / 2026-09-30
# Codepage..: 852;
# former english texts: 7.3, 7.4, 7.9, 7.15 and 7.16 now translated by Google AI

#### Help ####

1.0:To je internetni upravitelj paketov za FreeDOS.
1.1:Uporaba: FDNPKG dejavnost [parametri]
1.2:kjer je dejavnost ena od sledeüih:
1.3: SEARCH [niz]          PoiÁüe paket, ki vsebuje niz v internetnih zbirkah.
1.4: VSEARCH [niz]         Enako kot SEARCH, a izpiÁe Áe pakete z izvorno kodo.
1.5: INSTALL paket         Namesti ßeleni paket oz. lokalno ZIP datoteko.
1.6: REMOVE paket          Odstrani paket.
1.7: DUMPCFG               IzpiÁe nastavitve.
1.8: LICENSE               IzpiÁe licenco tega programa.
1.9:FDNPKG uporablja sledeüo verzijo WatTCP:
1.10: INSTALL-NOSRC paket   Enako kot INSTALL, toda ne namesti izvorne kode.
1.11: INSTALL-WSRC paket    Enako kot INSTALL, toda namesti izvorno kodo.
1.12: SHOWINSTALLED [niz]   IzpiÁe nameÁüene pakete, ki vsebujejo niz.
1.13: CHECKUPDATES          Preveri, ali obstajajo posodobitve, in jih izpiÁe.
1.14: UPDATE                Posodobi vse pakete na najnovejÁo verzijo.
1.15: UPDATE paket          Posodobi doloüen paket na najnovejÁo verzijo.
1.16: LISTLOCAL [niz]       IzpiÁe nameÁüene pakete, ki vsebujejo niz.
1.17: FDNPKG uporablja sledeüo verzijo Watt-32:
1.18: LISTFILES paket       IzpiÁe datoteke, ki pripadajo paketu.
1.19: clearcache            poüisti lokalni predpomnilnik FDNPKG


### General stuff ####

2.0:Spremenljivka TEMP ni nastavljena! Kaße naj na imenik, kamor se da pisati.
2.1:Primer: SET TEMP=C:\TEMP
2.2:Spremenljivka DOSDIR ni nastavljena! Kaße naj na glavni imenik FreeDOSa.
2.3:Primer: SET DOSDIR=C:\FDOS
2.4:Neveljavno Átevilo parametrov. Zaßenite FDNPKG brez parametrov za pomoü.
2.5:Nastavljena ni nobena zbirka. Potrebujete vsaj eno.
2.6:V nastavitveno datoteko dodajte vsaj en vnos sledeüe oblike:
2.7:REPO www.freedos.org/repo
2.8:Trenutno nastavljene zbirke za FDNPKG:
2.9:Osveßujem %s...
2.10:Prenos zbirke ni uspel!
2.11:Ni bilo mogoüe prebrati zbirke iz zaüasne datoteke.
2.12:Opozorilo: %TZ% ni nastavljena. ¨asi novih datotek morda ne bodo toüni.
2.13:Baza paketov naloßena iz predpomnilnika.
2.14:Ni dovolj spomina! (%s)
2.15:Napaka: Zagon TCP/IP ni uspel!
2.16:PrenaÁam %s...
2.17:OPOZORILO: Navideznega pomnilnika je malo. FDNPKG morda ne bo deloval pravilno.
2.18:NAPAKA: Ni mogoüe pisati v imenik %s. Preverite svojo spremenljivko TEMP.
2.19:Predpomnilnik poüiÁüen.


#### Installing package ####

3.0:Paket %s je ße nameÁüen. ¨e ga ßelite posodobiti, ga najprej odstranite.
3.1:Paketa %s ni mogoüe najti v internetnih zbirkah.
3.2:Paketa %s ni v zbirkah.
3.3:%s je na voljo v veü kot eni zbirki. Izberite eno:
3.4:VaÁa izbira:
3.5:Neveljavna izbira!
3.6:PrenaÁam paket %s...
3.7:Napaka pri prenosu paketa. Prenos prekinjen.
3.8:Napaka: Neveljavna ZIP datoteka! Paketa ni mogoüe namestiti.
3.9:Napaka: Paket vsebuje datoteko, ki ße obstaja na tem raüunalniku:
3.10:Napaka: Ni mogoüe ustvariti %s.
3.11:Paket %s nameÁüen.
3.12:Napaka: Paket ne vsebuje datoteke %s; to ni veljaven FreeDOS paket.
3.13:Napaka: PreneÁen paket ima napaüen CRC. Namestitev prekinjena.
3.14:Napaka: Ni mogoüe odpreti preneÁenega paketa. Namestitev prekinjena.
3.15:Napaka: Ni dovolj spomina za izraüun CRC vrednosti paketa.
3.16:Paket %s nameÁüen (z izvorno kodo, üe je ta priloßena).
3.17:Paket %s nameÁüen (brez izvorne kode).
3.18:Paket %s je ße nameÁüen! Morda ßelite uporabiti dejavnost UPDATE.
3.19:Paket %s nameÁüen: %d datotek razÁirjenih, %d napak.
3.20:Napaka: paket vsebuje Áifrirano datoteko:
3.21:Napaka: ni mogoüe odpreti povezovalne datoteke %s za branje.
3.22:Napaka: ni mogoüe odpreti povezovalne datoteke %s za pisanje.
3.23:Napaka: paket vsebuje neveljavno ime datoteke:


#### Removing package ####

4.0:Paket %s ni nameÁüen, zato ga ni mogoüe odstraniti.
4.1:Ni mogoüe odpreti datoteke LST.
4.2:Doseßena omejitev dolßine seznama imenikov. Imenik %s ne bo odstranjen!
4.3:Ni dovolj spomina. Ni mogoüe shraniti imenika %s!
4.4:odstranjujem %s
4.5:Paket %s odstranjen.

#### Searching package ####

5.0:Noben paket ne ustreza iskalnim zahtevam.
5.1:Ni dovolj spomina za procesiranje opisov paketov!


#### Package database handling ####

6.0:Napaka: Neveljavno kazalo (napaüna glava). Zbirka bo preskoüena.
6.1:Napaka: Neveljavno kazalo. Zbirka bo preskoüena.
6.2:Napaka: Ni dovolj spomina za bazo paketov!
6.3:Napaka: Ni mogoüe odpreti datoteke %s.
6.4:Opozorilo: Ni mogoüe odpreti predpomnilne datoteke %s.
6.5:Sporoüilo od %s:


#### Loading configuration ####

7.0:Napaka: Zbirka %s je naÁteta dvakrat!
7.1:Napaka: Ni mogoüe odpreti nastavitvene datoteke %s.
7.2:Opozorilo: ukaz brez vrednosti v vrstici %d
7.3:Opozorilo: prekoraüitev ukaza nastavitvene datoteke v vrstici Át. %d
7.4:Opozorilo: ukaz s prazno vrednostjo v vrstici Át. %d
7.5:Opozorilo: nevidni znaki na koncu vrstice Át. %d
7.6:Vsaj ena zbirka je bila izpuÁüena; preveü jih je naÁtetih (omejitev je %d).
7.8:Opozorilo: neznan ukaz "%s" v vrstici %d
7.9:Opozorilo: prekoraüitev vrednosti nastavitvene datoteke v vrstici Át. %d
7.10:Opozorilo: Vrednost "%s" v vrstici Át. %d prezrta.
7.11:Opozorilo: Neveljaven ukaz DIR v vrstici %d.
7.12:Napaka: Pot DIR v vrstici Át. %d je predolga.
7.13:Napaka: Okoljska spremenljivka %s, omenjena v vrstici Át. %d, ne obstaja.
7.14:Napaka: Zbirka %s je naÁteta dvakrat!
7.15:Napaka: imenik po meri '%s' ni veljavna absolutna pot!
7.16:Napaka: custom dir '%s' is a reserved name!



#### Unziping package ####

8.0:Ni dovolj spomina!
8.1:Neznana vrsta datoteke ZIP: 0x%08x
8.2:Napaka: Paket vsebuje datoteko, ki je stisnjena z nepodprto metodo (%d):
8.3:Napaka med razÁirjanjem %s v %s!


#### Handling the local list of installed packages ####

9.0:Napaka: Dostop do imenika %s ni mogoü.
9.1:Napaka: Ni mogoüe najti lokalnega paketa %s.


#### Package updates ####

10.0:%s (nameÁüena verzija %s)
10.1:verzija %s na %s
10.2:Za paket %s ni posodobitve.
10.3:Obstaja posodobitev za paket %s. Posodobitev poteka...
10.4:%d paketov pregledanih, %d paketov posodobljenih, %d napak.
10.5:Najdenih %d posodobitev.
10.6:Paket %s ni nameÁüen.
10.7:Iskanje posodobitev...


#### Downloading ####

11.0:PrenaÁam %s... %ld bajtov
