; Swedish Langauge Resource and Translation File
; By Sebastian Rasmussen <sebras@gmail.com>

LANGUAGE=sv
TITLE=%, Version %
COPYRIGHT=Copyright (c) 2019-%, Jerome Shidel

; Same params as reporting
INC_FILE=%9%2 %8
INC_CONT=%2 (forts�tter)
INC_DIR=%2
INC_TEXT=inb�ddad text: %2 %8
INC_HEAD=text: %2 %8
USE_COMP=aktiverade %0-kompressionsgenomg�ng

VERB_PRE_SCAN=genoms�kte % objekt att l�gga till arkiv
VERB_INC_FILE=inkludera: %9%2 (%A)\[%3] %8
VERB_INC_CONT=forts�tt: %2 [%3] (forts�tter fr�n position %6)
VERB_INC_DIR=underkatalog: %2 (%3)
VERB_INC_HEAD=inb�ddad huvudtext: %2 %8

; Excluded file or dir
VERB_EXCLUDE=exkludera: %0 (matchar "%1")

; Lists %0 is list, %1 is file
LIST_ITEM=%
LIST_FILE=l�gg till "%1" till %0-lista
LIST_INC=inkludera
LIST_EXC=exkludera

; Same params as reporting
EXT_DIR=katalog: %2
EXT_FILE=fil: %9%2, %8
EXT_PART=partiell: %9%2, %7 of %8
VERB_EXT_RPCL=fil %9%2 existerar, ersatt
VERB_EXT_SKIP=fil %9%2 existerar, skippad

; Report & Extraction parameters
; %0 block ID    (all)
; %1 block size  (all)
; %2 name       (dir & file name, or text language)
; %3 unique ID (all)
; %4 attributes (dir & file attribs, or text verbose level)
; %5 time stamp (dir & file only)
; %6 file offest (file only)
; %7 file bytes (file only)
; %8 total file size (file and text only)
; %9 path (file only)
; %A path ID (file only)
REP_CAT=kategori: %2
REP_DIR=katalog: %2
REP_FILE=fil: %9%2, %8
REP_PART=partiell: %9%2, %7 of %8
REP_TEXT=text: %2, %8
REP_MORE=fortsatt: %2, %8
REP_CONF=accepterad: %2, %8

VERB_REP_CAT=s�tt kategori: %2, %1
VERB_REP_DIR=katalog: %2 (%3), %1 %4 %5
VERB_REP_FILE=fullst�ndig fil: %9%2 (%A)\[%3], %1
VERB_REP_FILE2=%4 %5 filstorlek %8
VERB_REP_PART=partiell fil: %9%2 (%A)\[%3], %1
VERB_REP_PART2=%4 %5 %7 of %8 (position %6)
VERB_REP_TEXT=text: %2 %4 {%3}, %8
VERB_REP_MORE=forsatt: %2 %4 {%3}, %8
VERB_REP_TEXT=accepterad: %2 %4 {%3}, %8
VERB_REP_SIG=signatur: %2 [%3], %1
VERB_REP_NULL=null-block, %1
VERB_REP_OTHER=Ok�nt block %0, %1
VERB_REP_SLICE=v�lj del %

SAF_CREATE=Skapa nytt slicer-arkiv %
SAF_OPEN=�ppna existerande slicer-arkiv %
SAF_APPEND=L�gg till i slutet p� existerande slicer-arkiv %
SAF_DATE=Skapat %0-%1-%2 klockan %3:%4:%5
SAF_SLICE=Skapa ny arkivdel %
SAF_CAT=S�tt arkivkategori %
SAF_SLICING=Dela arkiv vid %
VERB_SAF_IUP=Uppdatera statistisk information f�r arkiv %

MEDIA=Mata in diskett som inneh�ller fil %0 i enhet %1.
PAUSE=Tryck p� valfri tangent f�r att forts�tta.

PROMPT_YES=Ja
PROMPT_NO=Nej
PROMPT_Y=J
PROMPT_N=N
PROMPT_OVER=Skriv �ver %2%1, %0?
PROMPT_ACCEPT=Acceptera %?
PROMPT_STOP=Fil %1 �r korrupt. Avbryt extraktion %0?

SUMMARY=%0 del(ar), %1 katalog(er), %2 fil(er), %3

USAGE=anv�ndning: % [flaggor]

; All help lines are displayed in order until the first missing number is
; encountered. You can add lines. But, keep the numbers in order by renumbering
; all lines after your additional help message. %0 is the Switch Character / or -
HELP_0=SLICER flagginformation:
HELP_1=
HELP_2=  %0q        inaktivera alla statusmeddelanden
HELP_3=  %0v        aktivera utf�rliga statusmeddelanden
HELP_4=  %0t        testl�ge
HELP_5=  %0h        visa hj�lpinformation
HELP_6=
HELP_7=  %0i ?      inkludera objekt som matchar filspec (flaggan �r antas)
HELP_8=  %0I ?      inkludera objekt fr�n fillista
HELP_9=  %0e ?      exkludera objekt som matchar filspec
HELP_10=  %0E ?      exkludera objekt fr�n fillista
HELP_11=
HELP_12=  %0d        exkludera tomma kataloger
HELP_13=  %0D        rekursera inte in i underkataloger
HELP_14=  %0a        inkludera alla g�mda och systemobjektt
HELP_15=  %0o        skriv �ver existerande filer
HELP_16=  %0k        ignorera inte skiftl�ge f�r filer
HELP_17=
HELP_18=  %0g ?      ange gruppkategori
HELP_19=  %0s ?      storlek att dela arkiv i, K, M eller byte. (endast giltig n�r ett
HELP_20=            nytt arkiv skapas eller ett existerande arkiv delas om)
HELP_21=
HELP_22=  %0y        accepterar automatiskt eventuella fr�gor (ej fil�verskrivning).
HELP_23=
HELP_24=�tg�rder relaterade till hela arkiv:
HELP_25=
HELP_26=  %0f ?      ange arkivfilnamn
HELP_27=  %0c        skapa ett nytt arkiv
HELP_28=  %0r        l�gg till p� slutet av existerande arkiv
HELP_29=  %0x        extrahera fr�n existerande arkiv
HELP_30=  %0R        generera arkivrapport
HELP_31=  %0O ?      s�tt destinationss�kv�g f�r extraktion
HELP_32=
HELP_33=Inb�ddad text, notiser och meddelanden:
HELP_34=
HELP_35=  %0L ?      �sidos�tt standard systemspr�k
HELP_36=  %0m ?      b�dda in meddelandetext fr�n fil
HELP_37=  %0M ?      b�dda in meddelandetext fr�n fil som kr�ver godk�nnande av
HELP_38=:           anv�ndaren
HELP_39=
HELP_40=Kompressiongenomg�ng:
HELP_41=
HELP_42=  %0p ?      Aktivera kompressionsgenomg�ng (GZ, kanske andra senare)
HELP_43=

; Reserved for future use
; HELP_00=  %0u        update existing archive
; HELP_00=  %0S        re-slice archive
; HELP_00=  %0w        write verification
; HELP_00=  %0z        use compression

NEEDHELP=F�rvirringen �r stor. F�r hj�lp anv�nd flaggan "%0h".

FATAL=FATAL ERROR:%_
ERROR=ERROR:%_
BAD_OPT=Ogiltig kommandoradsparameter "%0%1"
BAD_CMB=Kani nte kombinera parametrarna "%0%1" med "%0%2"
BAD_MCO=Saknar kommandoradsdata f�r "%0%1"
BAD_INT=Ogiltigt numeriskt v�rde "%2" f�r "%0%1"
BAD_VAL=Numeriskt v�rde "%2" �r utanf�r intervall "%3 - %4" f�r "%0%1"
BAD_MAX=Maximalt antal delar f�r arkiv �verskridet f�r "%1"
BAD_VER=Arkiv "%1" kan inneh�lla datastrukturer som inte st�ds.
BAD_EMB=Kan endast ange en texfil med meddelanden �t g�ngen.
BAD_MSG=Meddelande not "%1" f�r stor. Trunkerad till %2.
BAD_CMP=Kompressionsgenomg�ng "%2" st�ds inte
BAD_TMP=TEMP-katalog kr�vs.
ER_UNK=felkod #%0, ok�nt fel med "%1" %2
ER_2=Fil "%1" hittades inte.
ER_3=S�kv�g f�r fil "%1" hittades inte.
ER_8=Jag fick slut p� minne.
ER_11=Fil "%1" har ok�nt format.
ER_13=Fil "%1" har korrupt data.
ER_14=Avslutad av anv�ndaren.
ER_23=Signatur st�mmer ej. Fil "%1" har korrupt data.

; Used for date time stamps
; DATE = %0 4 digit Year, %1 2 digit Month, %2 2 digit Day,
;        %3 2 digit year, %4 1-2 digit Month, %5 1-2 digit day
DATE=%0-%1-%2
; TIME = %0 Hour (24 hour), %1 Minute, %2 Second
;        %3 12 hour clock, %4 AM/PM
TIME=%0:%1:%2
AM=f
PM=e
; STAMP = %0 date, %1 time
STAMP=%0 klockan %1

BYTES=% byte
KBYTES=% KiB
MBYTES=% MiB
FLOPPY=% diskett

