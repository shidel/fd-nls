#
# FDNPKG language file
#
# Language..: Polish
# Codepage..: MAZOVIA
# Translator: Mateusz Viste
#


#### Help ####

1.0:Sieciowy menadæer pakiet¢w dla FreeDOS.
1.1:Skàadnia: FDNPKG akcja [parametry]
1.2:Gdzie akcja to jedno z poniæszych:
1.3: search [string]   - wyszukuje w repozytoriach pakiety zawieraj•ce 'string'
1.4: vsearch [string]  - to samo co 'search', ale wyòwietla takæe repozytoria
1.5: install pkg       - instaluje pakiet 'pkg' (lub lokalny plik zip)
1.6: remove pkg        - usuwa pakiet 'pkg'
1.7: dumpcfg           - wyòwietla konfiguracj© wczytan• z pliku cfg
1.8: license           - wyòwietla licencj© programu
1.9:FDNPKG jest podlinkowany z WatTCP w poniæszej wersji:
1.10: install-nosrc pkg - instaluje pakiet 'pkg' (lub lokalny plik zip) bez ´r¢deà
1.11: install-wsrc pkg  - instaluje pakiet 'pkg' (lub lokalny plik zip) ze ´r¢dàami
1.12: showinstalled [str] - wyòwietla zainstalowane pakiety zawieraj•ce 'str'
1.13: checkupdates      - sprawdza dost©pne uaktualnienia pakiet¢w i je wyòwietla
1.14: update pkg        - uaktualnia pakiet 'pkg' do nowszej wersji
1.15: update [pkg]      - uaktualnia pakiet 'pkg' (lub wszystkie pakiety)
1.16: listlocal [str]   - wyòwietla zainstalowane pakiety zawieraj•ce 'str'
1.17:FDNPKG jest podlinkowany z Watt-32 w poniæszej wersji:
1.18: listfiles pkg     - wyòwietla pliki naleæ•ce do pakietu 'pkg'


### General stuff ####

2.0:%TEMP% nie ustawione! Ustaw by wskazywaào na tymczasowy katalog.
2.1:Przykàad: SET TEMP=C:\\TEMP
2.2:%DOSDIR% nie ustawione! Ustaw by wskazywaào na katalog instalacji FreeDOS.
2.3:Przykàad: SET DOSDIR=C:\\FDOS
2.4:Nieprawidàowa liczba parametr¢w. Uruchom bez parametr¢w by uzyskaÜ pomoc.
2.5:Brak skonfigurowanych repozytori¢w. Ustaw przynajmniej jeden.
2.6:Dodaj do pliku konfiguracyjnego przynajmniej jeden wpis w takiej formie:
2.7:REPO www.freedos.org/repo
2.8:Poniæej lista skonfigurowanych repozytori¢w fdnpkg:
2.9:Odòwieæanie %s...
2.10:òci•ganie repozytorium nie powiodào si©!
2.11:Bà•d podczas àadowania repozytorium z pliku tmp...
2.12:UWAGA: %TZ% nie ustawione! daty na instalowanych plikach mog• byÜ nieòcisàe.
2.13:Baza danych pakiet¢w zaàadowana z pami©ci podr©cznej.
2.14:Brak pami©ci! (%s)
2.15:Bù§D: inicjalizacja TCP/IP nie powiodàa si©!
2.16:ùadowanie %s...
2.17:UWAGA: Niski poziom pami©ci wirtualnej. FDNPKG moæe zachowywaÜ si© bà©dnie.
2.18:Bù§D: Nie moæna pisaÜ w katalogu '%s'. Sprawd´ ustawienie zmiennej %%TEMP%%.


#### Installing package ####

3.0:Pakiet %s jest juæ zainstalowany! Usu‰ go najpierw jeòli chcesz uaktualniÜ.
3.1:Nie znaleziono pakietu '%s' w repozytoriach.
3.2:Pakiet '%s' jest niedost©pny w repozytoriach.
3.3:%s jest dost©pny z kilku repozytori¢w. Wybierz kt¢ry uæyÜ:
3.4:Tw¢j wyb¢r:
3.5:Nieprawidàowy wyb¢r!
3.6:òci•ganie pakietu %s...
3.7:Bà•d podczas òci•gania pakietu.
3.8:Bà•d: Nieprawidàowe archiwum zip! Pakiet nie zostaà zainstalowany.
3.9:Bà•d: Pakiet zawiera plik kt¢ry juæ istnieje lokalnie:
3.10:Bà•d: Nie udaào si© stworzyÜ %s!
3.11:Pakiet %s zostaà zainstalowany.
3.12:Bà•d: Pakiet nie zawiera pliku %s! Nieprawidàowy pakiet FreeDOS.
3.13:Bà•d: òci•gni©ty pakiet zawiera bà©dne CRC. Instalacja przerwana.
3.14:Bà•d: Nie udaào si© otworzyÜ òci•gni©tego pakietu. Instalacja przerwana.
3.15:Bà•d: Brak pami©ci podczas obliczania CRC pakietu!
3.16:Pakiet %s zostaà zainstalowany (wraz ze ´r¢dàami, jeòli dost©pne).
3.17:Pakiet %s zostaà zainstalowany (bez ´r¢deà).
3.18:Pakiet %s jest juæ zainstalowany! Zobacz akcj© 'update'.
3.19:Pakiet %s zostaà zainstalowany: rozpakowano %d plik¢w, %d bà©d¢w.
3.20:Bà•d: Pakiet zawiera zaszyfrowany plik:
3.21:Bà•d: Nie udaào si© otworzyÜ pliku link '%s' dla odczytu.
3.22:Bà•d: Nie udaào si© otworzyÜ pliku link '%s' dla zapisu.
3.23:Bà•d: Pakiet zawiera plik o nieprawidàowej nazwie:


#### Removing package ####

4.0:Pakiet %s nie jest zainstalowany, wi©c nie wykasowany.
4.1:Bà•d podczas dost©pu do pliku lst!
4.2:Limit dirlist osi•gni©ty. Katalog %s nie zostanie usuni©ty!
4.3:Brak pami©ci! Nie zapami©tano katalogu %s!
4.4:usuwanie %s
4.5:Pakiet %s zostaà usuni©ty.


#### Searching package ####

5.0:Ωaden pakiet nie pasuje do wyszukiwania.
5.1:Brak pami©ci podczas przetwarzania opisu pakietu!


#### Package database handling ####

6.0:Bà•d: Nieprawidàowy plik indeksu (bà©dny nagà¢wek)! Repozytorium zignorowane.
6.1:Bà•d: Nieprawidàowy plik indeksu! Repozytorium zignorowane.
6.2:Bà•d: Brak pami©ci podczas àadowania bazy danych!
6.3:Bà•d: Nie zdoàano otworzyÜ pliku danych '%s'.
6.4:Uwaga: Nie zdoàano otworzyÜ pliku pami©ci podr©cznej %s!


#### Loading configuration ####

7.0:Bà•d: repozytorium '%s' jest skonfigurowane dwa razy!
7.1:Bà•d: nie zdoàano otworzyÜ pliku konfiguracyjnego '%s'!
7.2:Uwaga: token bez wartoòci w linii #%d
7.3:Uwaga: zbyt dàugi token konfiguracyjny w linii #%d
7.4:Uwaga: token z pust• wartoòci• w linii #%d
7.5:Uwaga: spacja po wartoòci w linii #%d
7.6:Odrzucono repozytorium: zbyt wiele skonfigurowanych (maks=%d)
7.8:Uwaga: Nieznany token '%s' w linii #%d
7.9:Uwaga: zbyt dàuga wartoòÜ w pliku konfiguracyjnym w linii #%d
7.10:Uwaga: Nieprawidàowa wartoòÜ '%s' w linii #%d
7.11:Uwaga: Nieprawidàowe polecenie 'DIR' w linii #%d
7.12:Bà•d: za dàuga òcieæka DIR w linii #%d
7.13:Bà•d: Nieistniej•ca zmienna òrodowiskowa '%s' w linii #%d
7.14:Bà•d: repozytorium '%s' jest skonfigurowane dwa razy!
7.15:Bà•d: katalog specjalny '%s' nie jest prawidàow• òcieæk•!
7.16:Bà•d: katalog specjalny '%s' jest zarezerwowan• nazw•!


#### Unziping package ####

8.0:Brak pami©ci!
8.1:nieznana sygnatura zip: 0x%08lx
8.2:Bà•d: Pakiet zawiera plik skompresowany nieznan• metod© (%d):
8.3:Bà•d podczas rozpakowywania '%s' do '%s'!


#### Handling the local list of installed packages ####

9.0:Bà•d: Dost©p do katalogu %s nie powi¢dà si©.
9.1:Bà•d: Nie znaleziono lokalnego pakietu %s.


#### Package updates ####

10.0:%s (wersja lokalna: %s)
10.1:wersja %s pod %s
10.2:Nie znaleziono aktualizacji dla pakietu '%s'.
10.3:Znaleziono aktualizacj© dla pakietu '%s'. Aktualizacja w toku...
10.4:Zaktualizowano %d pakiet¢w, %d bà©dnych pakiet¢w.
10.5:Znaleziono aktualizacje dla %d pakiet¢w.
10.6:Pakiet %s nie jest zainstalowany.
10.7:Poszukiwanie aktualizacji...


#### Downloading ####

11.0:òci•ganie %s... %ld bajt¢w
