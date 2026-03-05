# Language: Dutch
# File ending: NL
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

tee

Bewaart een kopie van de invoer (STDIN) in ‚‚n of meer bestanden en geeft
deze weer.
Gebruik:

tee [opties] [d:][pad]bestand [[d:][pad]bestand2] ...
Opties:

/A   Toevoegen aan bestand(en): Voegt toe aan de uitvoerbestanden in plaats
     van deze te overschrijven.

/I   Onderbrekingen negeren: negeert pogingen tot onderbreking door een
     gebruiker.

[d:][pad]bestand [[d:][pad]bestand2] ...   Specificeert de uitvoerbestanden.
Voorbeelden:

echo "Hallo wereld!" | tee hallo.txt
Toont "Hallo wereld!" op het scherm en slaat het op in hallo.txt.

tee log.txt nog_een_log.txt < invoer.txt
Toont de inhoud van invoer.txt en slaat deze op in log.txt en nog_een_log.txt.

catdoc brief.doc | tee /I brief.txt | wc
Slaat de door catdoc verwerkte inhoud van brief.doc op in brief.txt en stuurt
deze door naar wc om de woorden te tellen.
Sta geen onderbrekingen door de gebruiker toe.

Dit bestand maakt deel uit van de FreeDOS HTML-helpdocumentatie en valt
onder de voorwaarden van de GNU FDL.

