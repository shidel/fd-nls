;T�rk�e �eviriler:	;(DOS CP857)
dz	10							;0
dz    "y�ksek"							;1
dz    "%u bayt kullanarak y�klendi."				;2
dz 10,"%s Unicode tablo dosyas� bulunamad�/a��lamad�!"		;3
dz 10,"%s dosyas�nda yanl�� i�erik veya okunam�yor!"		;4
dz    "devre d���."						;5
dz 10,"(Ba�ka bir TSR Int21 ve/veya Int2F kesmesini ald�)"	;6
dz    "Hen�z kurulmad�!"					;7
dz    "En az 386 i�lemcisine gereksinim duyar!"			;8
dz    "se�enekler al�nd�"					;9
db    "	(386+)	++ FREEWARE ++",10			;10
db   "DOS i�in uzun dosya adlar�n� destekleyen program.",10
db   "BU PROGRAMI R�SK� S�Z �STLENEREK KULLANIN, VER� KAYBI OLAB�L�R",10
db   "Kullan�m:- (bo�)		TSR'i y�kle ve/veya etkinle�tir",10
db   "		- h veya ?	bu yard�m� g�ster",10
db   "		- d		DOSLFN'i devre d��� b�rak",10
db   "		- s		durum ve ayarlar� g�ster",10
ifdef PROFILE
db   "		- p		profil verilerini g�ster",10
db   "		- pr		profil verilerini s�f�rla",10
db   "		- pc		profil zamanlamas�n� kalibre et",10
endif
db   "		- u		TSR'yi bellekten kald�r",10
db   "Se�enekler:	- w{+|-}	* yazma eri�imi",10
db   "		- ~{+|-}	* NameNumericTail - tilde kullan�m�",10
db   "		- t{+|-}	* PreserveLongNames - t�nel etkisi",10
db   "		- f{+|-}	* geri d�n�� kipi - t�m s�r�c�lere LFN sa�la",10
db   "		- c{+|-}	* CD-ROM deste�i",10
db   "		- i{+|-}	* InDOS bayra��yla kilidi yeniden gir + S�R�C�Y� SIFIRLA",10
db   "		- r{+|-}	* CD-ROM dosyalar� i�in saltokunur bit",10
if USEWINTIME
db   "		- o[N]		* Saat dilimini ayarla veya mevcut de�ilse oku",10
endif
db   "		- z[:|=]tablo	Unicode tablosunu y�kle (Volkov .TBL bi�imi)",10
db   "		- m[:|=]bayt	dahili y���n i�in boyut beyan et, 600..50000",10
db   "		- ms[:|=]bayt	k�sa yolun boyutunu beyan et, 16..141",10
db   "		- ml[:|=]bayt	uzun yolun boyutunu beyan et, 16..1024",10
db   "		- mn[:|=]bayt	uzun ad�n boyutunu beyan et, 13..512",10
db   "		- p[:|=]yol 	.TBL/.JLT/.386 i�in �al��ma dizinini beyan et",10
db   "		- l{d|e|f|t}	dili ayarla (Almanca|�ngilizce|Frans�zca|T�rk�e)",10
db   "Ortam: 		TZ=xxxNyyy	saat dilimi d�n���m� i�in N saat dilimi, yaz saati yok",10
db   "E-posta: %s",10
db   "�ndirme: %s",10
dz   "         %s"

dz   "etkin"							;11
dz   "etkinle�tirildi."					;12
dz   "bellekten kald�r�ld�."					;13
dz   "%7lu okuma eri�imi"					;14
dz   "%7lu yazma eri�imi"					;15
dz   "%7lu Int21/AH=71 �a�r�s�"				;16
dz   "yazma eri�imi"						;17
dz   "tilde kullan�m�"					;18
dz   "t�nel etkisi"						;19
dz   "CD-ROM deste�i"						;20
dz   "geri d�n�� kipi"					;21
dz   "CD dosyalar�nda ayarlanan salt-okunur bit"		;22
dz   "ge�ersiz y���n boyutu"					;23
dz   "A�IK"							;24
dz   "KAPALI"							;25
dz   "%35s %s",10						;26
dz   "dizin mevcut de�il!"					;27
dz   "�al��ma dizini ayarlanamaz"				;28
dz   "y���n yeniden boyutland�r�lamaz"			;29
dz   "se�enek reddedildi"					;30
dz			 " - �nce TSR'i bellekten kald�r"	;31
dz    "DOS'�n en az 4. s�r�m�ne gereksinim duyar!"		;32
dz 10,"Bu program bu Windows s�r�m�n�n DOS penceresinde i�e �al��maz!";33
dz   "Y���n: Boyut %u, Kullan�lan %u, Bo�=%u, Azami mevcut=%u bayt",10 ;34
dz   "Son hata: %u - "					;35  =   0
dz			"kullan�c� yazma eri�imini reddetti"		;1
dz			"FAT dizini geni�letilemedi"			;2
dz			"Joliet Ba�lant� Tablosu bulunamad�"		;3
dz			"bellek yetersiz - y���n� art�r�n"		;4
dz			"Unicode tablosu kendili�inden y�klenemedi" 	;5
dz   "InDOS bayra�� ve s�r�c� kullan�m�n� SIFIRLA"		;41
if USEWINTIME
dz   "Saat dilimi:"					;42
dz   "%35s UTC%+d",10						;43
endif
ifdef PROFILE
dz   "Profil.",10						;ProfileNr
dz   "Profil s�f�rland�.",10					;+1
dz   "%7lu %2d.%03d %s",10					;+2
dz   "Profil kalibre ediliyor.",10				;+3
dz   "Profil zamanlay�c� de�i�mezi = %lu000",10		;+4
dz   "Kalibrasyon �al��mas� s�ras�nda hata",10		;+5
endif
