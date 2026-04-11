# Language: Polish
# File ending: PL
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

	Dokumentacja u¾ytkownika programu Free-DOS MODE

	(c) Copyright 1994-1995 K. Heidenstrom.

	Zmiany:

	KH.19941231.001  (MODE 1.0.0)  Pierwsza wersja
	KH.19950116.002  (MODE 1.0.2)  Dodano dokumentacj© switchar
	KH.19950520.003  (MODE 1.0.3)  Brak zmian w funkcjonalno˜ci
	KH.19950805.004  (MODE 1.0.4)  Dodano opcje modyfikator¢w (shift-state)


1.  INFORMACJE PRAWNE

	Ten program jest chroniony prawem autorskim (Copyright 1994-1995)
	przez K. Heidenstroma. Zostaˆ napisany specjalnie dla projektu
	Free-DOS. Z autorem mo¾na si© skontaktowa† pod adresem
	kheidens@actrix.gen.nz lub poczt¥ tradycyjn¥:
	K. Heidenstrom c/- P.O. Box 27-103, Wellington, New Zealand.

	Ten program jest wolnym oprogramowaniem. Mo¾esz go rozpowszechnia†
	i/lub modyfikowa† zgodnie z warunkami Powszechnej Licencji Publicznej
	GNU (GNU General Public License) opublikowanej przez Free Software
	Foundation; w wersji 2 tej licencji lub (wedˆug wyboru) dowolnej
	p¢«niejszej wersji.

	Program jest rozpowszechniany z nadziej¥, ¾e b©dzie u¾yteczny, ale
	bez ¾adnej gwarancji, w tym domniemanej gwarancji przydatno˜ci
	handlowej lub do okre˜lonego celu. W ¾adnym wypadku autor nie
	b©dzie odpowiedzialny za jakiekolwiek szkody zwi¥zane z u¾ywaniem
	tego programu. Wi©cej szczeg¢ˆ¢w w licencji GNU GPL.

	Kopia licencji GNU General Public License powinna zosta† dostarczona
	razem z tym programem; je˜li nie, napisz do Free Software
	Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

2.  FUNKCJE I SKADNIA

	Program MODE wykonuje sze˜† oddzielnych funkcji, kt¢re zostaˆy
	opisane poni¾ej.

2.1.  USTAWIANIE TRYBU WIDEO I LICZBY LINII EKRANU

	MODE pozwala na ustawienie jednego z pi©ciu tryb¢w wideo.
	Skˆadnia:

	MODE Trybwideo[,Linie]

	Dost©pne tryby:

	MONO	Tryb monochromatyczny, u¾ywany z kartami MDA i Hercules, a
		tak¾e emulowany na kartach EGA i VGA. Jest to jedyny tryb,
		kt¢ry domy˜lnie posiada mo¾liwo˜† podkre˜lania znak¢w na
		ekranie. Trybu tego nie mo¾na wybra† na karcie CGA.

	BW40	Tryb 40-kolumnowy z wyˆ¥czonym kolorem. Specyficzny dla kart
		CGA, oferuje obraz 40 kolumn na 25 linii. Informacja o
		kolorze w sygnale wideo jest wyˆ¥czona, co daje obraz
		czarno-biaˆy (szesna˜cie odcieni szaro˜ci) na monitorach
		zespolonych. Na kartach EGA/VGA lub monitorach kolorowych
		b©dzie wygl¥da† tak samo jak CO40. Trybu tego nie mo¾na
		wybra† na kartach MDA i Hercules.

	BW80	Tryb 80-kolumnowy z wyˆ¥czonym kolorem. Podobny do BW40, ale
		oferuje 80 kolumn obrazu. Trybu tego nie mo¾na wybra† na
		kartach MDA i Hercules.

	CO40	Tryb kolorowy 40-kolumnowy. Obraz kolorowy 40 kolumn na 25
		linii. Obsˆugiwany przez karty CGA, EGA i VGA, ale nie przez
		MDA i Hercules.

	CO80	Tryb kolorowy 80-kolumnowy. Normalny tryb wy˜wietlania dla
		kart CGA, EGA i VGA (80 kolumn na 25 linii). Nieobsˆugiwany
		przez MDA i Hercules. Na kartach EGA wspiera tak¾e wariant
		43-liniowy, a na kartach VGA warianty 43- i 50-liniowe.

		Tryby 43 i 50 linii wybiera si© wpisuj¥c ",43" lub ",50" po
		CO80 w linii komend. Domy˜lnie u¾ywane jest 25 linii.

	Raz ustawiony tryb wideo pozostaje aktywny do czasu zmiany przez
	komend© MODE lub inny program. Programy mog¥ dowolnie zmienia† tryby.

2.2.  KONFIGURACJA PARAMETRàW PORTU SZEREGOWEGO

	MODE pozwala konfigurowa† parametry komunikacji portu szeregowego.
	Skˆadnia:

	MODE COMn:r,p,d,s

	n	Numer portu szeregowego (1 do 4). Je˜li port nie istnieje,
		MODE zgˆosi bˆ¥d.

	r	Pr©dko˜† transmisji (baud rate) w bitach na sekund©:
		50, 110, 150, 300, 600, 1200, 2400, 4800, 9600, 14400,
		19200, 28800, 38400, 57600 i 115200.

		Warto˜ci 1200, 2400, 4800 i 9600 mo¾na skr¢ci† odpowiednio
		do 12, 24, 48 i 96. Wy¾sze pr©dko˜ci mo¾na skr¢ci† do
		pierwszych dw¢ch lub trzech cyfr. 115200 do 115 lub 1152.

	p	Typ parzysto˜ci:

		E = Parzysto˜† (Even)
		O = Nieparzysto˜† (Odd)
		N = Brak parzysto˜ci (None)

	d	Liczba bit¢w danych: 5, 6, 7 lub 8.

	s	Liczba bit¢w stopu: 1 lub 2. W przypadku 5 bit¢w danych i 2
		bit¢w stopu, port wygeneruje 1 1/2 bitu stopu.

	Ustawienia pozostaj¥ aktywne do kolejnej zmiany przez MODE lub program.

2.3.  PRZEKIEROWANIE PORTU RàWNOLEGEGO I NIESKOãCZONE PONAWIANIE

	MODE pozwala przekierowa† wyj˜cie portu r¢wnolegˆego (LPT) na port
	szeregowy (COM) lub do NUL (donik¥d) oraz wˆ¥czy† nieskoäczone
	ponawianie pr¢b, je˜li urz¥dzenie nie odpowiada.

	Funkcje te realizuje rezydentna cz©˜† programu MODE, instalowana
	automatycznie w razie potrzeby.

	Skˆadnia:

	MODE LPTn:P		Nieskoäczony timeout na porcie r¢wnolegˆym
	MODE LPTn:=COMx		Przekieruj wyj˜cie drukarki na port COM
	MODE LPTn:=NUL:		Przekieruj wyj˜cie drukarki do NUL
	MODE LPTn:		Usuä przekierowanie i timeout

	Funkcja LPTn:P wˆ¥cza nieskoäczone ponawianie pr¢b przy braku
	odpowiedzi drukarki. Bez tej opcji, po okoˆo p¢ˆ minuty bez
	odpowiedzi, zgˆoszony zostanie bˆ¥d zapisu.

	Przekierowanie jest przydatne dla drukarek szeregowych lub aby
	zapobiec zawieszeniu komputera przy pr¢bie druku na brakuj¥cej
	drukarce. Komenda MODE LPTn: przywraca normalne dziaˆanie portu.

2.4.  PARKOWANIE DYSKU TWARDEGO (PARK)

	MODE pozwala zaparkowa† gˆowice dysku twardego (pierwsze dwa dyski
	fizyczne), natychmiast lub po czasie bezczynno˜ci.

	Skˆadnia:

	MODE PARK			Zaparkuj teraz
	MODE PARK,minuty[:sekundy]	Zaparkuj po czasie bezczynno˜ci

	Funkcja PARK parkuje dyski i czeka na wyˆ¥czenie komputera (mo¾na
	wyj˜† przez Ctrl-C). Czasowe parkowanie dziaˆa do czasu restartu.
	Wsp¢ˆczesne dyski parkuj¥ si© same, funkcja jest dla starych maszyn.

2.5.  FUNKCJE TYPEMATIC (POWTARZANIE KLAWIATURY)

	MODE pozwala ustawi† op¢«nienie i pr©dko˜† powtarzania klawiszy oraz
	opcjonalnie je zablokowa†.

	Skˆadnia:

	MODE DELAY=d RATE=r		Ustaw parametry
	MODE DELAY=d RATE=r LOCK	Ustaw i zablokuj parametry

	d	Op¢«nienie pocz¥tkowe (1 do 4): od 1/4 sekundy (1) do
		jednej sekundy (4).

	r	Pr©dko˜† powtarzania (1 do 32): od dw¢ch (1) do 30 (32)
		powt¢rzeä na sekund©.

	LOCK	Blokuje parametry przed zmianami przez inne programy. Nie
		jest to zabezpieczenie absolutne, ale zapobiega zmianom bez
		wiedzy u¾ytkownika.

	Nale¾y poda† oba parametry DELAY i RATE. MODE akceptuje komendy bez
	wzgl©du na to, czy maszyna je obsˆuguje.

2.6.  FUNKCJE SWITCHAR

	MODE mo¾e wy˜wietli† lub zmieni† znak przeˆ¥cznika DOS (switchar).
	Domy˜lnie jest to '/', np. /P w komendzie DIR. Mo¾na go zmieni† na
	'-'. Jest to nieudokumentowana funkcja DOS, sˆabo wspierana przez
	wi©kszo˜† program¢w.

	Skˆadnia:

	MODE SWITCHAR			Wy˜wietl aktualny switchar
	MODE SWITCHAR=x			Ustaw switchar na znak x
	MODE SWITCHAR=n			Ustaw switchar na warto˜† ASCII n

2.7.  FUNKCJE MODYFIKATORàW (SHIFT STATE)

	MODE mo¾e zmienia† stan klawiszy Caps Lock, Num Lock i Scroll Lock.
	Nie nale¾y u¾ywa† tej funkcji na komputerach PC/XT, poniewa¾
	kontrolki LED na ich klawiaturach nie s¥ sterowane programowo i
	mog¥ pokazywa† stan niezgodny z faktycznym.

	Skˆadnia:

		CAPSLOCK=ON	CAPSLOCK=OFF
		NUMLOCK=ON	NUMLOCK=OFF
		SCRLOCK=ON	SCRLOCK=OFF

	Mo¾na ˆ¥czy† te opcje. SCRLOCK mo¾na zapisa† jako SCROLLLOCK.

3.  INFORMACJE OGàLNE

	Parametry nie rozr¢¾niaj¥ wielko˜ci liter. MODE przetwarza tylko
	jedn¥ komend© przy jednym wywoˆaniu. Komunikaty o bˆ©dach id¥ na
	StdErr, informacyjne na stdout (mo¾na przekierowa† do NUL:).

	Errorlevels zwracane przez MODE:

	0	Brak bˆ©du
	115	Port szeregowy nie istnieje
	117	Nie znaleziono dysku twardego do zaparkowania
	118	Tryb wideo nieobsˆugiwany
	162	Brak pami©ci (wymaga ok. 6K)
	241	Parametr poza zakresem
	242	Tryby 43/50 linii wymagaj¥ trybu CO80
	243	Nieznana pr©dko˜† baud
	244	Wymagane oba parametry DELAY= i RATE=
	246	Podano wi©cej ni¾ jedn¥ komend© lub typ
	255	Bˆ©dna skˆadnia

	MODE jest programem rezydentnym (TSR). W razie znalezienia bˆ©du,
	skontaktuj si© z autorem (dane w sekcji 1).

4.  PRZYKADY U½YCIA

	Przykˆad w AUTOEXEC.BAT:

	mode co80,43			>nul:
	mode com1:96,n,8,1		>nul:
	mode com2:19,n,8,1		>nul:
	mode com3:24,n,8,1		>nul:
	mode lpt1:=com2			>nul:
	mode lpt1:p			>nul:
	mode lpt2:=nul:			>nul:
	mode lpt3:=nul:			>nul:
	mode park,0:30			>nul:
	mode delay=1 rate=32 lock	>nul:
	mode switchar=-			>nul:
	mode numlock=off		>nul:

	Powy¾sza sekvencja ustawia tryb 43 linii, konfiguruje porty COM1-3,
	przekierowuje LPT1 na COM2, wˆ¥cza parkowanie dysku po 30s, ustawia
	klawiatur© i zmienia switchar na '-'.

				   ----//----


