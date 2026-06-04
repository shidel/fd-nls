; Language: Polish (pl)
; File ending: pl
; Codepage: 852
; This translation was created by Google AI.
; Please help the FreeDOS group to improve it.

;
; XCDMSGS.PL -- "Polskie" komunikaty inicjalizacji XCDROM.
; Napisane przez Jacka R. Ellisa, 8 lutego 2006 r.
;
; Uæytkownicy, kt¢rzy chc• dokonaÜ "internacjonalizacji" XCDROM, musz• zmieniÜ
; tylko TEN plik! Nowy plik moæna nazwaÜ dowolnie, na przykàad XCDMSGS.FR
; (francuski), XCDMSGS.PL (polski) itd. Wybrany plik naleæy skopiowaÜ do
; XCDMSGS.TXT, a nast©pnie wybrany sterownik moæna ponownie skompilowaÜ za
; pomoc• dowolnego asemblera NASM (dost©pnego w SourceForge), uæywaj•c
; nast©puj•cej linii polece‰:
;
;     NASM -o XCDROM.SYS -l XCDROM.LST -d language XCDROM.ASM
;
; Naleæy zauwaæyÜ, æe warunek -d language powoduje, æe asembler odczytuje
; plik XCDMSGS.TXT zamiast domyòlnego pliku XCDMSGS.ENG.
;
; Poniæsze ZASADY maj• zastosowanie do modyfikacji komunikat¢w pokazanych poniæej:
;
;  A) Wszystkie ETYKIETY komunikat¢w ("XCMsg" itp.) musz• pozostaÜ bez zmian.
;
;  B) Wszystkie bajty CR, LF i ko‰cowy bajt $ musz• pozostaÜ bez zmian. Tylko
;     bajty TEKSTU komunikatu (litery, cyfry i znaki interpunkcyjne) podlegaj•
;     zmianom.
;
;  C) Musz• istnieÜ co najmniej 42 znaki od pocz•tku "XCMsg" do pocz•tku
;     "Suffix", poniewaæ sterownik odczytuje 40 bajt¢w danych do tego obszaru
;     (nazw© kaædego nap©du) i dodaje ko‰cowy znak $, przed wyòwietleniem
;     ostatecznej nazwy nap©du CD-ROM.
;
;  D) Inne komunikaty MODYFIKOWANE podczas inicjalizacji sterownika to:
;
;	1) 8 bajt¢w nazwy sterownika w "DvrMsg1".
;	2) 4 bajty adresu kontrolera w "CtlrAdr".
;	3) 8 bajt¢w I.D. kontrolera w "CtlrID".
;	4) Bajt numeru jednostki nap©du w "UMsgNo".
;	5) 4 bajty trybu UltraDMA w "UDMode".
;
; Jako przykàad "internacjonalizacji" por¢wnaj plik XDMAMSGS.ENG z plikiem
; XDMAMSGS.NL, z kt¢rych oba s• doà•czone do bieæ•cego pakietu sterownik¢w XDMA.
; XDMAMSGS.NL tàumaczy wszystkie komunikaty inicjalizacji XDMA na j©zyk holenderski.
; Ten plik zostaà napisany przez Bernda Blaauwa, kt¢ry zasugerowaà uczynienie
; XDMA, a teraz XCDROM, sterownikami "mi©dzynarodowymi".
;
;
XCMsg	db	CR,LF,'GCDROM '
	db	VER		;XCDROM.ASM dostarcza wersj© i dat©!
	db	CR,LF,'$'
DvrMsg	db	'Nazwa sterownika to "'
DvrMsg1	db	'        "$'
CtlrMsg	db	'Kontroler SATA Native IDE pod adresem I-O '
CtlrAdr0 db	'xxxxh/'
CtlrAdr	db	'xxxxh, Chip I.D. '
CtlrID	db	'xxxxxxxxh.',CR,LF,'$'
VEMsg	db	'.',CR,LF,'Bà•d inicjalizacji VDS$'
LEMsg	db	'.',CR,LF,'/L Nieprawidàowy$'
SyEMsg	db	'.',CR,LF,'Bù§D '
SyMsg	db	'Synchronizacja I-O ze sterownikiem XDMA$'
PRMsg	db	'Brak procesora 80386+'
Suffix	db	'; GCDROM nie zostaà zaàadowany!',CR,LF,'$'
UnitMsg	db	'Jednostka '
UMsgNo	db	'0:  $'
TOMsg	db	' limit czasu wyboru urz•dzenia$'
IDMsg	db	' Bà•d Identify Device$'
NCMsg	db	' nie jest ATAPI CD-ROM$'
NDMsg	db	'Brak nap©du CD-ROM drive do uæycia$'
PriMsg	db	'Podstawowy-$'
SecMsg	db	'Pomocniczy-$'
MstMsg	db	'master$'
SlvMsg	db	'slave$'
ComMsg	db	', $'
UDMsg	db	', ATA-'
UDMode	db	'   $'
PIOMsg	db	', tryb PIO$'
CRMsg	db	'.',CR,LF,'$'
