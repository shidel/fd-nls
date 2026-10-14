#
# Language: Polish
# Codepage: 852
#
WELCOME_DEF="Witamy w programie instalacyjnym systemu" /fLightGreen %1 /fCyan %2 /fGray /s- .
WELCOME_ADV="Witamy w" /fLightRed "zaawansowanym" /fGray "instalatorze systemu" /fLightGreen %1 /fCyan %2 /fGray /s- .
WELCOME_0=/p
WELCOME_1=/fLightGreen "%1" /fGray "to kompletny system operacyjny. Jeòli go zainstalujesz" /p "na tym komputerze, moæesz " /s- /fLightRed /BlinkOn "nadpisaÜ" /BlinkOff /s+ /fGray "obecny system operacyjny" /p "(na przykàad Windows)." /fGray
WELCOME_2=/fGray /c32 "Jeòli nie tego chcesz," /fLightRed "przerwij TERAZ!" /fGray
WELCOME_3=
WELCOME_4=
WELCOME_5=/fGray /p

HRULE=/fDarkGray /x 0xC4 /fGray

CONTINUE=/p "Czy chcesz kontynuowaÜ" /c32
REBOOT=/p "Czy chcesz teraz ponownie uruchomiÜ komputer" /c32

AUTO_YES="[T,N]?" /fWhite "T" /fGray
AUTO_NO="[T,N]?" /fWhite "N" /fGray
AUTO_FMT=/s- "[P,S,N]?" /fWhite "S" /fGray

PROMPT_YESNO=/s TN
PROMPT_FMT=/s PSN

ABORTED=/fLightRed "Instalacja systemu" %1 %2 "zostaàa przerwana." /e /fGray /bBlack

PARTITION_AUTO="Automatyczny podziaà na partycje dysku" /fWhite %1 /s- /fGray .
PARTITION_WARN=/fYellow "UWAGA:" /fGray "KERNL86 wymaga partycji FAT16 mniejszej niæ 2 GB."
PARTITION_MBR="Aktualizacja MBR na dysku" /fWhite %1 /s- /fGray .
PARTITION_ACTIVE="Ustawianie partycji dysku" /fWhite %1 /fGray "jako aktywnej."
PARTITION_DONE=/p "Nowe partycje zaczn• dziaàaÜ po ponownym uruchomieniu komputera."

FORMAT="Dysk" /fWhite %1 /fGray "nie wygl•da na sformatowany."
FORMAT_DEF="Czy chcesz sformatowaÜ dysk" /c32
FORMAT_ADV="Jak sformatowaÜ dysk" /s- /c32 ( /fWhite "P" /fGray "eàne," /c32 /fWhite "S" /fGray "zybkie," /c32 /fWhite "N" /fGray "ie)" /c32

FILESYSTEM_TEST="Sprawdzanie systemu plik¢w na dysku" /fWhite %1 /s- /fGray .
INSERT_DISKETTE="Wà¢æ dyskietk©" /fWhite #%1 /fGray (%2) "do stacji" /fWhite %3 /s- /fGray .
PRESS_KEY="Naciònij dowolny klawisz, aby kontynuowaÜ."

TARGET_ASK="Gdzie zainstalowaÜ system" /fLightGreen %1 /s- /fGray "?" /c32
TARGET_PROMPT=/fWhite /bBlue %1
TARGET_BAD=/fLightRed "Nieprawidàowy dysk. Nie moæna instalowaÜ na dyskietce."

CHANGE_PATH="ócieæka" /fWhite %1 /fGray "juæ istnieje." /p "Czy chcesz zmieniÜ katalog instalacji" /c32
BACKUP_OLD="Na dysku" /fWhite %1 /fGray "wykryto poprzedni system operacyjny." /p "Czy przed instalacj• utworzyÜ kopi© zapasow• starych plik¢w" /c32

BACKUP_ASK="Gdzie umieòciÜ pliki kopii zapasowej?" /c32
BACKUP_PROMPT=/fWhite /bBlue %1
BACKUP_BAD=/fLightRed "Nieprawidàowe miejsce docelowe. Nie moæna tam utworzyÜ kopii zapasowej." /fGray

DELETE_OLD="Istniej•ce pliki w" /fWhite %1 /fGray "mog• zostaÜ po prostu nadpisane." /p "Czy przed instalacj• caàkowicie usun•Ü stary katalog" /c32

FORCE_MBR="WymusiÜ aktualizacj© MBR na dysku" /fWhite %1 /fGray /c32
SYS_FILES="ZainstalowaÜ nowe pliki rozruchowe systemu na dysku" /fWhite %1 /fGray /c32
CFG_FILES="Zast•piÜ systemowe pliki konfiguracyjne na dysku" /fWhite %1 /fGray /c32

STATUS_MSG="Ustawienia instalacji:" /p
STATUS_CPU=/r4/c32 "Platforma (CPU)" /fWhite %1 /fGray (%2)
STATUS_FROM=/r4/c32 "Instalacja z" /fWhite %1 /fGray
STATUS_DRV=/r4/c32 "Dysk docelowy" /fWhite %1 /fGray (dysk %2, partycja %3)
STATUS_DOS=/r4/c32 "Katalog DOS" /fWhite %1 /fGray
STATUS_BAK=/r4/c32 "Kopia zapasowa poprzedniego systemu" /fWhite %1 /fGray
STATUS_POS=/r4/c32 "Katalog poprzedniego systemu" /fWhite %1 /fGray
STATUS_MBR=/r4/c32 "Nowy MBR" /fWhite %1 /fGray
STATUS_SYS=/r4/c32 "Kopiowanie plik¢w systemowych" /fWhite %1 /fGray
STATUS_CFG=/r4/c32 "Kopiowanie plik¢w konfiguracyjnych" /fWhite %1 /fGray

INSTALL_NOW="Wszystko gotowe do instalacji systemu" /fLightGreen %1 /fCyan %2 /fGray /s- .
EXTRACTION="Rozpakowywanie plik¢w systemu" /fLightGreen %1 /fCyan %2 /fGray /s- .
UPDATE_LST="Aktualizacja list pakiet¢w." /p

DO_BACKUP="Tworzenie kopii zapasowej poprzedniego systemu w" /fWhite %1 /fGray /s- .
DO_ERASE="Usuwanie starego katalogu" /fWhite %1 /fGray "wraz z plikami."
DO_SYSFILES="Przenoszenie nowych plik¢w systemowych na dysk" /fWhite %1 /fGray /s- .
DO_FORCEMBR="Wymuszona aktualizacja MBR na dysku" /fWhite %1 /fGray /s- .
DO_ACTIVATE="Ustawianie aktywnej partycji rozruchowej: dysk" /fWhite %1 /fGray /s- , /s+ "partycja" /fWhite %2 /s- /fGray .
DO_CFGFILES="Przenoszenie nowych plik¢w konfiguracyjnych na dysk" /fWhite %1 /fGray /s- .
DO_PREPARE="Przygotowywanie instalacji program¢w i narz©dzi."
DO_INSTALL="Instalowanie plik¢w" /fLightGreen %1 /fGray "dla" /fWhite %2 /fGray /s- .

DONE_NOW="Instalacja systemu" /fLightGreen %1 /fCyan %2 /fGray "zostaàa zako‰czona."
REBOOT_NOW="Czy chcesz teraz ponownie uruchomiÜ komputer" /c32

REMOVE_MEDIA="Wyjmij wszystkie dyskietki i pàyty CD."

SUCCESS=/fLightGreen "Gotowe." /fGray
FAILED=/fLightRed "Bà•d." /fGray

# Copyright and License Notices
TITLE=/fLightGreen %1 /fLightCyan %2 /s- /fWhite + /fGray " - Instalator (" /fWhite FDI-x86 /fGray ")"
COPYRIGHT=/fDarkGray "Na licencji GPL v2.0."/p "Copyright" 2021-2022 "Jerome Shidel." /fGray /p
TRADEMARK="FreeDOS jest znakiem towarowym Jima Halla," 2001-2022

# Help screen
HELP_0="Uæycie: SETUP.BAT [opcje] [cel]"
HELP_1=""
HELP_2="  [bez opcji]     instaluje z ustawieniami domyòlnymi"
HELP_3=
HELP_4="  adv             uruchamia instalator w trybie zaawansowanym (wi©cej pyta‰)"
HELP_5=
HELP_6="  auto            instaluje w peàni automatycznie, bez æadnych pyta‰." /p/r18/c32 "Niezalecane; tylko na sprz©cie bez zainstalowanego" /p/r18/c32 "systemu operacyjnego."
HELP_7=
HELP_8="  [cel]           ustala dysk i/lub òcieæk© docelow• instalacji"
HELP_9=
HELP_10="  info            wyòwietla ustawienia instalatora i ko‰czy dziaàanie"
HELP_11=
HELP_12="  mbr             wymusza aktualizacj© MBR i ko‰czy dziaàanie"
HELP_13=
HELP_14=/n
HELP_15=/n

# Error Messages
ERROR_CRITICAL=/fLightRed "Bù§D KRYTYCZNY:" /fGray /c32
ERROR_NoHDD="Nie moæna odnale´Ü dysku twardego podzielonego na partycje i sformatowanego."
ERROR_MINOR=/fLightRed "Bà•d:" /fGray /c32
ERROR_Option="Nieznany lub nieprawidàowy przeà•cznik" /s- "`" /fWhite %1 /fGray "'."
ERROR_NoCfgEnv="Nie moæna ustaliÜ podstawowej konfiguracji systemu i òcieæek."
ERROR_NotFreeCOM="Ten plik wsadowy wymaga powàoki FreeCOM lub zgodnej z FreeDOS."
ERROR_MissingFreeCOM="Nie moæna odnale´Ü powàoki FreeDOS (FreeCOM)."
ERROR_MissingAUTOEXEC="Nie moæna odnale´Ü pliku startowego FreeDOS (FDAUTO.BAT)."
ERROR_MakeDir="Nie moæna utworzyÜ katalogu" /fWhite %1 /fGray /s- .
ERROR_BackupCfg="Nie moæna utworzyÜ kopii zapasowej plik¢w rozruchowych i/lub konfiguracyjnych."
ERROR_BackupOS="Nie moæna utworzyÜ kopii zapasowej plik¢w w katalogu docelowym."
ERROR_Partition="Bà•d podczas podziaàu na partycje. Dysku twardego moæe nie byÜ albo" /p "obecny system operacyjny go nie widzi." /p /p "Trzeba podzieliÜ dysk na partycje w inny spos¢b."
ERROR_NoPartition="Nie moæna odnale´Ü partycji BIOS dla" /fWhite %1 /fGray /s- . /s+ /p "Zalecana jest instalacja r©czna (albo tryb zaawansowany bez wymuszania MBR)."
ERROR_Format="Bà•d podczas formatowania dysku" /fWhite %1 /fGray /s- . /s+ /p /p "Trzeba go sformatowaÜ w inny spos¢b."
ERROR_FileSystem="Nie moæna przygotowaÜ miejsca tymczasowego na dysku" /fWhite %1 /s- /fGray .
ERROR_CfgBackup="Nie moæna przygotowaÜ katalogu kopii zapasowej."
ERROR_MBRBackup="Nie moæna utworzyÜ kopii zapasowej MBR dysku" /fWhite %1 /fGray /s- .
ERROR_SysFiles="Nie moæna skopiowaÜ plik¢w systemowych na dysk" /fWhite %1 /fGray /s- .
ERROR_BootSector="Nie moæna zaktualizowaÜ sektora rozruchowego dysku" /fWhite %1 /fGray /s- .
ERROR_MBRUpdate="Nie moæna zaktualizowaÜ sektora rozruchowego dysku" /fWhite %1 /fGray /s- .
ERROR_Activate="Nie moæna ustawiÜ na dysku" /fWhite %1 /fGray "partycji rozruchowej" /fWhite %2 /fGray /s- .
ERROR_CfgFiles="Nie moæna zainstalowaÜ nowych plik¢w konfiguracyjnych na dysku" /fWhite %1 /fGray /s- .
ERROR_XfrFiles="Nie moæna skopiowaÜ potrzebnego pliku instalatora do" /fWhite %1 /fGray /s- .
ERROR_SAF="Bà•d podczas rozpakowywania archiwum" /fWhite %1 /s- /fGray .
ERROR_WTF="Nieznany i maào prawdopodobny bà•d podczas prostej operacji."
