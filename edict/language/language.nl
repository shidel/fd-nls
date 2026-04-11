# Language: Dutch
# File ending: NL
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

Vertalingsinformatie voor EDICT

Let op: variabele informatie komt in verschillende types en in een specifieke
volgorde die (vooralsnog) niet kan worden gewijzigd. Meerdere witruimtes worden
automatisch gecomprimeerd tot een enkele spatie, tenzij ze tussen aanhalingstekens
staan. Om een aanhalingsteken weer te geven, moet dit worden omsloten door een
ander type aanhalingsteken. Ten slotte worden er geen spaties automatisch
ingevoegd voor of na een variabele.

Uw vertaalde taalbestand moet worden aangeleverd in UTF-8 formaat, samen met een
DOS-codepage versie om mogelijke codepage-conversiefouten te voorkomen.
Bijvoorbeeld, de Turkse bestanden zijn EDICT.TR voor de DOS-versie en
EDICT.TR.UTF-8 voor de UTF-8 versie.

Zie https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes voor meer informatie
over taal- en landcodes.

Gebruik een van de bestaande vertaalbestanden, zoals EDICT.EN, als startpunt
voor uw vertaling. Op die manier ontbreekt er geen benodigde tekst.

Variabelen:

    %_          Een enkel spatie-teken
    %%          Een enkel procent-symbool
    %r          Een CRLF (regelterugloop)

    %c          Voeg de variabele voor een enkel teken in
    %s          Voeg de tekst-string variabele in
    %b          Voeg de byte hex-waarde variabele in
    %w          Voeg de word hex-waarde (ongebruikt) variabele in
    %i          Voeg de integer variabele in
    %I          Voeg de (integer + 1) variabele in


TITLE is de programmatitel.
COPYRIGHT is mijn copyright-melding.

LANGUAGE staat niet in de standaardvertaling en zou waarschijnlijk in de
taal van de vertaling moeten zijn. U kunt iets als dit opgeven:

LANGUAGE=Nederlandse vertaling door [Naam]

HELP_* is de tekst voor het helpscherm. Elk item wordt op een eigen regel
weergegeven. De eerste keer dat er een ontbrekend item wordt gevonden, stopt
de helptekst-output. Tot 0xff (255) wordt ondersteund.

INVALID wordt gebruikt wanneer een niet-herkende commandoregel-optie wordt opgegeven.

BAD_INT wordt gebruikt wanneer er een fout optreedt bij het verwerken van
een getal.
BAD_VAL wordt gebruikt wanneer een getal buiten het bereik valt.

BErr_* zijn BIOS-foutmeldingen.
DErr_* zijn DOS-foutmeldingen.

Met een kleine aanpassing zijn de BIOS- en DOS-foutmeldingsteksten in de standaard
externe Engelse versie een afgeslankte versie van de teksten die online beschikbaar
zijn via een geweldige DOS- en ASM-bron op:

    http://stanislavs.org/helppc/idx_interrupt.html

Hoewel ik ze mogelijk zal vervangen door minder saaie, aangepaste foutmeldingen.

