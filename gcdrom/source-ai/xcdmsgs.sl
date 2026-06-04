; Language: Slovenian (sl)
; File ending: sl
; Codepage: 852
; This translation was created by Google AI.
; Please help the FreeDOS group to improve it.

;
; XCDMSGS.SL -- "Slovenska" sporoüila o inicializaciji XCDROM.
; Napisal Jack R. Ellis, 8. februar 2006.
;
; Uporabniki, ki ßelijo "internacionalizirati" XCDROM, morajo spremeniti samo TO
; datoteko! Novo datoteko lahko poimenujete po ßelji, na primer XCDMSGS.FR
; (francoÁüina), XCDMSGS.SL (slovenÁüina) itd. ¶eleno datoteko je treba kopirati
; v XCDMSGS.TXT, ßeleni gonilnik pa lahko nato znova asimilirate s katerim koli
; asimblerjem NASM (na voljo na SourceForge) z naslednjo ukazno vrstico:
;
;     NASM -o XCDROM.SYS -l XCDROM.LST -d language XCDROM.ASM
;
; UpoÁtevajte, da pogojni -d language povzroüi, da asimbler bere
; XCDMSGS.TXT namesto privzete datoteke XCDMSGS.ENG.
;
; Za spreminjanje spodaj prikazanih sporoüil veljajo naslednja PRAVILA:
;
;  A) Vse OZNAKE sporoüil ("XCMsg" itd.) se morajo pojaviti, kot je prikazano.
;
;  B) Vsi bajti CR, LF in zakljuüni $ se morajo pojaviti, kot je prikazano. Za
;     spremembo so odprti samo TEKSTOVNI bajti sporoüila (ürke, Átevilke in
;     loüila).
;
;  C) Od zaüetka "XCMsg" do zaüetka "Suffix" mora biti vsaj 42 znakov, saj
;     gonilnik v to obmoüje prebere 40 bajtov podatkov (ime vsakega drive-a)
;     in doda zakljuüni $, preden prikaße konüno ime CD-ROM drive-a.
;
;  D) Druga sporoüila, ki jih SPREMENI inicializacija gonilnika, so:
;
;	1) 8 bajtov imena gonilnika pri "DvrMsg1".
;	2) 4 bajti naslova krmilnika pri "CtlrAdr".
;	3) 8 bajtov I.D. krmilnika pri "CtlrID".
;	4) Bajt Átevilke enote drive-a pri "UMsgNo".
;	5) 4 bajti naüina UltraDMA pri "UDMode".
;
; Za primer "internacionalizacije" primerjajte datoteko XDMAMSGS.ENG z datoteko
; XDMAMSGS.NL, ki sta obe vkljuüeni v trenutni paket gonilnikov XDMA.
; XDMAMSGS.NL prevede vsa inicializacijska sporoüila XDMA v nizozemÁüino.
; To datoteko je napisal Bernd Blaauw, ki je predlagal, da se XDMA in zdaj
; tudi XCDROM spremenita v "mednarodne" gonilnike.
;
;
XCMsg	db	CR,LF,'GCDROM '
	db	VER		;XCDROM.ASM zagotavlja razliüico in datum!
	db	CR,LF,'$'
DvrMsg	db	'Ime gonilnika je "'
DvrMsg1	db	'        "$'
CtlrMsg	db	'SATA Native IDE krmilnik na I-O naslovu '
CtlrAdr0 db	'xxxxh/'
CtlrAdr	db	'xxxxh, Chip I.D. '
CtlrID	db	'xxxxxxxxh.',CR,LF,'$'
VEMsg	db	'.',CR,LF,'VDS inicializacijska napaka$'
LEMsg	db	'.',CR,LF,'/L neveljaven$'
SyEMsg	db	'.',CR,LF,'NAPAKA '
SyMsg	db	'Sinhronizacija I-O z gonilnikom XDMA$'
PRMsg	db	'Ni 80386+ CPU-ja'
Suffix	db	'; GCDROM ni naloßen!',CR,LF,'$'
UnitMsg	db	'Enota '
UMsgNo	db	'0:  $'
TOMsg	db	' üasovna omejitev izbire naprave$'
IDMsg	db	' Identify Device napaka$'
NCMsg	db	' ni ATAPI CD-ROM$'
NDMsg	db	'Ni CD-ROM drive-a za uporabo$'
PriMsg	db	'Primarni-$'
SecMsg	db	'Sekundarni-$'
MstMsg	db	'master$'
SlvMsg	db	'slave$'
ComMsg	db	', $'
UDMsg	db	', ATA-'
UDMode	db	'   $'
PIOMsg	db	', naüin PIO$'
CRMsg	db	'.',CR,LF,'$'
