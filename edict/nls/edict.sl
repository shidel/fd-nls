# Language: Slovenian
# File ending: SL
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

TITLE=Enhanced Disk Image Creation Tool, Razliüica %_ %s
COPYRIGHT=Copyright (c) 2018, Jerome Shidel

HELP_00="Informacije o moßnostih EDICT: "
HELP_01=
HELP_02="  /d <pogon>     doloüi ürko pogona"
HELP_03="  /f <ime_datoteke> doloüi ime datoteke"
HELP_04="  /p <omejitev>  omeji najveüje Átevilo dodatnih prehodov"
HELP_05=
HELP_06="  /t <vrsta>     preglasi BIOS in izberi nastavitve za vrsto diska"
HELP_07="                 (0=360Kib, 1=1.2Mib, 2=720Kib, 3=1.44Mib, a=auto)"
HELP_08=
HELP_09="  /c <Átevilka>  preglasi Átevilo valjev/sledi (0-1023)"
HELP_0a="  /r <Átevilka>  preglasi Átevilo strani/glav na sled (0-255)"
HELP_0b="  /s <Átevilka>  preglasi Átevilo sektorjev na stran (0-63)"
HELP_0c="  /b <Átevilka>  preglasi Átevilo bajtov na sektor (1-8192)"
HELP_0d=
HELP_0e="  /h             prikaßi pomoü"

HELP_??="  /T             testiraj samo branje"
HELP_??="  /w             zapiÁi sliko na disketo"
HELP_??="  /v             preveri disketo"
HELP_??="  /i             samo informacije"
HELP_??="  /o             samo en sektor"
HELP_??="  /q             tihi naüin"
HELP_??="  /e             nadaljuj iz obstojeüe slikovne datoteke"
HELP_??="  /m <ime_datoteke> priklopi slikovno datoteko (mount)"
HELP_??="  /u             odklopi slikovno datoteko (unmount)"
HELP_??="  /l             seznam vrst diskov"

INVALID=%r "Neveljaven ukaz: `" %s "'"
BAD_INT="Neveljavna numeriüna vrednost."
BAD_VAL="Vrednost je zunaj obsega."

DRIVE=Pogon %_ %c: (ID 0x %b ) %_
DRIVE_TYPE=%_ (ID 0x %b )
DRIVE_TYPE_00=neznana vrsta pogona
DRIVE_TYPE_01='5.25"' 360Kib pogon
DRIVE_TYPE_02='5.25"' 1.2Mib pogon
DRIVE_TYPE_03='3.5"' 720Kib pogon
DRIVE_TYPE_04='3.5"' 1.44Mib pogon
DRIVE_TYPE_05=druga vrsta pogona

DRIVE_SPEC=%i %_ bajtov, %_ %I %_ sektorjev, %_ %I %_ sledi, %_ %I %_ strani

PASS_LIMIT=Dovoljenih do %_ %i %_ dodatnih prehodov za branje diskete
BUFFERS=%i %_ bajtni odloßiÁüe diskete, %_ %i %_ bajtni odloßiÁüe rezultatov sledi

PASS=Prehod branja diskete Át. %i. Preostalo %_ %i %_ sektorjev.

READ_FAST=BRANJE SLEDI: %_ %i, GLAVA: %_ %i
READ_SLOW=BRANJE SLEDI: %_ %i, GLAVA: %_ %i, SEKTOR: %_ %i

FAILED=Postopek ustvarjanja slike ni uspel.
ABORTED=Postopek ustvarjanja slike je bil prekinjen.
COMPLETED=Postopek ustvarjanja slike je konüan.

BErr=%r "BIOS koda napake: 0x" %b %_ --> %_
BErr_01=gonilniku je bil podan napaüen ukaz
BErr_02=naslovne oznake ni mogoüe najti ali slab sektor
BErr_03=napaka zaÁüite pred pisanjem na disketo
BErr_04=sektorja ni mogoüe najti
BErr_05=ponastavitev trdega diska ni uspela
BErr_06=disketa zamenjana ali odstranjena
BErr_07=napaüna tabela parametrov trdega diska
BErr_08=prekoraüitev DMA
BErr_09=dostop DMA üez mejo 64k
BErr_0a=napaüna oznaka sektorja trdega diska
BErr_0b=napaüen valj trdega diska
BErr_0c=nepodprta sled
BErr_0d=neveljavno Átevilo sektorjev v formatu trdega diska
BErr_0e=zaznana oznaka naslova podatkov pod nadzorom trdega diska
BErr_0f=raven arbitraße DMA trdega diska zunaj obsega
BErr_10=napaka ECC/CRC pri branju diska
BErr_11=popravljiva napaka podatkov trdega diska, podatki popravljeni z ECC
BErr_20=napaka krmilnika
BErr_40=napaka pri iskanju (seek failure)
BErr_80=pogon ni pripravljen
BErr_aa=trdi disk ni pripravljen
BErr_bb=nedefinirana napaka trdega diska
BErr_cc=napaka pri pisanju na trdi disk na izbranem pogonu
BErr_e0=napaka stanja trdega diska
BErr_ff=operacija zaznavanja (sense) ni uspela

DErr=%r "DOS koda napake: 0x" %b %_ --> %_
DErr_01=Neveljavna Átevilka funkcije
DErr_02=Datoteke ni mogoüe najti
DErr_03=Poti ni mogoüe najti
DErr_04=Preveü odprtih datotek
DErr_05=Dostop zavrnjen
DErr_06=Neveljaven roüaj (handle)
DErr_08=Premalo pomnilnika
DErr_0f=Naveden neveljaven pogon
DErr_15=Pogon ni pripravljen

