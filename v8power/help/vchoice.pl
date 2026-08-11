# Language: Polish
# File ending: pl
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vchoice [options]

Wybierz opcj©.

Zwraca errorlevel wybranej opcji na podstawie numeru jej wpisu. Nie
litery/cyfry wyboru. Na przykˆad, je˜li wybrany zostanie drugi element,
zwr¢ci errorlevel 2. Niezale¾nie od prefiksu (np. C, 1, R itp.).
Osobi˜cie zalecam r¢wnie¾ u¾ywanie auto dla ka¾dego zestawu opcji,
kt¢re poprzedzasz liter¥ lub cyfr¥.

    [none]      Wykonaj ze wszystkimi automatycznymi ustawieniami
                domy˜lnymi.
    /A n        Ustaw atrybut tekstu na n dla wybranego elementu.
    /B color    Ustaw kolor tˆa na color (lub warto˜†) dla
                wybranego elementu.
    /F color    Ustaw kolor tekstu na color (lub warto˜†) dla
                wybranego elementu.
    /D n        Wybierz wst©pnie element numer n jako domy˜lny.
    type        Typ bezpo˜redniego wyboru klawiszem.
                    off     Wybieraj tylko klawiszami strzaˆek.
                    auto    Wykrywaj znaki bezp. skoku. (Domy˜lnie)
                    alpha   Skacz do wybor¢w u¾ywaj¥c A-Z.
                    digit   Skacz do wybor¢w u¾ywaj¥c 1-9 (+0).
    /Q          Zapytaj o wynik. Po dokonaniu wyboru jego tekst
                zostanie wysˆany do STDOUT.
    /T seconds  Op¢«nienie w sekundach przed automatycznym
                wyborem domy˜lnego elementu (0-3600). Zauwa¾, ¾e
                nawet je˜li u¾ytkownik przejdzie do innego
                elementu, po upˆywie czasu wybrany zostanie
                oryginalny domy˜lny element.
    /P n        U¾yj trybu odpytywania i wybierz wst©pnie element
                n jako bie¾¥cy wyb¢r. Uwaga: ka¾da zmiana wyboru
                zakoäczy vchoice i zwr¢ci 100+ bie¾¥cy numer wyboru.
    /K n        U¾yj n zamiast znaku ramki do wykrywania granic.
    CTRL-C      Je˜li okre˜lono, a Control-C zostanie wci˜ni©ty,
                program zakoäczy dziaˆanie z errorlevel 200.

    tba         (Wci¥¾ w fazie rozwoju, wi©cej zostanie ogˆoszone)
