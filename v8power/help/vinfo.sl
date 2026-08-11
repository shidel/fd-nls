# Language: Slovenian
# File ending: sl
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vinfo [options]
SploÁno orodje za sistemske informacije.
    [none]      Ne naredi niüesar.
    /V          Podroben naüin.
    /D a        Testira stanje pogona.
                Vrne te errorlevel:
                   15 - Ni prisotno
                    5 - Ni formatirano (za DOS)
                    4 - Omreßni pogon (netestirano)
                    3 - CD/DVD-ROM (samo MSCDEX, veüina javi 15)
                    2 - Odstranljiv medij (kot disketa)
                    1 - (Rezervirano)
                    0 - Ni posebnih pogojev
    /M          Vrne tip raüunalnika (lahko odpove v prihodnosti)
                Vrne te errorlevel:
                    0 - Neznan, normalen ali nativni 8086 strojni del.
                    1 - 80186
                    2 - 80286
                    3 - 80386
                    4 - 80486
                    5 - 80586
                    6 - 80686 ali boljÁi
                  101 - DOSBox.
                  102 - QEMU.
                  103 - VirtualBox.
                  104 - VMware.
                  105 - Bochs.
    /P          Enako kot stikalo /M, vendar izkljuüi test za
                virtualni stroj.
    /T          Enako kot stikalo /M, vendar vkljuüuje sploÁni test
                emulatorja.
                  200 - SploÁno, zaznan drug emulator.
    /E n        Preveri fiziüni trdi disk #n (1, 2, itd.) za stanje MBR
                    0 - MBR je popolnoma prazen
                    5 - MBR vsebuje le informacije o particijah
                   10 - MBR vsebuje zagonsko kodo
                  101 - PriÁlo je do napake
    /G          Grafika
                    0 - Neznana
                    1 - MDA
                    2 - HGC
                    3 - HGCPlus
                    4 - InColor
                    5 - CGA
                    6 - EGA
                    7 - MCGA
                    8 - VGA
                    9 - VESA/SuperVGA

Veü moßnosti, ki so veüinoma uporabne za programerje in R&R. Na voljo
so ße nekaj üasa, vendar uradno (z moje strani) niso del V8Power Tools
API in se lahko kadarkoli spremenijo ali odstranijo. Ker pa nekatere
uporabljam, bodo morda postala samostojna orodja.
    ASCII       Prikaße celotno ASCII tabelo
    RAM         Odloßi celoten konvencionalni pomnilnik na StdOut.
    /C * IzpiÁe vrednosti ASCII za preostanek ukazne vrstice
    /R string   IÁüe string po celotnem konvencionalnem pomnilniku
    /U string   IÁüe string v pomnilniku (od a000:0000) brez razlikovanja
                velikih in malih ürk
    /J pos * Vrne vrednost ASCII znaka na pos v preostanku ukazne
                vrstice kot errorlevel. ¨e poloßaj ni najden,
                se vrne 0.
    /K pos * Enako kot /J, vendar najprej pretvorjeno v velike ürke.
    tba         (Êe vedno v razvoju, veü bo objavljeno)
