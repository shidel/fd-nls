# Language: Swedish
# File ending: SV
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

			STAMP 2.0


Inneh†ll
--------

	1. Funktioner
	2. Felniv†er (Errorlevels)
	3. Att g”ra (Todo)
	4. Historik
	5. F”rfattare


1. Funktioner
-------------

- „ndra datum/tid f”r filer
- „ndra attribut f”r filer och kataloger
- j„mf”ra datum/tid och attribut f”r filer och kataloger
- datum/tid-alternativ g”r det m”jligt att h„mta v„rden fr†n nuvarande och
  filens datum/tid samtidigt med explicita tal
- komplex datum/tid-j„mf”relse med nuvarande tid, likas† med fil
- datum/tid i format som f”ljer COUNTRY-inst„llningarna
- UNC- och NetWare-s”kv„gar till†tna
- flera m†l i en enda kommandorad
- ut”kade jokertecken (wildcards): namn kan inneh†lla valfritt antal '*',
  liksom '?'; "namn" betyder "namn.", men "*" betyder "*.*"
- automatisk identifiering av alternativtecken ('/' eller '-')
- alternativ f”r att inkludera katalognamn i s”kning med jokertecken
- alternativ f”r att bearbeta filer och kataloger i alla m†lets underkataloger
- alternativ f”r att bearbeta fil med en lista ”ver m†l; saknat argument
  inneb„r standardinmatning (stdin)


2. Felniv†er (Errorlevels)
--------------------------

0   - inst„llning eller j„mf”relse av datum/tid och attribut lyckades
1   - j„mf”relsen (en av dem) misslyckades
2   - fel vid fil†tkomst eller inst„llning av fildatum/tid/attribut
128 - ogiltigt eller duplicerat alternativ
129 - inkompatibla alternativ, inga m†l eller ogiltiga argument
130 - internt fel (f”r lite minne eller f”r djup katalogstruktur)


3. Att g”ra (Todo)
------------------

- visa listor ”ver bearbetade filer
- j„mf”ra/kopiera datum/tid/attribut fr†n fil-till-filer
- ”ka/minska f„lt f”r datum/tid
- j„mf”relse av st”rre/mindre f”r attribut


4. Historik
-----------

	1.0 [16.02.98]
+ F”rsta utg†van

	1.1 [19.02.98]
+ Accepterar nu datum/tid i format som f”ljer COUNTRY-inst„llningarna

	1.2 [21.02.98]
* N†got f”rb„ttrad tolkning av utel„mnade f„lt och argument
* Minskad storlek p† den k”rbara filen
+ Lade till alternativet -a f”r att „ndra fil- och katalogattribut

	1.3 [21.02.98]
+ Nu accepteras flera m†l i en kommandorad
+ Alternativet -a kan nu anv„ndas vid j„mf”relse

	1.4 [26.02.98]
# Exekveringen stoppar nu inte n„r ett fel f”r en fil hittas, utan forts„tter
  f”r n„sta m†l
# Utdata dupliceras nu inte till konsolen n„r de omdirigeras till fil
* Alternativet -@ d”ptes om till -c
+ Katalogers datum/tid kan nu ocks† kontrolleras vid j„mf”relse
+ Jokertecken f”r m†l accepteras nu
+ -r m”jligg”r katalogbearbetning med jokertecken

	1.41 [28.02.98]
+ Tecken f”r alternativ v„ljs automatiskt vid f”rsta f”rekomsten av '/'
  eller '-'
+ Ett ensamt par av alternativtecken ("--" eller "//") stoppar s”kning efter
  n„sta alternativ
+ Ett ensamt alternativtecken inneb„r standardinmatning (stdin)
- Att l„gga till ett alternativtecken f”re ett namn som b”rjar med samma
  tecken f”r att m”jligg”ra ett s†dant namn som argument orsakar nu ett
  felmeddelande; f”r att skicka valfria namn, infoga ett ensamt par av
  alternativtecken f”re

	1.5 [14.03.98]
# Buggfix: Under vissa f”rh†llanden avvisades korrekt angivna dagv„rden 30
# och 31
# Buggfix: M†lnamn skrivs nu med stora bokst„ver enligt COUNTRY-
# inst„llningarna
+ /s bearbetar filer och kataloger „ven i alla m†lets underkataloger

	2.0 [14.04.98]
# Buggfix: F”rlorade den mest signifikanta biten av sekunder vid l„sning av
# filtid
+ /@ f”r att bearbeta fil med en lista ”ver m†l
* Ensamt alternativtecken anger nu standardinmatning endast som argument
  till alternativet /@
* Minskad storlek p† den k”rbara filen
+ DIET har anv„nts f”r att komprimera den k”rbara filen


5. F”rfattare
-------------
					Arkady Belousov
					E-post: ark@mos.ru

