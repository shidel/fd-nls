; Language: Dutch (nl)
; File ending: nl
; Codepage: 850
; This translation was created by Google AI.
; Please help the FreeDOS group to improve it.

;
; XCDMSGS.NL -- "Nederlandse" XCDROM initialisatieberichten.
; Geschreven door Jack R. Ellis, 8 feb 2006.
;
; Gebruikers die XCDROM willen "internationaliseren", hoeven alleen DIT
; bestand te wijzigen! Het nieuwe bestand mag naar wens worden benoemd,
; bijvoorbeeld XCDMSGS.FR (Frans), XCDMSGS.NL (Nederlands) enz. Het
; gewenste bestand moet worden gekopieerd naar XCDMSGS.TXT, en het
; gewenste stuurprogramma kan dan opnieuw worden geassembleerd met elke
; NASM-assembler (beschikbaar via SourceForge), met de volgende opdrachtregel:
;
;     NASM -o XCDROM.SYS -l XCDROM.LST -d language XCDROM.ASM
;
; Merk op dat de voorwaarde -d language ervoor zorgt dat de assembler
; XCDMSGS.TXT leest, in plaats van het standaard XCDMSGS.ENG bestand.
;
; De volgende REGELS zijn van toepassing op het wijzigen van de hieronder
; getoonde berichten:
;
;  A) Alle bericht-LABELS ("XCMsg" enz.) moeten verschijnen zoals getoond.
;
;  B) Alle CR, LF en afsluitende $ bytes moeten verschijnen zoals getoond.
;     Alleen de TEKST-bytes (letters, cijfers en leestekens) van het
;     bericht kunnen worden gewijzigd.
;
;  C) Er moeten minstens 42 tekens zijn vanaf het begin van "XCMsg" tot
;     het begin van "Suffix", aangezien het stuurprogramma 40 bytes aan
;     gegevens in dit gebied leest (de naam van elk station) en een
;     afsluitende $ toevoegt voordat de definitieve CD-ROM stationsnaam
;     wordt weergegeven.
;
;  D) Andere berichten die GEWIJZIGD worden door de initialisatie van het
;     stuurprogramma zijn:
;
;       1) De 8 bytes van de drivernaam bij "DvrMsg1".
;       2) De 4 bytes van het controlleradres bij "CtlrAdr".
;       3) De 8 bytes van de controller-ID bij "CtlrID".
;       4) De byte van het unit-nummer van het station bij "UMsgNo".
;       5) De 4 UltraDMA mode bytes bij "UDMode".
;
; Vergelijk voor een voorbeeld van "internationalisering" het bestand
; XDMAMSGS.ENG met het bestand XDMAMSGS.NL, die beide zijn opgenomen in
; het huidige XDMA-driverpakket. XDMAMSGS.NL vertaalt alle XDMA-
; initialisatieberichten naar de Nederlandse taal. Dit bestand is
; geschreven door Bernd Blaauw, die voorstelde om van XDMA, en nu
; XCDROM, "internationale" drivers te maken.
;
;
XCMsg	db	CR,LF,'GCDROM '
	db	VER		;XCDROM.ASM levert versie en datum!
	db	CR,LF,'$'
DvrMsg	db	'Drivernaam is "'
DvrMsg1	db	'        "$'
CtlrMsg	db	'SATA Native IDE controller op I-O adres '
CtlrAdr0 db	'xxxxh/'
CtlrAdr	db	'xxxxh, Chip I.D. '
CtlrID	db	'xxxxxxxxh.',CR,LF,'$'
VEMsg	db	'.',CR,LF,'VDS init fout$'
LEMsg	db	'.',CR,LF,'/L Ongeldig$'
SyEMsg	db	'.',CR,LF,'FOUT '
SyMsg	db	'Synchroniseren van I-O met XDMA-driver$'
PRMsg	db	'Geen 80386+ CPU'
Suffix	db	'; GCDROM niet geladen!',CR,LF,'$'
UnitMsg	db	'Unit '
UMsgNo	db	'0:  $'
TOMsg	db	' apparaatselectie timeout$'
IDMsg	db	' Identify Device fout$'
NCMsg	db	' is geen ATAPI CD-ROM$'
NDMsg	db	'Geen CD-ROM-drive om te gebruiken$'
PriMsg	db	'Primair-$'
SecMsg	db	'Secundair-$'
MstMsg	db	'master$'
SlvMsg	db	'slave$'
ComMsg	db	', $'
UDMsg	db	', ATA-'
UDMode	db	'   $'
PIOMsg	db	', PIO-modus$'
CRMsg	db	'.',CR,LF,'$'
