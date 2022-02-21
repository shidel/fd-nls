Enkel bildresursredigerare f”r spelutveckling

anv„ndning: IMGEDIT.EXE [flaggor]


    [filnamn]       Ange filen att redigera. Om ingen anges kommer NONAME.IMG
                    att antas. Om filen inte exiterar kommer en ny 16x16 stor
		    bild att skapas.

    /size X:Y       S„tt ny bild- eller typsnittsstorlek.

Allm„nn information om att redigera bilder.

    ImgEdit „r inte ett ritprogram, bildbehandlare eller liknande typ av
fotoredigeringsprogram. Det „r designat specifikt f”r att pixelredigering av
sm† bilder f”r anv„ndning i grafiska program och spel i DOS. Det p†b”rjades
eftersom jag beh”vde grafik i ett spel och inga fria program eller program med
”ppen k„llkod passade mina behov. Kanske l„gger jag till st”d f”r st”rre bilder
i framtiden, eller annat som g”r det till en b„ttre allm„n bildredigerare.

    N„r du anv„nder ImgEdit har gr„nssnittet visa unika och intressanta
beteenden. Detta „r dels p† grund av det k”r p† en anpassad spelmotor. Du „r
s„kert van vid att v„nster och h”ger musknapp g”r olika saker. Naturligtvis „r
det s† i ImgEdit att v„nster musknapp ritar och h”ger musknapp raderar. Men
gr„nssnittet drar upp detta ett sn„pp. M†nga av de andra element beter sig lite
annorlunda n„r h”ger musknapp anv„ndas. Till exempel kan menyobjekt s† som
"Rotera" i menyn rotera †t v„nster med en knapp och †t h”ger med den andra.

    Konceptet med v„nster/h”ger musknappar str„cker sig „ven till
tangentbordskontrollerna. Om vi †ter anv„nder "Rotera"  som exempel s† roterar
(v„nster alt)+R och (h”ger alt)+R i olika riktningar. Sen kommer
(v„nster skift)+pil och (h”ger skift)+pil att flytta bilden samma riktning men
med en annan fyllnadsf„rg.

    Jag skulle kunna lista †tg„rderna vilka har distinkta v„nster/h”ger
beteenden. Men ImgEdit „r fortfarande under utveckling och det „r inte s† sv†rt
att lista ut. Lek bara runt i gr„nssnittet s† kommer du att lista ut det. :-)

    En sak till... Endast v„ldigt begr„nsat st”d f”r icke-inbyggda
grafikfilformat (s† som BMP). Medan andra program b”r kunna l„sa filerna som
skapats av ImgEdit kanske filer skapade av andra progarm inte „r l„sbara av
ImgEdit. N„r det g„ller BMP-st”d „r detta i huvudsak p† grund av tre sk„l. Det
har bara st”d f”r BMP-specifikation 3 (f”r Windows 3.1). Det har endast st”d f”r
BMP med 256 f„rger. Det har inte st”d f”r mer „n ett f„rgplan.
