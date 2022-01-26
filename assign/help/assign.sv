
     ASSIGN (1)                  08 Augusti 1995                 ASSIGN (1)



     NAMN
          assign - Tilldela en enhetsbokstav till en annan enhet


     SYNOPSIS
          assign [/m] [/shadow] /?
          assign [/m] [/shadow] /status
          assign [/m] [/shadow] /u
          assign [/m] [/shadow] [{ dr1[:]=dr2[:] }]


     BESKRIVNING
          Assign mappar en enhetsbokstav till en annan enhet.  Denna
          mappning p†verkar endast enhetsbokstaven, inte s”kv„gen,
          vilket skiljer Assign fr†n Subst, t.ex.:
          Med aktuell s”kv„g "C:\FREEDOS\ och "B:\TEMP" efter
          kommandona "assign B=C" och "cd C:\", kommer s”kv„gen "B:"
          ocks† att peka p† katalogen "C:\".
          Medan efter kommandona "subst B: ." och "cd C:\", kommer
          s”kv„gen fortfarande att peka p† "C:\FREEDOS".

          D† detta program inte „r en TSR, ladda inte in det via
          "LOADHIGH" eller "LH"-kommandot.

     FLAGGOR

       /? Visar en liten hj„lpsk„rm.

       /SHADOW Denna flagga g”mmer den residenta delen av Assign fr†n
          att l„tt detekteras. Det inkluderar att:
	  1) minnesblocket som inneh†ller den residenta delen markeras
	  som en del av systemet.
	  2) Avbrottet f”r installationskontroll returnerar "Inte
	  installerad, men f†r lov att installeras" snarare „n
	  "Installerad" eller "Inte installerad.".

	  Om den residenta delen installeras med denna flagga men
	  senare anrop g”rs utan den kommer en varning att visas men
	  †tg„rden utf”rs.

	  Flaggan f”rkortas /SH.

       /STATUS Visa alla tilldelade enhetsbokst„ver p† formen:
          en1: => en2:
	  d„r en1 „r den tilldelade enhetsbokstaven och en2 „r enheten
	  som en1 pekar p†.

	  Om det inte finns n†gra tilldelningar alls kommer inget att
	  matas ut.

	  Denna flagga f”rhindrar inl„sning av den residenta delen om
	  den inte redan har installerats.

	  Flagga f”rkortas /S.

       /u Avinstallera en tidigare installerad Assign.



                                      -1-


     ASSIGN (1)                  08 Augusti 1995                 ASSIGN (1)


       en1[:]=en2[:] Detta definierar en tilldelning av en
          enhetsbokstav, d„r en1 ska peka p† en2. Kolonen ":" „r
	  valfria. Inga blanktecken till†ts mellan enhetsbokst„verna,
	  kolonen och likhetstecknet '='.

       /m Flytta om m”jligt den residenta delen in i UMB-omr†det.
          Denna flagga ignoreras om den residenta delen redan „r
	  installerad.

       ingen flagga Om det varken finns /STATUS eller /u eller n†gon
          tilldelning angiven p† kommandorader kommer alla existerande
	  tilldelningar att brytar s† att alla enhetsbokst„ver pekar
	  p† sig sj„lva.

     KŽNDA FEL

       o  Eftersom Assign inte sj„lv „r en TSR kan inl„sning av en via
          kommandona "LOADHIGH" eller "LH" komma att misslyckas. Om du
          vill l„sa in den residenta delen i h”gt minne m†ste du ange
	  flaggan /m.

       o  Flaggorna /STATUS och /SHADOW f”ljer inte flaggstandarden
          p† grund av kompatibilitet med original-Assign.

       o  Senare installerade TSR:er eller en andra kommandohanterare
          (skal) kommer mestadels att f”rhindra
          avinstallationsproceduren. I detta fall kommer inte Assign
          att avbrytas, utan att f”rbli aktivt i minnet. Anv„nd ASSIGN
          utan n†gra flaggor f”r att rensa tilldelningstabellen
          ist„llet.

       o  Vissa skal f”rhindrar att ASSIGN hittar sin residenta kopia
          i minnet, om ASSIGN installeras fr†n en sekund„r kopia av
	  skalet.

     SE VIDARE
          Subst, Join

     BIDRAGSGIVARE
                                 Steffen Kaiser
                             Mittelstra e 112/B115
                         53757 Sankt Augustin - Menden
                             Deutschland - Tyskland

                    e-mail: Steffen.Kaiser@FH-Rhein-Sieg.DE















                                      -2-

