FC v. 3.03 (c) 2004 Maurizio Spagni

FC j„mf”r tv† filer eller upps„ttningar filer i text- eller bin„rl„ge,
och visar skillnaderna mellan dem.

FC implementerar Paul Heckels algoritm fr†n Communications of the
Association for Computing Machinery, April 1978, s264 - s268,
"A Technique for Isolating Differences Between Files".

Denna algoritm har f”rdelen ”ver andra vanligen anv„nda j„mf”relsealgoritmer
att den „r snatt och kan identifiera skillnader p† godtyckligt m†nga rader.
F”r de flesta applikationer isolerar algoritmer skillnader p† liknande s„tt
som de som isoleras av l„ngsta gemensamma delsekvens.

Syntaxen „r som f”ljer:

FC [flaggor] [enhet1:][s”kv„g1]filnamn1 [enhet2][s”kv„g2]filnamn2 [flaggor]

 /A    Visa endast f”rsta och sista raderna f”r varje upps„ttning skillnader
 /B    Utf”r en bin„r j„mf”relse
 /C    Ignorera skiftl„ge f”r bokst„ver
 /L    J„mf”r filer som ASCII-text
 /LBn  S„tt maximalt antal konsekutiva olika ASCII-rader till n
 /Mn   S„tt maximalt antal skillnader i bin„rj„mf”relser till n byte
 /N    Visa radnumren vid en textj„mf”relse
 /Q    Visa inte listan ”ver skillnader
 /R    Visa en kort slutrapport (alltid aktiv n„r /S anv„nds)
 /S    Ut”ka genoms”kning till filer i underkataloger
 /T    Expandera inte tabbar till blanksteg
 /U    Visa filnamnen f”r filer utan motsvarighet
 /W    Packa tomrum (tabbar och blanksteg) f”r textj„mf”relse
 /X    Visa inte kontextrader i textj„mf”relse
 /nnn  S„tt minimalt antal konsekutiva matchande rader till nnn
       f”r omsynkronisering vid j„mf”relse

Programmet har LFN-st”d och anv„nder dem automatiskt om operativsystemet
har st”d f”r l†nga filnamn.

FC anv„nder bin„rl„ge som standard f”r filer vars namn slutar p† .EXE, .COM,
.SYS, .OBJ, .BIN, .DLL och .LIB.

I bin„rl„ge visar FC positionen i filen d„r bytear skiljer sig, deras
hexadecimala v„rden och, om de „r utskrivbara, deras ASCII-tecken.

Som standard avslutas bin„rj„mf”relsen efter 20 skillnader men det v„rdet kan
modifieras via flaggan /M. /M0 inneb„r "obegr„nsade skillnader". /M tolkas som
/M0.

En designbegr„nsning f”r detta program „r att i filj„mf”relser i textl„get s†
j„mf”rs endast de f”rsta 32765 raderna; de †terst†ende raderna hoppas ”ver.
Radl„ngden „r i princip obegr„nsad.

FC har st”d f”r jokertecken i filspecifikationer. Ett par ord om detta:
- angivelse av en katalog „r detsamma som att ange alla filerna i den
  katalogen (d.v.s. "*.*").
  Exempel: "FC C:\ A:" „r det samma som "FC C:\*.* A:*.*"
- om inget filnamn2 anges antas "." (aktuell katalog).
  Exempel: "FC C:\FOO.TXT" „r detsamma som "FC C:\FOO.TXT .\*.*"
- om filnamn1 har jokertecken men filnamn2 inte har det s† kommer alla filer som
  matchar filnamn1 att j„mf”ras med samma fil filnamn2.
  Exempel: "FC FOO.BK? FOO.TXT"
           Alla filerna FOO.BK? j„mf”rs med FOO.TXT
- om filnamn1 har jokertecken och filnamn2 „r en s”kv„g †tf”ljd av "*.*" s†
  j„mf”rs alla filerna som matchar filnamn1 med filerna med samma namn men in
  s”kv„gen som anges av filnamn2 (om den filen existerar).
  Exempel: "FC *.* A:*.*" eller kortare "FC . A:"
           Alla filerna i den aktuella katalogen j„mf”rs med deras kopia i A:.
- om b†de filnamn1 och filnamn2 har jokertecken d† kommer alla filerna i
  s”kv„gen filnamn1 och som matchar filnamn1 att j„mf”ras med relevant fil
  matchandes filnamn2 i s”kv„gen angiven av filnamn2 (om den filen existerar).
  Exempel: "FC *.TXT OLDS\*.BAK"
           Alla filerna i den aktuella katalogen j„mf”rs med deras
	   s„kerhetskopia omnamnad till .BAK i underkatalogen OLDS.
Det „r enklare gjort „n sagt.
Om det du faktiskt vill g”ra „r att j„mf”ra varje fil i en katalog med alla
filerna i en annan kan du alltid anv„nda formen:
FC *.* MINKAT\????????.???

Flaggan /S itererar samma s”km”nster i underkatalogerna med samma namn i b†da
s”kv„garna.
  Exempel: "FC /S C:*.TXT D:*.BAK"
           Under antagandet att det finns underkataloger C:OOK och D:BOK, j„mf”r
	   detta kommando alla *.TXT-filer med deras s„kerhetskopior *.BAK i
	   aktuella kataloger och ocks† alla BOK\*.TXT-filer med deras
	   s„kerhetskopior BOK\*.BAK.

Avslutningskoder f”r ERRORLEVEL „r som f”ljer:
	0	Alla filerer matchar
	1	tminstone ett par filer skiljer sig
	2	Ogiltig parameter p† kommandoradern
	3	Fil hittades ej
	4	Fel vid ”ppning av fil(er)
