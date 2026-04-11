# Language: Dutch
# File ending: NL
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

EDLIN 2.14

Het programma edlin is een compacte regeleditor, geschreven voor FreeDOS als
een functionele kloon van het oude MS-DOS-programma edlin. Het verschilt van
MS-edlin doordat het ten eerste vrije software is en ten tweede de
gebruikersinterface op enkele punten is aangepast. De reden hiervoor is om de
gebruiker de invoer van complexe besturingstekens te besparen die de syntax
van MS-edlin voorschreef.

EDLIN STARTEN

Het programma edlin wordt ofwel direct aangeroepen:

  edlin

of met een bestandsnaam die bij aanvang wordt ingelezen:

  edlin bestand

INTERNE COMMANDO'S VAN EDLIN

In de volgende commandolijsten staan vierkante haken voor optionele delen.
Het symbool # staat voor een regelnummer, wat een reeks cijfers kan zijn, een
punt (.) voor de huidige regel, een dollarteken ($) voor de laatste regel van
het bestand, of een regelnummer vermeerderd of verminderd met een ander
getal, zodat:

  .,.+1p

de huidige regel en de daaropvolgende regel weergeeft.

Een dollarteken ($) in de lijsten staat voor een tekenreeks (string). Deze
kunnen tussen enkele of dubbele aanhalingstekens staan en de volgende
escape-sequenties bevatten:

  \a - signaal (alert)
  \b - backspace
  \e - escape
  \f - formfeed
  \t - horizontale tab
  \v - verticale tab
  \" - dubbel aanhalingsteken
  \' - enkel aanhalingsteken
  \. - punt
  \\ - backslash
  \xXX (X is hex-cijfer 0-9, a-f) - hexadecimale constante
  \dddd (d is decimaal cijfer 0-9) - decimale constante
  \OOO (O is octaal cijfer 0-7) - octale constante
  \^C - besturingsteken (control character)

Het programma edlin ondersteunt de volgende syntax:

# - EEN ENKELE REGEL BEWERKEN

edlin toont de regel die door het nummer wordt aangegeven. De volgende
invoer vervangt deze regel volledig in het bestand.

a - TOEVOEGEN (APPEND)

Dit commando is gelijk aan de invoer van $+1i .

[#],[#],#,[#]c - REGELBEREIK KOPIÓREN

Kopieert een blok opeenvolgende regels naar een andere positie in de buffer.
De parameters zijn:

  * Eerste regel die moet worden gekopieerd (standaard = huidige regel)
  * Laatste regel die moet worden gekopieerd (standaard = huidige regel)
  * Regel waav¢¢r het blok moet worden ingevoegd
  * Aantal keren dat het blok moet worden gekopieerd (standaard = 1)

Na het kopi‰ren kunt u het l (list) commando gebruiken om de nieuwe
regelnummering te controleren.

[#][,#]d - REGELBLOK VERWIJDEREN

Verwijdert een blok opeenvolgende regels. De parameters bepalen de eerste en
laatste regel van het te verwijderen bereik.

Als u de tweede parameter weglaat, wordt alleen de regel uit de eerste
parameter verwijderd. Als u de eerste weglaat, wordt vanaf de huidige regel
tot aan de opgegeven regel verwijderd (gebruik de komma). Het weglaten van
beide parameters verwijdert de huidige regel.

e bestandsnaam - OPSLAAN EN STOPPEN

Dit is gelijk aan de reeks:

  w bestandsnaam
  q

[#]i - INVOEGMODUS (INSERT)

Activeert de invoegmodus. De parameter is het regelnummer waav¢¢r de tekst
moet worden ingevoegd.

Tijdens het invoegen zijn escape-sequenties toegestaan. Om de modus te
verlaten, typt u een punt (.) op een overigens lege regel (als u een regel
met alleen een punt nodig heeft, gebruik dan een escape-teken).

Na het afsluiten wordt de regel na de ingevoegde tekst de huidige regel,
tenzij de tekst aan het einde werd toegevoegd; dan wordt de laatste regel de
nieuwe huidige regel.

[#][,#]l - REGELS WEERGEVEN (LIST)

Toont tekstregels op het scherm. Zonder eerste parameter begint de weergave
11 regels v¢¢r de huidige regel. Zonder tweede parameter wordt een pagina
getoond vanaf de startregel. Zonder beide wordt een pagina getoond vanaf 11
regels v¢¢r de huidige. Als er meer regels zijn dan op een scherm passen,
pauzeert het programma na elke pagina.

[#],[#],#m - BLOK VERPLAATSEN (MOVE)

Verplaatst een tekstblok naar de positie v¢¢r de regel uit de derde
parameter. Dit werkt als kopi‰ren gevolgd door het wissen van het origineel.

[#][,#]p - PAGINA (PAGE)

Vergelijkbaar met l, maar de standaardweergave begint direct bij de huidige
regel in plaats van 11 regels daarv¢¢r.

q - STOPPEN (QUIT)

Sluit het programma af zonder verdere wijzigingen op te slaan.

[#][,#][?]r$,$ - TEKENREEKS VERVANGEN (REPLACE)

Vervangt alle voorkomens van de eerste reeks door de tweede binnen het
opgegeven bereik. Zonder eerste parameter begint het proces na de huidige
regel; zonder tweede eindigt het bij de laatste regel van het bestand.

Het vraagteken (?) vraagt om bevestiging v¢¢r elke vervanging.

[#][,#][?]s$ - ZOEKEN NAAR REEKS (SEARCH)

Zoekt naar de eerste regel die de opgegeven reeks bevat. Zonder eerste
parameter wordt vanaf de huidige regel gezocht, zonder tweede tot het eind.

Het vraagteken (?) activeert bevestiging. Bij "N" (Nee) gaat het zoeken
door, bij "J" (Ja) stopt het. Bij succes wordt de huidige regel ingesteld op
de gevonden locatie.

[#]t bestandsnaam - BESTAND OVERDRAGEN (TRANSFER)

Voegt de inhoud van een extern bestand in v¢¢r de opgegeven regel. Indien
niet opgegeven, wordt de huidige regel gebruikt.

[#]w bestandsnaam - BESTAND SCHRIJVEN (WRITE)

Schrijft het opgegeven aantal regels naar het bestand. Zonder parameter
wordt de gehele bufferinhoud opgeslagen.

AUTEUR/ONDERHOUD

Gregory Pietsch, gpietsch@comcast.net
