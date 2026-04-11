# Language: Slovenian
# File ending: SL
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

EDLIN 2.14

Program edlin je majhen vrstiüni urejevalnik, napisan za FreeDOS kot
funkcionalen klon starega programa MS-DOS edlin. Od MS edlina se razlikuje
po tem, da je prviü, prosta programska oprema, in drugiü, uporabniÁki vmesnik
je na nekaterih mestih nekoliko drugaüen. Razlog za razliko je v tem, da
uporabniku ni treba vnaÁati nadzornih znakov, ki jih zahteva sintaksa
MS edlina.

KLICANJE PROGRAMA EDLIN

Program edlin se kliüe bodisi samostojno:

  edlin

bodisi z imenom datoteke, ki se naloßi ob zagonu:

  edlin datoteka

NOTRANJI UKAZI PROGRAMA EDLIN

V naslednjih seznamih ukazov oglati oklepaji predstavljajo neobvezne dele.
Simbol # predstavlja Átevilko vrstice, ki je bodisi zaporedje Átevilk, pika
(.) za trenutno vrstico, znak za dolar ($) za zadnjo vrstico v datoteki ali
Átevilka vrstice, priÁteta ali odÁteta od druge Átevilke vrstice, tako da

  .,.+1p

izpiÁe trenutno vrstico in naslednjo vrstico.

Znak za dolar v naslednjih seznamih predstavlja niz znakov. Lahko so
obdani z enojnimi ali dvojnimi narekovaji in lahko vsebujejo naslednja
uhajajoüa zaporedja (escape sequences):

  \a - opozorilo (pisk)
  \b - vraüalka (backspace)
  \e - escape
  \f - skok na novo stran (formfeed)
  \t - vodoravni tabulator
  \v - navpiüni tabulator
  \" - dvojni narekovaj
  \' - enojni narekovaj
  \. - pika
  \\ - poÁevnica nazaj
  \xXX (kjer je X ÁestnajstiÁka Átevilka 0-9, a-f) - ÁestnajstiÁka konstanta
  \dddd (kjer je d desetiÁka Átevilka 0-9) - desetiÁka konstanta
  \OOO (kjer je O osmiÁka Átevilka 0-7) - osmiÁka konstanta
  \^C - nadzorni znak (control character)

Program edlin podpira naslednjo sintakso:

# - UREJANJE ENE VRSTICE

Program edlin izpiÁe eno vrstico, doloüeno s Átevilko, in naslednja vnesena
vrstica zamenja izpisano vrstico v datoteki.

a - DODAJANJE (APPEND)

Ta ukaz je enakovreden $+1i .

[#],[#],#,[#]c - KOPIRANJE OBSEGA VRSTIC

Ta ukaz kopira blok zaporednih vrstic na drugo mesto v pomnilniku.
Parametri so:

  * Prva vrstica, ki jo ßelite kopirati (privzeto = trenutna vrstica)
  * Zadnja vrstica, ki jo ßelite kopirati (privzeto = trenutna vrstica)
  * Vrstica, pred katero ßelite vstaviti blok vrstic
  * Êtevilo kopij bloka (privzeto = 1)

Po kopiranju vrstic lahko uporabite ukaz l (list), da vidite pravilno
preÁtevilüene vrstice.

[#][,#]d - BRISANJE BLOKA VRSTIC

Ta ukaz izbriÁe blok zaporednih vrstic. Parametra sta prva in zadnja
vrstica bloka, ki ga ßelite izbrisati.

¨e izpustite drugi parameter, izbriÁe samo vrstico, doloüeno v prvem. ¨e
izpustite prvega, izbriÁe blok od trenutne vrstice do vrstice, doloüene v
drugem parametru (ne pozabite na vejico). Izpustitev obeh parametrov povzroüi
izbris trenutne vrstice.

e datoteka - SHRANI IN IZHOD

Ta ukaz je enakovreden zaporedju:

  w datoteka
  q

[#]i - NA¨IN VSTAVLJANJA

Ta ukaz preklopi v naüin vstavljanja. Parameter je Átevilka vrstice, pred
katero ßelite vstaviti vrstice.

Med vstavljanjem so dovoljena uhajajoüa zaporedja. Za izhod iz naüina
vstavljanja vnesite piko (.) v prazno vrstico (üe potrebujete vrstico samo s
piko, uporabite uhajajoüi znak).

Po izhodu iz naüina vstavljanja vrstica za vstavljenim besedilom postane
trenutna vrstica, razen üe je bilo besedilo dodano na koncu; v tem primeru
zadnja vrstica postane nova trenutna vrstica.

[#][,#]l - IZPIS VRSTIC

Ta ukaz izpiÁe vrstice besedila na zaslon. ¨e izpustite prvi parameter, se
izpis zaüne 11 vrstic pred trenutno vrstico. Izpustitev drugega parametra
prikaße stran besedila, ki se zaüne z vrstico v prvem parametru. Izpustitev
obeh prikaße stran besedila od 11 vrstic pred trenutno vrstico. ¨e je vrstic
veü, kot jih gre na zaslon, se program po vsaki strani ustavi.

[#],[#],#m - PREMIK BLOKA

Ta ukaz premakne blok besedila pred vrstico, doloüeno v tretjem parametru.
Deluje kot kopiranje in nato brisanje prvotnega bloka.

[#][,#]p - STRAN (PAGE)

Podobno kot l, le da se privzeta stran zaüne s trenutno vrstico namesto 11
vrstic prej.

q - IZHOD (QUIT)

Razumljivo samo po sebi. Izhod brez nadaljnjega shranjevanja.

[#][,#][?]r$,$ - ZAMENJAVA NIZA

Ta ukaz zamenja vse pojavitve prvega niza z drugim med dvema doloüenima
vrsticama. IzpuÁüen prvi parameter zaüne zamenjavo v vrstici po trenutni;
izpuÁüen drugi parameter ustavi zamenjavo pri zadnji vrstici datoteke.

VpraÁaj (?) pred zamenjavo zahteva potrditev.

[#][,#][?]s$ - ISKANJE PODNIZA

Ta ukaz iÁüe prvo vrstico, ki vsebuje doloüen podniz. Izpustitev prvega
parametra zaüne iskanje v trenutni vrstici; izpustitev drugega ustavi
iskanje na koncu datoteke.

VpraÁaj (?) sproßi potrditveno sporoüilo. Odgovor "N" (Ne) nadaljuje iskanje;
odgovor "D" (Da) ga konüa.

Trenutna vrstica se ponastavi na vrstico, kjer se je iskanje uspeÁno konüalo.

[#]t datoteka - PRENOS DATOTEKE

Ta ukaz vstavi vsebino datoteke pred doloüeno Átevilko vrstice. ¨e je
Átevilka vrstice izpuÁüena, je privzeta trenutna vrstica.

[#]w datoteka - ZAPIS DATOTEKE

Ta ukaz zapiÁe doloüeno Átevilo vrstic v datoteko. Brez parametra zapiÁe
celoten pomnilnik v datoteko.

AVTOR/VZDR¶EVALEC

Gregory Pietsch, gpietsch@comcast.net
