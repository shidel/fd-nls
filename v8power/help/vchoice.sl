# Language: Slovenian
# File ending: sl
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vchoice [options]

Izberite moßnost.

Vrne errorlevel izbrane moßnosti glede na Átevilko njenega vnosa. Ne
ürke/Átevilke izbire. Na primer, üe je izbran drugi element, vrne
errorlevel 2. Ne glede na katero koli predpono (npr. C, 1, R itd.).
Prav tako osebno priporoüam uporabo auto za vsak niz izbir, ki jim
predpono dodate s ürko ali Átevilko.

    [none]      Izvedi z vsemi samodejnimi privzetimi
                nastavitvami.
    /A n        Nastavi atribut besedila na n za izbrani element.
    /B color    Nastavi barvo ozadja na color (ali vrednost) za
                izbrani element.
    /F color    Nastavi barvo besedila na color (ali vrednost) za
                izbrani element.
    /D n        Predhodno izberi element n kot privzeto izbiro.
    type        Vrsta neposredne izbire s tipko.
                    off     Izbira samo s smernimi tipkami.
                    auto    Zazna znake za neposreden skok. (Privzeto)
                    alpha   Skok na izbire z uporabo A-Z.
                    digit   Skok na izbire z uporabo 1-9 (+0).
    /Q          Poizvedba za rezultat. Ko je izbira opravljena,
                bo njeno besedilo poslano na STDOUT.
    /T seconds  Zakasnitev v sekundah, preden se privzeti element
                samodejno izbere (0-3600). UpoÁtevajte, da tudi üe
                se uporabnik premakne na drug element, bo ob
                izteku üasa izbran prvotni privzeti element.
    /P n        Uporabi naüin anketiranja in predhodno izberi
                element n kot trenutno izbiro. Opomba: vsaka
                sprememba izbire bo zapustila vchoice in vrnila
                100+ Átevilko trenutne izbire.
    /K n        Uporabi n namesto znaka okvirja za zaznavanje mej.
    CTRL-C      ¨e je podano in pritisnete Control-C, se bo
                zapustilo z errorlevel 200.

    tba         (Êe vedno v razvoju, veü bo objavljeno)
