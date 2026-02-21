FreeDOS APPEND. L†ter program ”ppna datafiler i angivna kataloger som om filerna
                fanns i den aktuella katalogen.
(C) 2004-2006 Eduardo Casino, under villkoren f”r GNU GPL, Version 2


Syntax:

  APPEND [[enhet:]s”kv„g[;...]] [/X[:ON|:OFF]] [/PATH:ON|/PATH:OFF] [/E]
  APPEND ;

    [enhet:]s”kv„g Enhet och katalog att l„gga till.
    /X[:ON]        Ut”ka APPEND till s”kningar och kommandok”rning.
    /X:OFF         Applicerar APPEND endast till beg„ran om att ”ppna filer.
                   Standardv„rde /X:OFF
    /PATH:ON       S”ker genom tillagda kataloger f”r filbeg„ran som redan
                   inkluderar en s”kv„g. Detta „r standardinst„llningen.
    /PATH:OFF      St„nger av /PATH:ON.
    /E             Lagrar den tillagda kataloglista i milj”n. /E f†r endast
                   anv„ndas vid den f”rsta k”rningen av APPEND. Du kan inte
		   inkludera n†gra s”kv„gar p† samma kommandorad som /E.

  APPEND ; rensar listan av tillagda kataloger.
  APPEND utan parametrar visar listan av tillagda kataloger.

Not:

  APPEND installerar sig sj„lv som ett internt kommando efter den f”rsta
  exekveringen. Den andra och p†f”ljande exekveringar MSTE exkludera
  fils”kv„g och „ndelse.
