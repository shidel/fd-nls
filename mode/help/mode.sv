# Language: Swedish
# File ending: SV
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

	Programanv„ndardokumentation f”r Free-DOS MODE-programmet

	(c) Copyright 1994-1995 av K. Heidenstrom.

	Modifierad:

	KH.19941231.001  (MODE 1.0.0)  F”rsta versionen
	KH.19950116.002  (MODE 1.0.2)  Lade till dokumentation f”r switchar
	KH.19950520.003  (MODE 1.0.3)  Inga „ndringar i funktionalitet
	KH.19950805.004  (MODE 1.0.4)  Lade till modifieringsalternativ
	(shift-state)


1.  JURIDIK

	Detta program „r Copyright 1994-1995 av K. Heidenstrom. Det skrevs
	specifikt f”r Free-DOS-projektet. F”rfattaren kan n†s p†
	kheidens@actrix.gen.nz via Internet eller via vanlig post:
	K. Heidenstrom c/- P.O. Box 27-103, Wellington, New Zealand.

	Detta program „r fri programvara. Du f†r distribuera k„llkoden och den
	k”rbara filen och/eller modifiera programmet enligt villkoren i GNU
	General Public License som publicerats av Free Software Foundation;
	antingen version 2 av licensen eller (efter eget val) n†gon senare
	version.

	Detta program distribueras i hopp om att det ska vara anv„ndbart,
	men tillhandah†lls "i befintligt skick" (as-is), utan n†gon garanti av
	n†got slag, inklusive den underf”rst†dda garantin om s„ljbarhet eller
	l„mplighet f”r ett visst „ndam†l. Under inga omst„ndigheter ska
	f”rfattaren h†llas ansvarig f”r n†gra skador av n†got slag relaterade
	till anv„ndningen av detta program. Se GNU General Public License f”r
	mer information.

	Du b”r ha f†tt en kopia av GNU General Public License tillsammans
	med detta program; om inte, skriv till Free Software Foundation,
	Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

2.  FUNKTION OCH ANVŽNDNINGSSYNTAX

	MODE-programmet utf”r sex separata funktioner, som beskrivs separat
	nedan.

2.1.  STŽLL IN VIDEOLŽGE OCH ANTAL SKŽRMRADER

	MODE till†ter att videol„get st„lls in till ett av fem l„gen. Syntaxen
	„r:

	MODE Videol„ge[,Rader]

	L„gena „r:

	MONO	Monokromt l„ge, som anv„nds med MDA- och Hercules-grafikkort,
		och som „ven emuleras p† EGA- och VGA-kort. Detta l„ge „r det
		enda l„get som har f”rm†gan att understryka tecken p† sk„rmen
		som standard. Detta l„ge kan inte v„ljas p† CGA-grafikkort.

	BW40	40-kolumners f„rgsublimerat l„ge. Detta l„ge „r specifikt f”r
		CGA-adaptern och ger en visning p† 40 kolumner g†nger 25 rader.
		F„rginformationen i den sammansatta videosignalen fr†n CGA-kortet
		st„ngs av, s† att visningen sker i svartvitt p† en sammansatt
		f„rgsk„rm, med sexton gr†skalor.
		Om detta l„ge v„ljs p† ett EGA- eller VGA-kort, eller ett CGA-
		kort som inte „r anslutet till en TV-apparat eller en sammansatt
		f„rgsk„rm, kommer det att se likadant ut som CO40-l„get (dvs.
		f„rgen kommer inte att sublimeras). Detta l„ge kan inte v„ljas
		p† MDA- och Hercules-grafikkort.

	BW80	80-kolumners f„rgsublimerat l„ge. Detta l„ge „r ocks† specifikt
		f”r CGA-adaptern och „r detsamma som BW40 f”rutom att det „r
		80 kolumner.
		Om detta l„ge v„ljs p† ett EGA- eller VGA-kort, eller ett CGA-
		kort som inte „r anslutet till en TV-apparat eller en sammansatt
		f„rgsk„rm, kommer det att se likadant ut som CO80-l„get (dvs.
		f„rgen kommer inte att sublimeras). Detta l„ge kan inte v„ljas
		p† MDA- och Hercules-grafikkort.

	CO40	40-kolumners f„rgl„ge. Detta l„ge ger 40 kolumner g†nger 25
		rader i f„rg. Det st”ds av CGA-, EGA- och VGA-adaptrar men inte
		av MDA-och Hercules-kort.

	CO80	80-kolumners f„rgl„ge. Detta l„ge ger 80 kolumner g†nger 25
		rader och „r det normala visningsl„get f”r CGA-, EGA- och VGA-kort.
		Det st”ds inte av MDA- och Hercules-kort. P† EGA-kort st”der
		detta l„ge „ven en 43-raders variant, och p† VGA-kort st”ds
		43-raders varianten och en 50-raders variant.

		43-raders och 50-raders l„gen kan v„ljas genom att ange ",43"
		eller ",50" efter CO80 p† MODE-kommandoraden. Om denna parameter
		inte anges kommer standardv„rdet 25 rader att anv„ndas.

	N„r det v„l „r inst„llt kommer videol„get att f”rbli i kraft tills det
	„ndras av ett MODE-kommando eller av ett program. Videol„get „r inte
	permanent l†st - program „r fria att „ndra videol„gen efter behov.

2.2.  KONFIGURERA PARAMETRAR F™R SERIEPORT

	MODE till†ter att kommunikationsparametrarna f”r en serieport
	konfigureras. Syntaxen „r:

	MODE COMn:r,p,d,s

	n	Anger vilken serieport som ska konfigureras, i intervallet
		1 till 4. Om serieporten inte existerar kommer MODE att
		rapportera ett fel.

	r	Anger baud-hastigheten i bitar per sekund. V„rdena „r:
		50, 110, 150, 300, 600, 1200, 2400, 4800, 9600, 14400,
		19200, 28800, 38400, 57600 och 115200.

		1200, 2400, 4800 och 9600 kan f”rkortas till 12, 24, 48
		respektive 96. 14400, 19200, 28800, 38400 och 57600 kan
		f”rkortas till sina f”rsta tv† eller tre siffror. 115200 kan
		f”rkortas till 115 eller 1152.

	p	Anger typen av paritet som genereras och kontrolleras f”r
		databyten. V„rdena „r:

		E = J„mn paritet (Even)
		O = Udda paritet (Odd)
		N = Ingen paritet (No parity)

	d	Anger antalet databitar som ska s„ndas och tas emot. De
		till†tna v„rdena „r 5, 6, 7 och 8.

	s	Anger antalet stoppbitar som ska s„ndas och f”rv„ntas. Detta
		kan vara 1 eller 2. Om 2 stoppbitar anv„nds i kombination med
		5 databitar kommer serieporten faktiskt att generera och
		kontrollera 1 1/2 stoppbitar.

	N„r de v„l „r inst„llda kommer serieportsparametrarna att f”rbli i
	kraft tills de „ndras av ett MODE-kommando eller av ett program.
	Serieportsinst„llningarna „r inte permanent l†sta - program „r fria
	att „ndra dem efter behov.

2.3.  OMDIRIGERING AV PARALLELLPORT OCH OŽNDLIGA F™RS™K

	MODE till†ter att utdata fr†n parallellport (LPT) omdirigeras till
	en serieport (COM), till NUL (dvs. ingenting), och kan „ven f”rs”ka
	o„ndligt om kringutrustningen inte svarar.

	Dessa funktioner utf”rs av den residenta delen av MODE, som kommer
	att installeras automatiskt om n”dv„ndigt n„r funktionen beg„rs.

	Syntaxen „r:

	MODE LPTn:P		O„ndlig timeout p† parallellport
	MODE LPTn:=COMx		Omdirigera skrivarutdata till COM-port
	MODE LPTn:=NUL:		Omdirigera skrivarutdata till NUL
	MODE LPTn:		Ta bort omdirigering och o„ndlig timeout

	LPTn:P-funktionen anger o„ndliga f”rs”k vid timeout. Om detta „r
	aktiverat kommer MODE att f”rs”ka kontinuerligt om skrivaren inte
	svarar. Om detta inte „r aktiverat, och skrivaren inte svarar inom en
	viss tid (vanligtvis cirka en halv minut), kommer ett skrivfel att
	rapporteras.

	LPTn:=COMx och LPTn:=NUL:-funktionerna anger omdirigering av
	skrivarutdata. Vilken parallellport som helst (oavsett om den existerar
	eller inte) kan omdirigeras till vilken befintlig serieport som helst,
	eller till NUL. Mer „n en parallellport kan omdirigeras till samma
	serieport eller till NUL. Dessa funktioner „r anv„ndbara om du har en
	serieskrivare, eller om du inte har n†gon skrivare och vill undvika
	att datorn l†ser sig om ett program f”rs”ker skriva ut till en icke-
	existerande skrivare.

	LPTn:-funktionen tar bort all omdirigering och o„ndlig timeout som kan
	vara konfigurerad f”r den angivna porten och †terst„ller den till
	normal drift.

2.4.  PARKERINGSFUNKTIONER F™R HRDDISK (PARK)

	MODE kommer att parkera h†rddisken eller h†rddiskarna (endast de f”rsta
	tv† fysiska h†rddiskarna i systemet), antingen omedelbart eller efter
	att disken har varit inaktiv under en viss tid.

	Den tidsstyrda parkeringsfunktionen utf”rs av den residenta delen av
	MODE, som installeras automatiskt om n”dv„ndigt n„r funktionen beg„rs.

	Syntaxen „r:

	MODE PARK			Parkera nu
	MODE PARK,minuter[:sekunder]	Parkera efter att h†rddisken varit
	inaktiv

	PARK-funktionen parkerar h†rddisken/h†rddiskarna omedelbart och v„ntar
	p† att du st„nger av datorn. Du kan ocks† trycka p† Ctrl-C f”r att
	avsluta och †terg† till DOS.

	Funktionen PARK,minuter[:sekunder] g”r att h†rddisken/h†rddiskarna
	parkeras efter en viss tids inaktivitet, vilket kan vara upp till 50
	minuter. Om du har tv† fysiska h†rddiskar hanteras de b†da separat.

	N„r det v„l „r inst„llt kan du „ndra tidsperioden genom att k”ra
	kommandot igen med ett annat tidsv„rde. Den tidsstyrda parkerings-
	funktionen kan inte st„ngas av - du m†ste starta om f”r att ta bort
	den.

	Dessa funktioner „r i allm„nhet endast anv„ndbara f”r „ldre maskiner.
	Moderna h†rddiskar parkerar sig sj„lva automatiskt n„r de st„ngs av.

2.5.  TYPEMATIC-FUNKTIONER (TANGENTBORDSREPETITION)

	MODE till†ter att parametrarna f”r typematic (auto-repetition) initial
	repetitionsf”rdr”jning och repetitionsfrekvens st„lls in, och
	valfritt l†ses.

	Den typematic-l†sningsfunktionen utf”rs av den residenta delen av MODE,
	som installeras automatiskt om n”dv„ndigt n„r funktionen beg„rs.

	Syntaxen „r:

	MODE DELAY=d RATE=r		St„ll in typematic-parametrar
	MODE DELAY=d RATE=r LOCK	St„ll in och l†s typematic-parametrar

	d	Anger den initiala f”rdr”jningen, intervallet „r 1 till 4 och
		f”rdr”jningen „r mellan 1/4 sekund (1) och en sekund (4).

	r	Anger auto-repetitionsfrekvensen. Intervallet „r 1 till 32 och
		frekvensen „r mellan tv† repetitioner per sekund (1) och 30
		repetitionerna per sekund (32).

	LOCK	Anger att typematic-parametrarna ska l†sas. N„r detta „r gjort
		kan typematic-parametrarna „ndras genom att k”ra MODE igen, men
		de kan inte „ndras av de flesta andra program. Detta kan vara
		anv„ndbart, eftersom vissa program „ndrar typematic-parametrarna
		utan ditt tillst†nd. Det „r dock inte helt idiots„kert.

	Observera att b†de DELAY och RATE m†ste anges f”r dessa funktioner.

	MODE f”rs”ker inte bekr„fta att typematic-inst„llning „r tillg„nglig
	p† maskinen. MODE kommer att acceptera alla typematic-kommandon,
	oavsett om maskinen faktiskt st”der dem eller inte.

2.6.  SWITCHAR-FUNKTIONER

	MODE kan visa och st„lla in DOS-v„xeltecknet (switchar). Standard-
	switchar „r snedstreck, '/'. Switchar „r tecknet som anv„nds f”r att
	indikera b”rjan p† en alternativv„xel, t.ex. /P-v„xeln till DIR-
	kommandot. Vanligtvis kan switchar „ndras till '-'. Switchar „r en
	odokumenterad DOS-funktion som st”ds korrekt av f† program.

	Syntaxen „r:

	MODE SWITCHAR			Visa nuvarande switchar
	MODE SWITCHAR=x			St„ll in switchar till tecknet x
	MODE SWITCHAR=n			St„ll in switchar till ASCII-v„rdet n

	SWITCHAR-parametern i sig sj„lv g”r att MODE visar nuvarande switchar.
	SWITCHAR=-anv„ndningen st„ller in switchar. Den nya switchar kan anges
	som ett tecken (t.ex. 'MODE SWITCHAR=/') eller som ett nummer (t.ex.
	'MODE SWITCHAR=45').

2.7.  MODIFIERINGSFUNKTIONER (SHIFT-STATUS)

	MODE kan „ndra de tre l†sbara shift-statusarna (caps lock, numlock och
	scroll lock). Denna funktion b”r inte anv„ndas p† maskiner med
	original-PC- eller XT-tangentbord, eftersom indikeringslamporna p†
	dessa tangentbord inte kan styras fr†n datorn, och kommer att hamna
	i otakt med datorns shift-statusar. MODE uppt„cker dock inte dessa
	maskiner. P† AT:er och senare maskiner „r det inga problem.

	Parametersyntaxen f”r detta kommando best†r av f”ljande alternativ:

		CAPSLOCK=ON	CAPSLOCK=OFF
		NUMLOCK=ON	NUMLOCK=OFF
		SCRLOCK=ON	SCRLOCK=OFF

	Vilken icke-konfliktfylld och icke-duplicerad kombination som helst av
	dessa alternativ „r till†ten. Dessutom kan SCRLOCK expanderas till
	SCROLLLOCK.

3.  ALLMŽNT

	Parametrar till MODE „r inte skiftl„gesk„nsliga.

	MODE kan endast bearbeta ett kommando vid varje anrop. Om du vill
	omdirigera flera LPT-portar m†ste du anv„nda ett separat MODE-kommando
	f”r varje. Kommandon av olika typer kan inte kombineras p† kommandoraden.

	Felmeddelanden skickas alltid till StdErr. Informationsmeddelanden
	skickas till standard ut (stdout) och kan omdirigeras till NUL: f”r
	"tyst" drift.

	Errorlevels som returneras av MODE „r f”ljande:

	0	Inget fel
	115	Serieporten existerar inte (antingen f”r COMn: eller LPTn:=COMx)
	117	Inga h†rddiskar hittades att parkera
	118	Angivet videol„ge st”ds inte p† denna maskin
	162	Otillr„ckligt minne (MODE kr„ver cirka 6K minne)
	241	Parameter utanf”r intervallet (t.ex. tidsv„rde, LPT-portnummer etc)
	242	Kan inte ha 43-raders eller 50-raders l„gen med andra l„gen „n CO80
	243	Ok„nd baud-hastighet
	244	M†ste ange b†de DELAY= och RATE= f”r typematic-inst„llning
	246	Mer „n ett kommando eller kommandotyp angavs
	255	Felaktig anv„ndningssyntax (alla syntaxfel vid anv„ndning)

	MODE „r ett TSR-program. Om n”dv„ndigt kommer MODE att installera en
	del av sig sj„lv resident i datorns minne. Denna residenta del utf”r
	skrivaromdirigering och timeout-hantering, automatisk parkering av
	h†rddisken och l†sning av typematic-parametrarna, och kan inte tas bort
	utan omstart (om inte programmen MARK och RELEASE anv„nds). Om
	ytterligare residenta funktioner kr„vs och den residenta delen „r
	installerad, kommer MODE att aktivera dessa funktioner i den residenta
	delen snarare „n att installera en till resident del.

	Eftersom MODE „r ett TSR kan det vara inkompatibelt med applikationer
	eller andra TSR:er du anv„nder. Om problem uppst†r, f”rs”k att
	fastst„lla vilka program som „r i konflikt. Det kan vara m”jligt att
	undvika problemet genom att installera programmen i en annan ordning.

	Om du hittar ett fel i MODE, v„nligen informera f”rfattaren. Kontakt-
	uppgifterna finns i avsnitt 1 i detta dokument.

4.  ANVŽNDNINGSEXEMPEL

	H„r „r ett exempel p† MODE-anv„ndning i AUTOEXEC.BAT som visar alla
	funktioner:

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

	Denna sekvens v„ljer f”rst 43-raders f„rgvisningsl„ge, konfigurerar
	sedan serieportsparametrarna f”r COM1, COM2 och COM3 (9600, 19200
	respektive 2400 bps, utan paritet, †tta databitar och en stoppbit).
	Dessa serieportsparametrar „r inte permanent l†sta, och ett annat
	MODE-kommando eller ett annat program kan „ndra dessa n„r som helst.
	Sedan omdirigeras LPT1-utdata till COM2, s† allt som skrivs ut till
	LPT1 skickas till COM2 ist„llet, i 19200 bps (till exempel till en
	seriell laserskrivare), och LPT2 och LPT3 omdirigeras till NUL s† att
	allt som skickas till dem inte hamnar n†gonstans.
	Sedan installeras en tidsstyrd h†rddiskparkering, som parkerar
	h†rddisken/h†rddiskarna efter 30 sekunder utan h†rddiskaktivitet.
	Slutligen v„ljs och l†ses den kortaste f”rdr”jningen och snabbaste
	frekvensen f”r tangentbordets typematic-funktion, och DOS switchar
	st„lls in till ett bindestreck ('-').

				   ----//----
