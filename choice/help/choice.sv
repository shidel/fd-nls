NAME

   CHOICE - V„ntar tills anv„ndaren trycker p† en tangent fr†n en lista av val

SYNOPSIS

   CHOICE [/B] [/C[:]val] [/N] [/S] [/T[:]c,nn] [text]

FLAGGOR

 /B
    Orsakar ett ljud (pip) vid prompt.

 /C[:]val
    Anger till†tna tangent vid prompten.  N„r de visas kommer tangenterna
    att separeras med komma, omges av klamrar ([]) och kommer att †tf”ljas
    av ett fr†getecken.  Om du inte anger flaggan /C kommer choice att
    anv„nda YN som standard.  Kolonet (:) „r valfritt.

 /N
   Ser till att choice inte visar prompten.  Texten innan prompten
   kommer dock fortfarande att visas.  Om du anger flaggan /N kommer
   de angivna tangenterna fortfarande att vara giltiga.

 /S
   Ser till att choice „r skiftl„gesk„nsligt.  Om flaggan /S inte
   anges kommer choice att acceptera antingen gemener eller versaler
   f”r de tangenter som anv„ndaren anger.

 /T[:]c,nn
     Ser till att choice pausar under ett givet antal sekunder innan
     standardv„rdet blir den angivna tangenten. V„rdena f”r /T-flaggan
     „r som f”ljer:

       c   Anger tecknet som visas efter nn sekunder.  Tecknet m†ste
           finnas bland upps„ttningen av val som anges av /C-flaggan.

       nn  Anger antalet sekunder att pausa.  Accepterbara v„rden „r
           fr†n 0 till 99.  Om 0 anges kommer ingen paus att ske innan
	   standardv„rdet blir den angivna tangenten.

   text
     Promptstr„ng att visa

RETURVŽRDEN

   ERRORLEVEL s„tts till positionen bland valen f”r den tangent
              som anv„ndaren trycker p†.

F™RFATTARE

   Jim Hall, jhall@freedos.org

