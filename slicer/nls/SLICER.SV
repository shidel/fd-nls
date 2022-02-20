; Swedish Langauge Resource and Translation File
; By Sebastian Rasmussen <sebras@gmail.com>

LANGUAGE=sv
TITLE=%, Version %
COPYRIGHT=Copyright (c) 2019-%, Jerome Shidel

; Same params as reporting
INC_FILE=%9%2 %8
INC_CONT=%2 (fortsÑtter)
INC_DIR=%2
INC_TEXT=inbÑddad text: %2 %8
INC_HEAD=text: %2 %8
USE_COMP=aktiverade %0-kompressionsgenomgÜng

VERB_PRE_SCAN=genomsîkte % objekt att lÑgga till arkiv
VERB_INC_FILE=inkludera: %9%2 (%A)\[%3] %8
VERB_INC_CONT=fortsÑtt: %2 [%3] (fortsÑtter frÜn position %6)
VERB_INC_DIR=underkatalog: %2 (%3)
VERB_INC_HEAD=inbÑddad huvudtext: %2 %8

; Excluded file or dir
VERB_EXCLUDE=exkludera: %0 (matchar "%1")

; Lists %0 is list, %1 is file
LIST_ITEM=%
LIST_FILE=lÑgg till "%1" till %0-lista
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

VERB_REP_CAT=sÑtt kategori: %2, %1
VERB_REP_DIR=katalog: %2 (%3), %1 %4 %5
VERB_REP_FILE=fullstÑndig fil: %9%2 (%A)\[%3], %1
VERB_REP_FILE2=%4 %5 filstorlek %8
VERB_REP_PART=partiell fil: %9%2 (%A)\[%3], %1
VERB_REP_PART2=%4 %5 %7 of %8 (position %6)
VERB_REP_TEXT=text: %2 %4 {%3}, %8
VERB_REP_MORE=forsatt: %2 %4 {%3}, %8
VERB_REP_TEXT=accepterad: %2 %4 {%3}, %8
VERB_REP_SIG=signatur: %2 [%3], %1
VERB_REP_NULL=null-block, %1
VERB_REP_OTHER=OkÑnt block %0, %1
VERB_REP_SLICE=vÑlj del %

SAF_CREATE=Skapa nytt slicer-arkiv %
SAF_OPEN=ôppna existerande slicer-arkiv %
SAF_APPEND=LÑgg till i slutet pÜ existerande slicer-arkiv %
SAF_DATE=Skapat %0-%1-%2 klockan %3:%4:%5
SAF_SLICE=Skapa ny arkivdel %
SAF_CAT=SÑtt arkivkategori %
SAF_SLICING=Dela arkiv vid %
VERB_SAF_IUP=Uppdatera statistisk information fîr arkiv %

MEDIA=Mata in diskett som innehÜller fil %0 i enhet %1.
PAUSE=Tryck pÜ valfri tangent fîr att fortsÑtta.

PROMPT_YES=Ja
PROMPT_NO=Nej
PROMPT_Y=J
PROMPT_N=N
PROMPT_OVER=Skriv îver %2%1, %0?
PROMPT_ACCEPT=Acceptera %?
PROMPT_STOP=Fil %1 Ñr korrupt. Avbryt extraktion %0?

SUMMARY=%0 del(ar), %1 katalog(er), %2 fil(er), %3

USAGE=anvÑndning: % [flaggor]

; All help lines are displayed in order until the first missing number is
; encountered. You can add lines. But, keep the numbers in order by renumbering
; all lines after your additional help message. %0 is the Switch Character / or -
HELP_0=SLICER flagginformation:
HELP_1=
HELP_2=  %0q        inaktivera alla statusmeddelanden
HELP_3=  %0v        aktivera utfîrliga statusmeddelanden
HELP_4=  %0t        testlÑge
HELP_5=  %0h        visa hjÑlpinformation
HELP_6=
HELP_7=  %0i ?      inkludera objekt som matchar filspec (flaggan Ñr antas)
HELP_8=  %0I ?      inkludera objekt frÜn fillista
HELP_9=  %0e ?      exkludera objekt som matchar filspec
HELP_10=  %0E ?      exkludera objekt frÜn fillista
HELP_11=
HELP_12=  %0d        exkludera tomma kataloger
HELP_13=  %0D        rekursera inte in i underkataloger
HELP_14=  %0a        inkludera alla gîmda och systemobjektt
HELP_15=  %0o        skriv îver existerande filer
HELP_16=  %0k        ignorera inte skiftlÑge fîr filer
HELP_17=
HELP_18=  %0g ?      ange gruppkategori
HELP_19=  %0s ?      storlek att dela arkiv i, K, M eller byte. (endast giltig nÑr ett
HELP_20=            nytt arkiv skapas eller ett existerande arkiv delas om)
HELP_21=
HELP_22=  %0y        accepterar automatiskt eventuella frÜgor (ej filîverskrivning).
HELP_23=
HELP_24=ètgÑrder relaterade till hela arkiv:
HELP_25=
HELP_26=  %0f ?      ange arkivfilnamn
HELP_27=  %0c        skapa ett nytt arkiv
HELP_28=  %0r        lÑgg till pÜ slutet av existerande arkiv
HELP_29=  %0x        extrahera frÜn existerande arkiv
HELP_30=  %0R        generera arkivrapport
HELP_31=  %0O ?      sÑtt destinationssîkvÑg fîr extraktion
HELP_32=
HELP_33=InbÑddad text, notiser och meddelanden:
HELP_34=
HELP_35=  %0L ?      ÜsidosÑtt standard systemsprÜk
HELP_36=  %0m ?      bÑdda in meddelandetext frÜn fil
HELP_37=  %0M ?      bÑdda in meddelandetext frÜn fil som krÑver godkÑnnande av
HELP_38=:           anvÑndaren
HELP_39=
HELP_40=KompressiongenomgÜng:
HELP_41=
HELP_42=  %0p ?      Aktivera kompressionsgenomgÜng (GZ, kanske andra senare)
HELP_43=

; Reserved for future use
; HELP_00=  %0u        update existing archive
; HELP_00=  %0S        re-slice archive
; HELP_00=  %0w        write verification
; HELP_00=  %0z        use compression

NEEDHELP=Fîrvirringen Ñr stor. Fîr hjÑlp anvÑnd flaggan "%0h".

FATAL=FATAL ERROR:%_
ERROR=ERROR:%_
BAD_OPT=Ogiltig kommandoradsparameter "%0%1"
BAD_CMB=Kani nte kombinera parametrarna "%0%1" med "%0%2"
BAD_MCO=Saknar kommandoradsdata fîr "%0%1"
BAD_INT=Ogiltigt numeriskt vÑrde "%2" fîr "%0%1"
BAD_VAL=Numeriskt vÑrde "%2" Ñr utanfîr intervall "%3 - %4" fîr "%0%1"
BAD_MAX=Maximalt antal delar fîr arkiv îverskridet fîr "%1"
BAD_VER=Arkiv "%1" kan innehÜlla datastrukturer som inte stîds.
BAD_EMB=Kan endast ange en texfil med meddelanden Üt gÜngen.
BAD_MSG=Meddelande not "%1" fîr stor. Trunkerad till %2.
BAD_CMP=KompressionsgenomgÜng "%2" stîds inte
BAD_TMP=TEMP-katalog krÑvs.
ER_UNK=felkod #%0, okÑnt fel med "%1" %2
ER_2=Fil "%1" hittades inte.
ER_3=SîkvÑg fîr fil "%1" hittades inte.
ER_8=Jag fick slut pÜ minne.
ER_11=Fil "%1" har okÑnt format.
ER_13=Fil "%1" har korrupt data.
ER_14=Avslutad av anvÑndaren.
ER_23=Signatur stÑmmer ej. Fil "%1" har korrupt data.

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

