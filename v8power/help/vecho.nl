# Language: Dutch
# File ending: nl
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vecho [options] [text]

Voer tekst uit naar het scherm.

    [none]      Voert een Carriage Return en Line Feed uit naar het
                scherm.
    text        Schrijft tekst naar het scherm.
    /A n        Stel het tekst-attribuut in op n.
    /B color    Stel het achtergrondtekstattribuut in op color (of
                een waarde).
    /F color    Stel het voorgrondtekstattribuut in op color (of een
                waarde).
    /BlinkOn    Schakel de Blink/Intensity-bit in. (Knipperen starten)
    /BlinkOff   Schakel de Blink/Intensity-bit uit. (Knipperen stoppen)
    /N          Schrijf geen CRLF als het klaar is.
    /P          Voer nu een CRLF uit.
    /S +        Voeg een spatie in tussen parameters. (STANDAARD)
    /S -        Voeg geen spatie in tussen meerdere parameters.
    /C code     Schrijf een ASCII-tekencode.
    /R times    Herhaal de volgende schrijfactie times keer. (1-65535)
    /I          Schrijf tekst die mogelijk wacht van het
                STDIN-apparaat.
    /G          Schrijf tekst globaal en negeer alle kaders.
    /L          Schrijf tekst lokaal met betrekking tot kaders.
                (STANDAARD)
    /K n        Gebruik n in plaats van een kaderteken om grenzen te
                detecteren.
    /X code     Wis de rest van de regel met een ASCII-code, maar
                verplaats de cursor niet.
    /E          Hetzelfde als "/X 0x20" of "/X32".
    /T file ID  Zoek ID in file en verwerk het als opdrachtregelopties.
                Extra opties na deze schakelaar worden gebruikt om de
                variabelen %1-%9 in de tekstreeks te vullen.

    tba         (Nog in ontwikkeling, meer wordt aangekondigd)
