# Language: Slovenian
# File ending: sl
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vtest [opcije]

Preizkuçevalec stanja. Lahko izvede razliŸne preglede, ki se lahko
zreducirajo na TRUE ali FALSE. Rezultat se prenese kot errorlevel.
Ko je odgovor TRUE, se vrne niŸla. ¬e je odgovor FALSE, se vrne 1.
Uporaba nepravilne sintakse in druge podobne napake bodo vrnile
izhodno kodo 100.

Testi:

    val1 /eq val2    vrednosti so enake
    val1 /ne val2    vrednosti niso enake
    val1 /ge val2    val1 je veŸji ali enak val2
    val1 /le val2    val1 je manjçi ali enak val2
    val1 /gt val2    val1 je veŸji od val2
    val1 /lt val2    val1 je manjçi od val2
    string           niz ni null
    /n string        niz ni null
    /z string        niz je null
    /v number        çtevilka je veljavna
    /f file          datoteka obstaja
    /d dir           pot obstaja
    /e file ali dir  katera koli vrsta vnosa v imenik

Operatorji izrazov:

    /c expression    Vsili obravnavo vrednosti kot niza in izvede
                     primerjavo, obŸutljivo na velike/male Ÿrke.
    /i expression    Vsili obravnavo vrednosti kot niza in izvede
                     primerjavo, neobŸutljivo na velike/male Ÿrke.
    exp1 /and exp2   Oba izraza morata biti TRUE.
    exp1 /or /exp2   Kateri koli izraz je lahko TRUE.
    /not expression  Obrni rezultat izraza.

Druge opcije:

    /tf              Prika§i TRUE ali FALSE, ko konŸa.

Privzeto primerjava vrednosti temelji na njihovi vrsti. ¬e sta obe
vrednosti çtevilki (predstavljeni v desetiçkem ali çestnajstiçkem
sistemu), se primerjava izvede matematiŸno. V nasprotnem primeru
se izvede abecedna primerjava, neobŸutljiva na velike/male Ÿrke.
Uporaba opcije /c ali /i vsili besedilno primerjavo ne glede na
podatkovni tip vrednosti. Prazna vrednost nima numeriŸne vrednosti in
vsili primerjavo obeh elementov kot nizov.

Osnovni primeri:

Datoteka z imenom TEST.TXT obstaja:          vtest /f TEST.TXT
Datoteka z imenom TEST.TXT ne obstaja:       vtest /not /f TEST.TXT
Obstaja datoteka A.TXT ali B.TXT:            vtest /f A.TXT /or /f B.TXT
Ne obstaja niti datoteka A.TXT niti B.TXT:   vtest /not /f A.TXT /and /not
                                             /f B.TXT
%1 je çtevilka:                              vtest /v %1
%1 je çtevilka od 1 do 10:                   vtest /v %1 /and 1 /le %1
                                             /le 10

¬eprav opcije /f, /d in /e testirajo vnose datotek ali imenikov,
lahko uporabljajo modifikatorje izrazov, kot so /not, /c in /i, in
podpirajo tudi nadomestne znake. Ko je datoteŸni sistem preverjen
glede obstoja ujemajoŸega se vnosa, postanejo vrednost prvega
ujemajoŸega se elementa datoteŸnega sistema in jih je mogoŸe
obravnavati kot vrednosti. ¬e ni najdenega nobenega ujemajoŸega
se vnosa, vrednost postane null in bo najverjetneje povzroŸila, da
se izraz oceni kot FALSE.

Pri primerjavi dveh vrednosti, Ÿe vsaka vrednost vsebuje veljavno
çtevilko (desetiçko ali çestnajstiçko), se bo primerjava izvedla
çtevilŸno. ¬e ena od vrednosti ni çtevilka, se bo primerjala abecedno.
¬eprav je mogoŸe meçati podatkovne tipe v nizu primerjav, je rezultat
lahko te§ko predvideti in se na sploçno ne priporoŸa.

Narekovaji se NE uporabljajo za nize s presledki. Znaki za narekovaje
se vedno obravnavajo kot obiŸajni znaki besedila. RazŸlenjevalnik
ukazne vrstice bo loŸil nize samo, ko zazna SWITCH_CHAR (obiŸajno /).
To je sprejemljiv primer:

vtest a, b and c /lt d, e and f /and 6 /gt 5 /lt 7

Uporaba narekovajev za preprosto ovijanje nizov bo povzroŸila napaŸne
rezultate. Naslednji primer bo VEDNO povzroŸil TRUE ne glede na
vrednost %1:

vtest /n "%1"

Poleg tega, Ÿe niz vsebuje SWITCH_CHAR, se bo del, ki sledi SWITCH_CHAR,
razlagal kot opcija programa, razen Ÿe je ube§an z vstavitvijo dodatnega
SWITCH_CHAR. Na primer, "Y/N" bi se razlagalo kot niz "Y" in nato opcija
"/N". Za razlago obojega kot niza bi bilo "Y//N". Na primer:

vtest /n y//n
