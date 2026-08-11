# Language: Polish
# File ending: pl
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vtest [opcje]

Tester stanu. Mo¾e wykonywa† r¢¾ne kontrole, kt¢re mo¾na sprowadzi†
do TRUE lub FALSE. Wynik jest przekazywany jako errorlevel. Gdy
odpowied« to TRUE, zwracane jest zero. Je˜li odpowied« to FALSE,
zwracane jest 1. U¾ycie niewˆa˜ciwej skˆadni i inne podobne bˆ©dy
zwr¢c¥ kod wyj˜cia 100.

Testy:

    val1 /eq val2    warto˜ci s¥ r¢wne
    val1 /ne val2    warto˜ci nie s¥ r¢wne
    val1 /ge val2    val1 jest wi©ksze lub r¢wne val2
    val1 /le val2    val1 jest mniejsze lub r¢wne val2
    val1 /gt val2    val1 jest wi©ksze ni¾ val2
    val1 /lt val2    val1 jest mniejsze ni¾ val2
    string           ci¥g znak¢w nie jest null
    /n string        ci¥g znak¢w nie jest null
    /z string        ci¥g znak¢w jest null
    /v number        liczba jest prawidˆowa
    /f file          plik istnieje
    /d dir           ˜cie¾ka istnieje
    /e file lub dir  dowolny typ wpisu katalogu

Operatory wyra¾eä:

    /c expression    Wymu˜ traktowanie warto˜ci jako ci¥gu znak¢w i
                     wykonaj por¢wnanie uwzgl©dniaj¥ce wielko˜† liter.
    /i expression    Wymu˜ traktowanie warto˜ci jako ci¥gu znak¢w i
                     wykonaj por¢wnanie ignoruj¥ce wielko˜† liter.
    exp1 /and exp2   Oba wyra¾enia musz¥ by† TRUE.
    exp1 /or /exp2   Dowolne wyra¾enie mo¾e by† TRUE.
    /not expression  Odwr¢† wynik wyra¾enia.

Inne opcje:

    /tf              Wy˜wietl TRUE lub FALSE po zakoäczeniu.

Domy˜lnie por¢wnywanie warto˜ci opiera si© na ich typie. Je˜li obie
warto˜ci s¥ liczb¥ (reprezentowan¥ w systemie dziesi©tnym lub
szesnastkowym), por¢wnanie zostanie wykonane matematycznie. W
przeciwnym razie zostanie wykonane por¢wnanie alfabetyczne ignoruj¥ce
wielko˜† liter. U¾ycie opcji /c lub /i wymusi por¢wnanie tekstowe
niezale¾nie od typu danych warto˜ci. Pusta warto˜† nie ma warto˜ci
liczbowej i wymusi por¢wnywanie dw¢ch element¢w jako ci¥g¢w znak¢w.

Podstawowe przykˆady:

Plik o nazwie TEST.TXT istnieje:             vtest /f TEST.TXT
Plik o nazwie TEST.TXT nie istnieje:         vtest /not /f TEST.TXT
Istnieje plik A.TXT lub B.TXT:               vtest /f A.TXT /or /f B.TXT
Nie istnieje ¾aden plik A.TXT ani B.TXT:     vtest /not /f A.TXT /and /not
                                             /f B.TXT
%1 to liczba:                                vtest /v %1
%1 to liczba od 1 do 10:                     vtest /v %1 /and 1 /le %1
                                             /le 10

Chocia¾ opcje /f, /d i /e sprawdzaj¥ wpisy plik¢w lub katalog¢w, mog¥
u¾ywa† modyfikator¢w wyra¾eä, takich jak /not, /c i /i, a tak¾e
obsˆuguj¥ symbole wieloznaczne. Po sprawdzeniu systemu plik¢w pod
k¥tem istnienia pasuj¥cego wpisu staj¥ si© one warto˜ci¥ pierwszego
pasuj¥cego elementu systemu plik¢w i mog¥ by† traktowane jako
warto˜ci. Je˜li nie zostanie znaleziony ¾aden pasuj¥cy wpis, warto˜†
staje si© pusta (null) i najprawdopodobniej spowoduje, ¾e wyra¾enie
zostanie ocenione jako FALSE.

Podczas wykonywania por¢wnania dw¢ch warto˜ci, je˜li ka¾da z nich
zawiera prawidˆow¥ liczb© (dziesi©tn¥ lub szesnastkow¥), por¢wnanie
zostanie wykonane numerycznie. Je˜li kt¢rakolwiek warto˜† nie jest
liczb¥, zostanie por¢wnana alfabetycznie. Chocia¾ w serii por¢wnaä
mo¾na miesza† typy danych, wynik mo¾e by† trudny do przewidzenia i
og¢lnie nie jest to zalecane.

Cudzysˆowy NIE s¥ u¾ywane w przypadku ci¥g¢w ze spacjami. Znaki
cudzysˆowu s¥ zawsze traktowane jako normalne znaki tekstowe. Parser
wiersza poleceä rozdzieli ci¥gi znak¢w tylko po wykryciu SWITCH_CHAR
(zwykle /). To jest dopuszczalny przykˆad:

vtest a, b and c /lt d, e and f /and 6 /gt 5 /lt 7

U¾ycie cudzysˆowu do prostego zawijania ci¥g¢w da bˆ©dne wyniki.
Poni¾szy przykˆad ZAWSZE zwr¢ci warto˜† TRUE niezale¾nie od warto˜ci %1:

vtest /n "%1"

Co wi©cej, je˜li ci¥g znak¢w zawiera SWITCH_CHAR, cz©˜† po SWITCH_CHAR
zostanie zinterpretowana jako opcja programu, chyba ¾e zostanie u¾yta
sekwencja ucieczki poprzez wstawienie dodatkowego SWITCH_CHAR. Na
przykˆad "Y/N" zostaˆoby zinterpretowane jako ci¥g "Y", a nast©pnie opcja
"/N". Aby zinterpretowa† oba jako ci¥g, nale¾aˆoby wpisa† "Y//N". Na
przykˆad:

vtest /n y//n
