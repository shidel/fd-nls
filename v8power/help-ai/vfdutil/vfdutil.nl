# Language: Dutch
# File ending: nl
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vfdutil [options]

Hulpprogramma voor bestanden en mappen.

    [none]      Doet niets.
    /D file     Bereken en stuur stationsletter van file naar STDOUT.
    /P file     Bereken en stuur pad van file naar STDOUT.
    /C          Gebruik voor /D of /P om station of pad te wijzigen
                zonder tekstuitvoer.
    /X          Gebruik voor /D of /P om errorlevel 1-26 van
                stationsletter te retourneren.
    /F file     Bereken en stuur volledige bestandsnaam naar STDOUT.
    /B file     Bereken en stuur bestandsnaam met extensie naar STDOUT.
    /N file     Bereken en stuur bestandsnaam zonder extensie naar
                STDOUT.
    /E file     Bereken en stuur extensie van bestand naar STDOUT.
    /U template Bereken en stuur unieke bestands-/mapnaam op basis van
                template naar STDOUT. Station en pad moeten bestaan.
                Voorbeeld: "vfdutil /u C:\TEMP\TEST????.$$$"
    /S filespec Zoek in PATH naar opgegeven filespec en stuur alle
                overeenkomende bestanden naar STDOUT. De huidige map
                wordt niet doorzocht. Als filespec niet in het pad is
                gevonden, wordt afgesloten met errorlevel 1.
    /T filespec Net als /S, maar alleen errorlevel wordt geretourneerd.
    /M location Stuur hoeveelheid vrije schijfruimte voor location uit.
    /R required Gebruik met /M om te testen of de hoeveelheid required
                ruimte beschikbaar is. Required is beperkt tot 65535.
                Maar het kan worden aangevuld met B, K, M, enz. Het zal
                een errorlevel van 1 retourneren als er niet genoeg
                ruimte is.
    /A path     Test of er bestanden of mappen in een path bestaan,
                0=map bestaat en is niet leeg, andere waarden zijn
                DOS-foutcodes van de test.

    tba         (Nog in ontwikkeling, meer wordt aangekondigd)
