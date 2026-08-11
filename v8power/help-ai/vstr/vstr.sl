# Language: Slovenian
# File ending: sl
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vstr [options]

Preprosto orodje za obdelavo nizov. Izpiçe rezultate na STDOUT.

    /N          Ne zapiçi CRLF, ko konŸaç.
    /U          Vhodni filter: Pretvori v velike Ÿrke.
    /D          Vhodni filter: Pretvori v male Ÿrke.
    /B          Vhodni filter: Prezri prazne vrstice.
    /I          Vhodni filter: Prezri zamike.
    /C code     Zapiçi kodo znaka ASCII.
    /R times    Ponovi naslednji zapis times krat. (1-65535)
    /L line     Vrni samo to line iz standardnega vhoda. (0-65535)
                (Opomba: vline /L TOTAL bo vrnil skupno çtevilo vrstic.)
                Prav tako bo dodajanje :n izpisalo n vrstic.
    /S s1 s2    PoiçŸi in zamenjaj vse pojavitve s1 s s2.
    /F s1 s2    Nastavi loŸilo na s1 in vrni samo pozicijo polja ali
                obseg s2.
    /A code s2  Vrni s code loŸeno pozicijo polja ali obseg s2. (tab=0x09)
    /P s1       Natisni besedilo s1.
    /T file ID  PoiçŸi ID v file in obdelaj kot mo§nosti ukazne vrstice.
                Vse dodatne mo§nosti, ki sledijo temu stikalu, se
                uporabijo za polnjenje spremenljivk %1-%9 v nizu.

    tba         (æe vedno v razvoju, veŸ bo objavljeno)
