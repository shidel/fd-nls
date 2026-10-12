# fdnpkg, polish, pl, cp852
# This translation was created by Google AI.
# Please help the FreeDOS group to improve it.
#

#### Help ####

1.0:To jest sieciowy menedæer pakiet¢w dla FreeDOS.
1.1:Uæycie: FDNPKG akcja [parametry]
1.2:Gdzie akcja to jedno z poniæszych:
1.3: search [tekst]    - szukaj w repozytoriach pakietu zawieraj•cego 'tekst'
1.4: vsearch [tekst]   - jak 'search', ale wypisuje teæ repozytoria ´r¢dàowe
1.5: install pkg       - zainstaluj pakiet 'pkg' (lub lokalny plik zip)
1.6: remove pkg        - usu‰ pakiet 'pkg'
1.7: dumpcfg           - wypisz konfiguracj© wczytan• z pliku cfg
1.8: license           - wypisz licencj© tego programu
1.9:FDNPKG jest skompilowany z poniæsz• wersj• WatTCP:
1.10: install-nosrc pkg - instaluj pakiet 'pkg' (lub plik zip) bez ´r¢deà
1.11: install-wsrc pkg  - instaluj pakiet 'pkg' (lub plik zip) ze ´r¢dàami
1.12: showinstalled [str] - pokaæ list© zainstalowanych pakiet¢w z 'str'
1.13: checkupdates      - sprawd´ dost©pne aktualizacje pakiet¢w i pokaæ je
1.14: update pkg        - zaktualizuj pakiet 'pkg' do nowszej wersji
1.15: update [pkg]      - zaktualizuj 'pkg' (lub wszystkie) do nowszej wersji
1.16: listlocal [str]   - wypisz wszystkie lokalne pakiety zawieraj•ce 'str'
1.17:FDNPKG jest skompilowany z poniæsz• wersj• Watt-32:
1.18: listfiles pkg     - wypisz pliki naleæ•ce do pakietu 'pkg'
1.19: clearcache        - wyczyòÜ lokaln• pami©Ü podr©czn• FDNPKG


### General stuff ####

2.0:%TEMP% nieustawiona! Powinna wskazywaÜ na zapisywalny katalog.
2.1:Przykàad: SET TEMP=C:\\TEMP
2.2:%DOSDIR% nieustawiona! Powinna wskazywaÜ na gà¢wny katalog FreeDOS.
2.3:Przykàad: SET DOSDIR=C:\\FDOS
2.4:Nieprawidàowa liczba argument¢w. Uruchom fdnpkg bez parametr¢w dla pomocy.
2.5:Nie skonfigurowano æadnego repozytorium. Potrzebujesz co najmniej jednego.
2.6:UmieòÜ w swoim pliku konfiguracyjnym co najmniej jeden taki wpis:
2.7:REPO www.freedos.org/repo
2.8:Oto lista skonfigurowanych repozytori¢w fdnpkg:
2.9:Odòwieæanie %s...
2.10:Pobieranie repozytorium nie powiodào si©!
2.11:Wyst•pià bà•d podczas pr¢by wczytania repozytorium z pliku tmp...
2.12:Ostrzeæenie: %TZ% nieustawiona! Znaczniki czasu mog• byÜ niedokàadne.
2.13:Baza danych pakiet¢w wczytana z lokalnej pami©ci podr©cznej.
2.14:Brak pami©ci! (%s)
2.15:Bà•d: Inicjalizacja TCP/IP nie powiodàa si©!
2.16:Wczytywanie %s...
2.17:OSTRZEΩENIE: Za maào pami©ci wirtualnej. FDNPKG moæe dziaàaÜ niestabilnie.
2.18:Bù§D: Nie moæna pisaÜ w katalogu '%s'. Sprawd´ zmienn• %%TEMP%%.
2.19:Pami©Ü podr©czna wyczyszczona.


#### Installing package ####

3.0:Pakiet %s jest juæ zainstalowany! Najpierw go usu‰, aby zaktualizowaÜ.
3.1:Nie znaleziono pakietu '%s' w repozytoriach online.
3.2:Pakiet '%s' nie jest dost©pny w repozytoriach.
3.3:%s jest dost©pny w kilku repozytoriach. Wybierz, kt¢rego uæyÜ:
3.4:Tw¢j wyb¢r:
3.5:Nieprawidàowy wyb¢r!
3.6:Pobieranie pakietu %s...
3.7:Bà•d pobierania pakietu. Przerwano.
3.8:Bà•d: Nieprawidàowe archiwum zip! Pakiet nie zostaà zainstalowany.
3.9:Bà•d: Pakiet zawiera plik, kt¢ry juæ istnieje lokalnie:
3.10:Bà•d: Nie moæna utworzyÜ %s!
3.11:Pakiet %s zainstalowany.
3.12:Bà•d: Pakiet nie zawiera pliku %s! Nie jest to poprawny pakiet FreeDOS.
3.13:Bà•d: Pobrany pakiet ma bà©dne CRC. Instalacja przerwana.
3.14:Bà•d: Nie udaào si© otworzyÜ pobranego pakietu. Instalacja przerwana.
3.15:Bà•d: Brak pami©ci podczas obliczania CRC pakietu!
3.16:Pakiet %s zainstalowany (ze ´r¢dàami, jeòli s• dost©pne).
3.17:Pakiet %s zainstalowany (bez ´r¢deà).
3.18:Pakiet %s jest juæ zainstalowany! Moæesz chcieÜ uæyÜ akcji 'update'.
3.19:Pakiet %s zainstalowany: rozpakowano %d plik¢w, %d bà©d¢w.
3.20:Bà•d: Pakiet zawiera zaszyfrowany plik:
3.21:Bà•d: Nie udaào si© otworzyÜ pliku linku '%s' do odczytu.
3.22:Bà•d: Nie udaào si© otworzyÜ pliku linku '%s' do zapisu.
3.23:Bà•d: Pakiet zawiera nieprawidàow• nazw© pliku:


#### Removing package ####

4.0:Pakiet %s nie jest zainstalowany, wi©c nie zostaà usuni©ty.
4.1:Bà•d otwierania pliku lst!
4.2:Osi•gni©to limit Dirlist. Katalog %s nie zostanie usuni©ty!
4.3:Brak pami©ci! Nie moæna przechowaÜ katalogu %s!
4.4:usuwanie %s
4.5:Pakiet %s zostaà usuni©ty.


#### Searching package ####

5.0:Ωaden pakiet nie pasuje do wyszukiwania.
5.1:Brak pami©ci podczas przetwarzania opis¢w pakiet¢w!


#### Package database handling ####

6.0:Bà•d: Nieprawidàowy plik indeksu (zày nagà¢wek)! Pomini©to repozytorium.
6.1:Bà•d: Nieprawidàowy plik indeksu! Pomini©to repozytorium.
6.2:Bà•d: Brak pami©ci podczas wczytywania bazy danych pakiet¢w!
6.3:Bà•d: Nie moæna otworzyÜ pliku danych w '%s'.
6.4:Ostrzeæenie: Nie moæna otworzyÜ pliku pami©ci podr©cznej db w %s!
6.5:WiadomoòÜ od %s:


#### Loading configuration ####

7.0:Bà•d: repozytorium '%s' wyst©puje dwa razy!
7.1:Bà•d: Nie moæna otworzyÜ pliku konfiguracyjnego '%s'!
7.2:Ostrzeæenie: token bez wartoòci w linii #%d
7.3:Ostrzeæenie: Przepeànienie tokenu w pliku konfiguracyjnym w linii #%d
7.4:Ostrzeæenie: token z pust• wartoòci• w linii #%d
7.5:Ostrzeæenie: ko‰cowe spacje po wartoòci w linii #%d
7.6:Odrzucono repozytorium: za duæo skonfigurowanych (maks=%d)
7.8:Ostrzeæenie: Nieznany token '%s' w linii #%d
7.9:Ostrzeæenie: Przepeànienie wartoòci w pliku konfiguracyjnym w linii #%d
7.10:Ostrzeæenie: Zignorowano niedozwolon• wartoòÜ '%s' w linii #%d
7.11:Ostrzeæenie: Znaleziono nieprawidàow• dyrektyw© 'DIR' w linii #%d
7.12:Bà•d: Zbyt dàuga òcieæka DIR w linii #%d
7.13:Bà•d: Znaleziono nieistniej•c• zmienn• òrodowiskow• '%s' w linii #%d
7.14:Bà•d: repozytorium '%s' wyst©puje dwa razy!
7.15:Bà•d: wàasny katalog '%s' nie jest prawidàow• òcieæk• bezwzgl©dn•!
7.16:Bà•d: wàasny katalog '%s' jest nazw• zastrzeæon•!


#### Unzipping package ####

8.0:Brak pami©ci!
8.1:nieznana sygnatura zip: 0x%08lx
8.2:Bà•d: Pakiet ma plik skompresowany nieobsàugiwan• metod• (%d):
8.3:Bà•d podczas rozpakowywania '%s' do '%s'!


#### Handling the local list of installed packages ####

9.0:Bà•d: Brak dost©pu do katalogu %s.
9.1:Bà•d: Nie znaleziono lokalnego pakietu %s.


#### Package updates ####

10.0:%s (wersja lokalna: %s)
10.1:wersja %s w %s
10.2:Nie znaleziono aktualizacji dla pakietu '%s'.
10.3:Znaleziono aktualizacj© dla '%s'. Trwa aktualizacja...
10.4:Zaktualizowano pakiet¢w: %d, nie powiodào si©: %d.
10.5:Znaleziono %d aktualizacj©(i) pakiet¢w.
10.6:Pakiet %s nie jest zainstalowany.
10.7:Szukanie aktualizacji...


#### Downloading ####

11.0:Pobieranie %s... %ld bajt¢w

