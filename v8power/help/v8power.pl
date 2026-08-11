# Language: Polish
# File ending: pl
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

****************************************************************************
V8Power Tools
Copyright 2015-2024 Jerome Shidel
Wydane na licencji GPL v2.0 License.
****************************************************************************

Umieszczenie mocy 8-cylindrowego silnika pod mask¥ plik¢w wsadowych DOS.

============================================================================

Projekt V8Power Tools jest projektowany we wsp¢ˆpracy z
Jim Hall dla systemu operacyjnego FreeDOS(TM) (http://www.freedos.org).
Ma na celu rozszerzenie funkcjonalno˜ci skrypt¢w pisanych przy u¾yciu
plik¢w wsadowych i zapewnienie im lepiej wygl¥daj¥cego interfejsu
u¾ytkownika ze zwi©kszon¥ funkcjonalno˜ci¥.

============================================================================

Kompilacja V8Power Tools

    Wymagania wst©pne:

        Procesor 8086 lub lepszy.
        Karta graficzna EGA lub lepsza.
        FreeDOS(TM) 1.1 (http://www.freedos.org) lub nowszy
        NASM dla DOS w wersji 2.16.01 (http://wwww.nasm.us) lub nowszy

    Kompilacja:

        Upewnij si©, ¾e katalog NASM znajduje si© w Twojej ˜cie¾ce.
        Pobierz najnowsze «r¢dˆa z http://github.com/LoopZ/V8Power
        Uruchom skrypt mkV8.bat.
        Wszystkie pliki wykonywalne zostan¥ umieszczone w nowo utworzonym
        katalogu BIN.

    Dla leniwych, takich jak ja:

        Skompilowane wersje s¥ dost©pne na
        http://up.lod.bz/V8Power.

============================================================================

Przetestowana kompatybilno˜† V8Power Tools

    FreeDOS 1.1+

Ograniczona kompatybilno˜† zaawansowanych funkcji (brak obsˆugi "set /p"
w plikach wsadowych):

    MS-DOS 6.2 i 6.22
    PC-DOS 7.0, 7.01 i 2000
    DR-DOS 7.03
    DOSBox (przekierowanie we/wy lub zapytania z u¾yciem stdout NIE
        b©d¥ dziaˆa† przy u¾yciu wbudowanej powˆoki DOSBox. Jednak
        dziaˆaj¥ dobrze w DOSBox, gdy u¾ywana jest kompatybilna powˆoka,
        taka jak FreeCOM)
    Windows 3.11 Shell
    Windows 98 Shell i Command Line
    Windows XP SP3 Shell (z wyj¥tkiem vcursor)

============================================================================

Korzystanie z V8Power Tools

Oto kilka podstawowych informacji na temat wszystkich narz©dzi i ich
dziaˆania.

    Opcje, warto˜ci i liczby szesnastkowe nie rozr¢¾niaj¥ wielko˜ci liter
    /f white to to samo co /F wHIte.

    Liczby szesnastkowe mog¥ by† poprzedzone prefiksem 0x, aby zapobiec
    traktowaniu ich jako dziesi©tnych. (Przykˆad: 10 i 0x10)

    Spacje s¥ w wi©kszo˜ci opcjonalne. /B7/f0 to to samo co /B 7 /F 0.
    Ale nie / B7 / F0.

    Aby u¾y† / lub spacji w warto˜ci, umie˜† j¥ w cudzysˆowie. Jak
    "Jack and/or Jill".

    U¾yj wielu cudzysˆow¢w, aby u¾y† cudzysˆow¢w. Jak "Jack's house"
    lub 'Say "What?"'.

    O ile nie zostan¥ nadpisane, wi©kszo˜† narz©dzi u¾ywa atrybutu
    tekstu w bie¾¥cej lokalizacji kursora.

============================================================================

Oto tabela kolor¢w u¾ywana dla wszystkich przeˆ¥cznik¢w /A, /F i /B:

    Dziesi©tny  Hex         Etykieta (Nie rozr¢¾nia wielk. liter)

    0           0x00        Black
    1           0x01        Blue
    2           0x02        Green
    3           0x03        Cyan
    4           0x04        Red
    5           0x05        Magenta
    6           0x06        Brown
    7           0x07        Gray / Grey

    (Tylko pierwszy plan /f i /a)

    8           0x08        DarkGray / DarkGrey
    9           0x09        LightBlue
    10          0x0a        LightGreen
    11          0x0b        LightCyan
    12          0x0c        LightRed
    13          0x0d        LightMagenta
    14          0x0e        Yellow
    15          0x0f        White

Wi©kszo˜† poszczeg¢lnych narz©dzi obsˆuguj¥cych zmian© koloru
obsˆuguje r¢wnie¾ zmian© ustawienia Blink/Intensity. Jednak wi©kszo˜†
narz©dzi o tym nie wspomina.

    /BlinkOn    Wˆ¥cz bit Blink/Intensity. (Rozpocznij miganie)
    /BlinkOff   Wyˆ¥cz bit Blink/Intensity. (Zatrzymaj miganie)

============================================================================

Wiersz poleceä DOS (i pliki wsadowe) jest ograniczony do okoˆo 128
znak¢w. Mo¾e to utrudni† narz©dziom takim jak vecho drukowanie wielu
linii na raz. Jednak wiele narz©dzi, takich jak vecho, vstr itp.
obsˆuguje ˆadowanie zasob¢w tekstowych z pliku za pomoc¥ przeˆ¥cznika /T.
Og¢lnie przeˆ¥cznik /T sˆu¾y do dostarczania tekstu "Tˆumaczenia"
dla zadania wsadowego. Po zaˆadowaniu z pliku narz©dzie V8Power Tools
jest ograniczone do 10 kilobajt¢w na lini©. Poza tym narz©dzie zignoruje
wszelki pozostaˆy tekst w tej linii. 10 kb to odpowiednik 5 ekran¢w lub
wi©cej tekstu i jest przesad¥.
