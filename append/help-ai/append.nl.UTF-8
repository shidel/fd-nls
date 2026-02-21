# Language: netherlands
# File ending: nl
# Codepage: 858
# Translation made by Google Gemini
# This translation was made by Google AI, please help the 
# FreeDOS group to improve it.

FreeDOS APPEND. Laat programma's databestanden in opgegeven mappen openen
alsof de bestanden zich in de huidige map bevinden.
(C) 2004-2006 Eduardo Casino, onder de voorwaarden van de GNU GPL, versie 2

Syntaxis:

APPEND [[schijf:]pad[;...]] [/X[:ON|:OFF]] [/PATH:ON|/PATH:OFF] [/E]
APPEND ;

[schijf:]pad     Schijf en map om toe te voegen.
/X[:ON]          Breid APPEND uit naar zoekopdrachten en uitvoering.
/X:OFF           APPEND geldt alleen voor het openen van bestanden.
                 Standaard is /X:OFF.
/PATH:ON         Zoekt in toegevoegde mappen naar bestandsverzoeken die
                 al een pad bevatten. Dit is de standaardinstelling.
/PATH:OFF        Schakelt /PATH:ON uit.
/E               Slaat de lijst met mappen op in de omgeving (env).
                 /E mag alleen bij de eerste aanroep worden gebruikt.
                 Er mogen geen paden in dezelfde regel als /E staan.

APPEND ; wist de lijst met toegevoegde mappen.
APPEND zonder parameters toont de lijst met toegevoegde mappen.

Opmerking:

APPEND installeert zichzelf als intern commando na de eerste uitvoering.
Volgende aanroepen MOETEN zonder bestandspad en extensie gebeuren.
