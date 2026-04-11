EDLIN 2.14

Programmet edlin „r en liten textredigerare skrivet f”r FreeDOS
som en klon av det gamla MS-DOS-programmet edlin. Det skiljer sig fr†n
MS edlin dels genom att det „r fri programvara och dels genom att
anv„ndargr„nssnittet „r n†got annorlunda p† ett par platser. Anledningen
till skillnaden „r att anv„ndare inte ska vara tvungen att mata in
de kontrolltecken som kr„vs av MS edlin:s syntax.

STARTA EDLIN


Programmet edlin startas antingen ensamt:

  edlin

eller med ett filnamn som l„ses in inledningsvis:

  edlin fil

EDLIN:S INTERNA KOMMANDON

I f”ljande kommandolista representerar klamrar valfria konstruktioner.
Br„dg†rdssymbolen (#) representerar ett radnummer, vilket antingen „r en
str„ng av siffror, en punkt som representerar den aktuella raden, ett
dollartecken ($) som representerar den sista raden i filen, eller ett
radnummer adderar till eller subtraherat fr†n ett annat radnummer, s† t.ex.

  .,.+1p

skriver ut den aktuella och n„stf”ljande raden.

Ett dollartecken i f”ljande lista representerar en str„ng av tecken. De kan
omg„rdas av antingen enkla eller dubbla citattecken och kan inneh†lla
f”ljande kontrollsekvenser:

  \a - alert
  \b - backstegstecken
  \e - escape
  \f - sidmatning
  \t - horisontell tabb
  \v - vertikal tabb
  \" - dubbelt citattecken
  \' - enkelt citattecken
  \. - punkt
  \\ - omv„nt snedstreck
  \xXX d„r X „r en hexsiffra (0-9, a-f, A-F) - hexadecimal konstant
  \dddd d„r d „r en decimal siffra (0-9) - decimal konstant
  \OOO d„r O „r en oktal siffra (0-7) - oktal konstant
  \^C - kontrolltecken

Programmet edlin har st”d f”r f”ljande syntax:

# - REDIGERA EN ENSTAKA RAD

Programmet edlin matar ut raden som indikeras av numret och p†f”ljande
rad som matas in ers„tter raden fr†n filen som skrevs ut.

a - LŽGG TILL

Detta kommando „r ekvivalent med $+1i .

[#],[#],#,[#]c - KOPIERA ETT RADINTERVALL

Detta kommando kopierar ett block av konsekutiva rader till en annan plats
i bufferten. Parametrarna „r:

  * Den f”rsta raden du vill kopiera (standardv„rde = aktuell rad)
  * Den sista raden du vill kopiera (standardv„rde = aktuell rad)
  * Raden f”re vilken du vill infoga blocket av rader
  * Antalet g†nger du vill kopiera blocket (standardv„rde = 1)

Efter att edlin kopierat raderna vill du nog anv„nda kommandot l (lista)
f”r att se de korrekt om-numrerade raderna.

[#][,#]d - TA BORT ETT BLOCK RADER

Detta kommando tar bort ett block konsekutiva rader. Parametrarna „r de
f”rsta och sista raderna i blocket som ska tas bort.

Om du utel„mnar den andra parameter kommer bara den rad som pekas ut av
den f”rsta parametern att tas bort. Om du utel„mnar den f”rsta parametern
kommer blocket fr†n aktuell rad till raden som anges i andra parametern (se
till att du anger ett kommatecken) att tas bort. Om b†da parametrarna
utel„mnas kommer den aktuella raden att tas bort.

e filnamn - SPARA OCH AVSLUTA

Detta kommando „r ekvivalent med

  w filnamn

f”ljt av

  q

[#]i - INFOGNINGSLŽGE

Detta kommando aktiverar infogningsl„get. Dess parameter „r radnumret f”re
vilket du vill infoga rader.

Under infogning „r kontrollsekvenser s† som de ovan m”jliga att mata in.
F”r att avsluta infogningsl„ge, skriv en punkt (.) p† en i ”vrigt tom rad
(om du m†ste infoga en rad med enbart en punkt, anv„nd en kontrollsekvens
f”r den).

Efter att att infogningsl„get avslutats kommer raden efter den infogade
texten att bli den aktuella raden, om inte infogningen lades till i slutet
av texten, i vilket fall den sista raden i texten kommer att bli den nya
aktuella raden.

[#][,#]l - LISTA RADER

Detta kommando listar rader av text p† sk„rmen. Om du utel„mnar den f”rsta
parameter kommer kommandot att visa text som b”rjar 11 rader f”re texten p†
aktuell rad. Om du utel„mnar den andra parameter visas en sida av text med
b”rjan p† raden som anges i den f”rsta parametern. Om b†da parametrarna
utel„mnar visas en sida av text som b”rjar 11 rader innan aktuell rad.
Oavsett fall, om antalet rader „r st”rre „n antalet rader p† en sida kommer
programmet att skriva ut en str„ng och pausa efter varje sida med text.

[#],[#],#m - FLYTTA BLOCK

Detta kommando flyttar ett block av text till raden innan numret angivet i
den tredje parametern. Det motsvarar att kopiera och sedan ta bort original
blocker.

[#][,#]p - SIDA

Detta liknar l f”rutom att standardsidan b”rjar med den aktuella raden
ist„llet f”r 11 rader innan.

q - AVSLUTA

Sj„lvf”rklarande.

[#][,#][?]r$,$ - ERSŽTT STRŽNG

Detta kommando ers„tter alla f”rekomster av den f”rsta str„ngen med den
andra mellan de tv† rader som anges. Om den f”rsta parametern utel„mnar
b”rjar ers„ttning p† raden efter aktuell rad; om de andra parametern
utel„mnar slutar ers„ttning p† sista raden i filen.

Fr†getecknet orsakar att ett bekr„ftelsemeddelande visas innan ers„ttning.

[#][,#][?]s$ - S™K EFTER DELSTRŽNG

Detta kommando s”ker efter den f”rsta raden som inneh†ller den angivna
delstr„ngen. Om den f”rsta parameter utel„mnas kommer s”kningen att b”rja
p† den aktuella raden; om den andra parametern utel„mnas kommer s”kningen
att avslutas vid filslutet.

Fr†getecknet orsakar att s”kningen visar ett bekr„ftelsemeddelande. Om du
s„ger nej till bekr„ftelsemeddelandet forts„tter s”kningen; om du s„ger ja
avslutas den.

Den aktuella rader kommer att †terst„llas till raden d„r s”kningen
avslutades om den var framg†ngrik.

[#]t filnamn - ™VERF™R FIL

Detta kommando kommer att ”verf”ra inneh†llet fr†n filen till bufferten s†
att det infogas innan det angivna radnumret. Om radnumret utel„mnar „r
standardv„rdet den aktuella raden.

[#]w filnamn - SPARA FIL

Detta kommando orsakar att antalet rader som anges i f”rsta parametern
sparas till den specificerade filen. Om parametern utel„mnar kommer alla
raderna i bufferten att sparas till filen.

UPPHOVSMAN

Gregory Pietsch, gpietsch@comcast.net
