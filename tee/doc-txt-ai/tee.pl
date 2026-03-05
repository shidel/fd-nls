# Language: Polish
# File ending: PL
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

tee

Zapisuje kopi© wej˜cia (STDIN) do jednego lub wi©kszej liczby plik¢w i
wy˜wietla j¥.
U¾ycie:

tee [opcje] [d:][˜cie¾ka]plik [[d:][˜cie¾ka]plik2] ...
Opcje:

/A   Dopisz do plik¢w: Dopracowuje do plik¢w wyj˜ciowych zamiast ich
     nadpisywania.

/I   Ignoruj przerwania: ignoruje pr¢by przerwania przez u¾ytkownika.

[d:][˜cie¾ka]plik [[d:][˜cie¾ka]plik2] ...   Okre˜la plik(i) wyj˜ciowy(e).
Przykˆady:

echo "Witaj ˜wiecie!" | tee witaj.txt
Wy˜wietla "Witaj ˜wiecie!" na ekranie i zapisuje w witaj.txt.

tee log.txt inny_log.txt < wejscie.txt
Wy˜wietla zawarto˜† wejscie.txt i zapisuje j¥ w log.txt i inny_log.txt.

catdoc list.doc | tee /I list.txt | wc
Zapisuje zawarto˜† list.doc przetworzon¥ przez catdoc do list.txt i przekazuje
do wc, aby policzy† sˆowa.
Nie pozwala na przerwania przez u¾ytkownika.

Ten plik jest cz©˜ci¥ dokumentacji FreeDOS HTML Help i podlega warunkom
licencji GNU FDL.

