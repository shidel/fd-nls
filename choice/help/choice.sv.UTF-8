NAME

   CHOICE - Väntar tills användaren trycker på en tangent från en lista av val

SYNOPSIS

   CHOICE [/B] [/C[:]val] [/N] [/S] [/T[:]c,nn] [text]

FLAGGOR

 /B
    Orsakar ett ljud (pip) vid prompt.

 /C[:]val
    Anger tillåtna tangent vid prompten.  När de visas kommer tangenterna
    att separeras med komma, omges av klamrar ([]) och kommer att åtföljas
    av ett frågetecken.  Om du inte anger flaggan /C kommer choice att
    använda YN som standard.  Kolonet (:) är valfritt.

 /N
   Ser till att choice inte visar prompten.  Texten innan prompten
   kommer dock fortfarande att visas.  Om du anger flaggan /N kommer
   de angivna tangenterna fortfarande att vara giltiga.

 /S
   Ser till att choice är skiftlägeskänsligt.  Om flaggan /S inte
   anges kommer choice att acceptera antingen gemener eller versaler
   för de tangenter som användaren anger.

 /T[:]c,nn
     Ser till att choice pausar under ett givet antal sekunder innan
     standardvärdet blir den angivna tangenten. Värdena för /T-flaggan
     är som följer:

       c   Anger tecknet som visas efter nn sekunder.  Tecknet måste
           finnas bland uppsättningen av val som anges av /C-flaggan.

       nn  Anger antalet sekunder att pausa.  Accepterbara värden är
           från 0 till 99.  Om 0 anges kommer ingen paus att ske innan
	   standardvärdet blir den angivna tangenten.

   text
     Promptsträng att visa

RETURVÄRDEN

   ERRORLEVEL sätts till positionen bland valen för den tangent
              som användaren trycker på.

AUTHOR

   Jim Hall, jhall@freedos.org

