# Language: Polish
# Codepage: 852
# Translation: reviewed by Piotr Okrutny in Weblate, 2026-10 (human review, AI-assisted draft)
# Based on: translation by Mateusz Viste (2009), see ../nls-old-mazovia/
# Source: tree.pl.UTF-8; tree.pl (CP852) and tree.mz (Mazovia) are generated from it - edit only the UTF-8 file.
1.1:\n
# main [Set 1] 
1.2:Wykaz ˜cie¾ek katalog¢w\n
# Must include %s for label 
1.3:Wykaz ˜cie¾ek katalog¢w woluminu %s\n
# Must include %s for serial #  
1.4:Numer seryjny woluminu: %s\n
1.5:Brak podkatalog¢w\n\n
# showUsage [Set 2] 
2.1:Wy˜wietla graficznie struktur© katalog¢w dysku lub ˜cie¾ki.\n
# Each %c below will be replaced with proper switch/option
2.2:TREE [dysk:][˜cie¾ka] [%c%c] [%c%c]\n
2.3:   %c%c   Wy˜wietla nazwy plik¢w w ka¾dym katalogu.\n
2.4:   %c%c   U¾ywa znak¢w ASCII zamiast znak¢w rozszerzonych.\n
# showInvalidUsage [Set 3] 
# Must include the %s for option given.
3.1:Nieprawidˆowy przeˆ¥cznik - %s\n
# The %c will be replaced with the primary switch (default is /)
3.2:U¾yj TREE %c?, aby wy˜wietli† informacje o u¾yciu.\n
#showTooManyOptions
3.3:Za du¾o parametr¢w - %s\n
# showVersionInfo [Set 4] 
# also uses treeDescription, message 2.1
4.1:Napisany dla FreeDOS,\n
4.2:konsoli Win32(c) i DOS-u z obsˆug¥ LFN.\n
# Must include the %s for version string. 
4.3:Wersja %s\n
4.4:Autor:      Kenneth J. Davis\n
4.5:Data:       sierpieä-listopad 2000; styczeä 2001\n
4.6:Kontakt:    jeremyd@computer.org\n
4.7:Copyright (c): domena publiczna (definicja USA)\n
#4.8 is only used when cats support is compiled in.
4.8:U¾ywa biblioteki Cats Jima Halla <jhall@freedos.org>\n  Copyright (C) 1999,2000,2001 Jim Hall\n
#4.20 20-30 reserved for FreeDOS tree derived from Dave Dunfield's tree
4.20:Copyright 1995, 2000 Dave Dunfield - wolne rozpowszechnianie (od 2000 GPL).\n
# showInvalidDrive [Set 5] 
5.1:Nieprawidˆowe okre˜lenie dysku\n
# showInvalidPath [Set 6] 
# Must include %s for the invalid path given. 
6.1:Nieprawidˆowa ˜cie¾ka - %s\n
# misc error conditions [Set 7]
# showBufferOverrun
# %u required to show what the buffer's current size is. 
7.1:Bˆ¥d: podana ˜cie¾ka przekracza rozmiar bufora (%u bajt¢w)\n
# showOutOfMemory
# %s required to display what directory we were processing when ran out of memory.
7.2:Za maˆo pami©ci w podkatalogu: %s\n
#
# parseArguments [Set 8]
8.1:/
8.2:-
8.3:F
8.4:f
8.5:A
8.6:a
8.7:V
8.8:v
8.9:S
8.10:s
