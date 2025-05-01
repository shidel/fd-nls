TITLE=Enhanced Disk Image Creation Tool, Version %_ %s
COPYRIGHT=Copyright (c) 2018, Jerome Shidel

HELP_00="EDICT flagginformation: "
HELP_01=
HELP_02="  /d <enhet>     ange enhetsbokstav"
HELP_03="  /f <filnamn>   ange filnamn"
HELP_04="  /p <gr„ns>     ”vre gr„ns f”r antal ytterligare pass"
HELP_05=
HELP_06="  /t <typ>       †sidos„tt bios och v„lj inst„llningar f”r disktyp"
HELP_07="                 (0=360Kib, 1=1.2Mib, 2=720Kib, 3=1.44Mib, a=auto)"
HELP_08=
HELP_09="  /c <nummer>    †sidos„tt antal cylindrar/sp†r (0-1023)"
HELP_0a="  /r <nummer>    †sidos„tt antal sidor/huvud per sp†r (0-255)"
HELP_0b="  /s <nummer>    †sidos„tt antal sektorer per sida (0-63)"
HELP_0c="  /b <nummer>    †sidos„tt antal byte per sektor (1-8192)"
HELP_0d=
HELP_0e="  /h             skriv ut hj„lpinformation"

; Possible future additions to EDICT should be translated as well

HELP_??="  /T             testa endast l„sning"
HELP_??="  /w             skriv avbildning till diskett"
HELP_??="  /v             verifiera diskett"
HELP_??="  /i             endast information"
HELP_??="  /o             endast en sektor"
HELP_??="  /q             tyst l„ge"
HELP_??="  /e             fors„tt fr†n existerande avbildningsfil"
HELP_??="  /m <filnamn>   montera avbildningsfil"
HELP_??="  /u             avmontera avbildningsfil"
HELP_??="  /l             lista disktyper"

INVALID=%r "Ogiltigt kommando: `" %s "'"
BAD_INT="Ogiltigt numeriskt v„rde."
BAD_VAL="V„rde utanf”r intervall."

DRIVE=Drive %_ %c: (ID 0x %b ) %_
DRIVE_TYPE=%_ (ID 0x %b )
DRIVE_TYPE_00=ok„nd enhetstyp
DRIVE_TYPE_01='5.25"' 360Kib-enhet
DRIVE_TYPE_02='5.25"' 1.2Mib-enhet
DRIVE_TYPE_03='3.5"' 720Kib-enhet
DRIVE_TYPE_04='3.5"' 1.44Mib-enhet
DRIVE_TYPE_05=annan enhetstyp

DRIVE_SPEC=%i %_ byte, %_ %I %_ sektorer, %_ %I %_ sp†r, %_ %I %_ sidor

PASS_LIMIT=Upp till %_ %i %_ extra pass till†tna f”r att l„sa diskett
BUFFERS=%i %_ byte diskettbuffert, %_ %i %_ byte resultatbuffert f”r sp†r

PASS=L„spass # %i f”r diskett. %_ %i %_ sektor(er) †terst†r.

READ_FAST=LS SPR: %_ %i, HUVUD: %_ %i
READ_SLOW=LS SPR: %_ %i, HUVUD: %_ %i, SEKTOR: %_ %i

FAILED=Avbildningsprocess misslyckades.
ABORTED=Avbildningsprocess avbruten.
COMPLETED=Avbildningsprocess avslutad.

; With a little modification, these BIOS and DOS error message texts are a
; slimmed down version of those available online from a great DOS and ASM
; resource at http://stanislavs.org/helppc/idx_interrupt.html

BErr=%r "BIOS felkod: 0x" %b %_ --> %_
BErr_01=felaktigt kommando skickat till drivrutin
BErr_02=adressmarkering hittades ej eller trasig sektor
BErr_03=diskett skriv-skyddad
BErr_04=sektor hittades ej
BErr_05=†terst„llning av h†rddisk misslyckades
BErr_06=diskett utbytt eller borttagen
BErr_07=trasig parametertabell f”r h†rddisk
BErr_08=DMA-”verspill
BErr_09=DMA-†tkomst ”ver 64k-gr„ns
BErr_0a=trasig sektorflagga f”r h†rddisk
BErr_0b=trasig cylinder f”r h†rddisk
BErr_0c=sp†r st”ds ej
BErr_0d=ogiltigt antar sektorer f”r h†rddisk-format
BErr_0e=h†rddiskstyrd data-adressmarkering identifierad
BErr_0f=DMA-arbitreringsniv† f”r h†rddisk utanf”r intervall
BErr_10=ECC/CRC-fel vid diskl„sning
BErr_11=†terh„mningsbart datafel p† h†rddisk, data fixad med hj„lp av ECC
BErr_20=kontrollerfel
BErr_40=s”kfel
BErr_80=enhet inte redo
BErr_aa=h†rddisk inte redo
BErr_bb=odefinierat h†rddiskfel
BErr_cc=skrivfel p† vald h†rddisk enhet
BErr_e0=statusfel f”r h†rddisk
BErr_ff=identifierings†tg„rd misslyckades

DErr=%r "DOS felkod: 0x" %b %_ --> %_
DErr_01=Ogiltigt funktionsnummer
DErr_02=Fil hittades ej
DErr_03=S”kv„g hittades ej
DErr_04=F”r m†nga ”ppna filer
DErr_05=tkomst nekad
DErr_06=Ogiltigt handtag
DErr_08=Otillr„ckligt minne
DErr_0f=Ogiltig enhet angiven
DErr_15=Enhet inte redo
