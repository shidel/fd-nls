# Language: Slovenian
# File ending: SL
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

# Welcome Message
WELCOME_DEF="DobrodoÁli v namestitvenem programu" /fLightGreen %1 /fCyan %2 /fGray "."
WELCOME_ADV="DobrodoÁli v" /fLightRed "naprednem" /fGray "namestitvenem programu za" /fLightGreen %1 /fCyan %2 /fGray /s- .
WELCOME_0=/p
WELCOME_1=/fLightGreen "%1" /fGray "je celovit operacijski sistem. ¨e se odloüite za namestitev na" /p "vaÁ raüunalnik, lahko" /fLightRed /BlinkOn "prepiÁete" /BlinkOff /fGray "trenutni operacijski sistem" /p "(na primer Windows.)" /fGray
WELCOME_2=/fGray /c32 "¨e to ni vaÁ namen, prosimo" /fLightRed "ustavite ZDAJ!" /fGray
WELCOME_3=
WELCOME_4=
WELCOME_5=/fGray /p

HRULE=/fDarkGray /x 0xC4 /fGray

CONTINUE=/p "Ali ßelite nadaljevati" /c32
REBOOT=/p "Ali ßelite zdaj ponovno zagnati" /c32

AUTO_YES="[D,N]?" /fWhite "D" /fGray
AUTO_NO="[D,N]?" /fWhite "N" /fGray
AUTO_FMT=/s- "[P,H,N]?" /fWhite "H" /fGray

PROMPT_YESNO=/s DN
PROMPT_FMT=/s PHN

ABORTED=/fLightRed "Namestitev" %1 %2 "je bila prekinjena." /e /fGray /bBlack

PARTITION_AUTO="Samodejno particioniraj pogon" /fWhite %1 /s- /fGray .
PARTITION_WARN=/fYellow "OBVESTILO:" /fGray "Za KERNL86 je potrebna particija FAT16 pod 2Gb."
PARTITION_MBR="Posodobi Master Boot Record na pogonu" /fWhite %1 /s- /fGray .
PARTITION_ACTIVE="Nastavi particijo pogona" /fWhite %1 /fGray "kot aktivno."
PARTITION_DONE=/p "Za uveljavitev nove sheme particioniranja morate ponovno zagnati raüunalnik."

FORMAT="Pogon" /fWhite %1 /fGray "ni videti formatiran."
FORMAT_DEF="Ali ßelite formatirati pogon" /c32
FORMAT_ADV="Kako ßelite formatirati pogon" /s- /c32 ( /fWhite "P" /fGray "olno," /c32 /fWhite "H" /fGray "itro," /c32 /fWhite "N" /fGray "e)" /c32

FILESYSTEM_TEST="Preverjanje datoteünega sistema na pogonu" /fWhite %1 /s- /fGray .
INSERT_DISKETTE="Vstavite disketo" /fWhite #%1 /fGray (%2) "v" /fWhite %3 /fGray "."
PRESS_KEY="Pritisnite tipko za nadaljevanje."

TARGET_ASK="Kam ßelite namestiti" /fLightGreen %1 /s- /fGray "?" /c32
TARGET_PROMPT=/fWhite /bBlue %1
TARGET_BAD=/fLightRed "Zahtevan neveljaven pogon. Namestitev na disketo ni mogoüa."

CHANGE_PATH="Pot" /fWhite %1 /fGray "ße obstaja." /p "Ali ßelite spremeniti namestitveni imenik" /c32

BACKUP_OLD="Na pogonu" /fWhite %1 /fGray "je bil zaznan prejÁnji operacijski sistem." /s+ /p "Ali ßelite pred namestitvijo varnostno kopirati stare datoteke" /c32
BACKUP_ASK="Kam ßelite postaviti datoteke varnostne kopije?" /c32
BACKUP_PROMPT=/fWhite /bBlue %1
BACKUP_BAD=/fLightRed "Zahtevan neveljaven cilj. Varnostne kopije na to mesto ni mogoüe narediti." /fGray

DELETE_OLD="Obstojeüe datoteke v" /fWhite %1 /fGray "se lahko preprosto prepiÁejo." /p "Ali ßelite pred namestitvijo popolnoma izbrisati stari imenik" /c32

FORCE_MBR="Prisili posodobitev Master Boot Recorda na pogonu" /fWhite %1 /fGray /c32
SYS_FILES="Namesti nove sistemske zagonske datoteke na pogon" /fWhite %1 /fGray /c32
CFG_FILES="Zamenjaj sistemske konfiguracijske datoteke na pogonu" /fWhite %1 /fGray /c32

STATUS_MSG="Nastavitve namestitve:" /p
STATUS_CPU=/r4/c32 "Platforma (CPU)" /fWhite %1 /fGray (%2)
STATUS_FROM=/r4/c32 "Namesti iz" /fWhite %1 /fGray
STATUS_DRV=/r4/c32 "Ciljni pogon" /fWhite %1 /fGray (disk %2, particija %3)
STATUS_DOS=/r4/c32 "DOS pot namestitve" /fWhite %1 /fGray
STATUS_BAK=/r4/c32 "Varnostna kopija OS" /fWhite %1 /fGray
STATUS_POS=/r4/c32 "Imenik prejÁnjega OS" /fWhite %1 /fGray
STATUS_MBR=/r4/c32 "Namesti novi MBR" /fWhite %1 /fGray
STATUS_SYS=/r4/c32 "Kopiraj sist. datoteke" /fWhite %1 /fGray
STATUS_CFG=/r4/c32 "Kopiraj konf. datoteke" /fWhite %1 /fGray

INSTALL_NOW="Zdaj smo pripravljeni na namestitev" /fLightGreen %1 /fCyan %2 /fGray /s- .
EXTRACTION="Ekstrakcija datotek" /fLightGreen %1 /fCyan %2 /fGray /s- .
UPDATE_LST="Posodobi datoteke seznama paketov." /p

DO_BACKUP="Ustvarjanje varnostne kopije prejÁnjega OS v" /fWhite %1 /fGray /s- .
DO_ERASE="IzbriÁi stari" /fWhite %1 /fGray " imenik in datoteke."
DO_SYSFILES="Prenos novih sistemskih datotek na pogon" /fWhite %1 /fGray /s- .
DO_FORCEMBR="Prisili posodobitev MBR na pogonu" /fWhite %1 /fGray /s- .
DO_ACTIVATE="Nastavi aktivno zagonsko particijo na disku" /fWhite %1 /fGray "za particijo" /fWhite %2 /s- /fGray .
DO_CFGFILES="Prenos novih konfiguracijskih datotek na pogon" /fWhite %1 /fGray /s- .
DO_PREPARE="Priprava na namestitev izvrÁljivih datotek in pripomoükov."
DO_INSTALL="Namesti" /fLightGreen %1 /fGray "datoteke za" /fWhite %2 /fGray /s- .

DONE_NOW="Namestitev" /fLightGreen %1 /fCyan %2 /fGray "je konüana."
REBOOT_NOW="Ali ßelite zdaj ponovno zagnati" /c32

REMOVE_MEDIA="Odstraniti morate vse diskete in CD medije."

SUCCESS=/fLightGreen "UspeÁno." /fGray
FAILED=/fLightRed "Ni uspelo." /fGray

# Copyright and License Notices
TITLE=/fLightGreen %1 /fLightCyan %2 /s- /fWhite + /fGray " Namestitveni program (" /fWhite FDI-x86 /fGray ")"
COPYRIGHT=/fDarkGray "Izdano pod licenco GPL v2.0."/p "Copyright" 2021-2022 "Jerome Shidel." /fGray /p
TRADEMARK="FreeDOS je blagovna znamka Jima Halla," 2001-2022

# Help screen
HELP_0="uporaba: SETUP.BAT [moßnosti] [cilj]"
HELP_1=""
HELP_2="  [brez moßnosti]  izvedi namestitev s privzetimi vrednostmi"
HELP_3=
HELP_4="  adv             zaßeni namestitev v naprednem naüinu (veü vpraÁanj)"
HELP_5=
HELP_6="  auto            izvedi popolnoma samodejno namestitev brez vpraÁanj." /p/r18/c32 "ni priporoüljivo in naj se uporablja samo na strojni opremi" /p/r18/c32 "brez obstojeüega operacijskega sistema."
HELP_7=
HELP_8="  [cilj]          vnaprej nastavi pogon in/ali pot za ciljno namestitev"
HELP_9=
HELP_10="  info            prikaßi nastavitve namestitvenega programa in izstopi"
HELP_11=
HELP_12="  mbr             prisili posodobitev MBR in izstopi"
HELP_13=
HELP_14=/n
HELP_15=/n

# Error Messages
ERROR_CRITICAL=/fLightRed "KRITI¨NA napaka:" /fGray /c32
ERROR_NoHDD="Ni mogoüe najti particioniranega in formatiranega trdega diska."
ERROR_MINOR=/fLightRed "napaka:" /fGray /c32
ERROR_Option="Neznana ali neveljavna moßnost ukazne vrstice" /s- "`" /fWhite %1 /fGray "'."
ERROR_NoCfgEnv="Ni mogoüe doloüiti osnovne sistemske konfiguracije in nastavitev poti."
ERROR_NotFreeCOM="Ta paketna datoteka zahteva FreeCOM ali zdrußljivo lupino za FreeDOS."
ERROR_MissingFreeCOM="Ni mogoüe najti ukazne lupine FreeDOS FreeCOM."
ERROR_MissingAUTOEXEC="Ni mogoüe najti zagonske datoteke FreeDOS FDAUTO.BAT."
ERROR_MakeDir="Ni mogoüe ustvariti imenika" /fWhite %1 /fGray /s- .
ERROR_BackupCfg="Varnostno kopiranje zagonskih in/ali konfiguracijskih datotek ni uspelo."
ERROR_BackupOS="Varnostno kopiranje datotek v ciljnem imeniku ni uspelo."
ERROR_Partition="PriÁlo je do napake pri particioniranju. Trdi disk morda ni prisoten" /p "ali pa je neviden trenutnemu operacijskemu sistemu." /p /p "Potrebna je druga metoda particioniranja."
ERROR_NoPartition="Ni mogoüe najti BIOS particije za" /fWhite %1 /fGray /s- . /s+ /p "Priporoüljiva je roüna namestitev (ali napredni naüin brez prisilnega MBR)."
ERROR_Format="Pri poskusu formatiranja pogona" /fWhite %1 /fGray /s- " je priÁlo do napake." /s+ /p /p "Za formatiranje bo potreben drug postopek."
ERROR_FileSystem="Ni mogoüe inicializirati zaüasnega prostora na pogonu" /fWhite %1 /s- /fGray .
ERROR_CfgBackup="Imenika za varnostne kopije ni mogoüe konfigurirati."
ERROR_MBRBackup="Varnostne kopije Master Boot Recorda za pogon" /fWhite %1 /fGray /s- " ni mogoüe ustvariti."
ERROR_SysFiles="Sistemskih datotek ni mogoüe kopirati na pogon" /fWhite %1 /fGray /s- .
ERROR_BootSector="Zagonskega sektorja za pogon" /fWhite %1 /fGray /s- " ni mogoüe posodobiti."
ERROR_MBRUpdate="Zagonskega sektorja za pogon" /fWhite %1 /fGray /s- " ni mogoüe posodobiti."
ERROR_Activate="Pogona" /fWhite %1 /fGray "ni mogoüe nastaviti na zagonsko particijo" /fWhite %2 /fGray /s- .
ERROR_CfgFiles="Novih konfiguracijskih datotek ni mogoüe namestiti na pogon" /fWhite %1 /fGray /s- .
ERROR_XfrFiles="Zahtevane namestitvene datoteke ni mogoüe podvojiti v" /fWhite %1 /fGray /s- .
ERROR_SAF="Pri ekstrakciji arhiva" /fWhite %1 /fGray " je priÁlo do teßave."
ERROR_WTF="Pri preprosti operaciji je priÁlo do neznane in neverjetne napake."
