# Language: Polish
# File ending: pl
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vfdutil [options]

Narz©dzie do obsˆugi plik¢w i katalog¢w.

    [none]      Nic nie robi.
    /D file     Oblicza i wypisuje liter© dysku dla file na STDOUT.
    /P file     Oblicza i wypisuje ˜cie¾k© dla file na STDOUT.
    /C          U¾yj przed /D lub /P, aby zmieni† dysk lub ˜cie¾k© bez
                tekstowego wyj˜cia.
    /X          U¾yj przed /D lub /P, aby zwr¢ci† errorlevel 1-26
                dla litery dysku.
    /F file     Oblicza i wypisuje peˆn¥ nazw© pliku na STDOUT.
    /B file     Oblicza i wypisuje nazw© pliku z rozszerzeniem na STDOUT.
    /N file     Oblicza i wypisuje nazw© pliku bez rozszerzenia na STDOUT.
    /E file     Oblicza i wypisuje rozszerzenie pliku na STDOUT.
    /U template Oblicza i wypisuje unikaln¥ nazw© pliku/kat. na podstawie
                template na STDOUT. Dysk i ˜cie¾ka musz¥ istnie†.
                Przykˆad: "vfdutil /u C:\TEMP\TEST????.$$$"
    /S filespec Szuka filespec w PATH i wypisuje wszystkie pasuj¥ce
                pliki na STDOUT. Bie¾¥cy katalog nie jest przeszukiwany.
                Je˜li filespec nie zostanie znaleziona, koäczy dziaˆanie
                z errorlevel 1.
    /T filespec Tak jak /S, z t¥ r¢¾nic¥, ¾e zwracany jest tylko errorlevel.
    /M location Wypisuje ilo˜† wolnego miejsca na dysku dla location.
    /R required U¾yj w poˆ¥czeniu z /M, aby przetestowa†, czy dost©pna
                jest required ilo˜† miejsca. Required jest ograniczone do
                65535. Ale mo¾na doda† B, K, M itp. Zwr¢ci errorlevel 1,
                gdy nie b©dzie wystarczaj¥co du¾o miejsca.
    /A path     Testuje, czy w path istniej¥ jakie˜ pliki lub katalogi,
                0=katalog istnieje i nie jest pusty, inne warto˜ci to
                kody bˆ©d¢w DOS z testu.

    tba         (Wci¥¾ w fazie rozwoju, wi©cej zostanie ogˆoszone)
