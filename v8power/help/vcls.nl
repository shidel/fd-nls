# Language: Dutch
# File ending: nl
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vcls [options]

Wis het scherm, een gebied of een rij (regel).

    [none]      Wis het scherm met het huidige tekst-attribuut.
    n           Stel het tekst-attribuut in op n.
    /A n        Stel het tekst-attribuut in op n.
    /B color    Stel het achtergrondtekstattribuut in op color (of
                een waarde).
    /F color    Stel het voorgrondtekstattribuut in op color (of een
                waarde).
    /G          Globaal scherm wissen. (Standaard)
    /L          Lokaal scherm wissen. Detecteert zijn omgeving en
                wist alleen dat. Waarschijnlijk een vak of lijn of
                iets dergelijks. Je hebt deze optie niet echt nodig,
                want je kunt het vak misschien gewoon opnieuw tekenen.
    /K n        Gebruik n in plaats van een kaderteken om grenzen te
                detecteren.
    TEXT        Wis alleen de tekst. Laat alle kleuren intact en
                negeer hun kleur-attributen.
    EOL         Wis alleen van de cursor tot het einde van de regel.
    /C code     Wissen door te vullen met een ASCII-tekencode.
    /X column   Absolute schermkolom om het wissen te starten.
    /Y row      Absolute schermrij om het wissen te starten.
    /W width    Totale breedte van het te wissen gebied.
    /H height   Totale hoogte van het te wissen gebied.
