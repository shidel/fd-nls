# Language: Swedish
# File ending: sv
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vtest [alternativ]

En testare av tillst†nd. Den kan utf”ra olika kontroller som kan kokas ner
till antingen TRUE eller FALSE. Resultatet skickas som en errorlevel. N„r
svaret „r TRUE returneras en nolla. Om svaret „r FALSE returneras en 1. Att
anv„nda en felaktig syntax och andra s†dana fel returnerar avslutningskod
100.

Tester:

    val1 /eq val2    v„rden „r lika
    val1 /ne val2    v„rden „r inte lika
    val1 /ge val2    val1 „r st”rre „n eller lika med val2
    val1 /le val2    val1 „r mindre „n eller lika med val2
    val1 /gt val2    val1 „r st”rre „n val2
    val1 /lt val2    val1 „r mindre „n val2
    string           str„ngen „r inte null
    /n string        str„ngen „r inte null
    /z string        str„ngen „r null
    /v number        numret „r giltigt
    /f file          filen existerar
    /d dir           s”kv„gen existerar
    /e file / dir    valfri typ av katalogpost

Uttrycksoperatorer:

    /c expression    Tvinga att ett v„rde behandlas som en str„ng och
                     utf”r en skiftl„gesk„nslig j„mf”relse.
    /i expression    Tvinga att ett v„rde behandlas som en str„ng och
                     utf”r en skiftl„gesok„nslig j„mf”relse.
    exp1 /and exp2   B†da uttrycken m†ste vara TRUE.
    exp1 /or /exp2   Valfritt uttryck kan vara TRUE.
    /not expression  Invertera resultatet av ett uttryck.

Andra alternativ:

    /tf              Visa TRUE eller FALSE n„r du „r klar.

Som standard baseras j„mf”relsen av v„rden p† deras typ. Om b†da v„rdena
„r ett nummer (representerat i decimal eller hexadecimal), kommer
j„mf”relsen att g”ras matematiskt. Annars kommer en skiftl„gesok„nslig
alfabetisk j„mf”relse att utf”ras. Anv„ndning av antingen /c eller /i
tvingar fram en textbaserad j„mf”relse oavsett v„rdets datatyp. Ett tomt
v„rde har inget numeriskt v„rde och tvingar de tv† objekten att j„mf”ras
som str„ngar.

Grundl„ggande exempel:

En fil som heter TEST.TXT existerar:         vtest /f TEST.TXT
En fil som heter TEST.TXT existerar inte:    vtest /not /f TEST.TXT
Antingen existerar fil A.TXT eller B.TXT:    vtest /f A.TXT /or /f B.TXT
Varken fil A.TXT eller B.TXT existerar:      vtest /not /f A.TXT /and /not
                                             /f B.TXT
%1 „r ett nummer:                            vtest /v %1
%1 „r ett nummer fr†n 1 till 10:             vtest /v %1 /and 1 /le %1
                                             /le 10

Medan alternativen /f, /d och /e testar f”r fil- eller katalogposter kan de
anv„nda uttrycksmodifierare som /not, /c och /i och de st”der „ven
jokertecken. N„r filsystemet har kontrollerats f”r f”rekomsten av en
matchande post, blir de v„rdet p† det f”rsta matchande filsystemobjektet
och kan behandlas som v„rden. Om ingen matchande post hittas blir v„rdet
null och kommer med st”rsta sannolikhet att f† ett uttryck att utv„rderas
som FALSE.

Vid j„mf”relse av tv† v„rden, om varje v„rde inneh†ller ett giltigt nummer
(decimalt eller hexadecimalt) kommer j„mf”relsen att utf”ras numeriskt.
Om n†got av v„rdena inte „r ett nummer, kommer det att j„mf”ras alfabetiskt.
Žven om det „r m”jligt att blanda datatyper i en serie j„mf”relser kan
resultatet vara sv†rt att f”rutse och det rekommenderas i allm„nhet inte.

Citattecken anv„nds INTE f”r str„ngar med mellanslag. Citattecken
behandlas alltid som vanliga texttecken. Kommandoradstolkaren kommer bara
att separera str„ngar n„r en SWITCH_CHAR (normalt /) uppt„cks. Detta „r
ett acceptabelt exempel:

vtest a, b and c /lt d, e and f /and 6 /gt 5 /lt 7

Att anv„nda ett citattecken f”r att helt enkelt omsluta str„ngar ger
felaktiga resultat. F”ljande exempel resulterar ALLTID i TRUE oavsett
v„rdet p† %1:

vtest /n "%1"

Dessutom, om en str„ng inneh†ller en SWITCH_CHAR kommer delen efter
SWITCH_CHAR att tolkas som ett programalternativ s†vida den inte escapas
genom att infoga en extra SWITCH_CHAR. Till exempel skulle "Y/N" tolkas
som str„ngen "Y" sedan alternativet "/N". F”r att tolka b†da som en str„ng
skulle det vara "Y//N". Till exempel:

vtest /n y//n
