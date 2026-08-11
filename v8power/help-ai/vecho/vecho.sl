# Language: Slovenian
# File ending: sl
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vecho [options] [text]

Prika§e besedilo na zaslonu.

    [none]      Izvede povratek voziŸka in pomik vrstice na zaslonu.
    text        Zapiçe besedilo na zaslon.
    /A n        Nastavi atribut besedila na n.
    /B color    Nastavi atribut ozadja besedila na color (ali
                vrednost).
    /F color    Nastavi atribut ospredja besedila na color (ali
                vrednost).
    /BlinkOn    OmogoŸi bit utripanja/intenzivnosti. (ZaŸne utripati)
    /BlinkOff   OnemogoŸi bit utripanja/intenzivnosti. (Neha utripati)
    /N          Ko konŸa, ne zapiçe CRLF.
    /P          Zdaj izvede CRLF.
    /S +        Vstavi presledek med parametre. (PRIVZETO)
    /S -        Ne doda presledka med veŸ parametrov.
    /C code     Zapiçe kodo znaka ASCII.
    /R times    Ponovi naslednji zapis times krat. (1-65535)
    /I          Zapiçe besedilo, ki morda Ÿaka iz naprave STDIN.
    /G          Zapiçe besedilo globalno in prezre vse okvirje.
    /L          Zapiçe besedilo lokalno glede na okvirje. (PRIVZETO)
    /K n        Uporabi n namesto znaka okvirja za zaznavanje mej.
    /X code     Izbriçe preostanek vrstice s kodo ASCII, vendar ne
                premakne kazalca.
    /E          Enako kot pri uporabi "/X 0x20" ali "/X32".
    /T file ID  PoiçŸe ID v file in ga obdela kot mo§nosti ukazne
                vrstice. Dodatne mo§nosti po tem stikalu zapolnijo
                spremenljivke %1-%9 v besedilnem nizu.

    tba         (æe vedno v razvoju, veŸ bo objavljeno)
