# Language: Polish
# Codepage: 852
# Translation: reviewed by Piotr Okrutny in Weblate, 2026-10 (human review, AI-assisted draft)
# Source: edict.pl.UTF-8; edict.pl (CP852) and edict.mz (Mazovia) are generated from it - edit only the UTF-8 file.

TITLE=Enhanced Disk Image Creation Tool, wersja %_ %s
COPYRIGHT=Copyright (c) 2018, Jerome Shidel

HELP_00="Opcje programu EDICT: "
HELP_01=
HELP_02="  /d <dysk>      okre˜la liter© stacji dysk¢w"
HELP_03="  /f <plik>      okre˜la nazw© pliku"
HELP_04="  /p <limit>     ogranicza liczb© dodatkowych przebieg¢w odczytu"
HELP_05=
HELP_06="  /t <rodzaj>    wymusza typ stacji zamiast ustawieä BIOS-u"
HELP_07="                 (0=360Kib, 1=1.2Mib, 2=720Kib, 3=1.44Mib, a=auto)"
HELP_08=
HELP_09="  /c <liczba>    wymusza liczb© cylindr¢w/˜cie¾ek (0-1023)"
HELP_0a="  /r <liczba>    wymusza liczb© stron (gˆowic) dyskietki (0-255)"
HELP_0b="  /s <liczba>    wymusza liczb© sektor¢w na ˜cie¾k© (0-63)"
HELP_0c="  /b <liczba>    wymusza liczb© bajt¢w na sektor (1-8192)"
HELP_0d=
HELP_0e="  /h             wy˜wietla pomoc"

HELP_??="  /T             testuj tylko odczyt"
HELP_??="  /w             zapisz obraz na dyskietk©"
HELP_??="  /v             weryfikuj dyskietk©"
HELP_??="  /i             tylko informacje"
HELP_??="  /o             tylko jeden sektor"
HELP_??="  /q             tryb cichy"
HELP_??="  /e             kontynuuj z istniej¥cego pliku obrazu"
HELP_??="  /m <nazwa_pliku> zamontuj plik obrazu"
HELP_??="  /u             odmontuj plik obrazu"
HELP_??="  /l             lista typ¢w dysk¢w"

INVALID=%r "Nieprawidˆowe polecenie: `" %s "'"
BAD_INT="Nieprawidˆowa warto˜† liczbowa."
BAD_VAL="Warto˜† poza zakresem."

DRIVE=Stacja %_ %c: (ID 0x %b ) %_
DRIVE_TYPE=%_ (ID 0x %b )
DRIVE_TYPE_00=nieznany typ stacji
DRIVE_TYPE_01=stacja '5.25"' 360Kib
DRIVE_TYPE_02=stacja '5.25"' 1.2Mib
DRIVE_TYPE_03=stacja '3.5"' 720Kib
DRIVE_TYPE_04=stacja '3.5"' 1.44Mib
DRIVE_TYPE_05=inny typ stacji

DRIVE_SPEC=%i %_ bajt¢w na sektor, %_ %I %_ sektor¢w na ˜cie¾k©, %_ %I %_ ˜cie¾ek, stron: %_ %I

PASS_LIMIT=Dodatkowe przebiegi odczytu dyskietki: maks. %_ %i %_
BUFFERS=%i %_ B bufora dyskietki, %_ %i %_ B bufora wynik¢w ˜cie¾ki

PASS=Przebieg odczytu dyskietki nr %_ %i. Pozostaˆo sektor¢w: %_ %i.

READ_FAST=ODCZYT —CIE½KI: %_ %i, GOWICA: %_ %i
READ_SLOW=ODCZYT —CIE½KI: %_ %i, GOWICA: %_ %i, SEKTOR: %_ %i

FAILED=Tworzenie obrazu nie powiodˆo si©.
ABORTED=Tworzenie obrazu przerwane.
COMPLETED=Tworzenie obrazu zakoäczone.
BErr=%r "Kod bˆ©du BIOS: 0x" %b %_ --> %_
BErr_01=nieprawidˆowe polecenie przekazane do sterownika
BErr_02=nie znaleziono znacznika adresu lub uszkodzony sektor
BErr_03=dyskietka zabezpieczona przed zapisem
BErr_04=nie znaleziono sektora
BErr_05=nie udaˆo si© zresetowa† dysku twardego
BErr_06=dyskietka zmieniona lub wyj©ta
BErr_07=nieprawidˆowa tablica parametr¢w dysku twardego
BErr_08=przepeˆnienie DMA
BErr_09=dost©p DMA przekracza granic© 64k
BErr_0a=nieprawidˆowy znacznik sektora dysku twardego
BErr_0b=nieprawidˆowy cylinder dysku twardego
BErr_0c=nieobsˆugiwana ˜cie¾ka
BErr_0d=nieprawidˆowa liczba sektor¢w przy formatowaniu dysku twardego
BErr_0e=dysk twardy: wykryto znacznik adresu danych steruj¥cych
BErr_0f=dysk twardy: poziom arbitra¾u DMA poza zakresem
BErr_10=bˆ¥d ECC/CRC przy odczycie dysku
BErr_11=naprawialny bˆ¥d danych dysku twardego, dane poprawione przez ECC
BErr_20=bˆ¥d kontrolera
BErr_40=bˆ¥d pozycjonowania gˆowicy
BErr_80=stacja nie jest gotowa
BErr_aa=dysk twardy nie jest gotowy
BErr_bb=niezdefiniowany bˆ¥d dysku twardego
BErr_cc=bˆ¥d zapisu na wybranym dysku twardym
BErr_e0=bˆ¥d stanu dysku twardego
BErr_ff=nie udaˆo si© odczyta† stanu (sense)
DErr=%r "Kod bˆ©du DOS: 0x" %b %_ --> %_
DErr_01=Nieprawidˆowy numer funkcji
DErr_02=Nie znaleziono pliku
DErr_03=Nie znaleziono ˜cie¾ki
DErr_04=Za du¾o otwartych plik¢w
DErr_05=Odmowa dost©pu
DErr_06=Nieprawidˆowy uchwyt
DErr_08=Za maˆo pami©ci
DErr_0f=Nieprawidˆowe okre˜lenie dysku
DErr_15=Stacja nie jest gotowa



