# Welcome Message
WELCOME_DEF="V„lkommen till installationsprogrammet f”r " /fLightGreen %1 /fCyan %2 /fGray "."
WELCOME_ADV="V„lkommen till det " /fLightRed "avancerade" /fGray "installationsprogrammet f”r" /fLightGreen %1 /fCyan %2 /fGray /s- .
WELCOME_0=/p
WELCOME_1=/fLightGreen "%1" /fGray "„r ett komplett operativsystem. Om du v„ljer att installera detta p†" /p "din dator, kan du komma att " /fLightRed /BlinkOn "skriva ”ver" /BlinkOff /fGray "operativsystemet dur har nu" /p "(till exempel Windows.)" /fGray
WELCOME_2=/fGray /c32 "Om detta inte „r vad du avser g”ra," /fLightRed "sluta NU!" /fGray
WELCOME_3=
WELCOME_4=
WELCOME_5=/fGray /p

HRULE=/fDarkGray /x 0xC4 /fGray

CONTINUE=/p "Vill du forts„tta" /c32
REBOOT=/p "Vill du starta om nu" /c32

AUTO_YES="[J,N]?" /fWhite "J" /fGray
AUTO_NO="[J,N]?" /fWhite "N" /fGray
AUTO_FMT=/s- "[F,S,I]?" /fWhite "S" /fGray

PROMPT_YESNO=/s JN
PROMPT_FMT=/s FSI

ABORTED=/fLightRed "Installationen av" %1 %2 "har avbrutits." /e /fGray /bBlack

PARTITION_AUTO="Partitionera enhet automatiskt" /fWhite %1 /s- /fGray .
PARTITION_WARN=/fYellow "NOTERA:" /fGray "FAT16-partition under 2Gb kr„vs f”r KERNL86."
PARTITION_MBR="Uppdatera MBR p† enhet" /fWhite %1 /s- /fGray .
PARTITION_ACTIVE="S„tt enhet" /fWhite %1 /fGray "-partition som aktiv."
PARTITION_DONE=/p "Du m†ste starta om din dator f”r att den nya partitioneringen ska f†r effekt."

FORMAT="Enhet" /fWhite %1 /fGray "verkar inte vara formaterad."
FORMAT_DEF="Vill du formatera din enhet" /c32
FORMAT_ADV="Hur vill du formatera din enhet" /s- /c32 ( /fWhite "F" /fGray "ullt„ndigt," /c32 /fWhite "S" /fGray "nabbt," /c32 /fWhite "I" /fGray "nte)" /c32

FILESYSTEM_TEST="Testa filsystemet p† enhet" /fWhite %1 /s- /fGray .
INSERT_DISKETTE="Mata in en diskett" /fWhite #%1 /fGray (%2) "i" /fWhite %3 /s- /fGray .
PRESS_KEY="Tryck p† en tangent f”r att forts„tta."

TARGET_ASK="Var vill du installera" /fLightGreen %1 /s- /fGray "?" /c32
TARGET_PROMPT=/fWhite /bBlue %1
TARGET_BAD=/fLightRed "Ogiltig enhet beg„rd. Kan inte installera p† en diskett."

CHANGE_PATH="S”kv„gen" /fWhite %1 /fGray "finns redan." /p "Vill du „ndra installationskatalog" /c32

BACKUP_OLD="Ett tidigare operativsystem identifierades p† enhet" /fWhite %1 /fGray /s- . /s+ /p "Vill du g”ra en s„kerhetskopia av de gamla filerna f”re installation" /c32
BACKUP_ASK="Var vill du placera de s„kerhetskopierade filerna?" /c32
BACKUP_PROMPT=/fWhite /bBlue %1
BACKUP_BAD=/fLightRed "Ogiltig destination beg„rd. Kan inte g”ra s„kerhetskopia till den platsen." /fGray

DELETE_OLD="De existerande filerna i" /fWhite %1 /fGray "kommer att skrivas ”ver." /p "Vill du ta bort den gamla katalogen helt f”re installation" /c32

FORCE_MBR="Tvinga fram en uppdatering av MBR p† enhet" /fWhite %1 /fGray /c32
SYS_FILES="Installera nya systemstartfiler p† enhet" /fWhite %1 /fGray /c32
CFG_FILES="Ers„tt systemkonfigurationsfiler p† enhet" /fWhite %1 /fGray /c32

STATUS_MSG="Installationsinst„llningar:" /p
STATUS_CPU=/r4/c32 "Plattform (CPU)" /fWhite %1 /fGray (%2)
STATUS_FROM=/r4/c32 "Installera fr†n" /fWhite %1 /fGray
STATUS_DRV=/r4/c32 "Destinationsenhet" /fWhite %1 /fGray (disk %2, partition %3)
STATUS_DOS=/r4/c32 "Installationss”kv„g f”r DOS" /fWhite %1 /fGray
STATUS_BAK=/r4/c32 "S„kerhetskopiera tidigare OS" /fWhite %1 /fGray
STATUS_POS=/r4/c32 "Katalog f”r tidigare OS" /fWhite %1 /fGray
STATUS_MBR=/r4/c32 "Installera ny MBR" /fWhite %1 /fGray
STATUS_SYS=/r4/c32 "Kopiera systemfiler" /fWhite %1 /fGray
STATUS_CFG=/r4/c32 "Kopiera konfigurationsfiler" /fWhite %1 /fGray

INSTALL_NOW="Vi „r nu redo att installera" /fLightGreen %1 /fCyan %2 /fGray /s- .
EXTRACTION=/fLightGreen %1 /fCyan %2 /fGray "filextraktion."
UPDATE_LST="Uppdatera paketlistningsfiler." /p

DO_BACKUP="Skapa s„kerhetskopia av tidigare OS-filer till" /fWhite %1 /fGray /s- .
DO_ERASE="Ta bort" /fWhite %1 /fGray "katalog och filer."
DO_SYSFILES="™verf”r nya systemfiler till enhet" /fWhite %1 /fGray /s- .
DO_FORCEMBR="Tvinga fram uppdatering av MBR p† enhet" /fWhite %1 /fGray /s- .
DO_ACTIVATE="S„tt aktiva startpartition p† disk" /fWhite %1 /fGray "till partition" /fWhite %2 /s- /fGray .
DO_CFGFILES="™verf”r nya konfigurationfiler till enhet" /fWhite %1 /fGray /s- .
DO_PREPARE="F”rbereder att installera k”rbara filer och verktyg."
DO_INSTALL="Installera" /fLightGreen %1 /fGray "filer f”r " /fWhite %2 /fGray /s- .

DONE_NOW="Installationen av" /fLightGreen %1 /fCyan %2 /fGray "har slutf”rts."
REBOOT_NOW="Vill du starta om nu" /c32

REMOVE_MEDIA="Du b”r ta bort disketter och CD-media."

SUCCESS=/fLightGreen "Framg†ng." /fGray
FAILED=/fLightRed "Misslyckat." /fGray

# Copyright and License Notices
TITLE=/fLightGreen %1 /fLightCyan %2 /s- /fWhite + /fGray " Installationsprogram (" /fWhite FDI-x86 /fGray ")"
COPYRIGHT=/fDarkGray "Sl„ppt under GPL v2.0 Licensen."/p "Copyright" 2021-2022 "Jerome Shidel." /fGray /p
TRADEMARK="FreeDOS „r ett varum„rket fr†n Jim Hall," 2001-2022

# Help screen
HELP_0="anv„ndning: SETUP.BAT [flaggor] [m†l]"
HELP_1=""
HELP_2="  [inga flaggor]  utf”r installationen med standardv„rden"
HELP_3=
HELP_4="  adv             starta installationen i avancerat l„ge. (fler fr†gor)"
HELP_5=
HELP_6="  auto            utf”r en fullst„ndigt automatiserad installation utan fr†gor." /p/r18/c32 "detta rekommenderas inte och b”r endast g”ra p† h†rdvara" /p/r18/c32 "utan existerande operativsystem."
HELP_7=
HELP_8="  [m†l]           f”rinst„ll en enhet och/eller s”kv„g f”r m†linstallationen"
HELP_9=
HELP_10="  info            visa installationsen konfigurationsinst„llningar och avsluta"
HELP_11=
HELP_12="  mbr             tvinga fram en uppdatering av MBR och avsluta"
HELP_13=
HELP_14=/n
HELP_15=/n

# Error Messages
ERROR_CRITICAL=/fLightRed "KRITISKT fel:" /fGray /c32
ERROR_NoHDD="Kan inte hitta en partitionerad och formaterad h†rddiskenhet."
ERROR_MINOR=/fLightRed "fel:" /fGray /c32
ERROR_Option="Ok„nd eller ogiltig kommandoradsflagga" /s- "`" /fWhite %1 /fGray "'."
ERROR_NoCfgEnv="Kan inte identifiera grundl„ggande systemkonfiguration och s”kv„gsinst„llningar."
ERROR_NotFreeCOM="Denna kommandofil kr„ver FreeCOM eller kompatibelt skal f”r FreeDOS."
ERROR_MissingFreeCOM="Kan inte hitta FreeDOS:s kommandoradsskal FreeCOM."
ERROR_MissingAUTOEXEC="Kan inte hitta FreeDOS:s kommandofil f”r uppstart FDAUTO.BAT."
ERROR_MakeDir="Kan inte skapa katalog" /fWhite %1 /fGray /s- .
ERROR_BackupCfg="Kan inte s„kerhetskopiera start- 'och/eller' konfigurationsfiler."
ERROR_BackupOS="Kan inte s„kerhetskopiera filer till m†lkatalog."
ERROR_Partition="Ett partitioneringsfel har intr„ffat. Kanske finns ingen h†rddisk eller" /p "s† „r den osynlig f”r det aktuella operativsystemet" /p /p "En annan metod f”r partitionering kr„vs."
ERROR_NoPartition="Kan inte hitta BIOS-partitionen f”r" /fWhite %1 /fGray /s- . /s+ /p "Manuell installation (eller avancerat l„ge utan framtvingad MBR) rekommenderas."
ERROR_Format="Ett fel har intr„ffat vid formatering av enhet" /fWhite %1 /fGray /s- . /s+ /p /p "En annan metod kr„vs f”r att formatera den."
ERROR_FileSystem="Kan inte initiera tempor„rt utrymme p† enhet" /fWhite %1 /s- /fGray .
ERROR_CfgBackup="Kan inte konfigurera katalog f”r s„kerhetskopia."
ERROR_MBRBackup="Kan inte skapa s„kerhetskopia av MBR f”r enhet" /fWhite %1 /fGray /s- .
ERROR_SysFiles="Kan inte kopiera systemfiler till enhet" /fWhite %1 /fGray /s- .
ERROR_BootSector="Kan inte uppdaterad startsektor f”r enhet" /fWhite %1 /fGray /s- .
ERROR_MBRUpdate="Kan inte uppdaterad startsektor f”r enhet" /fWhite %1 /fGray /s- .
ERROR_Activate="Kan inte st„lla in enhet" /fWhite %1 /fGray "att starta fr†n partition" /fWhite %2 /fGray /s- .
ERROR_CfgFiles="Kan inte st„lla in nya konfigurationsfiler p† enhet" /fWhite %1 /fGray /s- .
ERROR_XfrFiles="Kan inte duplicera n”dv„ndig installationsfil till" /fWhite %1 /fGray /s- .
ERROR_SAF="Problem intr„ffade vid extrahering av arkivet" /fWhite %1 /fGray "."
ERROR_WTF="Ok„nt och osannoliktfel intr„ffade under en enkel †tg„rd."
