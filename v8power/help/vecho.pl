# Language: Polish
# File ending: pl
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vecho [options] [text]

Wy˜wietla tekst na ekranie.

    [none]      Wykonuje powr¢t karetki i wysuw linii na ekranie.
    text        Zapisuje tekst na ekranie.
    /A n        Ustawia atrybut tekstu na n.
    /B color    Ustawia atrybut tˆa tekstu na color (lub warto˜†).
    /F color    Ustawia atrybut pierwszego planu tekstu na color (lub
                warto˜†).
    /BlinkOn    Wˆ¥cza bit migania/intensywno˜ci. (Rozpocznij miganie)
    /BlinkOff   Wyˆ¥cza bit migania/intensywno˜ci. (Zatrzymaj miganie)
    /N          Nie zapisuje CRLF po zakoäczeniu.
    /P          Wykonuje CRLF teraz.
    /S +        Wstawia spacj© mi©dzy parametrami. (DOMY—LNIE)
    /S -        Nie dodaje spacji mi©dzy wieloma parametrami.
    /C code     Zapisuje kod znaku ASCII.
    /R times    Powtarza nast©pny zapis times razy. (1-65535)
    /I          Zapisuje tekst, kt¢ry mo¾e oczekiwa† z urz¥dzenia
                STDIN.
    /G          Zapisuje tekst globalnie i ignoruje wszelkie ramki.
    /L          Zapisuje tekst lokalnie w odniesieniu do ramek.
                (DOMY—LNIE)
    /K n        U¾ywa n zamiast znaku ramki do wykrywania granic.
    /X code     Usuwa reszt© linii za pomoc¥ kodu ASCII, ale nie
                przesuwa kursora.
    /E          To samo, co u¾ycie "/X 0x20" lub "/X32".
    /T file ID  Wyszukuje ID w file i przetwarza jako opcje wiersza
                poleceä. Dodatkowe opcje po tym przeˆ¥czniku
                wypeˆniaj¥ zmienne %1-%9 w ci¥gu tekstowym.

    tba         (Wci¥¾ w fazie rozwoju, wi©cej zostanie ogˆoszone)
