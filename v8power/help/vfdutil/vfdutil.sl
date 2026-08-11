# Language: Slovenian
# File ending: sl
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vfdutil [options]

Orodje za datoteke in imenike.

    [none]      Ne naredi niüesar.
    /D file     Izraüuna in izpiÁe ürko pogona za file na STDOUT.
    /P file     Izraüuna in izpiÁe pot za file na STDOUT.
    /C          Uporabite pred /D ali /P za spremembo pogona ali poti
                brez izpisa besedila.
    /X          Uporabite pred /D ali /P za vrnitev errorlevel 1-26
                ürke pogona.
    /F file     Izraüuna in izpiÁe celotno ime datoteke na STDOUT.
    /B file     Izraüuna in izpiÁe ime datoteke s konünico na STDOUT.
    /N file     Izraüuna in izpiÁe ime datoteke brez konünice na STDOUT.
    /E file     Izraüuna in izpiÁe konünico datoteke na STDOUT.
    /U template Izraüuna in izpiÁe edinstveno ime datoteke/imenika na
                podlagi template na STDOUT. Pogon in pot morata obstajati.
                Primer: "vfdutil /u C:\TEMP\TEST????.$$$"
    /S filespec IÁüe filespec v PATH in izpiÁe vse ujemajoüe se
                datoteke na STDOUT. Trenutni imenik se ne preiskuje.
                ¨e filespec ni najden v poti, se konüa z errorlevel 1.
    /T filespec Tako kot /S, le da se vrne samo errorlevel.
    /M location IzpiÁe koliüino prostega prostora na disku za location.
    /R required Uporabite skupaj z /M, da preverite, ali je na voljo
                koliüina required prostora. Required je omejen na 65535.
                Vendar se mu lahko doda B, K, M itd. ¨e ni dovolj
                prostora, bo vrnil errorlevel 1.
    /A path     Preveri, ali v path obstajajo datoteke ali imeniki,
                0=imenik obstaja in ni prazen, ostale vrednosti so
                kode napak DOS iz preizkusa.

    tba         (Êe vedno v razvoju, veü bo objavljeno)
