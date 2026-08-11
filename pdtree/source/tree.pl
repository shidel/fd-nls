# Language: Polish
# File ending: pl
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.
# Messages used by pdTree v1 and FreeDOS tree 3.6
# Each line is limited to 159 characters unless MAXLINE is changed,
# but if possible should be limited to 79 per line, with a \n
# added to indicate go to next line, max 2 lines.
# The messages are split into sets,
# where each set corresponds to a given function in pdTree.
# Set 1, is for main and common strings.
# Many of the strings are used directly by printf,
# so when a %? appears, be sure any changes also include the %?
# where ? is a variable identifier and format.
# Note: only \\, \n, \r, \t are supported (and a single slash must use \\).
#
# common to many functions [Set 1]
1.1:\n
# main [Set 1] 
1.2:Lista ˜cie¾ek katalog¢w\n
# Must include %s for label 
1.3:Lista ˜cie¾ek katalog¢w dla woluminu %s\n
# Must include %s for serial #  
1.4:Numer seryjny woluminu to %s\n
1.5:Brak podkatalog¢w\n\n
1.6: --- Naci˜nij dowolny klawisz, aby kontynuowa† ---\n
# showUsage [Set 2] 
2.1:Graficznie wy˜wietla struktur© katalog¢w dysku lub ˜cie¾ki.\n
# Each %c below will be replaced with proper switch/option
2.2:TREE [dysk:][˜cie¾ka] [%c%c] [%c%c]\n
2.3:   %c%c   Wy˜wietla nazwy plik¢w w ka¾dym katalogu.\n
2.4:   %c%c   U¾ywa ASCII zamiast znak¢w rozszerzonych.\n
# showInvalidUsage [Set 3] 
# Must include the %s for option given.
3.1:Nieprawidˆowy przeˆ¥cznik - %s\n
# The %c will be replaced with the primary switch (default is /)
3.2:U¾yj TREE %c?, aby uzyska† pomoc.\n
#showTooManyOptions
3.3:Zbyt wiele parametr¢w - %s\n
# showVersionInfo [Set 4] 
# also uses treeDescription, message 2.1
4.1:Napisano do pracy z FreeDOS\n
4.2:Konsola Win32(c) i DOS z obsˆug¥ LFN.\n
# Must include the %s for version string. 
4.3:Wersja %s\n
4.4:Autor: Kenneth J. Davis\n
4.5:Data:       2000, 2001, 2004\n
4.6:Kontakt:    jeremyd@computer.org\n
4.7:Copyright (c): Public Domain [United States Definition]\n
#4.8 is only used when cats support is compiled in.
4.8:Uses Jim Hall's <jhall@freedos.org> Cats Library\n  version 3.8 Copyright (C) 1999,2000 Jim Hall\n
#4.20 20-30 reserved for FreeDOS tree derived from Dave Dunfield's tree
#4.20:Copyright 1995 Dave Dunfield - Freely distributable.\n
4.20:Copyright 1995, 2000 Dave Dunfield - Freely distributable (2000 released GPL).\n
# showInvalidDrive [Set 5] 
5.1:Nieprawidˆowa specyfikacja dysku\n
# showInvalidPath [Set 6] 
# Must include %s for the invalid path given. 
6.1:Nieprawidˆowa ˜cie¾ka - %s\n
# misc error conditions [Set 7]
# showBufferOverrun
# %u required to show what the buffer's current size is. 
7.1:Bˆ¥d: Podana ˜cie¾ka przekracza maksymalny bufor = %u bajt¢w\n
# showOutOfMemory
# %s required to display what directory we were processing when ran out of memory.
7.2:Brak pami©ci w podkatalogu: %s\n
#
# deprecated [Set 8]
# 8.1 - 8.10 reserved for option selection characters in earlier releases.
# parseArguments [Set 8] contains the Character[s] used for
#   argument processing.  Only the 1st character on a line is used.
# Primary character used to determine option follows, default is '-'
8.1:/
# Secondary character used to determine option follows, default is '/'
8.2:-
