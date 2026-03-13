# Language: polish
# File ending: pl
# Codepage: cp852
# This translation was made by Google AI, please help the
# FreeDOS group to improve it.

NAME

CHOICE - Oczekuje na nacisniecie przez uzytkownika klawisza z listy wybor¢w

SYNOPSIS

CHOICE [/B] [/C[:]wybory] [/N] [/S] [/T[:]c,nn] [tekst]

OPTIONS

/B
Emituje sygnal dzwiekowy (beep) przy monicie.

/C[:]wybory
Okresla dozwolone klawisze w monicie. Po wyswietleniu, klawisze
beda oddzielone przecinkami, pojawia sie w nawiasach kwadratowych ([])
i beda zakonczone znakiem zapytania. Jesli nie podasz przelacznika /C,
CHOICE uzyje domyslnie TN. Dwukropek (:) jest opcjonalny.

/N
Powoduje, ze CHOICE nie wyswietla monitu. Tekst przed monitem jest jednak
nadal wyswietlany. Jesli podasz przelacznik /N, okreslone klawisze
sa nadal wazne.

/S
Powoduje, ze CHOICE rozr¢znia wielkosc liter. Jesli przelacznik /S nie
jest podany, CHOICE zaakceptuje zar¢wno wielkie, jak i male litery
klawiszy podanych przez uzytkownika.

/T[:]c,nn
Powoduje, ze CHOICE pauzuje przez okreslona liczbe sekund, zanim
domyslnie wybierze okreslony klawisz. Wartosci dla przelacznika /T
sa nastepujace:

   c   Okresla znak, kt¢ry ma byc domyslnie wybrany po nn sekundach.
       Znak musi znajdowac sie w zestawie wybor¢w okreslonym przez
       przelacznik /C.

   nn  Okresla liczbe sekund pauzy. Dopuszczalne wartosci to od 0 do 99.
       Jesli podano 0, nie bedzie pauzy przed wyborem domyslnym.

tekst
Ciag znak¢w do wyswietlenia jako monit

RETURN VALUE

ERRORLEVEL jest ustawiany na indeks klawisza nacisnietego przez uzytkownika
w wyborach.

AUTHOR

Jim Hall, jhall@freedos.org

