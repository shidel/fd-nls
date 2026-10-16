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
INC_TEXT=osadzony tekst: %2 %8
INC_HEAD=tekst nagà¢wka: %2 %8
USE_COMP=wà•czono przekazywanie skompresowanych danych %0

VERB_PRE_SCAN=przeszukano elementy do dodania do archiwum: %
VERB_INC_FILE=dodawanie: %9%2 (%A)\[%3] %8
VERB_INC_CONT=kontynuacja: %2 [%3] (od przesuni©cia %6)
VERB_INC_DIR=podkatalog: %2 (%3)
VERB_INC_HEAD=osadzanie tekstu nagà¢wka: %2 %8

; Excluded file or dir
VERB_EXCLUDE=pomini©to: %0 (pasuje do "%1")

; Lists %0 is list, %1 is file
LIST_ITEM=%
LIST_FILE=dodano "%1" do listy: %0
LIST_INC=doà•czane
LIST_EXC=wykluczane

; Same params as reporting
EXT_DIR=katalog: %2
EXT_FILE=plik: %9%2, %8
EXT_PART=cz©òÜ: %9%2, %7 z %8
VERB_EXT_RPCL=plik %9%2 istnieje - zast•piono
VERB_EXT_SKIP=plik %9%2 istnieje - pomini©to

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
REP_PART=cz©òÜ: %9%2, %7 z %8
REP_TEXT=tekst: %2, %8
REP_MORE=kontynuacja: %2, %8
REP_CONF=do akceptacji: %2, %8

VERB_REP_CAT=ustaw kategori©: %2, %1
VERB_REP_DIR=katalog: %2 (%3), %1 %4 %5
VERB_REP_FILE=caày plik: %9%2 (%A)\[%3], %1
VERB_REP_FILE2=%4 %5 rozmiar pliku %8
VERB_REP_PART=cz©òÜ pliku: %9%2 (%A)\[%3], %1
VERB_REP_PART2=%4 %5 %7 z %8 (przesuni©cie %6)
VERB_REP_TEXT=tekst: %2 %4 {%3}, %8
VERB_REP_MORE=kontynuacja: %2 %4 {%3}, %8
VERB_REP_CONF=do akceptacji: %2 %4 {%3}, %8
VERB_REP_SIG=sygnatura: %2 [%3], %1
VERB_REP_NULL=pusty blok, %1
VERB_REP_OTHER=Nieznany blok %0, %1
VERB_REP_SLICE=wyb¢r cz©òci %

SAF_CREATE=Tworzenie nowego archiwum SLICER %
SAF_OPEN=Otwieranie archiwum SLICER %
SAF_APPEND=Dopisywanie do archiwum SLICER %
SAF_DATE=Utworzono %2.%1.%0 o %3:%4:%5
SAF_SLICE=Tworzenie nowej cz©òci archiwum %
SAF_CAT=Ustawianie kategorii archiwum %
SAF_SLICING=Dzielenie archiwum na cz©òci po %
VERB_SAF_IUP=Aktualizacja statystyk archiwum %

MEDIA=Wà¢æ dyskietk© z plikiem %0 do stacji dysk¢w %1.
PAUSE=Naciònij dowolny klawisz, aby kontynuowaÜ.

PROMPT_YES=Tak
PROMPT_NO=Nie
PROMPT_Y=T
PROMPT_N=N
PROMPT_OVER=Zast•piÜ %2%1, %0?
PROMPT_ACCEPT=ZaakceptowaÜ %?
PROMPT_STOP=Plik %1 jest uszkodzony. PrzerwaÜ rozpakowywanie %0?

SUMMARY=cz©òci: %0, katalog¢w: %1, plik¢w: %2, %3

USAGE=Uæycie: % [opcje]

; All help lines are displayed in order until the first missing number is
; encountered. You can add lines. But, keep the numbers in order by renumbering
; all lines after your additional help message. %0 is the Switch Character / or -
HELP_0=Opcje programu SLICER:
HELP_1=
HELP_2=  %0q        wyà•cza wszystkie komunikaty o stanie
HELP_3=  %0v        wà•cza szczeg¢àowe komunikaty o stanie
HELP_4=  %0t        tryb testowy
HELP_5=  %0h        wyòwietla pomoc
HELP_6=
HELP_7=  %0i ?      doà•cza elementy pasuj•ce do maski (opcja domyòlna)
HELP_8=  %0I ?      doà•cza elementy z listy w pliku
HELP_9=  %0e ?      pomija elementy pasuj•ce do maski
HELP_10=  %0E ?      pomija elementy z listy w pliku
HELP_11=
HELP_12=  %0d        pomija puste katalogi
HELP_13=  %0D        nie przeszukuje podkatalog¢w
HELP_14=  %0a        doà•cza wszystkie elementy ukryte i systemowe
HELP_15=  %0o        zast©puje istniej•ce pliki
HELP_16=  %0k        rozr¢ænia wielkoòÜ liter w nazwach plik¢w
HELP_17=
HELP_18=  %0g ?      okreòla kategori© grupy
HELP_19=  %0s ?      rozmiar cz©òci archiwum: K, M lub bajty (tylko przy tworzeniu
HELP_20=            nowego archiwum albo ponownym dzieleniu istniej•cego)
HELP_21=
HELP_22=  %0y        automatycznie potwierdza pytania (bez zast©powania plik¢w).
HELP_23=
HELP_24=Operacje dotycz•ce caàego archiwum:
HELP_25=
HELP_26=  %0f ?      okreòla nazw© pliku archiwum
HELP_27=  %0c        tworzy nowe archiwum
HELP_28=  %0r        dopisuje do istniej•cego archiwum
HELP_29=  %0x        rozpakowuje istniej•ce archiwum
HELP_30=  %0R        tworzy raport o archiwum
HELP_31=  %0O ?      ustala katalog docelowy rozpakowywania
HELP_32=
HELP_33=Osadzone teksty, uwagi i komunikaty:
HELP_34=
HELP_35=  %0L ?      zast©puje domyòlny j©zyk systemu
HELP_36=  %0m ?      osadza tekst komunikatu z pliku
HELP_37=  %0M ?      osadza tekst z pliku, kt¢ry uæytkownik musi zaakceptowaÜ
HELP_38=
HELP_39=Przekazywanie danych skompresowanych:
HELP_40=
HELP_41=  %0p ?      wà•cza przekazywanie danych skompresowanych (GZ, moæe kiedyò inne)
HELP_42=

; Reserved for future use
; HELP_00=  %0u        update existing archive
; HELP_00=  %0S        re-slice archive
; HELP_00=  %0w        write verification
; HELP_00=  %0z        use compression

NEEDHELP=Coò tu si© nie zgadza. Pomoc: opcja "%0h".

FATAL=Bù§D KRYTYCZNY:%_
ERROR=Bù§D:%_
BAD_OPT=Nieprawidàowy parametr wiersza polece‰ "%0%1"
BAD_CMB=Nie moæna poà•czyÜ parametr¢w "%0%1" z "%0%2"
BAD_MCO=Brak wartoòci dla "%0%1"
BAD_INT=Nieprawidàowa wartoòÜ liczbowa "%2" dla "%0%1"
BAD_VAL=WartoòÜ liczbowa "%2" poza zakresem "%3 - %4" dla "%0%1"
BAD_MAX=Przekroczono maksymaln• liczb© cz©òci archiwum dla "%1"
BAD_VER=Archiwum "%1" moæe zawieraÜ nieobsàugiwane struktury danych.
BAD_EMB=Moæna podaÜ tylko jeden plik z tekstem komunikatu naraz.
BAD_MSG=Komunikat "%1" za dàugi. Obci©to do %2.
BAD_CMP=Nieobsàugiwany rodzaj danych skompresowanych "%2"
BAD_TMP=Wymagany jest katalog TEMP.
ER_UNK=kod bà©du #%0, nieokreòlony bà•d: "%1" %2
ER_2=Nie moæna odnale´Ü pliku "%1".
ER_3=Nie moæna odnale´Ü òcieæki pliku "%1".
ER_8=Za maào pami©ci.
ER_11=Plik "%1" ma nierozpoznany format.
ER_13=Plik "%1" zawiera uszkodzone dane.
ER_14=Przerwano na æ•danie uæytkownika.
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

BYTES=% bajt¢w
KBYTES=% KiB
MBYTES=% MiB
FLOPPY=dyskietka %
