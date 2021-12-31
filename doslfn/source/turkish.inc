;TÅrkáe áeviriler:	;(DOS CP857)
dz	10							;0
dz    "yÅksek"							;1
dz    "%u bayt kullanarak yÅklendi."				;2
dz 10,"%s Unicode tablo dosyasç bulunamadç/aáçlamadç!"		;3
dz 10,"%s dosyasçnda yanlçü iáerik veya okunamçyor!"		;4
dz    "devre dçüç."						;5
dz 10,"(Baüka bir TSR Int21 ve/veya Int2F kesmesini aldç)"	;6
dz    "HenÅz kurulmadç!"					;7
dz    "En az 386 iülemcisine gereksinim duyar!"			;8
dz    "seáenekler alçndç"					;9
db    "	(386+)	++ FREEWARE ++",10			;10
db   "DOS iáin uzun dosya adlarçnç destekleyen program.",10
db   "BU PROGRAMI RòSKò SòZ öSTLENEREK KULLANIN, VERò KAYBI OLABòLòR",10
db   "Kullançm:- (boü)		TSR'i yÅkle ve/veya etkinleütir",10
db   "		- h veya ?	bu yardçmç gîster",10
db   "		- d		DOSLFN'i devre dçüç bçrak",10
db   "		- s		durum ve ayarlarç gîster",10
ifdef PROFILE
db   "		- p		profil verilerini gîster",10
db   "		- pr		profil verilerini sçfçrla",10
db   "		- pc		profil zamanlamasçnç kalibre et",10
endif
db   "		- u		TSR'yi bellekten kaldçr",10
db   "Seáenekler:	- w{+|-}	* yazma eriüimi",10
db   "		- ~{+|-}	* NameNumericTail - tilde kullançmç",10
db   "		- t{+|-}	* PreserveLongNames - tÅnel etkisi",10
db   "		- f{+|-}	* geri dînÅü kipi - tÅm sÅrÅcÅlere LFN saßla",10
db   "		- c{+|-}	* CD-ROM desteßi",10
db   "		- i{+|-}	* InDOS bayraßçyla kilidi yeniden gir + SöRöCöYö SIFIRLA",10
db   "		- r{+|-}	* CD-ROM dosyalarç iáin saltokunur bit",10
if USEWINTIME
db   "		- o[N]		* Saat dilimini ayarla veya mevcut deßilse oku",10
endif
db   "		- z[:|=]tablo	Unicode tablosunu yÅkle (Volkov .TBL biáimi)",10
db   "		- m[:|=]bayt	dahili yçßçn iáin boyut beyan et, 600..50000",10
db   "		- ms[:|=]bayt	kçsa yolun boyutunu beyan et, 16..141",10
db   "		- ml[:|=]bayt	uzun yolun boyutunu beyan et, 16..1024",10
db   "		- mn[:|=]bayt	uzun adçn boyutunu beyan et, 13..512",10
db   "		- p[:|=]yol 	.TBL/.JLT/.386 iáin áalçüma dizinini beyan et",10
db   "		- l{d|e|f|t}	dili ayarla (Almanca|òngilizce|Fransçzca|TÅrkáe)",10
db   "Ortam: 		TZ=xxxNyyy	saat dilimi dînÅüÅmÅ iáin N saat dilimi, yaz saati yok",10
db   "E-posta: %s",10
db   "òndirme: %s",10
dz   "         %s"

dz   "etkin"							;11
dz   "etkinleütirildi."					;12
dz   "bellekten kaldçrçldç."					;13
dz   "%7lu okuma eriüimi"					;14
dz   "%7lu yazma eriüimi"					;15
dz   "%7lu Int21/AH=71 áaßrçsç"				;16
dz   "yazma eriüimi"						;17
dz   "tilde kullançmç"					;18
dz   "tÅnel etkisi"						;19
dz   "CD-ROM desteßi"						;20
dz   "geri dînÅü kipi"					;21
dz   "CD dosyalarçnda ayarlanan salt-okunur bit"		;22
dz   "geáersiz yçßçn boyutu"					;23
dz   "AÄIK"							;24
dz   "KAPALI"							;25
dz   "%35s %s",10						;26
dz   "dizin mevcut deßil!"					;27
dz   "áalçüma dizini ayarlanamaz"				;28
dz   "yçßçn yeniden boyutlandçrçlamaz"			;29
dz   "seáenek reddedildi"					;30
dz			 " - ìnce TSR'i bellekten kaldçr"	;31
dz    "DOS'çn en az 4. sÅrÅmÅne gereksinim duyar!"		;32
dz 10,"Bu program bu Windows sÅrÅmÅnÅn DOS penceresinde iüe áalçümaz!";33
dz   "Yçßçn: Boyut %u, Kullançlan %u, Boü=%u, Azami mevcut=%u bayt",10 ;34
dz   "Son hata: %u - "					;35  =   0
dz			"kullançcç yazma eriüimini reddetti"		;1
dz			"FAT dizini geniületilemedi"			;2
dz			"Joliet Baßlantç Tablosu bulunamadç"		;3
dz			"bellek yetersiz - yçßçnç artçrçn"		;4
dz			"Unicode tablosu kendilißinden yÅklenemedi" 	;5
dz   "InDOS bayraßç ve sÅrÅcÅ kullançmçnç SIFIRLA"		;41
if USEWINTIME
dz   "Saat dilimi:"					;42
dz   "%35s UTC%+d",10						;43
endif
ifdef PROFILE
dz   "Profil.",10						;ProfileNr
dz   "Profil sçfçrlandç.",10					;+1
dz   "%7lu %2d.%03d %s",10					;+2
dz   "Profil kalibre ediliyor.",10				;+3
dz   "Profil zamanlayçcç deßiümezi = %lu000",10		;+4
dz   "Kalibrasyon áalçümasç sçrasçnda hata",10		;+5
endif
