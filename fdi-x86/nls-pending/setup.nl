# Language: Dutch
# File ending: NL
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

# Welcome Message
WELCOME_DEF="Welkom bij het installatieprogramma van" /fLightGreen %1 /fCyan %2 /fGray "."
WELCOME_ADV="Welkom bij het" /fLightRed "geavanceerde" /fGray "installatieprogramma voor" /fLightGreen %1 /fCyan %2 /fGray /s- .
WELCOME_0=/p
WELCOME_1=/fLightGreen %1 /fGray "is een compleet besturingssysteem. Als u ervoor kiest om dit op uw" /p "computer te installeren, kunt u" /fLightRed /BlinkOn "het huidige" /BlinkOff /fGray "besturingssysteem"  /fLightRed /BlinkOn "overschrijven" /BlinkOff /p "(bijvoorbeeld Windows.)" /fGray
WELCOME_2=/fGray /c32 "Als dit niet uw bedoeling is," /flightRed "stop dan NU!" /fGray
WELCOME_3=
WELCOME_4=
WELCOME_5=/fGray /p

HRULE=/fDarkGray /x 0xC4 /fGray

CONTINUE=/p "Wilt u doorgaan" /c32
REBOOT=/p "Wilt u nu herstarten" /c32

AUTO_YES="[J,N]?" /fWhite "J" /fGray
AUTO_NO="[J,N]?" /fWhite "N" /fGray
AUTO_FMT=/s- "[V,S,N]?" /fWhite "S" /fGray

PROMPT_YESNO=/s JN
PROMPT_FMT=/s VSN

ABORTED=/fLightRed "De installatie van" %1 %2 "is afgebroken." /e /fGray /bBlack

PARTITION_AUTO="Automatisch station partitioneren" /fWhite %1 /s- /fGray .
PARTITION_WARN=/fYellow "LET OP:" /fGray "FAT16-partitie onder 2Gb is vereist voor KERNL86."
PARTITION_MBR="Master Boot Record op station bijwerken" /fWhite %1 /s- /fGray .
PARTITION_ACTIVE="Stel station" /fWhite %1 /fGray "partitie in als actief."
PARTITION_DONE=/p "U moet uw computer herstarten voordat het nieuwe partitioneringsschema van kracht wordt."

FORMAT="Station" /fWhite %1 /fGray "lijkt niet geformatteerd te zijn."
FORMAT_DEF="Wilt u uw station formatteren" /c32
FORMAT_ADV="Hoe wilt u uw station formatteren" /s- /c32 ( /fWhite "V" /fGray "olledig," /c32 /fWhite "S" /fGray "nel," /c32 /fWhite "N" /fGray "ee)" /c32

FILESYSTEM_TEST="Bestandssysteem op station testen" /fWhite %1 /s- /fGray .
INSERT_DISKETTE="Plaats diskette" /fWhite #%1 /fGray (%2) "in" /fWhite %3 /fGray "."
PRESS_KEY="Druk op een toets om door te gaan."

TARGET_ASK="Waar wilt u" /fLightGreen %1 /s- /fGray " installeren?" /c32
TARGET_PROMPT=/fWhite /bBlue %1
TARGET_BAD=/fLightRed "Ongeldig station opgegeven. Kan niet installeren op diskette."

CHANGE_PATH="Het pad" /fWhite %1 /fGray "bestaat al." /p "Wilt u de installatiemap wijzigen" /c32

BACKUP_OLD="Er is een vorig besturingssysteem gedetecteerd op station" /fWhite %1 /fGray /s- . /s+ /p "Wilt u een reservekopie maken van de oude bestanden voor installatie" /c32
BACKUP_ASK="Waar wilt u de reservekopie‰n plaatsen?" /c32
BACKUP_PROMPT=/fWhite /bBlue %1
BACKUP_BAD=/fLightRed "Ongeldige bestemming opgegeven. Kan op die locatie geen reservekopie maken." /fGray

DELETE_OLD="De bestaande bestanden in" /fWhite %1 /fGray "kunnen gewoon worden overschreven." /p "Wilt u de oude map volledig wissen voor installatie" /c32

FORCE_MBR="Forceer een update van het Master Boot Record op station" /fWhite %1 /fGray /c32
SYS_FILES="Installeer nieuwe systeemopstartbestanden op station" /fWhite %1 /fGray /c32
CFG_FILES="Vervang systeemconfiguratiebestanden op station" /fWhite %1 /fGray /c32

STATUS_MSG="Installatie-instellingen:" /p
STATUS_CPU=/r4/c32 "Platform (CPU)" /fWhite %1 /fGray (%2)
STATUS_FROM=/r4/c32 "Installeren vanaf" /fWhite %1 /fGray
STATUS_DRV=/r4/c32 "Doelstation" /fWhite %1 /fGray (schijf %2, partitie %3)
STATUS_DOS=/r4/c32 "DOS-installatiepad" /fWhite %1 /fGray
STATUS_BAK=/r4/c32 "Backup vorig OS" /fWhite %1 /fGray
STATUS_POS=/r4/c32 "Map vorig OS" /fWhite %1 /fGray
STATUS_MBR=/r4/c32 "Nieuwe MBR inst." /fWhite %1 /fGray
STATUS_SYS=/r4/c32 "Systeembestanden kop." /fWhite %1 /fGray
STATUS_CFG=/r4/c32 "Configbestanden kop." /fWhite %1 /fGray

INSTALL_NOW="We zijn nu klaar om" /fLightGreen %1 /fCyan %2 /fGray "te installeren." /s- .
EXTRACTION="Bestandsextractie van" /fLightGreen %1 /fCyan %2 /fGray /s- .
UPDATE_LST="Pakketlijstbestanden bijwerken." /p

DO_BACKUP="Reservekopie maken van vorige OS-bestanden naar" /fWhite %1 /fGray /s- .
DO_ERASE="Oude map" /fWhite %1 /fGray " en bestanden verwijderen."
DO_SYSFILES="Nieuwe systeembestanden overzetten naar station" /fWhite %1 /fGray /s- .
DO_FORCEMBR="Update van MBR op station forceren" /fWhite %1 /fGray /s- .
DO_ACTIVATE="Actieve opstartpartitie instellen op schijf" /fWhite %1 /fGray "naar partitie" /fWhite %2 /s- /fGray .
DO_CFGFILES="Nieuwe configuratiebestanden overzetten naar station" /fWhite %1 /fGray /s- .
DO_PREPARE="Voorbereiden om uitvoerbare bestanden en hulpprogramma's te installeren."
DO_INSTALL="Installeer" /fLightGreen %1 /fGray "bestanden voor" /fWhite %2 /fGray /s- .

DONE_NOW="De installatie van" /fLightGreen %1 /fCyan %2 /fGray "is voltooid."
REBOOT_NOW="Wilt u nu herstarten" /c32

REMOVE_MEDIA="U dient alle diskettes en CD-media te verwijderen."

SUCCESS=/fLightGreen "Geslaagd." /fGray
FAILED=/fLightRed "Mislukt." /fGray

# Copyright and License Notices
TITLE=/fLightGreen %1 /fLightCyan %2 /s- /fWhite + /fGray " Installatieprogramma (" /fWhite FDI-x86 /fGray ")"
COPYRIGHT=/fDarkGray "Uitgebracht onder GPL v2.0-licentie."/p "Copyright" 2021-2022 "Jerome Shidel." /fGray /p
TRADEMARK="FreeDOS is een handelsmerk van Jim Hall," 2001-2022

# Help screen
HELP_0="gebruik: SETUP.BAT [opties] [doel]"
HELP_1=""
HELP_2="  [geen opties]   voer setup uit met standaardwaarden"
HELP_3=
HELP_4="  adv             start setup in geavanceerde modus (meer vragen)"
HELP_5=
HELP_6="  auto            voer volledig geautomatiseerde installatie uit." /p/r18/c32 "niet aanbevolen, alleen gebruiken op hardware zonder" /p/r18/c32 "een reeds bestaand besturingssysteem."
HELP_7=
HELP_8="  [doel]          stel station en/of pad in voor de doelinstallatie"
HELP_9=
HELP_10="  info            toon installatie-instellingen en sluit af"
HELP_11=
HELP_12="  mbr             forceer een update van de MBR en sluit af"
HELP_13=
HELP_14=/n
HELP_15=/n

# Error Messages
ERROR_CRITICAL=/fLightRed "KRITIEKE fout:" /fGray /c32
ERROR_NoHDD="Kan geen gepartitioneerde en geformatteerde harde schijf vinden."
ERROR_MINOR=/fLightRed "fout:" /fGray /c32
ERROR_Option="Onbekende of ongeldige opdrachtregeloptie" /s- "`" /fWhite %1 /fGray "'."
ERROR_NoCfgEnv="Kan basisconfiguratie en padinstellingen van het systeem niet bepalen."
ERROR_NotFreeCOM="Dit batchbestand vereist FreeCOM of een compatibele shell voor FreeDOS."
ERROR_MissingFreeCOM="Kan de FreeDOS command shell FreeCOM niet vinden."
ERROR_MissingAUTOEXEC="Kan het FreeDOS opstartbestand FDAUTO.BAT niet vinden."
ERROR_MakeDir="Kan map niet aanmaken" /fWhite %1 /fGray /s- .
ERROR_BackupCfg="Kan geen reservekopie maken van opstart- en/of configuratiebestanden."
ERROR_BackupOS="Kan geen reservekopie maken van bestanden in de doelmap."
ERROR_Partition="Er is een partitioneringsfout opgetreden. Een harde schijf is mogelijk" /p "niet aanwezig of onzichtbaar voor het huidige besturingssysteem." /p /p "Een andere partitioneringsmethode is vereist."
ERROR_NoPartition="Kan de BIOS-partitie niet vinden voor" /fWhite %1 /fGray /s- . /s+ /p "Handmatige installatie (of geavanceerde modus zonder MBR) aanbevolen."
ERROR_Format="Er is een fout opgetreden bij het formatteren van station" /fWhite %1 /fGray /s- . /s+ /p /p "Een ander proces is vereist om dit te formatteren."
ERROR_FileSystem="Kan tijdelijke ruimte op station niet initialiseren" /fWhite %1 /s- /fGray .
ERROR_CfgBackup="Kan reservekopie-map niet configureren."
ERROR_MBRBackup="Kan geen reservekopie maken van de Master Boot Record voor station" /fWhite %1 /fGray /s- .
ERROR_SysFiles="Kan systeembestanden niet naar station kopi‰ren" /fWhite %1 /fGray /s- .
ERROR_BootSector="Kan opstartsector voor station niet bijwerken" /fWhite %1 /fGray /s- .
ERROR_MBRUpdate="Kan de MBR voor station niet bijwerken" /fWhite %1 /fGray /s- .
ERROR_Activate="Kan station" /fWhite %1 /fGray "niet instellen op opstartpartitie" /fWhite %2 /fGray /s- .
ERROR_CfgFiles="Kan geen nieuwe configuratiebestanden installeren op station" /fWhite %1 /fGray /s- .
ERROR_XfrFiles="Kan vereist installatiebestand niet dupliceren naar" /fWhite %1 /fGray /s- .
ERROR_SAF="Probleem opgetreden bij het uitpakken van" /fWhite %1 /fGray "archief."
ERROR_WTF="Onbekende en onwaarschijnlijke fout opgetreden tijdens een eenvoudige bewerking."

