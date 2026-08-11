# Language: Dutch
# File ending: nl
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vchoice [opties]

Kies een optie.

Geeft een errorlevel van de gemaakte keuze op basis van het invoernummer.
Niet de letter/het cijfer van de keuze. Bijvoorbeeld, als het tweede item
is gekozen, wordt een errorlevel van 2 geretourneerd. Ongeacht een
voorvoegsel (zoals C, 1, R, enz.). Ik raad persoonlijk ook aan om auto te
gebruiken voor elke set keuzes die je voorziet van een letter of cijfer.

    [none]      Uitvoeren met alle automatische standaardinstellingen.
    /A n        Stel tekstkenmerk in op n voor geselecteerd item.
    /B color    Stel achtergrondkleur in op color (of waarde) voor
                geselecteerd item.
    /F color    Stel voorgrondkleur in op color (of waarde) voor
                geselecteerd item.
    /D n        Selecteer itemnummer n vooraf als standaardkeuze.
    type        Directe selectie via toetsaanslag.
                    off     Selecteer alleen met pijltjestoetsen.
                    auto    Detecteer directe sprongtekens. (Standaard)
                    alpha   Spring naar selecties met A-Z.
                    digit   Spring naar selecties met 1-9 (+0).
    /Q          Vraag om resultaat. Zodra de keuze is gemaakt, wordt de
                tekst naar STDOUT gestuurd.
    /T seconds  Vertraging in seconden voordat het standaarditem
                automatisch wordt geselecteerd (0-3600). Let op: zelfs
                als de gebruiker naar een ander item navigeert, wordt
                het oorspronkelijke standaarditem geselecteerd
                wanneer de time-out is bereikt.
    /P n        Gebruik polling-modus en selecteer itemnummer n vooraf
                als huidige keuze. Let op: elke wijziging in selectie
                zal vchoice afsluiten en 100+ het huidige keuzenummer
                retourneren.
    /K n        Gebruik n in plaats van kaderteken om grenzen te
                detecteren.
    CTRL-C      Indien opgegeven en Control-C wordt ingedrukt,
                wordt afgesloten met errorlevel van 200.

    tba         (Nog in ontwikkeling, meer wordt aangekondigd)
