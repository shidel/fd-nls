# Language: polish
# File ending: pl
# Codepage: 852
# This translation was made by Google AI,
# please help the FreeDOS group to improve it.

FC v. 3.03 (c) 2004 Maurizio Spagni

FC por¢wnuje dwa pliki lub zestawy plik¢w, w trybie tekstowym lub binarnym,
i wy˜wietla r¢¾nice mi©dzy nimi.

FC implementuje algorytm Paula Heckela z Communications of the
Association for Computing Machinery, kwiecieä 1978, str. 264 - 268,
"A Technique for Isolating Differences Between Files".

Ten algorytm ma t© przewag© nad powszechnie stosowanymi algorytmami, ¾e
jest szybki i wykrywa r¢¾nice przy dowolnej liczbie linii. W wi©kszo˜ci
zastosowaä izoluje r¢¾nice podobnie do algorytmu najdˆu¾szego wsp¢lnego
podci¥gu.

Skˆadnia jest nast©puj¥ca:

FC [opcje] [dysk1:][˜cie¾ka1]plik1 [dysk2:][˜cie¾ka2]plik2 [opcje]

 /A    Wy˜wietl tylko pierwsz¥ i ostatni¥ lini© dla ka¾dego zestawu r¢¾nic
 /B    Wykonaj por¢wnanie binarne
 /C    Ignoruj wielko˜† liter
 /L    Por¢wnuj pliki jako tekst ASCII
 /LBn  Ustaw maks. liczb© kolejnych r¢¾nych linii ASCII na n
 /Mn   Ustaw maks. liczb© r¢¾nic w por¢wnaniu binarnym na n bajt¢w
 /N    Wy˜wietlaj numery linii przy por¢wnaniu tekstowym
 /Q    Nie pokazuj listy r¢¾nic
 /R    Poka¾ kr¢tki raport koäcowy (zawsze aktywny przy u¾yciu /S)
 /S    Rozszerz skanowanie na pliki w podkatalogach
 /T    Nie zamieniaj tabulator¢w na spacje
 /U    Poka¾ nazwy plik¢w bez odpowiednika
 /W    Kompresuj biaˆe znaki (tabulacje i spacje) przy por¢wnaniu tekstowym
 /X    Nie pokazuj linii kontekstowych w por¢wnaniu tekstowym
 /nnn  Ustaw min. liczb© kolejnych pasuj¥cych linii na nnn
       dla resynchronizacji por¢wnania

Program obsˆuguje dˆugie nazwy plik¢w (LFN) i u¾ywa ich automatycznie,
je˜li system operacyjny je wspiera.

FC domy˜lnie u¾ywa trybu binarnego dla plik¢w .EXE, .COM, .SYS, .OBJ,
.BIN, .DLL i .LIB.

W trybie binarnym FC pokazuje offset w pliku dla r¢¾ni¥cych si© bajt¢w,
ich warto˜† szesnastkow¥ oraz znak ASCII (je˜li jest drukowalny).

Domy˜lnie por¢wnanie binarne koäczy si© po 20 r¢¾nicach, ale mo¾na to
zmieni† opcj¥ /M. /M0 oznacza "brak limitu". /M jest traktowane jako /M0.

Ograniczeniem programu w trybie tekstowym jest por¢wnywanie tylko
pierwszych 32765 linii; pozostaˆe s¥ ignorowane. Dˆugo˜† linii jest
praktycznie nieograniczona.

FC obsˆuguje symbole wieloznaczne (wildcards). Kilka uwag:
- podanie katalogu jest to¾same z wybraniem wszystkich plik¢w ("*.*").
  Przykˆad: "FC C:\ A:" to samo co "FC C:\*.* A:*.*"
- brak pliku2 oznacza "." (bie¾¥cy katalog).
  Przykˆad: "FC C:\PLIK.TXT" to samo co "FC C:\PLIK.TXT .\*.*"
- je˜li plik1 ma symbole wieloznaczne, a plik2 nie, pliki pasuj¥ce do
  plik1 s¥ por¢wnywane z tym samym plikiem2.
- je˜li plik1 ma symbole wieloznaczne, a plik2 to ˜cie¾ka z "*.*", pliki
  z plik1 s¥ por¢wnywane z plikami o tej samej nazwie w ˜cie¾ce plik2.
- je˜li oba maj¥ symbole wieloznaczne, pliki ze ˜cie¾ki plik1 s¥
  por¢wnywane z odpowiednimi plikami w ˜cie¾ce plik2.
  Przykˆad: "FC *.TXT STARE\*.BAK"
To prostsze w dziaˆaniu ni¾ w opisie. Aby por¢wna† ka¾dy plik w katalogu
z wszystkimi w innym: FC *.* MOJKAT\????????.???

Opcja /S powtarza ten sam wzorzec wyszukiwania w podkatalogach o tej samej
nazwie w obu ˜cie¾kach.
  Przykˆad: "FC /S C:*.TXT D:*.BAK"
  Przy istnieniu katalog¢w C:\KSIAZKA i D:\KSIAZKA, polecenie por¢wna
  pliki *.TXT w bie¾¥cych katalogach oraz w podkatalogach KSIAZKA.

Kody wyj˜cia ERRORLEVEL:
	0	Wszystkie pliki s¥ zgodne
	1	Co najmniej jedna para plik¢w r¢¾ni si©
	2	Nieprawidˆowy parametr w linii poleceä
	3	Nie znaleziono pliku
	4	Bˆ¥d podczas otwierania plik¢w
