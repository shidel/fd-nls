# Language: Polish
# File ending: pl
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vstr [options]

Proste narz©dzie do przetwarzania ci¥g¢w. Wypisuje wyniki na STDOUT.

    /N          Nie zapisuj CRLF po zakoäczeniu.
    /U          Filtr wej˜cia: Konwertuj na wielkie litery.
    /D          Filtr wej˜cia: Konwertuj na maˆe litery.
    /B          Filtr wej˜cia: Ignoruj puste linie.
    /I          Filtr wej˜cia: Ignoruj wci©cia.
    /C code     Zapisz kod znaku ASCII.
    /R times    Powt¢rz nast©pny zapis times razy. (1-65535)
    /L line     Zwr¢† tylko t© line ze standardowego wej˜cia. (0-65535)
                (Uwaga: vline /L TOTAL zwr¢ci caˆkowit¥ liczb© linii.)
                Ponadto dodanie :n wypisze n linii.
    /S s1 s2    Znajd« i zamieä wszystkie wyst¥pienia s1 na s2.
    /F s1 s2    Ustaw separator na s1, zwr¢† tylko pozycj© pola lub
                zakres s2.
    /A code s2  Zwr¢† rozdzielon¥ przez code pozycj© pola lub zakres s2.
                (tab=0x09)
    /P s1       Wydrukuj tekst s1.
    /T file ID  Wyszukaj ID w file i przetw¢rz jako opcje wiersza poleceä.
                Wszelkie dodatkowe opcje po tym przeˆ¥czniku s¥ u¾ywane
                do wypeˆnienia zmiennych %1-%9 w ci¥gu tekstowym.

    tba         (Nadal w fazie rozwoju, wi©cej zostanie ogˆoszone)
