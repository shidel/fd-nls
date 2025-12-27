
; Translations for RUNTIME: Most use codepage 850 / CP858 (ega.cpx)
; Russian uses CP866, Polish uses CP790, Hungarian CP 3845 see below.

; Note: Initial version 2007, improved precision and wrapping 2009,
; the update in 2024 just adds the Hungarian translation.

; Please send translations to Eric. They will be public domain,
; like RUNTIME itself. Email mcericBARusers.sourceforge.net (BAR=@).

; To load other fonts than BIOS codepage CP437 in FreeDOS, run:
; 1. DISPLAY CON=(EGA,,1)
; 2. MODE CON CODEPAGE PREPARE=((858) c:\fdos\cpi\ega.cpx)
; 3. MODE CON CODEPAGE SELECT=858
; You can repeat steps 2 and 3 as often as you want.

transtable:
	dw "EN",en_1,en_2,en_3,en_4
	dw "DE",de_1,de_2,de_3,de_4
	dw "NL",nl_1,nl_2,nl_3,nl_4
	dw "PT",pt_1,pt_2,pt_3,pt_4
	dw "ES",es_1,es_2,es_3,es_4
	dw "FR",fr_1,fr_2,fr_3,fr_4
	dw "TR",tr_1,tr_2,tr_3,tr_4
	dw "IT",it_1,it_2,it_3,it_4
	dw "PL",pl_1,pl_2,pl_3,pl_4
	dw "RU",ru_1,ru_2,ru_3,ru_4
	dw "HU",hu_1,hu_2,hu_3,hu_4
	dw 0	; END MARKER

; English by Eric
en_1	db " seconds"
en_2	db " elapsed",13,10,"$"
en_3	db "RUNTIME is free public domain software by Eric Auer 2007-2024",13,10
	db "Usage: RUNTIME your_program [your_options]",13,10
	db "Shows how long your_program ran, max 1 day (23$"
	; RUNTIME adds ":59:59.99)",13,10,"$" here, which does not get
	; translated, but self-adjusts to country-specific ":" and "."
en_4	db "COMSPEC not found",13,10,"$"

; German by Eric
de_1	db " Sekunden"
de_2	db " abgelaufen",13,10,"$"
de_3	db "RUNTIME ist freie Software (public domain) von Eric Auer 2007-2024"
	db 13,10
	db "Anwendung: RUNTIME dein_Programm [Optionen]",13,10
	db "Zeigt an, wie lange dein_Program lief - maximal 1 Tag (23$"
de_4	db "COMSPEC nicht gefunden",13,10,"$"

; Dutch by Eric
nl_1	db " seconden"
nl_2	db " verlopen",13,10,"$" ; voorbij
nl_3	db "RUNTIME is vrije software (public domain) van Eric Auer 2007-2024"
	db 13,10
	db "Gebruik: RUNTIME programma [opties]",13,10
	db "Laat zien hoe lang je programma draaide, maximaal 1 dag (23$"
nl_4	db "COMSPEC niet gevonden",13,10,"$"

%if 0
; Portuguese 1 by Geraldo
pt_1	db " segundos"
pt_2	db " passados",13,10,"$"
pt_3	db "RUNTIME ",0x82," um software livre de dom",0xa1,
	db "nio p",0xa3,"blico por Eric Auer 2007-2024",13,10
	db "Uso: RUNTIME seu_programa [suas_op",0x87,"?es]",13,10
	db "Mostra quanto tempo o seu programa executou, max 1 dia (23$"
pt_4	db "COMSPEC n?o encontrado",13,10,"$"
%else

; Portuguese 2 by Alain
pt_1	db " segundos"
pt_2	db " decorridos",13,10,"$"
pt_3	db "RUNTIME ",0x82," um software livre, de dom",0xa1,"nio"
	db " p",0xa3,"blico por Eric Auer 2007-2024",13,10
	db "Uso: RUNTIME seu_programa [op",0x87,0xe4,"es]",13,10
	db "Mostra quanto tempo durou a execu",0x87,0xc6,"o do seu"
	db " programa, max 1 dia (23$"
pt_4	db "COMSPEC n",0xc6,"o encontrado",13,10,"$"
%endif

; Spanish by Aitor
es_1	db " segundos"
es_2	db " transcurridos",13,10,"$"
es_3	db "RUNTIME es software libre y dominio p",0xa3,"blico, "
	db "por Eric Auer 2007-2024",13,10
	db "Uso: RUNTIME  programa [opciones]",13,10
	db "Muestra el tiempo de ejecuci",0xa2,"n del programa, "
	db "m",0xa0,"ximo 1 d",0xa1,"a (23$"
es_4	db "No se ha encontrado COMSPEC",13,10,"$"

%if 0
; French 1 by Stegozor
fr_1	db " secondes"
fr_2	db "e",0x82,"coul",0x82,"es",13,10,"$"
fr_3	db "RUNTIME est un logiciel libre ",0x82,"crit et plac",0x82
	db " dans le domaine public par Eric Auer en 2007-2024.",13,10
	db "Utilisation : RUNTIME votre_logiciel [vos_options]",13,10
	db "Montre combien de temps votre_logiciel a ",0x82,"t",0x82
	db "  ex",0x82,"cut",0x82", au maximum 1 jour (23$"
fr_4	db "COMSPEC n'a pas pu ",0x88,"tre trouv",0x82,".",13,10,"$"
%else

; French 2 by Mateusz
fr_1	db " secondes"
fr_2	db " ",0x82,"coul",0x82,"es",13,10,"$"
fr_3	db "RUNTIME est un logiciel libre du domaine public par Eric Auer"
	db " 2007-2024",13,10
	db "Usage: RUNTIME ton_programme [tes_options]",13,10
	db "Affiche le temps d'ex",0x82,"cution de ton_programme,"
	db " max 1 jour (23$"
fr_4	db "COMSPEC n'a pas ",0x82,"t",0x82," trouv",0x82,13,10,"$"
%endif

; Turkish by Stegozor
tr_1	db " saniye"
tr_2	db " ge",0x87,"ti",13,10,"$"
tr_3	db "RUNTIME Eric Auer tarafIndan 2007-2024 senesinde programlanmIG "
	db "kamu malI,",13,10
	db "a",0x87,"Ik kaynaklI bir yazIlImdIr.",13,10
	db "KullanImI : RUNTIME programInIz [se",0x87,"enekleriniz]",13,10
	db "ProgramInIzIn ne kadar zamandIr iGletildiGini g",0x94,"sterir,"
	db 13,10,"maksimum 1 g",0x81,"n (23$"
tr_4	db "COMSPEC bulunamadI.",13,10,"$"

; Italian by Roberto Mariottini
it_1	db " secondi"
it_2	db " trascorsi",13,10,"$"
it_3	db "RUNTIME ",0x8a," un programma di pubblico dominio di"
	db " Eric Auer 2007-2024",13,10
	db "Uso: RUNTIME programma [opzioni]",13,10
	db "Mostra il tempo di esecuzione del programma,"
	db " max 1 giorno (23$"
it_4	db "COMSPEC non trovato",13,10,"$"

; Encoding: MAZOVIA (codepage 790 or CP991) (ega10.cpx)
; Author: Mateusz Viste "Fox" / mateusz.viste@wp.pl
; Polish by Mateusz
pl_1	db " sekund"
pl_2	db " min",0x91,0x92,"o",13,10,"$"
pl_3	db "RUNTIME jest wolnym oprogramowaniem typu 'public domain' -"
	db " Eric Auer 2007-2024",13,10
	db "U",0xa7,"ycie: RUNTIME tw",0xa2,"j_program [twoje_parametry]"
	db 13,10
	db "Wy",0x9e,"wietla jak d",0x92,"ugo pracowa",0x92
	db " tw",0xa2,"j_program, maks. 1 dzie",0xa4," (23$"
pl_4	db "Nie odnaleziono COMSPEC",13,10,"$"

; Russian translation for RUNTIME by Oleg, Codepage 866 (ega3.cpx)
ru_1	db " ",0xe1,0xa5,0xaa,0xe3,0xad,0xa4
ru_2	db " ",0xaf,0xe0,0xae,0xe8,0xab,0xae,13,10,"$"
ru_3	db "RUNTIME - ",0xed,0xe2,0xae," "
	db 0xae,0xa1,0xe9,0xa5,0xa4,0xae,0xe1,0xe2,0xe3,0xaf,0xad,0xa0,0xef
	db " ",0xaf,0xe0,0xae,0xa3,0xe0,0xa0,0xac,0xac,0xa0,", "
	db 0xa0,0xa2,0xe2,0xae,0xe0," - Eric Auer, 2007-2024",13,10
	db 0x88,0xe1,0xaf,0xae,0xab,0xec,0xa7,0xae,0xa2,0xa0,0xad,0xa8,0xa5
	db ": RUNTIME ",0xa2,0xa0,0xe8,0xa0,"_"
	db 0xaf,0xe0,0xae,0xa3,0xe0,0xa0,0xac,0xac,0xa0," ["
	db 0xa2,0xa0,0xe8,0xa8,"_",0xaf,0xa0,0xe0,0xa0,0xac,0xa5,0xe2,0xe0
	db 0xeb,"]",13,10
	db 0x8f,0xae,0xaa,0xa0,0xa7,0xeb,0xa2,0xa0,0xa5,0xe2," "
	db 0xaa,0xa0,0xaa," ",0xa4,0xae,0xab,0xa3,0xae," "
	db 0xa2,0xeb,0xaf,0xae,0xab,0xad,0xef,0xab,0xa0,0xe1,0xec," "
	db 0xa2,0xa0,0xe8,0xa0," ",0xaf,0xe0,0xae,0xa3,0xe0,0xa0,0xac
	db 0xac,0xa0,", ",0xac,0xa0,0xaa,0xe1,". 1 "
	db 0xe1,0xe3,0xe2,0xaa,0xa8," (23$"
ru_4	db 0xaf,0xa5,0xe0,0xa5,0xac,0xa5,0xad,0xad,0xa0,0xef," COMSPEC "
	db 0xad,0xa5," ",0xad,0xa0,0xa9,0xa4,0xa5,0xad,0xa0,13,10,"$"

; Hungarian translation by Vacek Nules, Codepage 3845 (ega10.cpx)
hu_1	db " m",0xa0,"sodperc"
hu_2	db " telt el",13,10,"$"
hu_3	db "A RUNTIME nyilv",0xa0,"nosan felhaszn",0xa0,"lhat",0xa2
	db " szabad szoftver Eric Auert",0x93,"l, 2007-2024.",13,10
	db "Haszn",0xa0,"lata: RUNTIME program [opci",0xa2,"k]",13,10
	db "Ki",0xa1,"rja, mennyi ideig futott a program, max. 1 nap (23$"
hu_4	db "COMSPEC nem tal",0xa0,"lhat",0xa2,13,10,"$"

