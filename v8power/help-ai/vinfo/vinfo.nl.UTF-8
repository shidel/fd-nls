# Language: Dutch
# File ending: nl
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vinfo [options]
Algemeen hulpprogramma voor systeeminformatie.
    [none]      Doet niets.
    /V          Uitgebreide modus.
    /D a        Test de status van het station.
                Geeft deze errorlevel terug:
                   15 - Niet aanwezig
                    5 - Niet geformatteerd (voor DOS)
                    4 - Netwerkstation (ongetest)
                    3 - CD/DVD-ROM (alleen MSCDEX, meeste melden 15)
                    2 - Verwisselbare media (zoals diskette)
                    1 - (Gereserveerd)
                    0 - Geen speciale voorwaarden
    /M          Geeft machinetype terug (kan in de toekomst breken)
                Geeft deze errorlevel terug:
                    0 - Onbekend, normale of native 8086-hardware.
                    1 - 80186
                    2 - 80286
                    3 - 80386
                    4 - 80486
                    5 - 80586
                    6 - 80686 of beter
                  101 - DOSBox.
                  102 - QEMU.
                  103 - VirtualBox.
                  104 - VMware.
                  105 - Bochs.
    /P          Zoals /M-schakelaar, maar sluit test voor virtuele
                machines uit.
    /T          Zoals /M-schakelaar, maar inclusief algemene emulatortest.
                  200 - Algemeen, andere emulator gedetecteerd.
    /E n        Test fysieke harde schijf #n (1, 2, etc) op MBR-status
                    0 - MBR is volledig leeg
                    5 - MBR bevat alleen partitie-informatie
                   10 - MBR bevat een opstartcode
                  101 - Fout opgetreden
    /G          Grafische kaart
                    0 - Onbekend
                    1 - MDA
                    2 - HGC
                    3 - HGCPlus
                    4 - InColor
                    5 - CGA
                    6 - EGA
                    7 - MCGA
                    8 - VGA
                    9 - VESA/SuperVGA

Meer opties, meestal alleen nuttig voor programmeurs en R&D. Ze zijn al
een tijdje beschikbaar, maar zijn niet officieel (door mij) onderdeel
van de V8Power Tools API en kunnen op elk moment veranderen of worden
verwijderd. Maar omdat ik ze gebruik, krijgen ze later misschien een
eigen hulpprogramma.
    ASCII       Toon volledige ASCII-tabel
    RAM         Dump al het conventionele geheugen naar StdOut.
    /C *        Voer ASCII-waarden uit voor rest van opdrachtregel
    /R string   Doorzoek al het conventionele geheugen naar string
    /U string   Doorzoek geheugen (vanaf a000:0000) naar string zonder
                hoofdlettergevoeligheid
    /J pos *    Geef ASCII-waarde van teken op pos in rest van
                opdrachtregel als errorlevel. 0 wordt geretourneerd
                als de positie niet is gevonden.
    /K pos *    Hetzelfde als /J, maar eerst omgezet naar hoofdletters.
    tba         (Nog in ontwikkeling, meer wordt aangekondigd)
