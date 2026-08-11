# Language: Dutch
# File ending: nl
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vstr [options]

Eenvoudig hulpprogramma voor tekenreeksverwerking. Voert uit naar
STDOUT.

    /N          Schrijf geen CRLF wanneer voltooid.
    /U          Invoerfilter: Converteer naar hoofdletters.
    /D          Invoerfilter: Converteer naar kleine letters.
    /B          Invoerfilter: Negeer lege regels.
    /I          Invoerfilter: Negeer inspringing.
    /C code     Schrijf een ASCII-tekencode.
    /R times    Herhaal de volgende schrijfbewerking times keer.
                (1-65535)
    /L line     Retourneer alleen deze line van standaardinvoer.
                (0-65535) (Let op: vline /L TOTAL geeft het totale
                aantal regels.)
                Ook zal toevoegen van :n, n aantal regels uitvoeren.
    /S s1 s2    Zoek en vervang alle weergaven van s1 door s2.
    /F s1 s2    Stel scheidingsteken in op s1, retourneer veldpositie
                of bereik s2.
    /A code s2  Retourneer door code gescheiden veldpositie of bereik s2.
                (tab=0x09)
    /P s1       Druk tekst s1 af.
    /T file ID  Zoek ID op in file en verwerk als opdrachtregelopties.
                Alle extra opties die op deze schakeloptie volgen, worden
                gebruikt om %1-%9 variabelen in de tekstreeks te vullen.

    tba         (Nog in ontwikkeling, meer wordt aangekondigd)
