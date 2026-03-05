# Language: Slovenian
# File ending: SL
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

tee

Shrani kopijo vhoda (STDIN) v eno ali veü datotek in jo izpiÁe.
Uporaba:

tee [moßnosti] [d:][pot]datoteka [[d:][pot]datoteka2] ...
Moßnosti:

/A   Dodaj k datotekam: Doda k izhodnim datotekam namesto
     prepisovanja.

/I   Prezri prekinitve: prezre poskuse prekinitev s strani uporabnika.

[d:][pot]datoteka [[d:][pot]datoteka2] ...   Doloüi izhodne datoteke.
Primeri:

echo "Pozdravljen svet!" | tee pozdrav.txt
Prikaße "Pozdravljen svet!" na zaslonu in ga shrani v pozdrav.txt.

tee dnevnik.txt drug_dnevnik.txt < vhod.txt
Prikaße vsebino vhod.txt in jo shrani v dnevnik.txt in drug_dnevnik.txt.

catdoc pismo.doc | tee /I pismo.txt | wc
Shrani vsebino pismo.doc (obdelano s catdoc) v pismo.txt in jo posreduje
v wc za Átetje besed.
Ne dovoli prekinitev s strani uporabnika.

Ta datoteka je del dokumentacije FreeDOS HTML Help in jo urejajo pogoji
GNU FDL.

