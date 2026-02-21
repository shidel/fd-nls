# Language: polish
# File ending: pl
# Codepage: 852
# Translation made by Google Gemini
# This translation was made by Google AI, please help the
# FreeDOS group to improve it.

ASSIGN (1)                  08 sierpnia 1995                 ASSIGN (1)



 NAZWA
      assign - Przypisuje liter© nap©du do innego nap©du


 SKùADNIA
      assign [/m] [/shadow] /?
      assign [/m] [/shadow] /status
      assign [/m] [/shadow] /u
      assign [/m] [/shadow] [{ dr1[:]=dr2[:] }]


 OPIS
      Assign mapuje liter© nap©du na inny nap©d. To mapowanie wpàywa
      tylko na liter© nap©du, a nie na òcieæk©, co odr¢ænia Assign
      od Subst, np.:
      Przy bieæ•cych òcieækach roboczych "C:\FREEDOS" i "B:\TEMP",
      po wydaniu polece‰ "assign B=C" i "cd C:\", òcieæka "B:"
      r¢wnieæ wskazuje na katalog "C:\".
      Natomiast po komendach "subst B: ." i "cd C:\", òcieæka "B:"
      nadal wskazuje na "C:\FREEDOS".

      Poniewaæ ten program nie jest rezydentny (TSR), nie naleæy go
      àadowaÜ poleceniami "LOADHIGH" lub "LH".

 OPCJE

   /? Wyòwietla kr¢tki ekran pomocy.

   /SHADOW Ta opcja ukrywa cz©òÜ rezydentn• Assign przed àatwym
      wykryciem. Obejmuje to:
      1) Blok pami©ci zawieraj•cy cz©òÜ rezydentn• jest oznaczony
      jako cz©òÜ systemu.
      2) Przerwanie sprawdzaj•ce instalacj© zwraca "Nie zainstalowano,
      ale instalacja niedozwolona" zamiast "Zainstalowano".

      Jeòli cz©òÜ rezydentna zostanie zainstalowana z t• opcj•, ale
      kolejne wywoàania b©d• bez niej, pojawi si© ostrzeæenie, ale
      akcja zostanie wykonana.

      Opcj© moæna skr¢ciÜ do /SH.

   /STATUS Wyòwietla wszystkie przypisane litery nap©d¢w w formie:
      dr1: => dr2:
      gdzie dr1 to przypisana litera, a dr2 to nap©d docelowy.

      Jeòli nie ma æadnych przypisa‰, nic nie zostanie wyòwietlone.

      Ta opcja zapobiega àadowaniu cz©òci rezydentnej, jeòli nie
      zostaàa ona jeszcze zainstalowana.

      Opcj© moæna skr¢ciÜ do /S.

   /u Odinstalowuje wczeòniej zainstalowany Assign.



                                  -1-


 ASSIGN (1)                  08 sierpnia 1995                 ASSIGN (1)


   dr1[:]=dr2[:] Definiuje przypisanie litery nap©du, gdzie dr1 ma
      wskazywaÜ na dr2. Dwukropki ":" s• opcjonalne. Spacje nie s•
      dozwolone mi©dzy literami, dwukropkami i znakiem r¢wnoòci.

      Jeòli cz©òÜ rezydentna nie jest jeszcze zaàadowana, zostanie
      zaàadowana bez powiadomienia.

   /m Przenosi cz©òÜ rezydentn• do obszaru UMB, jeòli to moæliwe.
      Opcja ignorowana, jeòli Assign jest juæ zainstalowany.

   brak opcji Jeòli nie podano /STATUS, /u ani przypisania, wszystkie
      istniej•ce przypisania zostaj• usuni©te.

 ZNANE Bù®DY

   o  Poniewaæ Assign nie jest typowym TSR, àadowanie przez "LH" moæe
      si© nie udaÜ. Aby zaàadowaÜ wysoko, naleæy uæyÜ opcji /m.

   o  Opcje /STATUS i /SHADOW nie s• zgodne ze standardem ze wzgl©du
      na kompatybilnoòÜ z oryginalnym programem Assign.

   o  P¢´niej zainstalowane programy TSR lub inne powàoki (shell)
      cz©sto uniemoæliwiaj• odinstalowanie. Uæyj ASSIGN bez opcji,
      aby wyczyòciÜ tabel©.

 ZOBACZ TAKΩE
      Subst, Join

 AUTORZY
                             Steffen Kaiser
