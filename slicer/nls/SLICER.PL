; Language: Polish
; File ending: pl
; Codepage: 852
; This translation was made by Google Gemini.
; Please help the FreeDOS group to improve it.

; English Langauge Resource and Translation File
; changes by W. Spiegl: added %0 and %1 in line 84
; note %_ is a space, %% is percent, %r is CRLF,
; %0-F (1 char hex) are params, % alone is next param.
; Items that start VERB_ are Verbose mode versions.

LANGUAGE=pl
TITLE=%, Wersja %
COPYRIGHT=Copyright (c) 2019-%, Jerome Shidel

; Same params as reporting
INC_FILE=%9%2 %8
INC_CONT=%2 (kontynuacja)
INC_DIR=%2
INC_TEXT=osad´ tekst: %2 %8
INC_HEAD=tekst: %2 %8
USE_COMP=wà•czono kompresj© pass-through dla %0

VERB_PRE_SCAN=przeskanowano % element¢w do dodania do archiwum
VERB_INC_FILE=doà•cz: %9%2 (%A)\[%3] %8
VERB_INC_CONT=kontynuuj: %2 [%3] (kontynuacja od przesuni©cia %6)
VERB_INC_DIR=podkatalog: %2 (%3)
VERB_INC_HEAD=osad´ tekst nagà¢wka: %2 %8

; Excluded file or dir
VERB_EXCLUDE=wyklucz: %0 (pasuje do "%1")

; Lists %0 is list, %1 is file
LIST_ITEM=%
LIST_FILE=dodaj "%1" do listy %0
LIST_INC=doà•cz
LIST_EXC=wyklucz

; Same params as reporting
EXT_DIR=katalog: %2
EXT_FILE=plik: %9%2, %8
EXT_PART=cz©òciowy: %9%2, %7 z %8
VERB_EXT_RPCL=plik %9%2 istnieje, zast•piony
VERB_EXT_SKIP=plik %9%2 istnieje, pomini©ty

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
REP_CAT=kategoria: %2
REP_DIR=katalog: %2
REP_FILE=plik: %9%2, %8
REP_PART=cz©òciowy: %9%2, %7 z %8
REP_TEXT=tekst: %2, %8
REP_MORE=kontynuacja: %2, %8
REP_CONF=akceptuj: %2, %8

VERB_REP_CAT=ustaw kategori©: %2, %1
VERB_REP_DIR=katalog: %2 (%3), %1 %4 %5
VERB_REP_FILE=kompletny plik: %9%2 (%A)\[%3], %1
VERB_REP_FILE2=%4 %5 rozmiar pliku %8
VERB_REP_PART=plik cz©òciowy: %9%2 (%A)\[%3], %1
VERB_REP_PART2=%4 %5 %7 z %8 (przesuni©cie %6)
VERB_REP_TEXT=tekst: %2 %4 {%3}, %8
VERB_REP_MORE=kontynuacja: %2 %4 {%3}, %8
VERB_REP_CONF=akceptuj: %2 %4 {%3}, %8
VERB_REP_SIG=sygnatura: %2 [%3], %1
VERB_REP_NULL=pusty blok, %1
VERB_REP_OTHER=nieznany blok %0, %1
VERB_REP_SLICE=wybierz cz©òÜ %

SAF_CREATE=Utw¢rz nowe archiwum slicer %
SAF_OPEN=Otw¢rz istniej•ce archiwum slicer %
SAF_APPEND=Doà•cz do istniej•cego archiwum slicer %
SAF_DATE=Utworzono %2.%1.%0 o %3:%4:%5
SAF_SLICE=Utw¢rz now• cz©òÜ archiwum %
SAF_CAT=Ustaw kategori© archiwum %
SAF_SLICING=Dzielenie archiwum w %
VERB_SAF_IUP=Aktualizacja informacji statystycznych archiwum %

MEDIA=Wà¢æ dyskietk© z plikiem %0 do nap©du %1.
PAUSE=Naciònij dowolny klawisz, aby kontynuowaÜ.

PROMPT_YES=Tak
PROMPT_NO=Nie
PROMPT_Y=T
PROMPT_N=N
PROMPT_OVER=Zast•piÜ %2%1, %0?
PROMPT_ACCEPT=AkceptowaÜ %?
PROMPT_STOP=Plik %1 jest uszkodzony. PrzerwaÜ rozpakowywanie %0?

SUMMARY=%0 cz©òÜ/cz©òci, %1 kat., %2 plik/pliki, %3

USAGE=uæycie: % [opcje]

; All help lines are displayed in order until the first missing number is
; encountered. You can add lines. But, keep the numbers in order by renumbering
; all lines after your additional help message. %0 is the Switch Character / or -
HELP_0=SLICER informacje o opcjach:
HELP_1=
HELP_2=  %0q        wyà•cz wszystkie komunikaty o stanie
HELP_3=  %0v        wà•cz szczeg¢àowe komunikaty o stanie
HELP_4=  %0t        tryb testowy
HELP_5=  %0h        wyòwietl informacje pomocy
HELP_6=
HELP_7=  %0i ?      doà•cz elementy pasuj•ce do specyfikacji pliku
HELP_8=  %0I ?      doà•cz elementy z listy plik¢w
HELP_9=  %0e ?      wyklucz elementy pasuj•ce do specyfikacji pliku
HELP_10=  %0E ?      wyklucz elementy z listy plik¢w
HELP_11=
HELP_12=  %0d        wyklucz puste katalogi
HELP_13=  %0D        nie przeszukuj podkatalog¢w rekursywnie
HELP_14=  %0a        doà•cz wszystkie pliki ukryte i systemowe
HELP_15=  %0o        zast•p istniej•ce pliki
HELP_16=  %0k        nie ignoruj wielkoòci liter w nazwach plik¢w
HELP_17=
HELP_18=  %0g ?      okreòl kategori© grupy
HELP_19=  %0s ?      rozmiar podziaàu archiwum (K, M lub bajty). (tylko dla
HELP_20=             nowego archiwum lub ponownego podziaàu istniej•cego)
HELP_21=
HELP_22=  %0y        automatycznie akceptuj wszystkie monity (opr¢cz
HELP_23=             zast©powania plik¢w).
HELP_24=Operacje dotycz•ce caàego archiwum:
HELP_25=
HELP_26=  %0f ?      okreòl nazw© pliku archiwum
HELP_27=  %0c        utw¢rz nowe archiwum
HELP_28=  %0r        doà•cz do istniej•cego archiwum
HELP_29=  %0x        rozpakuj z istniej•cego archiwum
HELP_30=  %0R        wygeneruj raport archiwum
HELP_31=  %0O ?      ustaw òcieæk© docelow• rozpakowywania
HELP_32=
HELP_33=Osadzony tekst, powiadomienia i komunikaty:
HELP_34=
HELP_35=  %0L ?      nadpisz domyòlny j©zyk systemu
HELP_36=  %0m ?      osad´ tekst komunikatu z pliku
HELP_37=  %0M ?      osad´ tekst z pliku wymagaj•cy zgody uæytkownika
HELP_38=
HELP_39=Kompresja pass-through:
HELP_40=
HELP_41=  %0p ?      wà•cz kompresj© pass-through (GZ, moæe inne p¢´niej)
HELP_42=

; Reserved for future use
; HELP_00=  %0u        update existing archive
; HELP_00=  %0S        re-slice archive
; HELP_00=  %0w        write verification
; HELP_00=  %0z        use compression

NEEDHELP=Kraina zam©tu. Aby uzyskaÜ pomoc, uæyj opcji "%0h".

FATAL=Bù§D KRYTYCZNY:%_
ERROR=Bù§D:%_
BAD_OPT=Nieprawidàowy parametr wiersza polece‰ "%0%1"
BAD_CMB=Nie moæna poà•czyÜ parametr¢w "%0%1" z "%0%2"
BAD_MCO=Brak danych wiersza polece‰ dla "%0%1"
BAD_INT=Nieprawidàowa wartoòÜ liczbowa "%2" dla "%0%1"
BAD_VAL=WartoòÜ liczbowa "%2" poza zakresem "%3 - %4" dla "%0%1"
BAD_MAX=Przekroczono maksymaln• liczb© cz©òci archiwum dla "%1"
BAD_VER=Archiwum "%1" moæe zawieraÜ nieobsàugiwane struktury danych.
BAD_EMB=Jednoczeònie moæna podaÜ tylko jeden plik tekstowy komunikatu.
BAD_MSG=Notatka komunikatu "%1" zbyt duæa. Skr¢cono do %2.
BAD_CMP=Nieobsàugiwana kompresja pass-through "%2"
BAD_TMP=Wymagany jest katalog TEMP.
ER_UNK=kod bà©du #%0, nieokreòlony bà•d z "%1" %2
ER_2=Plik "%1" nie zostaà znaleziony.
ER_3=ócieæka pliku "%1" nie zostaàa znaleziona.
ER_8=Hmm, zabrakào pami©ci.
ER_11=Plik "%1" ma nierozpoznany format.
ER_13=Plik "%1" zawiera uszkodzone dane.
ER_14=Przerwano przez uæytkownika.
ER_23=NiezgodnoòÜ sygnatur. Plik "%1" zawiera uszkodzone dane.

; Used for date time stamps
; DATE = %0 4 digit Year, %1 2 digit Month, %2 2 digit Day,
;        %3 2 digit year, %4 1-2 digit Month, %5 1-2 digit day
DATE=%2.%1.%0
; TIME = %0 Hour (24 hour), %1 Minute, %2 Second
;        %3 12 hour clock, %4 AM/PM
TIME=%0:%1:%2
AM=a
PM=p
; STAMP = %0 date, %1 time
STAMP=%0 o %1

BYTES=% bajt(¢w)
KBYTES=% KiB
MBYTES=% MiB
FLOPPY=% dyskietka
