Texte_deutsch, CP858:
 dz	10							;0
 dz    "hoch"							;1
 dz    "geladen, verbraucht %u Bytes."				;2
 dz 10,"Kann Unicode-Datei %s nicht finden/îffnen!"		;3
 dz 10,"Falscher Inhalt der Datei %s oder Lese-Fehler!"		;4
 dz    "deaktiviert."						;5
 dz 10,"(Andere TSR stahl Int21 und/oder Int2F)"		;6
 dz    "Noch nicht installiert!"				;7
 dz    "Benîtigt mindestens einen 386er Prozessor!"		;8
 dz    "Schalter angenommen."					;9
 db    "	(386+)	++ FREEWARE ++",10			;10
  db   "Programm fÅr lange Dateinamen unter nacktem DOS.",10
  db   "VERWENDUNG DES PROGRAMMS AUF EIGENE GEFAHR, DATENVERLUST MôGLICH."
  db   "Aktionen:	- (nichts)	TSR laden oder aktivieren",10
  db   "		- h oder ?	diese Hilfe",10
  db   "		- d		DOSLFN deaktivieren",10
  db   "		- s		Status und Einstellungen",10
ifdef PROFILE
  db   "		- p		Zeige Profildaten an",10
  db   "		- pr		Setze Profildaten zurÅck",10
  db   "		- pc		Kalibriere Profildatierung",10
endif
  db   "		- u		TSR entfernen",10
  db   "Schalter:	- w{+|-}	* Schreibzugriffe",10
  db   "		- ~{+|-}	* Tilde (ich hasse Schlangen)",10
  db   "		- t{+|-}	* Tunneleffekt (fÅr Editoren)",10
  db   "		- f{+|-}	* Fallback-Modus - unterstÅtze LFN fÅr alle Laufwerke",10
  db   "		- c{+|-}	* CDROM-UnterstÅtzung",10
  db   "		- i{+|-}	* InDOS-Flag-Wiederaufrufsperre fÅr TSRs",10
  db   "		- r{+|-}	* Schreibschutz-Attribut fÅr CDROM-Dateien",10
if USEWINTIME
  db   "		- o[N]		* setze Zeitzone N oder lese TZ falls nicht vorhanden",10
endif
  db   "		- z[:|=]table	Unicode-Tabelle (.TBL-Volkov-Format) laden",10
  db   "		- m[:|=]bytes	Grî·e des internen Heaps festlegen, 600..50000",10
  db   "		- ms[:|=]bytes	Deklariere Grî·e des kurzen Pfads, 16..141",10
  db   "		- ml[:|=]bytes	Deklariere Grî·e des langen Pfads, 16..1024",10
  db   "		- mn[:|=]bytes	Deklariere Grî·e des langen Namens, 13..512",10
  db   "		- p[:|=]path	Arbeitsverzeichnis (.TBL/.JLT/.386) festlegen",10
  db   "		- l{d|e|f|t}	Sprache setzen (deutsch|englisch|franzîsisch|tÅrkisch)",10
  db   "Umgebung: 	TZ=xxxNyyy	Zeitzone N fÅr Zeitumrechnung, ohne DST",10
  db   "Email:    %s",10
  db   "Download: %s",10
  dz   "          %s"

 dz    "aktiv"							;11
 dz    "reaktiviert."						;12
 dz    "vom Speicher entfernt."					;13
 dz    "%7lu Lesezugriffe"					;14
 dz    "%7lu Schreibzugriffe"					;15
 dz    "%7lu Int21/AH=71-Aufrufe"				;16
 dz    "Schreibzugriffe"					;17
 dz    "Schlangen"						;18
 dz    "Tunneleffekt"						;19
 dz    "CDROM-UnterstÅtzung"					;20
 dz    "Fallback-Modus"						;21
 dz    "Schreibschutz-Attribut fÅr CD-Dateien"			;22
 dz    "UngÅltige Heap-Grî·e"					;23
 dz    "EIN"							;24
 dz    "AUS"							;25
 dz    "%37s %s",10						;26
 dz    "Verzeichnis existiert nicht!"				;27
 dz    "Kann Arbeitsverzeichnis nicht setzen."				;28
 dz    "Kann Heap-Grî·e nicht verÑndern."			;29
 dz    "Schalter nicht akzeptiert."				;30
 dz 10,"Dazu vorher TSR entfernen."				;31
 dz    "DOS4+ erforderlich!"					;32
 dz 10,"In einem DOS-Fenster dieser Windows-Version ist DOSLFN sinnlos!";33
 dz    "Heap: gesamt=%u, verwendet=%u, frei=%u, grî·ter Block=%u Bytes",10	;34
 dz    "Letzter Fehler: %u - "					;35  =	 0
 dz			"Verbotener Schreibzugriff"			;1
 dz			"Konnte FAT-Verzeichnis nicht expandieren"		;2
 dz			"Konnte Joliet-Link-Tabelle nicht finden"	;3
 dz			"Nicht genug Speicher - bitte vergrî·ern"	;4
 dz			"Konnte Unicode-Datei nicht laden"		;5
 dz    "InDOS-Flag-Verriegelung + RESET Laufw."			;41
if USEWINTIME
 dz    "Zeitzone ist"						;42
 dz    "%37s UTC%+d",10						;43
endif
ifdef PROFILE
 dz    "Profil.",10						;ProfileNr
 dz    "Profil zurÅckgesetzt.",10					;+1
 dz    "%7lu %2d.%03d %s",10					;+2
 dz    "Kalibriere Profil.",10				;+3
 dz    "Profil-Timing-Konstante = %lu000",10			;+4
 dz    "Fehler beim Kalibrieren",10				;+5
 if USEWINTIME
 ProfileNr = 44
 else
 ProfileNr = 42
 endif
endif
