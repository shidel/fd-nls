# fatal errors
0.0:Slut p† minne. Beh”ver ytterligare %ld byte.\n
0.1:SYSTEMMINNE S™NDERTRASAT! (int 21.5803-fel)\n
0.2:UMB-korruption: Kedja n†r inte toppen av l†gt RAM vid %dk. Sista=0x%x.\n
0.3:MCB-kedjan „r korrupt (ingen Z MCB efter sista M MCB, men %c vid seg 0x%x.\n
0.4:Anv„nd /? f”r hj„lp\n
0.5:ok„nd flagga: %s\n%s
0.6:Flaggan /NOSUMMARY angavs, men inga andra flaggor som matar ur\nangavs, s† ingen utmatning producerad.\n%s
0.7:Fatalt fel: misslyckades att frig”ra HMA, felkod %02Xh\n
0.8:ok„nd flagga (f”rv„ntade ett '/'): %s\n%s
0.9:F”rv„ntade ett v„rde efter /%s inte en annan flagga\n%s
0.10:Internt fel: flagga '%s' har '%s' som ett prefix\nsamt ett annat lika l†ngt prefix
0.11:Internt fel: flagga '%s' var en exakt matchning f”r tv†\nolika flaggor\n
0.12:Fel: flagga '%s' „r tvetydig - det „r en delmatchning f”r tv†\neller fler olika flaggor\n%s
0.13:F”rv„ntade ett v„rde efter /%s\n%s
0.14:Ogiltig flagga '%s': du m†ste ange †tminstone en bokstav fr†n\nflaggnamnet
# misc messages
1.0:Ok„nt operativsystem
1.1:%s byte\n
1.2:(%s byte)\n
1.3: (%7s byte)\n
1.4:Varning: enhet verkar „gas av flera minnesblock (%s\noch %s)\n
1.5:(ingen enhet)
1.6:Inget %s minne „r ledigt\n
1.7:%s finns f”r n„rvarande inte i minne.\n
1.8:%s anv„nder f”ljande minne:\n
1.9:%s minne „r inte n†bart\n
# memory types
2.0:Minnestyp          Totalt     Anv„nt      Fritt\n
#   ----------------  --------   --------   --------
2.1:Konventionellt
2.2:™vre
2.3:Reserverat
2.4:Ut”kat (XMS)
2.5:Totalt minne
2.6:Totalt under 1 MB
2.7:Totalt Expanderat (EMS)
2.8:Fritt Expanderat (EMS)
2.9:St”rsta k”rbara programstorlek
2.10:St”rsta fria ”vre minnesblock
2.11:%s „r resident i det h”ga minnesomr†det.\n
2.12:Tillg„ngligt utrymme i H”ga minnesomr†det
2.13:HMA „r tillg„ngligt via XMS-drivrutinen\n
2.14:HMA „r inte tillg„ngligt via XMS-drivrutinen: inte implementerat av drivrutinen\n
2.15:HMA „r inte tillg„ngligt via XMS-drivrutinen: en VDISK-enhet finns\n
2.16:HMA „r inte tillg„ngligt via XMS-drivrutinen: HMA finns ej\n
2.17:HMA „r inte tillg„ngligt via XMS-drivrutinen: HMA anv„nds reda\n
2.18:HMA „r inte tillg„ngligt via XMS-drivrutinen: HMAMIN „r st”rre „n HMA\n
2.19:HMA „r tillg„ngligt via XMS-drivrutinen, minsta TSR-storlek (HMAMIN): %u byte\n
2.20:HMA „r inte tillg„ngligt via XMS-drivrutinen: ok„nt fel %02Xh\n
2.21:HMA „r inte tillg„ngligt d† ingen XMS-drivrutin „r inl„st\n
2.22:Minne n†bart via Int 15h
2.23:Minne „r inte n†bart via Int 15h (kod %02xh)\n
# block types
3.0:
3.1:fritt
3.2:systemkod
3.3:systemdata
3.4:program
3.5:milj”
3.6:dataomr†de
3.7:reserverat
3.8:avbrottstabell
3.9:BIOS dataomr†de
3.10:systemdata
3.11:enhetsdrivrutin
3.12:dataomr†de
3.13:IFS
3.14:(fel)
# classify msgs
4.0:\nModuler som anv„nder minne under 1 MB:\n\n
4.1:  Name           Totalt         Konventionellt      ™vre minne\n
#     --------  ----------------   ----------------   ----------------
4.2:SYSTEM
4.3:Fritt
4.4:\nSegment       Totalt           Namn          Typ\n
#     -------  ----------------  ------------  -------------
4.5:\n   Adress      Attr    Namn       Program\n
#      -----------  ------ ----------  ----------
4.6:\nSegment       Totalt\n
#     -------  ----------------
#            ----------------
4.7:Totalt:
4.8:systemdrivrutin\n
4.9:installerad DEVICE=%s\n
4.10:%s minnes detaljer:\n
4.11:Fritt %s minne:\n
4.12: (%u i detta block)

# EMS stuff
5.0:INTERNT EMS FEL.\n
5.1:  EMS-drivrutin inte installerad p† detta system.\n
5.2:EMS-drivrutinsversion
5.3:EMS sidram
5.4:Totalt EMS-minne
5.5:Fritt EMS-minne
5.6:Totalt antal handtag
5.7:Fria handtag
5.8:\n  Handtag  Sidor   Storlek     Namn\n
#      -------- ------  --------   ----------
# XMS stuff
6.0:XMS-drivrutin inte installerad p† detta system.\n
6.1:\nTestar XMS-minne ...\n
6.2:INTERNT XMS FEL.\n
6.3:INT 2F AX=4309 st”ds\n
6.4:XMS-version
6.5:XMS-drivrutinsversion
6.6:HMA-tillst†nd
6.7:finns
6.8:finns ej
6.9:A20-signal tillst†nd
6.10:aktiverad
6.11:inaktiverad
6.12:Fritt XMS-minne
6.13:St”rsta fria XMS-block
6.14:Fria handtag
6.15: Block   Handtag   Storlek   L†s\n
#    ------- --------  --------  -------
6.16:Fritt ”vre minne
6.17:St”rsta ”vre block
6.18:™vre minne inte tillg„ngligt\n
# help message
7.0:FreeDOS MEM version %s
7.1:Visar m„nden anv„nt och fritt minne i ditt system.
7.2:Syntax: MEM [inga eller flera av flaggorna nedan]
7.3:/E          Rapporterar all information om Ut”kat minne
7.4:/FULL       Full lista ”ver minnesblock
7.5:/C          Klassificera moduler som anv„nder minne under 1 MB
7.6:/DEVICE     Lista ”ver enhetsdrivrutiner som f”r n„rvarande finns i minne
7.7:/U          Lista ”ver program i konventionellt och ”vre minne
7.8:/X          Rapporterar all information om Ut”kat minne
7.9:/P          Pausar efter varje sk„rm med information
7.10:/?          Visar detta hj„lpmeddelande
7.11:/DEBUG      Visa program och enheter i konventionellt och ”vre minne
7.12:/M <namn> | /MODULE <namn>\n            Visa minne som anv„nds av angivet program eller drivrutin
7.13:/FREE       Visa fria konventionella och ”vre minnesblock
7.14:/ALL        Visa alla detaljer om h”ga minnesomr†det (HMA)
7.15:/NOSUMMARY  Visar inte sammanst„llningen som normalt visas n„r ingen\n            flagga anges
7.16:/SUMMARY    Negerar flaggan /NOSUMMARY
7.17:/%-10s Ingen hj„lp finns tillg„nglig f”r denna flagga\n
7.18:/OLD        Kompatibilitet med FreeDOS MEM 1.7 beta
7.19:/D          Samma som /DEBUG som standard, samma som /DEVICE om /OLD anv„nds
7.20:/F          Samma som /FREE som standard, samma som /FULL om /OLD anv„nds
8.0:\nTryck <Retur> f”r att forts„tta eller <Esc> f”r att avsluta . . .
# Memory type names
9.0:Konventionellt
9.1:™vre
9.2:(fel)
