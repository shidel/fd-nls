# Language: Slovenian
# File ending: SL
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

	Dokumentacija za uporabo programa Free-DOS MODE

	(c) Copyright 1994-1995 K. Heidenstrom.

	Spremenjeno:

	KH.19941231.001  (MODE 1.0.0)  Prva razliüica
	KH.19950116.002  (MODE 1.0.2)  Dodana dokumentacija za switchar
	KH.19950520.003  (MODE 1.0.3)  Brez sprememb v funkcionalnosti
	KH.19950805.004  (MODE 1.0.4)  Dodane moßnosti modifikatorjev
	(shift-state)


1.  PRAVNA OBVESTILA

	Ta program je Copyright 1994-1995 K. Heidenstrom. Napisan je bil
	posebej za projekt Free-DOS. Avtorja lahko kontaktirate na naslovu
	kheidens@actrix.gen.nz na internetu ali po poÁti:
	K. Heidenstrom c/- P.O. Box 27-103, Wellington, New Zealand.

	Ta program je prosta programska oprema. Virno kodo in izvrÁljivo
	datoteko lahko razÁirjate in/ali spreminjate pod pogoji licence GNU
	General Public License, kot jo je objavila Free Software Foundation;
	razliüice 2 ali (po vaÁi izbiri) katere koli poznejÁe razliüice.

	Ta program se razÁirja v upanju, da bo uporaben, vendar brez kakrÁne
	koli garancije, vkljuüno z implicitno garancijo o prodajnosti ali
	primernosti za doloüen namen. Avtor v nobenem primeru ne bo
	odgovoren za kakrÁno koli Ákodo, povezano z uporabo tega programa.
	Za veü podrobnosti glejte licenco GNU General Public License.

	S tem programom bi morali prejeti kopijo licence GNU General Public
	License; üe je niste, piÁite na naslov Free Software Foundation,
	Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

2.  FUNKCIJE IN SINTAKSA UPORABE

	Program MODE opravlja Áest loüenih funkcij, ki so opisane spodaj.

2.1.  NASTAVITEV VIDEO NA¨INA IN ÊTEVILA ZASLONSKIH VRSTIC

	MODE omogoüa nastavitev video naüina na enega od petih naüinov.
	Sintaksa je:

	MODE Videonaüin[,Vrstice]

	Naüini so:

	MONO	Monokromatski naüin, kot se uporablja pri karticah MDA in
		Hercules, emuliran pa je tudi na karticah EGA in VGA. Ta
		naüin je edini, ki privzeto omogoüa podürtovanje znakov
		na zaslonu. Tega naüina ni mogoüe izbrati na grafiüni kartici CGA.

	BW40	40-stolpüni naüin z zatrto barvo. Ta naüin je specifiüen za
		kartice CGA in omogoüa prikaz 40 stolpcev in 25 vrstic.
		Informacije o barvah v kompozitnem video signalu s kartice CGA
		so izklopljene, tako da je prikaz ürno-bel na kompozitnem
		barvnem monitorju s Áestnajstimi odtenki sive.
		¨e je ta naüin izbran na kartici EGA ali VGA ali na kartici
		CGA, ki ni prikljuüena na televizor ali kompozitni monitor,
		bo videti enako kot naüin CO40 (barva ne bo zatrta). Tega
		naüina ni mogoüe izbrati na karticah MDA in Hercules.

	BW80	80-stolpüni naüin z zatrto barvo. Ta naüin je prav tako
		specifiüen za kartice CGA in je enak kot BW40, le da ima 80
		stolpcev. Tega naüina ni mogoüe izbrati na karticah MDA in Hercules.

	CO40	40-stolpüni barvni naüin. Ta naüin omogoüa barvni prikaz s 40
		stolpci in 25 vrsticami. Podpirajo ga adapterji CGA, EGA in
		VGA, ne pa tudi kartice MDA in Hercules.

	CO80	80-stolpüni barvni naüin. Ta naüin omogoüa prikaz z 80 stolpci
		in 25 vrsticami in je obiüajen naüin prikaza za kartice CGA,
		EGA in VGA. Kartice MDA in Hercules ga ne podpirajo. Na
		karticah EGA ta naüin podpira tudi razliüico s 43 vrsticami,
		na karticah VGA pa sta podprti razliüici s 43 in 50 vrsticami.

		Naüina s 43 in 50 vrsticami lahko izberete tako, da v ukazni
		vrstici MODE za CO80 navedete ",43" ali ",50". ¨e ta parameter
		ni naveden, bo uporabljena privzeta vrednost 25 vrstic.

	Ko je video naüin nastavljen, ostane v veljavi, dokler ga ne spremeni
	ukaz MODE ali program. Video naüin ni trajno zaklenjen - programi
	lahko poljubno spreminjajo video naüine.

2.2.  KONFIGURACIJA PARAMETROV SERIJSKIH VRAT

	MODE omogoüa konfiguracijo komunikacijskih parametrov serijskih vrat.
	Sintaksa je:

	MODE COMn:r,p,d,s

	n	Doloüa, katera serijska vrata naj bodo konfigurirana, v
		obsegu od 1 do 4. ¨e serijska vrata ne obstajajo, MODE
		javi napako.

	r	Doloüa hitrost v bitih na sekundo (baud rate). Vrednosti so:
		50, 110, 150, 300, 600, 1200, 2400, 4800, 9600, 14400,
		19200, 28800, 38400, 57600 in 115200.

		Vrednosti 1200, 2400, 4800 in 9600 lahko skrajÁate na 12, 24,
		48 oziroma 96. ViÁje hitrosti lahko skrajÁate na njihovi prvi
		dve ali tri Átevilke. 115200 lahko skrajÁate na 115 ali 1152.

	p	Doloüa vrsto paritete. Vrednosti so:

		E = Soda pariteta (Even)
		O = Liha pariteta (Odd)
		N = Brez paritete (None)

	d	Doloüa Átevilo podatkovnih bitov. Dovoljene vrednosti so 5, 6, 7
	in 8.

	s	Doloüa Átevilo stop bitov. To je lahko 1 ali 2. ¨e se uporabita
		2 stop bita s 5 podatkovnimi biti, bodo serijska vrata
		dejansko generirala in preverjala 1 1/2 stop bita.

	Nastavitve serijskih vrat ostanejo v veljavi, dokler jih ne spremeni
	ukaz MODE ali program. Nastavitve niso trajno zaklenjene.

2.3.  PREUSMERITEV VZPOREDNIH VRAT IN NESKON¨NE PONOVITVE

	MODE omogoüa preusmeritev izhoda vzporednih (LPT) vrat na serijska
	(COM) vrata, na NUL (tj. nikamor), in lahko tudi neskonüno ponavlja
	poskuse, üe se periferna naprava ne odziva.

	Te funkcije izvaja rezidenüni del programa MODE, ki se po potrebi
	samodejno namesti.

	Sintaksa je:

	MODE LPTn:P		Neskonüna üasovna omejitev na vzporednih vratih
	MODE LPTn:=COMx		Preusmeritev izhoda tiskalnika na vrata COM
	MODE LPTn:=NUL:		Preusmeritev izhoda tiskalnika na NUL
	MODE LPTn:		Prekliüi preusmeritev in neskonüno omejitev

	Funkcija LPTn:P doloüa neskonüno ponavljanje ob üasovni omejitvi. ¨e
	je omogoüena, bo MODE nenehno poskuÁal poslati podatke, üe se
	tiskalnik ne odziva. Sicer bo po doloüenem üasu (priblißno pol minute)
	javljena napaka pri pisanju.

	Funkciji LPTn:=COMx in LPTn:=NUL: doloüata preusmeritev izhoda tiskalnika.
	Katera koli vzporedna vrata (tudi neobstojeüa) se lahko preusmerijo na
	katera koli obstojeüa serijska vrata ali na NUL. To je uporabno, üe
	imate serijski tiskalnik ali üe tiskalnika nimate in ßelite prepreüiti
	zamrznitev raüunalnika ob poskusu tiskanja.

	Ukaz MODE LPTn: prekliüe preusmeritev in vrne vrata v normalno stanje.

2.4.  PARKIRANJE TRDEGA DISKA (PARK)

	MODE parkira trdi disk ali diske (le prva dva fiziüna diska v sistemu),
	bodisi takoj bodisi po doloüenem üasu neaktivnosti.

	¨asovno parkiranje izvaja rezidenüni del programa MODE.

	Sintaksa je:

	MODE PARK			Parkiraj zdaj
	MODE PARK,minute[:sekunde]	Parkiraj po neaktivnosti diska

	Funkcija PARK takoj parkira diske in poüaka, da izklopite raüunalnik.
	Lahko pritisnete tudi Ctrl-C za vrnitev v DOS.

	Funkcija PARK,minute[:sekunde] parkira diske po doloüenem üasu
	neaktivnosti (do 50 minut). ¨e imate dva fiziüna diska, se oba
	obravnavata loüeno.

	¨asovno parkiranje ni mogoüe izklopiti - za odstranitev morate
	ponovno zagnati raüunalnik. Ta funkcija je uporabna predvsem za
	starejÁe stroje. Sodobni diski se ob izklopu parkirajo samodejno.

2.5.  FUNKCIJE TYPEMATIC (PONAVLJANJE TIPKOVNICE)

	MODE omogoüa nastavitev zaüetne zakasnitve in hitrosti ponavljanja
	tipk ter njihovo poljubno zaklepanje.

	Zaklepanje izvaja rezidenüni del programa MODE.

	Sintaksa je:

	MODE DELAY=d RATE=r		Nastavi parametre
	MODE DELAY=d RATE=r LOCK	Nastavi in zakleni parametre

	d	Doloüa zaüetno zakasnitev (1 do 4), od 1/4 sekunde (1) do
		ene sekunde (4).

	r	Doloüa hitrost ponavljanja (1 do 32), od dveh ponovitev na
		sekundo (1) do 30 ponovitev na sekundo (32).

	LOCK	Doloüa, da morajo biti parametri zaklenjeni. Nato jih je
		mogoüe spremeniti le z ukazom MODE, ne pa z drugimi programi.
		To je uporabno, ker nekateri programi spreminjajo nastavitve
		brez dovoljenja.

	Navesti je treba oba parametra DELAY in RATE. MODE sprejme ukaze
	ne glede na to, ali jih stroj dejansko podpira.

2.6.  FUNKCIJE SWITCHAR

	MODE lahko prikaße in nastavi znak za stikalo DOS (switchar). Privzeti
	znak je poÁevnica '/'. To je znak, ki uvaja parametre ukazov, npr. /P
	pri ukazu DIR. Obiüajno se switchar lahko spremeni v vezaj '-'.
	Switchar je nedokumentirana funkcija DOS, ki jo pravilno podpira le
	malo programov.

	Sintaksa je:

	MODE SWITCHAR			Prikaßi trenutni switchar
	MODE SWITCHAR=x			Nastavi switchar na znak x
	MODE SWITCHAR=n			Nastavi switchar na vrednost ASCII n

2.7.  FUNKCIJE MODIFIKATORJEV (SHIFT STATE)

	MODE lahko spreminja stanja Caps Lock, Num Lock in Scroll Lock. Te
	funkcije ne smete uporabljati na strojih z originalnimi tipkovnicami
	PC ali XT, ker indikatorskih luük na njih ni mogoüe nadzorovati iz
	raüunalnika in bi priÁlo do neskladja s stanjem v raüunalniku.

	Moßnosti so:

		CAPSLOCK=ON	CAPSLOCK=OFF
		NUMLOCK=ON	NUMLOCK=OFF
		SCRLOCK=ON	SCRLOCK=OFF

	Uporabite lahko katero koli kombinacijo, ki ni v konfliktu. SCRLOCK
	se lahko zapiÁe tudi kot SCROLLLOCK.

3.  SPLOÊNE INFORMACIJE

	Parametri MODE ne razlikujejo med velikimi in malimi ürkami. MODE
	v enem klicu obdela le en ukaz.

	Sporoüila o napakah se poÁiljajo na StdErr. Informativna sporoüila
	na standardni izhod (lahko se preusmerijo na NUL:).

	Errorlevels, ki jih vraüa program MODE:

	0	Brez napake
	115	Serijska vrata ne obstajajo
	117	Ni najden noben trdi disk za parkiranje
	118	Video naüin na tem stroju ni podprt
	162	Ni dovolj pomnilnika (MODE potrebuje priblißno 6K)
	241	Parameter zunaj obsega
	242	Naüina s 43 ali 50 vrsticami sta moßna le s CO80
	243	Neznana hitrost prenosa
	244	Navesti je treba tako DELAY= kot RATE=
	246	Podanih je bilo veü ukazov ali vrst ukazov
	255	Napaüna sintaksa

	¨e najdete napako, kontaktirajte avtorja (podatki v razdelku 1).

4.  PRIMERI UPORABE

	Primer v AUTOEXEC.BAT:

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

	To zaporedje nastavi 43-vrstiüni barvni naüin, konfigurira COM1-3,
	preusmeri LPT1 na COM2, nastavi üasovno parkiranje diska na 30 s,
	nastavi tipkovnico in spremeni switchar na '-'.

				   ----//----
