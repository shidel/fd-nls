# Translated by Matej Horvat (http://matejhorvat.si/), last update 2013-11-30

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
1.2:Imeniçka struktura\n
# Must include %s for label
1.3:Imeniçka struktura za nosilec %s\n
# Must include %s for serial #
1.4:Serijska çtevilka nosilca je %s\n
1.5:Pot ne vsebuje nobenega imenika\n\n
# showUsage [Set 2]
2.1:GrafiŸno prika§e imeniçko strukturo pogona ali poti.\n
# Each %c below will be replaced with proper switch/option
2.2:TREE [pogon:][pot] [%c%c] [%c%c]\n
2.3:  %c%c  Prika§e imena datotek v vsakem imeniku.\n
2.4:  %c%c  Uporabi ASCII znake.\n
# showInvalidUsage [Set 3]
# Must include the %s for option given.
3.1:Neveljavna mo§nost %s\n
# The %c will be replaced with the primary switch (default is /)
3.2:Vnesite TREE %c?, da dobite navodila za uporabo.\n
#showTooManyOptions
3.3:PreveŸ parametrov: %s\n
# showVersionInfo [Set 4]
# also uses treeDescription, message 2.1
4.1:Program je bil napisan za projekt FreeDOS\n
4.2:Podpira konzolo Win32 in DOS s podporo za dolga imena datotek.\n
# Must include the %s for version string.
4.3:Verzija %s\n
4.4:Avtor:      Kenneth J. Davis\n
4.5:Datum:      avgust-november 2000, januar 2001\n
4.6:Kontakt:    jeremyd@computer.org\n
4.7:Lastniçtvo: javna last (po definiciji ZDA)\n
#4.8 is only used when cats support is compiled in.
4.8:Uporablja knji§nico Cats Jima Halla (jhall@freedos.org)\n  (C) Jim Hall 1999-2001\n
#4.20 20-30 reserved for FreeDOS tree derived from Dave Dunfield's tree
#4.20:Copyright 1995 Dave Dunfield - Freely distributable.\n
4.20:(C) Dave Dunfield 1995, 2000 - izdano pod GNU GPL leta 2000\n
# showInvalidDrive [Set 5]
5.1:Neveljaven pogon\n
# showInvalidPath [Set 6]
# Must include %s for the invalid path given.
6.1:Neveljavna pot %s\n
# misc error conditions [Set 7]
# showBufferOverrun
# %u required to show what the buffer's current size is.
7.1:Napaka: pot datoteke je predolga (omejitev: %u bajtov)\n
# showOutOfMemory
# %s required to display what directory we were processing when ran out of memory.
7.2:Zmanjkalo je spomina pri podimeniku %s\n
#
# parseArguments [Set 8] contains the Character[s] used for
#   argument processing.  Only the 1st character on a line is used.
#   Each argument is listed twice, the first is the uppercase version,
#   with the next entry being the lowercase version.
# Primary character used to determine option follows, default is '-'
8.1:/
# Secondary character used to determine option follows, default is '/'
8.2:-
# Indicates should show files
8.3:F
8.4:f
# Use ASCII only
8.5:A
8.6:a
# Show Version information
8.7:V
8.8:v
# DOS only version, Shortnames only (disable LFN support)
8.9:S
8.10:s
