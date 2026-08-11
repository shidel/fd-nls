# Language: Dutch
# File ending: nl
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

****************************************************************************
V8Power Tools
Copyright 2015-2024 Jerome Shidel
Uitgebracht onder GPL v2.0 License.
****************************************************************************

Plaatst de kracht van een 8-cilinder motor onder de motorkap van DOS
batchbestanden.

============================================================================

Het V8Power Tools project wordt ontworpen in samenwerking met
Jim Hall voor het FreeDOS(TM) (http://www.freedos.org) besturingssysteem.
Het is bedoeld om de functionaliteit van scripts die geschreven zijn met
batchbestanden uit te breiden en ze te voorzien van een beter uitziende
gebruikersinterface met meer functionaliteit.

============================================================================

V8Power Tools compileren

    Vereisten:

        8086 of betere cpu.
        EGA of betere video adapter.
        FreeDOS(TM) 1.1 (http://www.freedos.org) of hoger
        NASM voor DOS versie 2.16.01 (http://wwww.nasm.us) of nieuwer

    Compileren:

        Zorg ervoor dat de NASM-map in uw padspecificatie staat.
        Download de nieuwste bronnen van http://github.com/LoopZ/V8Power
        Voer het mkV8.bat script uit.
        Alle uitvoerbare bestanden worden in de nieuw gemaakte BIN map
        geplaatst.

    Voor luie mensen, zoals ik:

        Voorgecompileerde versies zijn beschikbaar op
        http://up.lod.bz/V8Power.

============================================================================

V8Power Tools Geteste Compatibiliteit

    FreeDOS 1.1+

Beperkte compatibiliteit van geavanceerde functies (geen "set /p"
batch-ondersteuning):

    MS-DOS 6.2 en 6.22
    PC-DOS 7.0, 7.01 en 2000
    DR-DOS 7.03
    DOSBox (i/o omleiding of query's met stdout werken NIET met behulp
        van de ingebouwde DOSBox shell. Ze werken echter prima in DOSBox
        wanneer een compatibele shell zoals FreeCOM wordt gebruikt)
    Windows 3.11 Shell
    Windows 98 Shell en Command Line
    Windows XP SP3 Shell (behalve vcursor)

============================================================================

V8Power Tools Gebruik

Hier is wat basisinformatie over alle hulpprogramma's en hoe ze werken.

    Opties, waarden en hexadecimale getallen zijn niet
    hoofdlettergevoelig /f white is hetzelfde als /F wHIte.

    Hexadecimale getallen kunnen worden voorafgegaan door 0x om te
    voorkomen dat ze als decimaal worden behandeld. (Voorbeeld: 10 en 0x10)

    Spaties zijn meestal optioneel. /B7/f0 is hetzelfde als /B 7 /F 0.
    Maar, niet / B7 / F0.

    Om een / of spaties in een waarde te gebruiken, zet u deze tussen
    aanhalingstekens. Zoals "Jack and/or Jill".

    Gebruik meerdere aanhalingstekens om aanhalingstekens te gebruiken.
    Zoals "Jack's house" of 'Say "What?"'.

    Tenzij overschreven, gebruiken de meeste hulpprogramma's het
    tekstkenmerk op de huidige cursorlocatie.

============================================================================

Hier is de kleurentabel die wordt gebruikt voor alle /A, /F en /B
schakelaars:

    Decimaal    Hex         Label (Niet hoofdlettergevoelig)

    0           0x00        Black
    1           0x01        Blue
    2           0x02        Green
    3           0x03        Cyan
    4           0x04        Red
    5           0x05        Magenta
    6           0x06        Brown
    7           0x07        Gray / Grey

    (Alleen voorgrond /f en /a)

    8           0x08        DarkGray / DarkGrey
    9           0x09        LightBlue
    10          0x0a        LightGreen
    11          0x0b        LightCyan
    12          0x0c        LightRed
    13          0x0d        LightMagenta
    14          0x0e        Yellow
    15          0x0f        White

De meeste individuele tools die kleurverandering ondersteunen,
ondersteunen ook het wijzigen van de Blink/Intensity instelling. Echter,
de meeste tools vermelden het niet.

    /BlinkOn    Schakel de Blink/Intensity bit in. (Begin met knipperen)
    /BlinkOff   Schakel de Blink/Intensity bit uit. (Stop met knipperen)

============================================================================

De DOS opdrachtregel (en batchbestanden) is beperkt tot ongeveer 128
tekens. Dit kan het moeilijk maken voor tools zoals vecho om meerdere
regels tegelijk af te drukken. Echter, veel tools zoals vecho, vstr, etc
ondersteunen het laden van tekstbronnen uit een bestand met de /T
schakelaar. Over het algemeen wordt de /T schakelaar gebruikt om
"Vertaal"-tekst voor een batch te leveren. Bij het laden uit een bestand
is het V8Power Tools hulpprogramma beperkt tot 10 kilobyte per regel.
Daarboven zal het hulpprogramma resterende tekst op die regel negeren.
10kb staat gelijk aan 5 schermen of meer tekst en is overdreven.
