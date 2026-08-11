# Language: Polish
# File ending: pl
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vinfo [options]
Og¢lne narz©dzie informacji o systemie.
    [none]      Nic nie robi.
    /V          Tryb szczeg¢ˆowy.
    /D a        Testuje stan dysku.
                Zwraca nast©puj¥ce errorlevel:
                   15 - Brak
                    5 - Nie sformatowany (dla DOS)
                    4 - Dysk sieciowy (nietestowany)
                    3 - CD/DVD-ROM (tylko MSCDEX, wi©kszo˜† zwraca 15)
                    2 - No˜nik wymienny (jak dyskietka)
                    1 - (Zarezerwowany)
                    0 - Brak specjalnych warunk¢w
    /M          Zwraca typ maszyny (mo¾e nie dziaˆa† w przyszˆo˜ci)
                Zwraca nast©puj¥ce errorlevel:
                    0 - Nieznany, normalny lub natywny sprz©t 8086.
                    1 - 80186
                    2 - 80286
                    3 - 80386
                    4 - 80486
                    5 - 80586
                    6 - 80686 lub lepszy
                  101 - DOSBox.
                  102 - QEMU.
                  103 - VirtualBox.
                  104 - VMware.
                  105 - Bochs.
    /P          Tak samo jak przeˆ¥cznik /M, ale pomija test maszyn
                wirtualnych.
    /T          Tak samo jak przeˆ¥cznik /M, ale obejmuje og¢lny test
                emulatora.
                  200 - Og¢lny, wykryto inny emulator.
    /E n        Testuj fizyczny dysk twardy #n (1, 2, itp.) pod k¥tem MBR
                    0 - MBR jest caˆkowicie pusty
                    5 - MBR zawiera tylko informacje o partycjach
                   10 - MBR zawiera kod rozruchowy
                  101 - Wyst¥piˆ bˆ¥d
    /G          Grafika
                    0 - Nieznana
                    1 - MDA
                    2 - HGC
                    3 - HGCPlus
                    4 - InColor
                    5 - CGA
                    6 - EGA
                    7 - MCGA
                    8 - VGA
                    9 - VESA/SuperVGA

Wi©cej opcji, kt¢re s¥ przydatne gˆ¢wnie dla programist¢w i R&D. S¥
dost©pne od jakiego˜ czasu, ale oficjalnie (przeze mnie) nie s¥ cz©˜ci¥
API V8Power Tools i mog¥ ulec zmianie lub usuni©ciu w dowolnym momencie.
Ale poniewa¾ u¾ywam niekt¢rych z nich, mog¥ sta† si© osobnymi programami.
    ASCII       Wy˜wietla caˆ¥ tabel© ASCII
    RAM         Zrzuca caˆ¥ pami©† konwencjonaln¥ do StdOut.
    /C * Wyprowadza warto˜ci ASCII dla reszty wiersza poleceä
    /R string   Szuka string w caˆej pami©ci konwencjonalnej
    /U string   Szuka string w pami©ci (od a000:0000) bez uwzgl©dniania
                wielko˜ci liter
    /J pos * Zwraca warto˜† ASCII znaku na pos w reszcie wiersza
                poleceä jako errorlevel. 0 jest zwracane, je˜li pozycji
                nie znaleziono.
    /K pos * Podobnie jak /J, ale najpierw zamienione na wielkie litery.
    tba         (Wci¥¾ w fazie rozwoju, wi©cej zostanie ogˆoszone)
