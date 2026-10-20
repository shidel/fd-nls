# Language: Polish
# Codepage: 852
# Translation: reviewed by Piotr Okrutny in Weblate, 2026-10 (human review, AI-assisted draft)
# Source: PKGMAKER.PL.UTF-8; PKGMAKER.PL (CP852) and PKGMAKER.MZ (Mazovia) are generated from it - edit only the UTF-8 file.

LANG=PL
LANGUAGE=Polski
PROG.NAME=PkgMaker
PROG.VERSION=wersja $
PROG.TITLE=PkgMaker
PROG.DESC=Narz©dzie do tworzenia pakiet¢w
PROG.ABORT=przerwano
MEM.USAGE=U¾ycie pami©ci

GBYTE=$ GB
OVERBYTE=>$ GB
PAUSED=naci˜nij klawisz, aby kontynuowa†...

ERROR=Bˆ¥d ($)
ERROR.NUMBER=#$
ERROR.2=nie znaleziono pliku
ERROR.3=nie znaleziono ˜cie¾ki
ERROR.9=za maˆo pami©ci

ERROR.BADOPT=nieprawidˆowy przeˆ¥cznik $
ERROR.NOTEMP=nie ustawiono zmiennej ˜rodowiskowej TEMP
ERROR.BADDRV=nie znaleziono dysku $, pomini©to
ERROR.LOWMEM=bardzo maˆo wolnej pami©ci
ERROR.LONGLN=Bˆ¥d: wiersz nr $ jest za dˆugi
ERROR.ISULFN=prawdopodobnie dˆuga nazwa (LFN)

ERROR.DEFCFG=przyj©to ustawienia domy˜lne
ERROR.NOPKG=nie podano identyfikatora/nazwy pakietu
ERROR.BADNAME=nie mo¾na u¾y† $ jako identyfikatora/nazwy pakietu
ERROR.EXISTS=metadane pakietu $ ju¾ istniej¥
ERROR.NOINC=dodatkowe dyski mo¾na doˆ¥czy† tylko przy pierwszym skanowaniu
ERROR.NOLST=nie znaleziono listy plik¢w pakietu $
ERROR.BADLSM=plik metadanych pakietu $ wymaga poprawienia
ERROR.NOZIP=nie znaleziono programu zip

FORCED=wymuszono kontynuacj©

FILE.APPEND=dopisywanie do istniej¥cego pliku $
FILE.KEEP=zachowano istniej¥cy plik $
FILE.PRUNE=usuwanie wpis¢w z istniej¥cego pliku $

FILE=$ plik
FILES=plik¢w: $
BYTE=$ B
BYTES=$ B
KBYTE=$ KB
MBYTE=$ MB

SCAN.INIT=Pierwsze skanowanie
SCAN.POST=Drugie skanowanie
SCAN.WAIT=To mo¾e chwil© potrwa†
SCAN.MISSING=Nie znaleziono wynik¢w pierwszego skanowania
SCAN.RUN=Skanowanie...
SCAN.DRIVE=Skanowanie $ ...
SCAN.DONE=Skanowanie zakoäczone
SCAN.DONE.FAST=Albo i nie. Ale szybko poszˆo! Gotowe!

FILE.DEL=usuni©to plik $
STATS.NOW=znaleziono katalog¢w: $0, plik¢w: $1, rozmiar: $2
STATS.NEW=znaleziono nowych plik¢w: $1, rozmiar: $2
STATS.MOD=znaleziono zmienionych plik¢w: $0, zobacz $1
STATS.DETACH=odˆ¥czono plik¢w: $

META.MADE=utworzono metadane pakietu $
META.UPDATE=zaktualizowano metadane pakietu $

MODE.ADD=Dodawanie plik¢w do pakietu $
MODE.DETACH=Odˆ¥czanie plik¢w od pakietu $
MODE.ZIP=Tworzenie archiwum ZIP pakietu $

PKG.ADD=dodawanie: $
PKG.DETACH=odˆ¥czanie: $

IDX.NEW.FILE=Nowy: $
IDX.NEW.DIR=Nowy: $\
IDX.MOD.FILE=Zmieniony: $
IDX.MOD.DIR=Zmieniony: $\

NO.ZIP=Tworzenie archiwum ZIP niedost©pne ze wzgl©du na zgodno˜†, u¾yj pkgzipit.bat

HELP.0=U¾ycie: $ [opcje] [pakiet]
HELP.1=
HELP.2=Przy pierwszym uruchomieniu program domy˜lnie skanuje system plik¢w
HELP.3=i zapisuje informacje o nim. Przy drugim uruchomieniu por¢wnuje nowy stan
HELP.4=z poprzednim skanowaniem i na tej podstawie tworzy pliki LSM i LST pakietu.
HELP.5=
HELP.6=Opcje:
HELP.7=
HELP.8=    $H          Wy˜wietla pomoc i koäczy dziaˆanie
HELP.9=
HELP.10=    $I          Wykonuje pierwsze skanowanie (domy˜lnie przy 1. uruchomieniu)
HELP.11=    $S          Wykonuje drugie skanowanie (domy˜lnie przy 2. uruchomieniu)
HELP.12=
HELP.13=    $D dysk     Doˆ¥cza dysk do skanowania (domy˜lnie skanowany jest tylko C:)
HELP.14=
HELP.15=    $K          Nie usuwa danych skanowania po drugim skanowaniu
HELP.16=    $M          Nie skanuje, tylko tworzy pliki metadanych pakietu.
HELP.17=
HELP.18=    $A plik     Dodaje plik do metadanych pakietu.
HELP.19=    $R wzorzec  Odˆ¥cza pliki od metadanych pakietu (nie usuwa ich z dysku).
HELP.20=    $F          Wymusza kontynuacj© mimo bˆ©d¢w (np. istniej¥cych metadanych).
HELP.21=
HELP.22=    $Z          Tworzy archiwum ZIP pakietu
