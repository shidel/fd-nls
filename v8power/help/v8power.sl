# Language: Slovenian
# File ending: sl
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

****************************************************************************
V8Power Tools
Copyright 2015-2024 Jerome Shidel
Izdano pod licenco GPL v2.0.
****************************************************************************

PrinaÁa moü 8-valjnega motorja pod pokrov paketnih datotek DOS.

============================================================================

Projekt V8Power Tools je zasnovan v sodelovanju z Jimom Hallom za
operacijski sistem FreeDOS(TM) (http://www.freedos.org). Njegov namen je
razÁiriti funkcionalnost skriptov, napisanih s pomoüjo paketnih datotek,
in jim zagotoviti lepÁi uporabniÁki vmesnik s poveüano funkcionalnostjo.

============================================================================

Prevajanje V8Power Tools

    Predpogoji:

        Procesor 8086 ali boljÁi.
        Video adapter EGA ali boljÁi.
        FreeDOS(TM) 1.1 (http://www.freedos.org) ali novejÁi
        NASM za DOS razliüica 2.16.01 (http://wwww.nasm.us) ali novejÁi

    Prevajanje:

        Prepriüajte se, da je imenik NASM v vaÁi specifikaciji poti.
        Prenesite najnovejÁe izvorne kode s
        http://github.com/LoopZ/V8Power
        Zaßenite skript mkV8.bat.
        Vse izvedljive datoteke bodo shranjene v novo ustvarjen imenik
        BIN.

    Za lene ljudi, kot sem jaz:

        Vnaprej prevedene razliüice so na voljo na
        http://up.lod.bz/V8Power.

============================================================================

PreizkuÁena zdrußljivost V8Power Tools

    FreeDOS 1.1+

Omejena zdrußljivost naprednih funkcij (brez podpore za paketni
"set /p"):

    MS-DOS 6.2 in 6.22
    PC-DOS 7.0, 7.01 in 2000
    DR-DOS 7.03
    DOSBox (preusmeritev v/i ali poizvedbe z uporabo stdout NE BODO
        delovale pri uporabi vgrajene lupine DOSBox. Delujejo pa
        v redu v DOSBoxu, ko se uporabi zdrußljiva lupina, kot je
        FreeCOM)
    Windows 3.11 Shell
    Windows 98 Shell in Command Line
    Windows XP SP3 Shell (razen vcursor)

============================================================================

Uporaba V8Power Tools

Tukaj je nekaj osnovnih informacij o vseh orodjih in njihovem delovanju.

    Moßnosti, vrednosti in ÁestnajstiÁka Átevila ne razlikujejo med
    velikimi in malimi ürkami /f white je enako kot /F wHIte.

    ÊestnajstiÁka Átevila imajo lahko predpono 0x, da se prepreüi
    njihova obravnava kot osnova deset. (Primer: 10 in 0x10)

    Presledki so veüinoma neobvezni. /B7/f0 je enako kot /B 7 /F 0.
    Toda ne / B7 / F0.

    ¨e ßelite v vrednosti uporabiti / ali presledke, jo dajte v
    narekovaje. Kot "Jack and/or Jill".

    Za uporabo narekovajev uporabite veü narekovajev. Kot "Jack's house"
    ali 'Say "What?"'.

    ¨e ni prepisano, veüina orodij uporablja atribut besedila na
    trenutnem mestu kazalca.

============================================================================

Tukaj je barvna tabela, ki se uporablja za vsa stikala /A, /F in /B:

    DesetiÁko   Hex         Oznaka (Ne razlikuje velike/male ürke)

    0           0x00        Black
    1           0x01        Blue
    2           0x02        Green
    3           0x03        Cyan
    4           0x04        Red
    5           0x05        Magenta
    6           0x06        Brown
    7           0x07        Gray / Grey

    (Samo ospredje /f in /a)

    8           0x08        DarkGray / DarkGrey
    9           0x09        LightBlue
    10          0x0a        LightGreen
    11          0x0b        LightCyan
    12          0x0c        LightRed
    13          0x0d        LightMagenta
    14          0x0e        Yellow
    15          0x0f        White

Veüina posameznih orodij, ki podpirajo spremembo barve, podpira tudi
spremembo nastavitve Blink/Intensity. Veüina orodij pa tega ne omenja.

    /BlinkOn    Omogoüi bit Blink/Intensity. (Zaüni utripati)
    /BlinkOff   Onemogoüi bit Blink/Intensity. (Prenehaj utripati)

============================================================================

Ukazna vrstica DOS (in paketne datoteke) je omejena na priblißno 128
znakov. To bi lahko oteßilo orodjem, kot je vecho, tiskanje veü vrstic
hkrati. Vendar pa mnoga orodja, kot so vecho, vstr itd., podpirajo
nalaganje besedilnih virov iz datoteke z uporabo stikala /T. Na sploÁno
se stikalo /T uporablja za zagotavljanje besedila "Prevoda" za paketno
opravilo. Ko je naloßeno iz datoteke, je orodje V8Power Tools omejeno
na 10 kilobajtov na vrstico. Poleg tega bo orodje prezrlo vse preostalo
besedilo v tej vrstici. 10kb je enako 5 zaslonom ali veü besedila in je
pretirano.
