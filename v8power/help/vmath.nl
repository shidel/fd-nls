# Language: Dutch
# File ending: nl
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vmath [options]

Eenvoudig wiskundig hulpprogramma. Het is GEEN rekenmachine en de
prioriteit is strikt van links naar rechts (misschien verander ik
dat nog). Het ondersteunt 64-bits integer wiskunde op een 8086 en
zonder de noodzaak van een coprocessor. Meestal is het handig voor
lussen, het bepalen van scherm-offsets, enz.

+, ADD          Tel volgend getal op bij som.
-, SUB          Trek volgend getal af van som.
*, MUL          Vermenigvuldig som met volgend getal.
/, DIV          Deel som door volgend getal.
\, MOD          Deel som door volgend getal en stel som in op rest.

AND             Logische AND.
OR              Logische OR.
XOR             Logische XOR.
SHR             Bitverschuiving naar rechts.
SHL             Bitverschuiving naar links.

/H of /B        Stel uitvoer in op hexadecimaal of binair. Hoewel
                berekeningen worden uitgevoerd met 64-bits wiskunde,
                worden bij uitvoer in deze formaten de resultaten
                ingekort tot de kleinste bitgrootte voor hun waarde.
                Bijvoorbeeld 64-, 32-, 16- of 8-bits getallen naar wens.
