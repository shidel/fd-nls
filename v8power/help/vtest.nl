# Language: Dutch
# File ending: nl
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vtest [opties]

Een statustester. Het kan verschillende controles uitvoeren die kunnen
worden gereduceerd tot TRUE of FALSE. Het resultaat wordt doorgegeven als
een errorlevel. Wanneer het antwoord TRUE is, wordt een nul geretourneerd.
Als het antwoord FALSE is, wordt een 1 geretourneerd. Het gebruik van een
onjuiste syntaxis en andere dergelijke fouten retourneren afsluitcode 100.

Tests:

    val1 /eq val2    waarden zijn gelijk
    val1 /ne val2    waarden zijn niet gelijk
    val1 /ge val2    val1 is groter dan of gelijk aan val2
    val1 /le val2    val1 is kleiner dan of gelijk aan val2
    val1 /gt val2    val1 is groter dan val2
    val1 /lt val2    val1 is kleiner dan val2
    string           string is niet null
    /n string        string is niet null
    /z string        string is null
    /v number        nummer is geldig
    /f file          bestand bestaat
    /d dir           pad bestaat
    /e file of dir   elk type mapvermelding

Expressie-operators:

    /c expression    Forceer dat een waarde als string wordt behandeld en
                     voer een hoofdlettergevoelige vergelijking uit.
    /i expression    Forceer dat een waarde als string wordt behandeld en
                     voer een hoofdletterongevoelige vergelijking uit.
    exp1 /and exp2   Beide expressies moeten TRUE zijn.
    exp1 /or /exp2   Elke expressie kan TRUE zijn.
    /not expression  Keer het resultaat van een expressie om.

Andere opties:

    /tf              Toon TRUE of FALSE wanneer voltooid.

Standaard is de vergelijking van waarden gebaseerd op hun type. Als beide
waarden een getal zijn (weergegeven in decimaal of hexadecimaal), wordt de
vergelijking wiskundig uitgevoerd. Anders wordt een niet-hoofdlettergevoelige
alfabetische vergelijking uitgevoerd. Het gebruik van de /c of /i opties
forceert een op tekst gebaseerde vergelijking ongeacht het gegevenstype van
de waarde. Een lege waarde heeft geen numerieke waarde en dwingt de twee
items om als strings te worden vergeleken.

Basisvoorbeelden:

Een bestand genaamd TEST.TXT bestaat:        vtest /f TEST.TXT
Bestand genaamd TEST.TXT bestaat niet:       vtest /not /f TEST.TXT
Bestand A.TXT of B.TXT bestaat:              vtest /f A.TXT /or /f B.TXT
Noch bestand A.TXT noch B.TXT bestaat:       vtest /not /f A.TXT /and /not
                                             /f B.TXT
%1 is een getal:                             vtest /v %1
%1 is een getal van 1 tot 10:                vtest /v %1 /and 1 /le %1
                                             /le 10

Hoewel de opties /f, /d en /e testen op bestands- of mapvermeldingen,
kunnen ze expressiemodifiers zoals /not, /c en /i gebruiken en ondersteunen
ze ook jokertekens. Zodra het bestandssysteem is gecontroleerd op het
bestaan van een overeenkomende vermelding, worden ze de waarde van het
eerste overeenkomende bestandssysteemitem en kunnen ze als waarden worden
behandeld. Als er geen overeenkomende vermelding wordt gevonden, wordt de
waarde null en zal een expressie hoogstwaarschijnlijk als FALSE worden
ge‰valueerd.

Wanneer een vergelijking van twee waarden wordt uitgevoerd, als elke waarde
een geldig getal bevat (decimaal of hexadecimaal), wordt de vergelijking
numeriek uitgevoerd. Als een van de waarden geen getal is, wordt deze
alfabetisch vergeleken. Hoewel het mogelijk is om gegevenstypen te mengen
in een reeks vergelijkingen, kan de uitkomst moeilijk te voorspellen zijn
en wordt dit over het algemeen niet aanbevolen.

Aanhalingstekens worden NIET gebruikt voor strings met spaties.
Aanhalingstekens worden altijd behandeld als normale teksttekens. De
opdrachtregelparser zal strings alleen scheiden wanneer een SWITCH_CHAR
(normaal /) wordt gedetecteerd. Dit is een acceptabel voorbeeld:

vtest a, b and c /lt d, e and f /and 6 /gt 5 /lt 7

Het gebruik van een aanhalingsteken om simpelweg strings in te pakken,
zal foutieve resultaten opleveren. Het volgende voorbeeld zal ALTIJD
resulteren in TRUE, ongeacht de waarde van %1:

vtest /n "%1"

Bovendien, als een string de SWITCH_CHAR bevat, zal het gedeelte na de
SWITCH_CHAR worden ge‹nterpreteerd als een programmaoptie, tenzij het
wordt ontsnapt door een extra SWITCH_CHAR in te voegen. Bijvoorbeeld,
"Y/N" zou worden ge‹nterpreteerd als string "Y" en vervolgens optie
"/N". Om beide als string te interpreteren zou het "Y//N" zijn.
Bijvoorbeeld:

vtest /n y//n
