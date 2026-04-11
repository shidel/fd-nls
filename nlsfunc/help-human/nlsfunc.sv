FreeDOS NLSFUNC. L„gger till NLS-funktioner (Nationellt spr†k st”d).

(C) 2004 Eduardo Casino, under villkoren f”r GNU GPL, Version 2

  NLSFUNC [/Y|/?] [[D:][S™KVŽG]FIL]

  [D:][S™KVŽG]FIL  S”kv„g till en fil som inneh†ller NLS
  /Y               L„ser in (valfri) JA/NEJ-tabell
  /?               Skriver ut anv„ndning

Exempel:

  CONFIG.SYS
     COUNTRY=41,850,C:\COUNTRY.SYS

  AUTOEXEC.BAT
     LH DISPLAY CON=(EGA,850,2)
     MODE CON CP PREP=((850) C:\CPI\EGA.CPI)
     MODE CON CP PREP=((,850) C:\CPI\EGA.CPI)
     LH NLSFUNC /Y

V„xla sedan kodsidor med FreeCOM:s CHCP-kommando.

Om du inte beh”ver „ndra kodsidor, hoppa bara ”ver MODE-raderna.

