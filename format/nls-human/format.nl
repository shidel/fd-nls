# program: FreeDOS FORMAT.EXE message set - version 0.92a and later
# language: Dutch
# display codepage: ASCII
# catalog codepage: ASCII
# translators: Eric Auer

# version (on help screen)
0,0:FreeDOS %6s - versie %s\n
0,1:Van Brian E. Reifsnyder, Eric Auer en anderen.\n
0,2:Copyright 1999 - 2024 Licentie: GNU GPL, versie 2 of nieuwer.\n\n
# 0.3 or 0.4 shown depending on if /Z:longhelp option used or not
0,3:Syntaxis (zie documentatie voor meer achtergrondinformatie en details):\n\n
0,4:Syntaxis (zie documentatie of gebruik /Z:longhelp voor meer opties):\n\n

# common
1,0:\n
# these two options for Yes and No are only 1 character and must be upper case
1,1:J
1,2:N
# user has to type full word matching this
1,3:JA
1,4:NEE
# other possibly common bits
1,5:Mislukt!\n
1,6:Mislukt.\n
1,7:Wordt afgebroken.\n

# short help screen (shown if compiled without LEGACY_HELP)
# Use as many messages as needed, 1 message per max 79 column line
# but if possible keep to less than 23 lines
# message numbers do not need to match up for messages for different languages
# Each message should end with a newline \n
# after every 23 messages user will be prompted to press a key to continue
2,0:FORMAT station: [/V[:label]] [/Q] [/U] [/F:size] [/S] [/D]\n
2,1:FORMAT station: [/V[:label]] [/Q] [/U] [/T:tracks /N:sectors] [/S] [/D]\n
#  /* the /4 option is a legacy shorthand for size selection: 360k in 1.2M drive */
#  /* (drive type detection and "double stepping" setting are automatic on ATs.) */
2,2:FORMAT station: [/V[:label]] [/Q] [/U] [/4] [/S] [/D]\n
2,3:\n
2,4: /V:label   Geeft een naam (volume label) aan het station. Timestamp: Nu.\n
2,5: /S         Roept SYS aan om het station opstartbaar te maken.\n
2,6: /D         Extra uitvoerige meldingen, voor debugging en foutrapporten.\n
2,7: /Q         Snelle formattering. UNFORMATeerbaar en met behoud van de lijst\n
2,8:            van slechte clusters, tenzij naast /Q ook /U gebruikt wordt.\n
2,9: /U         Onvoorwaardelijk formatteren, bij floppy ook low level format.\n
2,10: /F:size    Kiest de grootte van de te formatteren floppy. Gebruikelijk zijn:\n
2,11:            360, 720, 1200, 1440 of 2880 (kiloBytes). /F:0 geeft een lijst.\n
2,12: /4         360k floppy in een 1.2 MB station formatteren.\n
2,13: /T:tracks  Kiest de hoeveelheid tracks van een floppy.\n
2,14: /N:sectors Kiest de hoeveelheid sectors per track van een floppy.\n

# short help screen (shown if compiled _with_ LEGACY_HELP)
# Use as many messages as needed, 1 message per max 79 column line
# but if possible keep to less than 23 lines
# message numbers do not need to match up for messages for different languages
# Each message should end with a newline \n
# after every 23 messages user will be prompted to press a key to continue
20,0:FORMAT station: [/V[:label]] [/Q] [/U] [/F:size] [/B | /S] [/D]\n
20,1:FORMAT station: [/V[:label]] [/Q] [/U] [/T:tracks /N:sectors] [/B | /S] [/D]\n
20,2:FORMAT station: [/V[:label]] [/Q] [/U] [/4] [/B | /S] [/D]\n
20,3:FORMAT station: [/Q] [/U] [/1] [/4] [/8] [/B | /S] [/D]\n
20,4:\n
20,5: /V:label   Geeft een naam (volume label) aan het station. Timestamp: Nu.\n
20,6: /S         Roept SYS aan om het station opstartbaar te maken.\n
20,7: /B         Geen effect. Vroeger: ruimte voor opstartbestanden te reserveren.\n
20,8: /D         Extra uitvoerige meldingen, voor debugging en foutrapporten.\n
20,9: /Q         Snelle formattering. UNFORMATeerbaar en met behoud van de lijst\n
20,10:            van slechte clusters, tenzij naast /Q ook /U gebruikt wordt.\n
20,11: /U         Onvoorwaardelijk formatteren, bij floppy ook low level format.\n
20,12: /F:size    Kiest de grootte van de te formatteren floppy. Gebruikelijk zijn:\n
20,13:            360, 720, 1200, 1440 of 2880 (kiloBytes). /F:0 geeft een lijst.\n
20,14: /4         360k floppy in een 1.2 MB station formatteren.\n
20,15: /T:tracks  Kiest de hoeveelheid tracks van een floppy.\n
20,16: /N:sectors Kiest de hoeveelheid sectors per track van een floppy.\n
20,17: /1         Slechts 1 kant van een floppy formatteren (160k / 180k).\n
20,18: /8         5.25\" floppy met 8 sectors per track formatteren (160k / 320k).\n

# detailed help screen
# Use as many messages as needed, 1 message per max 79 column line
# message numbers do not need to match up for messages for different languages
# Each message should end with a newline \n
# after every 23 messages user will be prompted to press a key to continue
3,0:Deze FORMAT is gemaakt voor het http://www.freedos.org/ project.\n
3,1:  Zie http://www.gnu.org/ voor informatie over de GNU GPL licentie.\n
3,2:Gemaakt in 1999-2003 door Brian E. Reifsnyder <reifsnyderb@mindspring.com>\n
3,3:  Maintainer van 0.90 en 0.91 2003 t/m 2006: Eric Auer <eric@coli.uni-sb.de>\n
3,4:Contributies van: Jan Verhoeven, John Price, James Clark, Tom Ehlert,\n
3,5:  Bart Oldeman, Jim Hall en anderen, en niet te vergeten alle testers!\n
3,6:\n
3,7:Opties en details over speciale functies:\n
3,8:/D (debug) en /Y (niet om bevestiging vragen) zijn altijd mogelijk.\n
3,9:/B (ruimte voor systeembestanden reserveren) is nep. Niet met /S te combineren.\n
3,10:/V:label kan niet op 160k/320k floppies. Labels hebben een tijdstempel.\n
3,11:\n
3,12:De grootte van een schijf kiezen kan slechts voor een floppy. Je kunt of\n
3,13:/F:size (in kilobytes, gebruik /F:0 om te zien welke sizes mogelijk zijn)\n
3,14:of     /T:tracks /N:sectors_per_track\n
3,15:of elke combinatie van /1 (slechts 1 kant: 160k of 180k),\n
3,16:                       /8 (8 sectors per track: 160k of 320k, DOS 1.x)\n
3,17:                    en /4 (160 t/m 360k floppy in 1200k diskettestation)\n
3,18:\n
3,19:Om bij een harde schijf geen bevestiging te vragen, gebruik /Z:seriously\n
3,20:Om UNFORMAT gegevens bij te werken zonder te formatteren, gebruik /Z:mirror\n
3,21:en om een schijf m.b.h. UNFORMAT (mirror) data te UNFORMATteren: /Z:unformat\n
3,22:\n
3,23:Voor een FLOPPY gebruikt FORMAT standaard quick safe format en slaat mirror\n
3,24:  (unformat) data op. Ongeformatteerde floppies worden low-level formatted.\n
3,25:Bij een vaste schijf (of SSD) is de default ook quick safe format of, als\n
3,26:  er nog geen format was, quick full format, wat slechts wat metadata schrijft.\n
3,27:Als je een low-level formattering wilt afdwingen (floppy) of de hele inhoud\n
3,28:  van een harde schijf wilt overschrijven (zeer traag!), gebruik dan /U.\n
3,29:  FORMAT /Q /U is quick full format zonder low-level format, scan of wipe.\n
3,30:  FORMAT /Q is quick save format en slaat als het kan mirror/unformat data op.\n
3,31:    Let op! De mirror data gaat het einde van het station overschrijven!\n
3,32:  FORMAT kiest automatisch een modus (zie boven) als je geen /Q of /U kiest.\n
3,33:\n
3,34:Ondersteunde FAT types zijn: FAT12, FAT16, FAT32, allen met mirror / unformat.\n
3,35:Ondersteunde floppy groottes zijn: 160k 180k 320k 360k en 1200k voor 5.25inch\n
3,36:  en 720k en 1440k (2880k nog niet getest) voor 3.5inch floppystations.\n
#3,?:DD stations ondersteunen slechts 360k (5.25) en 720k (3.5). 2880k is ED.\n
3,37:Ondersteunde overformaten: 400k 800k 1680k (en 3660k) met meer sectors\n
3,38:  en 1494k (i.p.v 1200k) en 1743k (en 3486k) met meer sectors en tracks.\n
3,39:  Meer tracks werken niet op alle stations, gebruik dit op eigen risico.\n
3,40:  Let op! Oude versies van DOS hebben een driver voor overformaten nodig.\n
3,41:  720k in 1440k vereist 720k floppies. Formatteer op 360k in 360k stations.\n
3,42:\n
3,43:Bij FAT32 formattering kun je de /A optie gebruiken voor 4k alignment.\n

# main()
4,0:Verboden letter in stationsnaam: %c\n
4,1:Toegestaan zijn 0-9, A-Z, spatie, chars 128-255 afhankelijk van je taal\n
4,2:en de volgende tekens:
# the following is printed for valid label characters from ordinal(' ')+1 through 127
4,3: %c
4,4:\nmaar geen controletekens en geen van de volgende tekens:
# and now for enumerating illegal characters from ordinal(' ')+1 through 127
4,5: %c"
# /F:size
4,6:Standaard: 160, 180, 320, 360, 720, 1200, 1440, 2880.\n
4,7:Speciaal:  400, 800, 1680, 3360,    1494, 1743, 3486.\n
# /T tracks (cylinders)
4,8:Ok: 40, 80. ???: 83.\n
# /N sectors per track
4,9:Standaard: 8, 9, 15, 18, 36.\n
4,10:Speciaal:  10, 21, 42.\n
# other options
4,11:Niet herkende optie: /%c\n
4,12:Je moet een stationsletter aangeven.\n
4,13:Je kunt niet tegelijk /T en /N gebruiken.\n
4,14:Formattering gaat grootte veranderen, moet full format gebruiken.\n
4,15:Oud: %d sectors per track, %d koppen. Nieuw: %d sect. %d koppen\n
4,16:Kan geen bestaand format vinden, moet full format gebruiken.\n
4,17:Kan geen bestaand format vinden, kan geen UNFORMAT data bewaren.\n
4,18:Kopie van belangrijke sectors wordt aan het einde van het station geplaatst:\n
4,19:Boot sector, een FAT, root directory. Handig voor UNFORMAT.\n
4,20:FORMAT gaat boot sector, FATs en root directory overschrijven met\n
4,21:een bestaande MIRROR/UNFORMAT data backup.\n
# message 4,22 should never be reached/shown
4,22:/Z:wat???\n
4, 23: Volledige formattering, gaat alle gegevens wissen\n
4, 24: Snelle formattering, gaat slechts metadata resetten\n
4, 25: Let op! Als er slechte clusters gemarkeerd waren, worden deze ook gereset.\n
4, 26: Veilige snelle formattering, gaat proberen UNFORMAT gegevens op te slaan.\n
# 4,27 through 4,32 display: <action> complete\n
4,27:Formattering
4,28:Snelle formattering
4,29:Veilige snelle formattering
4,30:Mirror
4,31:UNFORMAT
4,32: afgerond.\n
# 4,33 thru 4,35 are to ask user to repeat previous action
4,33:Nog een floppy formatteren
4,34:Nog een floppy verwerken
4,35: (y/n)?
# 4,36 thru 4,38 tell user we are repeating action
4,36:verwerken
4,37:formatteren
4,38:Volgende floppy %s...\n

# the following are long option keywords /Z:keyword
5,0:Ongeldige /Z:optie - toegestaan zijn: MIRROR, UNFORMAT, SERIOUSLY\n"));
# take a new mirror data snapshot
5,1:mirror
# revert to mirrored state, dangerous!
5,2:unformat
# User MEANS to format harddisk
5,3:seriously
# display LONG (detailed) version of help
5,4:longhelp

# Check_Remote_Subst()
6,0:Kan geen remote of SUBSTed stations formatteren (code %04x). Wordt afgebroken.\n
6,1:Geen geldig station! Wordt afgebroken.\n
6,2:Kan geen ASSIGNed, JOINed of SUBSTed stations formatteren. Wordt afgebroken.\n

# Check_For_Format()
7,0: Boot sector niet leesbaar, schijf is nog niet geformatteerd\n
7,1: Inhoud boot sector niet plausibel, schijf is niet FAT geformatteerd\n
7,2: Ongeldige %sBPB (code 0x%x). Nog NIET geformatteerd.\n

# Write_System_Files()
8,0:\nLET OP: Geen SYS in PATH gevonden - kon schijf niet opstartbaar maken!\n
8,1:\nSYS draaien: %s %s\n
8,2:\nSYS in een shell draaien: %s\n
8,3:\nErrorlevel van SYS was %d.\n
8,4:\nLET OP: SYS is mislukt.\n

# Ask_User_To_Insert_Disk()
9,0: Ga een nieuwe floppy voor station %c inleggen:\n
9,1: Ga een nieuwe floppy inleggen en\n
9,2: druk ENTER zodra de juiste floppy in het station is...

# Confirm_Hard_Drive_Formatting()
10,0:UNFORMAT gaat je root directory en FAT naar een eerder gebackuppede\n
10,1:toestand terugdraaien. Dat kan een enorme chaos veroorzaken!\n
10,2: LET OP: ALLE GEGEVENS OP %s\n
10,3:HARDE SCHIJF
10,4:FLOPPY
10,5: %c: WORDEN VERNIETIGD!
10,6: %c: WORDEN MOGELIJK VERNIETIGD!
10,7: WEET JE HET ZEKER?\n
# note: will be followed by " (YES/NO)? " from msg 1.3 & 1.4
10,8: Doorgaan met formatteren
10,9: Doorgaan met ontformatteren
# %s will be replaced with msg from 1.3
10,10:Je moet het hele woord %s typen om te bevestigen.

# Ask_Label()
11,0:Geef een naam (volume label) aan het station (max. 11 tekens):
11,1:Geen naam. Hierdoor wordt ook geen formatteer-tijdstempel opgeslagen.\n

# Critical_Error_Handler() (%s will be either INT 13 or DOS)
12,0:\n Kritische fout tijdens %s schijfbewerking\n
12,1:\n Programma afgebroken.\n

# Display_Drive_Statistics()
13,0:\n Serienummer is %04X-%04X\n
13,1:bytes
13,2:kbytes
13,3:Mbytes
13,4:Niet 512 bytes/sector - stats geven een vertekend beeld.\n
# %13s%c%s %s becomes <number><decimal separator>[0|5] [kbytes|bytes]
13,5 :%13s%c%s %s totale schijfruimte (disk size)\n
13,6 :%13s%c%s %s in slechte sectors\n
13,7 :%13s%c%s %s in clusters met slechte sectors\n
13,8 :%13s%c%s %s beschikbaar op schijf (free clusters)\n
13,9 :%13s%c%s %s in elke cluster (allocation unit).\n
# second %s replaced with "  " for FAT32 or "" otherwise
13,10:%13s%s clusters (allocation units) op deze schijf.\n
13,11:%13s%s van de clusters (allocation units) zijn als slecht gemarkeerd\n
# FAT32, 2 spaces, see 13.10 & 13.11
13,12:  
# FAT12/FAT16, no spaces, see 13.10 & 13.11
13,13:
13,14:Gbytes

# misc messages
14,0:\n Ongeldige combinatie van opties... Lees de hulptekst. Wordt afgebroken.\n
14,1:-- druk ENTER voor de volgende bladzijde of ESC om af te breken --
14,2:\nAfgebroken op verzoek van de gebruiker.\n
14,3:Parameter heeft niet toegestaane waarde - %s%s\n
14,4:%3d percent afgerond.
14,5:Er moet een waarde voor de parameter woorden gegeven - %s:value\n

# Create_File_System()
15,0:FAT32 flags 0x%04x vastgelegd op 0.\n
15,1:FAT32 versie 0x%04x vastgelegd op 0.\n
15,2:Backup Boot / FS Info Sector 
15,3:op actief gezet.\n
15,4:standaard positie ongeldig.\n
15,5: Sector 6 and 1 gekozen.\n
15,6:uitgezet (niet genoeg ruimte).\n

# Get_FS_Info()
16,0:Root directory grootte afgerond naar %u ingangen, meervoud van %u.\n
16,1:Niet 512 bytes per sector. Wordt afgebroken!\n
16,2:Ongeldige hoevelheid FATs. Wordt afgebroken!\n

# Write_Boot_Sectors()
17,0:Geen Backup Boot Sector.\n
17,1:Ongeldige Backup Boot Sector positie %u??\n
17,2:Geen FS Info Sector.\n
17,3:Ongeldige FS Info Sector positie %u??\n

# Write_FAT_Tables()
18,0:Ongeldige hoeveelheid FATs. Wordt afgebroken!\n
18,1:LET OP: Elke FAT heeft %lu sectors, > 16MB-64k, niet compatible met Win9x!\n
18,2: Voorbereiden FAT...\n
18,3: Aangepaste root directory grootte: %lu clusters.\n
18,4:Root directory beperkt tot 125 clusters!\n

# drivio.c
19,0: [Fout %d]\n
19,1: Ongeldig station! Wordt afgebroken.\n
19,2: FreeDOS logische lock fout 0x%x genegeerd.\n
19,3: Kon logisch station niet locken (fout 0x%x)! Wordt afgebroken.\n
19,4: FreeDOS fysieke lock fout 0x%x genegeerd.\n
19,5: Kon fysiek floppy station niet locken (fout 0x%x)!?\n
# maybe a better error message? Drive_IO() Invalid request for 0 sectors?
19,6:Drive_IO(x,y,0)?\n
# last %s for 19.7 & 19.8 replaced with READ or WRITE from 19.9 or 19.10
19,7:* slechte sector(s): %ld (code 0x%x) op %s *\n
19,8:Drive_IO(%s %ld, aantal %d ) [%s] [station %c%c]\n
19,9:SCHRIJVEN
19,10:LEZEN
19,11:\nKon access flags niet lezen (fout %02x). Wordt afgebroken.\n
19,12:\nKon access flags niet aanzetten (fout %02x). Wordt afgebroken.\n

# see above for set 20

# hdisk.c
21,0:Default BPB *FAT1x* %u sectors/FAT, %u root directory ingangen, dus FAT32.\n
21,1:Ongeldig station! Wordt afgebroken.\n
21,2:Geen toegang! LOCK probleem? Wordt afgebroken.\n
21,3:GENIOCTL/0860 fout %02x. Probeer FAT32.\n
21,4:GENIOCTL/4860 fout %02x. Geen FAT32 kernel?\n
21,5:FAT1x FAT grootte %u sectors?\n
21,6:WinNT/XP/2k DOS venster. Kan niet formatteren.\n
21,7:Default BPB FAT32 root dir positie naar 2 gecorrigeerd.\n
# GDP = Get_Device_Parameters()
21,8:GDP correctie: Moet FAT12 zijn! FAT1x grootte: %u\n
21,9:GDP correctie: Moet FAT16 zijn! FAT1x grootte: %u\n
21,10:GDP correctie: Is echt FAT32! FAT grootte: %u\n
21,11:GDP correctie: Verwijder FAT1x FAT (%u) / root (%u) vann FAT32 schijf.\n
21,12:GDP correctie: Kan geen FAT1x zijn.\n
21,13:GDP correctie: Kan geen FAT1x zijn, geen FAT1x FAT\n
21,14:GDP correctie: Kan geen FAT1x zijn, geen FAT1x root directory.\n
21,15:GDP fout bij het lezen van de default BPB: %02x.\n
21,16: Align voor een oneven hoeveelheid FAT32 FATs.\n
21,17:Volume heeft geen grootte!? Wordt afgebroken.\n
21,18:%d bytes / sector, not 512!? Wordt afgebroken.\n
21,19:Niet 1 of 2 FATs, maar %hu!? Wordt afgebroken.\n
21,20:LET OP: Clusters groter dan 64k. Weinig DOS of Windows versies kunnen dit aan!\n
# 21.21 & 21.22 go together
21,21:LET OP: Clusters groter dan 32k. Win9x or MS DOS kunnen hiermee niet overweg!\n
21,22:  WinME, WinNT/2k/XP/2003 and FreeDOS will be okay, though.\n
21,23:FATAAL: Cluster grootte niet 0.5, 1, 2, 4, 8, 16, 32, 64k of 128k, maar %d.%dk!\n
21,24: FAT32 bijna als FAT1x geformatteerd, gelukkig toch niet...\n
# 21.25 & 21.26 go together
21.25:LET OP: Elke FAT32 FAT gaat meer dan (16 MB - 64 kB) groot zijn!\n
21,26:  Win9x gaat dit station niet kunnen gebruiken.\n
21,27: FAT1x bijna als FAT32 geformatteerd, gelukkig toch niet...\n
# 21.28 or 21.29 followed by "FAT12.\n" or "FAT16.\n"
# with %lu %s size, e.g. 999 kbytes  -- see 13.1 and similar
21,28: Schijfgrootte: %lu %s, 
21,29: Let op: Schijf heeft non-standaard sector grootte, 

# floppy.c
22,0:Format_Floppy_Cylinder( kop=%d cylinder=%d ) sectors=%d [int 13.5]\n
22,1:Slechts eerste %d sectors per track worden getest\n
22,2:\nFormatteren gefaald, fout in eerste 7 sectors!\n
22,3:Sector %4ld CHS=[%2d:%d:%2d] slecht\n
22,4:Harddisk BIOS drive number! Wordt afgebroken.\n
22,5:Formatteren naar %ldk (Cyl=%ld Head=%ld Sec=%2ld)\n
22,6:Media type onbekend voor %ldk formaat\n
22,7:Media type onbekend voor %ldk formaat (Cyl=%ld Head=%ld Sec=%2ld)\n
22,8:int 13.8 drive type 0x%x wordt verwerkt als 1440k.\n
22,9:Standaard grootte voor station in gebruik: %ldk (Cyl=%ld Head=%ld Sec=%2ld)\n
22,10:Grootte %ldk niet gedefineerd!??\n
22,11:Poging tot %ldk in %dk station? Te veel. Wordt afgebroken.\n
22,12:OVERFORMAT: %ldk in %dk station. Succes ermee!\n
22,13:Dit is een is a 720k station: /1, /4 of /8 niet mogelijk.\n
22,14:Minimum grootte voor dit station is 720k\n
22,15:Dit is een 3.25 inch station: /1, /4 or /8 niet mogelijk.\n
22,16:Minimum grootte voor dit station is 720k.\n
22,17:Dit is een 3.25 inch station: Geen 1200k formaat mogelijk.\n
22,18:Mode (size class %d) setting station mislukt, foutcode %02x hex\n
22,19:Geen floppy in het station!\n
22,20:Ga desondanks door.\n
22,21:Geen floppy in het station (timeout)!\n
22,22:Media type %ldk  (%d x %ld x %2d) niet ondersteund in dit station!?\n
22,23:Geometrie keuze (int 13.18) fout (%02x). 
22,24:Ik geef het op.\n
22,25:Genegeerd.\n
22,26:DDPT is in ROM - slechts standaard groottes mogelijk.\n
22,27:SECTORS PER TRACK zit vast op %d, wilde %d. Ga desondanks door.\n
22,28:DDPT tweaking niet mogelijk: DDPT in ROM\n
22,29:Geen gap length bekend voor %d sec/cyl. Succes met de BIOS defaults!\n
22,30:TWEAK: Sectors per cylinder in DDPT gezet op %d\n
22,31:TWEAK: %d Sectors per cylinder, Format gap %d!\n
22,32:Floppy controller reset gefaald (code %x) - DDPT ongeldig?\n
22,33:-- druk ENTER om de floppy te formatteren of ESCAPE om af te breken --\n
22,34:[doublestepping] 
22,35:[gekozen type %hu] 
22,36: 500 kbps (HD 1xx0k)\n
22,37: 300 kbps (DD  360k)\n
22,38: 250 kbps (DD  720k)\n
22,39:1000 kbps (ED 2880k)\n

# savefs.c
23,0:Kan MIRROR MAP sector %lu niet schrijven - UNFORMAT niet mogelijk!\n
23,1:Niet 512 bytes / sector. Kan geen UNFORMAT data opslaan.\n
23,2:Niet 1 of 2 FATs. Kan geen UNFORMAT data opslaan.\n
23,3:LET OP: Er zijn %u gereserveerde of boot sectors, niet 1.\n
23,4:LET OP: Gereserveerde sectors waren %u maar worden %u.\n
23,5: Moet FAT32 zijn, niet %s!\n
23,6: GEEN unformat data opgeslagen, lijst van slechte clusters gewist.\n
23,7:LET OP: FAT32 met extra FAT1x style root directory???\n
23,8: Moet FAT32 zijn, niet FAT1x!\n
23,9: FAT32 root directory, maar FAT1x FAT!\n
23,10: %s grootte, maar FAT32 verwacht!\n
23,11: Non-plausible grootte root directory, FAT of station! Slechte boot sector?\n
23,12: Grote FAT voor weinig data? Slechte boot sector?\n
23,13:Root directory NIET in eerste cluster, wordt NIET opgeslagen!\n
23,14: Station lijkt ongeformatteerd, geen UNFORMAT opgeslagen!\n
23,15:Onverwachtte hoeveelheid gereserveerde sectors: %lu gevonden, %u verwacht.\n
23,16:Onverwachtte hoeveelheid FATs: %lu gevonden, %hu verwacht\n
23,17:Onverwachtte clustergrootte: %lu gevonden, %hu (sectors) verwacht\n
#  FOUND # FAT?? / PLANNED # FAT??
23,18:Onverwachtte FAT grootte: %lu %s gevonden, %lu %s verwacht\n
23,19:MIRROR data zou niet-lege clusters overschrijven. MIRROR wordt afgebroken.\n
23,20:SafeFormat: Moet %lu niet-lege data sectors overschrijven!\n
23,21:Kan mirror map pointer niet schrijven - UNFORMAT gaat niet mogelijk zijn!\n
23,22:Aanmaken van een UNFORMAT (mirror) data backup wordt overgeslagen.\n
23,23:Leesfout bij sector %lu - UNFORMAT data beschadigd\n
23,24:Schrijffout bij sector %lu - UNFORMAT data beschadigd\n
23,25: Mirror map is %lu bytes lang, 
23,26: %lu sectors mirrored.\n
23,27:Geen MIRROR / UNFORMAT data: Verkeerd magisch getal.\n
23,28:\n Einde van de mirror map. UNFORMAT gereed.\n
23,29: Boot sector wordt naar backup gecloned.\n
23,30: Filesystem info sector data wordt als nog niet bekend geflagged.\n
23,31:*** Kon geen backup sector %lu kopie in sector %lu maken ***\n
23,32:Zou boot sector met onzin overschrijven, 0 or > 7 FATs.\n
23,33:*** Kon sector %lu niet terughalen (restore) ***\n
23,34:*** Kon FAT sector %lu niet naar sector %lu clonen ***\n
23,35:LET OP: Wou %hu FATs maken, maar gebruik nu %hu.\n
23,36:LET OP: UNFORMAT gaat FAT1x station in FAT32 veranderen.\n
23,37:LET OP: UNFORMAT gaat FAT32 station in FAT1x veranderen!?\n
23,38:\n Boot sector: %hu FATs (offset %lu), %lu sectors per FAT\n
23,39: UNFORMAT informatie wordt opgeslagen...\n

# savefs.c unable to save filesystem properties error message
# Use as many messages as needed, 1 message per max 79 column line
# message numbers do not need to match up for messages for different languages
# Each message should end with a newline \n
# after every 23 messages user will be prompted to press a key to continue
24,0:Eigenschappen van station gaan veranderen, kan geen (waarschijnlijk lege)\n
24,1:lijst van slechte clusters bewaren. Ga de hele schijf met een tool checken\n
24,2:of gebruik FORMAT /U om de lijst van slechte clusters opnieuw in te vullen.\n

# recordbc.c
25,0:Schijf is niet bruikbaar: Slechte sector in system data. Format afgebroken.\n
25,1:\nBoot sector is stuk.\n
25,2:\nFAT sector is stuk.\n
25,3:\nRoot directory sector is stuk.\n
25,4:\nBoot sector is stuk.\n
25,5:\nFAT sector is stuk.\n
25,6:\nRoot directory sector is stuk.\n
25,7:\nGereserveerde sector (boot, info, backup ervan...) is stuk.\n
25,8:\nFAT sector is stuk.\n
25,9:*** Slechte sector %lu, cluster %lu in FAT gemarkeerd! ***\n
25,10:LET OP: GEBRUIKTE cluster %lu wordt als slecht gemarkeerd!\n
25,11:*** %u slechte sectors gevonden. %lu clusters als slecht gemarkeerd. ***\n

# bcread.c (bad clusters)
26,0:\n *** Te veel slechte clusters! Ga een surface scan tool draaien! ***\n
26,1:BadClustPreserve afgebroken: niet 512 bytes/sector!\n
26,2: FAT Sectors %lu t/m %lu onderzoeken...\n
26,3: Bestaande FAT onderzoeken...\n
26,4:\n Cluster stats: %lu gebruikt, %lu slecht, %lu items, %lu laatste.\n
26,5:\n Cluster stats: %lu gebruikt, %lu slecht, %lu items, %lu laatste.\n
26,6: Kan bestaande FAT12 niet verwerken, te groot!\n
26,7:\n Cluster stats: %lu gebruikt, %lu slecht, %lu items, %lu laatste.\n
