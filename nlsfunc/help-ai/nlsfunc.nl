# Language: Dutch
# File ending: NL
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

FreeDOS NLSFUNC. Voegt NLS (National Language Support) functionaliteit toe.
(C) 2004 Eduardo Casino, under the terms of the GNU GPL, Version 2

  NLSFUNC [/Y|/?] [[D:][PATH]BESTAND]

  [D:][PATH]BESTAND  Pad naar een bestand met de NLS
  /Y               Laadt (optionele) JA/NEE tabel
  /?               Toont gebruiksinformatie

Voorbeeld:

  CONFIG.SYS
     COUNTRY=34,858,C:\COUNTRY.SYS

  AUTOEXEC.BAT
     LH DISPLAY CON=(EGA,858,2)
     MODE CON CP PREP=((850) C:\CPI\EGA.CPI)
     MODE CON CP PREP=((,437) C:\CPI\EGA.CPI)
     LH NLSFUNC /Y

Wissel vervolgens van codepagina met het CHCP-commando van FreeCOM.

Als het niet nodig is om van codepagina te wisselen, laat de MODE-regels
dan weg.
