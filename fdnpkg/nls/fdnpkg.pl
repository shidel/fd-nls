# Language: Polish
# Codepage: 852
# Translation: reviewed by Piotr Okrutny in Weblate, 2026-10 (human review, AI-assisted draft)
# Based on: translation by Mateusz Viste (2009), see ../nls-old-mazovia/
# Source: fdnpkg.pl.UTF-8; fdnpkg.pl (CP852) and fdnpkg.mz (Mazovia) are generated from it - edit only the UTF-8 file.

#### Help ####

1.0:Sieciowy menedæer pakiet¢w dla systemu FreeDOS.
1.1:Uæycie: FDNPKG akcja [parametry]
1.2:gdzie akcja to jedna z poniæszych:
1.3: search [tekst]    - szuka w repozytoriach pakiet¢w zawieraj•cych 'tekst'
1.4: vsearch [tekst]   - jak 'search', ale wyòwietla teæ repozytoria ´r¢dàowe
1.5: install pkg       - instaluje pakiet 'pkg' (lub lokalny plik zip)
1.6: remove pkg        - odinstalowuje pakiet 'pkg'
1.7: dumpcfg           - wyòwietla konfiguracj© wczytan• z pliku cfg
1.8: license           - wyòwietla licencj© programu
1.9:FDNPKG korzysta z poniæszej wersji Watt-32:
1.10: install-nosrc pkg - instaluje pakiet 'pkg' (lub lokalny plik zip) bez ´r¢deà
1.11: install-wsrc pkg  - instaluje pakiet 'pkg' (lub lokalny plik zip) ze ´r¢dàami
1.12: showinstalled [tekst] - pokazuje zainstalowane pakiety zawieraj•ce 'tekst'
1.13: checkupdates      - sprawdza i wyòwietla dost©pne aktualizacje pakiet¢w
1.14: update pkg        - aktualizuje pakiet 'pkg' do nowszej wersji
1.15: update [pkg]      - aktualizuje 'pkg' (bez parametru: wszystkie pakiety)
1.16: listlocal [tekst] - pokazuje zainstalowane pakiety zawieraj•ce 'tekst'
1.17:FDNPKG korzysta z poniæszej wersji Watt-32:
1.18: listfiles pkg     - pokazuje pliki naleæ•ce do pakietu 'pkg'
1.19: clearcache        - czyòci lokaln• pami©Ü podr©czn• FDNPKG


### General stuff ####

2.0:Brak zmiennej %TEMP%! Ustaw j• na katalog z prawem zapisu.
2.1:Przykàad: SET TEMP=C:\\TEMP
2.2:Brak zmiennej %DOSDIR%! Ustaw j• na gà¢wny katalog FreeDOS.
2.3:Przykàad: SET DOSDIR=C:\\FDOS
2.4:Nieprawidàowa liczba argument¢w. Pomoc: uruchom FDNPKG bez parametr¢w.
2.5:Nie skonfigurowano æadnego repozytorium. Potrzebne jest co najmniej jedno.
2.6:Dodaj do pliku konfiguracyjnego co najmniej jeden wpis w takiej postaci:
2.7:REPO www.freedos.org/repo
2.8:Skonfigurowane repozytoria FDNPKG:
2.9:Odòwieæanie %s...
2.10:Nie udaào si© pobraÜ repozytorium!
2.11:Bà•d podczas wczytywania repozytorium z pliku tymczasowego...
2.12:Ostrzeæenie: brak zmiennej %TZ%! Daty instalowanych plik¢w mog• byÜ bà©dne.
2.13:Baza pakiet¢w wczytana z lokalnej pami©ci podr©cznej.
2.14:Za maào pami©ci! (%s)
2.15:Bà•d: nie udaào si© zainicjowaÜ TCP/IP!
2.16:Wczytywanie %s...
2.17:OSTRZEΩENIE: za maào pami©ci wirtualnej. FDNPKG moæe dziaàaÜ niestabilnie.
2.18:Bù§D: nie moæna zapisywaÜ w katalogu '%s'. Sprawd´ zmienn• %%TEMP%%.
2.19:Pami©Ü podr©czna wyczyszczona.


#### Installing package ####

3.0:Pakiet %s jest juæ zainstalowany! Aby go zaktualizowaÜ, najpierw go odinstaluj.
3.1:Nie znaleziono pakietu '%s' w repozytoriach sieciowych.
3.2:Pakiet '%s' nie jest dost©pny w repozytoriach.
3.3:Pakiet %s jest dost©pny w kilku repozytoriach. Wybierz, kt¢rego uæyÜ:
3.4:Tw¢j wyb¢r:
3.5:Nieprawidàowy wyb¢r!
3.6:Pobieranie pakietu %s...
3.7:Bà•d pobierania pakietu. Przerwano.
3.8:Bà•d: nieprawidàowe archiwum ZIP! Pakiet nie zostaà zainstalowany.
3.9:Bà•d: pakiet zawiera plik, kt¢ry juæ istnieje na dysku:
3.10:Bà•d: nie moæna utworzyÜ %s!
3.11:Pakiet %s zostaà zainstalowany.
3.12:Bà•d: pakiet nie zawiera pliku %s! To nie jest prawidàowy pakiet FreeDOS.
3.13:Bà•d: pobrany pakiet ma nieprawidàow• sum© CRC. Instalacja przerwana.
3.14:Bà•d: nie moæna otworzyÜ pobranego pakietu. Instalacja przerwana.
3.15:Bà•d: za maào pami©ci do obliczenia sumy CRC pakietu!
3.16:Pakiet %s zostaà zainstalowany (ze ´r¢dàami, jeòli s• dost©pne).
3.17:Pakiet %s zostaà zainstalowany (bez ´r¢deà).
3.18:Pakiet %s jest juæ zainstalowany! Uæyj akcji 'update'.
3.19:Pakiet %s zainstalowany: rozpakowano plik¢w: %ld, bà©d¢w: %ld.
3.20:Bà•d: pakiet zawiera zaszyfrowany plik:
3.21:Bà•d: nie moæna otworzyÜ pliku à•cza '%s' do odczytu.
3.22:Bà•d: nie moæna otworzyÜ pliku à•cza '%s' do zapisu.
3.23:Bà•d: pakiet zawiera plik o nieprawidàowej nazwie:


#### Removing package ####

4.0:Pakiet %s nie jest zainstalowany, wi©c nie zostaà odinstalowany.
4.1:Bà•d otwarcia pliku LST!
4.2:Osi•gni©to limit listy katalog¢w. Katalog %s nie zostanie usuni©ty!
4.3:Za maào pami©ci! Nie moæna zapami©taÜ katalogu %s!
4.4:usuwanie %s
4.5:Pakiet %s zostaà odinstalowany.


#### Searching package ####

5.0:Ωaden pakiet nie pasuje do wyszukiwania.
5.1:Za maào pami©ci do przetworzenia opis¢w pakiet¢w!


#### Package database handling ####

6.0:Bà•d: nieprawidàowy plik indeksu (zày nagà¢wek)! Pomini©to repozytorium.
6.1:Bà•d: nieprawidàowy plik indeksu! Pomini©to repozytorium.
6.2:Bà•d: za maào pami©ci do wczytania bazy pakiet¢w!
6.3:Bà•d: nie moæna otworzyÜ pliku danych '%s'.
6.4:Ostrzeæenie: nie moæna otworzyÜ pliku pami©ci podr©cznej bazy %s!
6.5:Komunikat od %s:


#### Loading configuration ####

7.0:Bà•d: katalog niestandardowy '%s' wyst©puje na liòcie dwukrotnie!
7.1:Bà•d: nie moæna otworzyÜ pliku konfiguracyjnego '%s'!
7.2:Ostrzeæenie: klucz bez wartoòci w wierszu %d
7.3:Ostrzeæenie: za dàugi klucz w pliku konfiguracyjnym, wiersz %d
7.4:Ostrzeæenie: klucz z pust• wartoòci• w wierszu %d
7.5:Ostrzeæenie: spacje na ko‰cu wartoòci w wierszu %d
7.6:Pomini©to repozytorium: skonfigurowano zbyt wiele (maks. %d)
7.8:Ostrzeæenie: nieznany klucz '%s' w wierszu %d
7.9:Ostrzeæenie: za dàuga wartoòÜ w pliku konfiguracyjnym, wiersz %d
7.10:Ostrzeæenie: zignorowano niedozwolon• wartoòÜ '%s' w wierszu %d
7.11:Ostrzeæenie: nieprawidàowa dyrektywa 'DIR' w wierszu %d
7.12:Bà•d: za dàuga òcieæka DIR w wierszu %d
7.13:Bà•d: nieistniej•ca zmienna òrodowiskowa '%s' w wierszu %d
7.14:Bà•d: repozytorium '%s' wyst©puje na liòcie dwukrotnie!
7.15:Bà•d: katalog niestandardowy '%s' nie jest prawidàow• òcieæk• bezwzgl©dn•!
7.16:Bà•d: katalog niestandardowy '%s' to nazwa zastrzeæona!


#### Unziping package ####

8.0:Za maào pami©ci!
8.1:nieznana sygnatura ZIP: 0x%08lx
8.2:Bà•d: pakiet zawiera plik skompresowany nieobsàugiwan• metod• (%d):
8.3:Bà•d podczas rozpakowywania '%s' do '%s'!


#### Handling the local list of installed packages ####

9.0:Bà•d: brak dost©pu do katalogu %s.
9.1:Bà•d: nie znaleziono lokalnego pakietu %s.


#### Package updates ####

10.0:%s (wersja lokalna: %s)
10.1:wersja %s w %s
10.2:Nie znaleziono aktualizacji pakietu '%s'.
10.3:Znaleziono aktualizacj© pakietu '%s'. Trwa aktualizacja...
10.4:Zaktualizowane pakiety: %d, nieudane: %d.
10.5:Znalezione aktualizacje pakiet¢w: %d.
10.6:Pakiet %s nie jest zainstalowany.
10.7:Wyszukiwanie aktualizacji...


#### Downloading ####

11.0:Pobieranie %s... %ld bajt¢w
