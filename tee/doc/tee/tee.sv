tee

Spara en kopia av indata (STDIN) till en eller flera filer och skriv ut
den.

Anv„ndning:
tee [flaggor] [d:][s”kv„g]fil [[d:][s”kv„g]fil2] ...

Flaggor:
/A L„gg till en given fil(er): L„gg till till utdatafilen(erna) ist„llet
f”r
   att skriva ”ver.
/I Hoppa ”ver avbrott: ignorera avbrottsf”rs”k fr†n anv„ndaren.
[d:][s”kv„g]fil [[d:][s”kv„g]fil2] ... Anger utdatafilen(erna).

Exempel:
echo "Hejsan v„rlden!" | tee hejsan.txt
Visa "Hejsan v„rlden!" p† sk„rmen och spara det till hejsan.txt.

tee logg.txt annan_logg.txt < indata.txt
Visa inneh†llet fr†n indata.txt och spara det till logg.txt och
annan_logg.txt.

catdoc brev.doc | tee /I brev.txt | wc
Spara inneh†llet i brev.doc efter att det behandlats av catdoc till
brev.txt och passa vidare till wc f”r att r„kna antalet ord.
Till†t inte avbrott fr†n anv„ndaren.

Denna fil utg”r en del av FreeDOS HTML Hj„lpdokumentation och t„cks av
GNU FDL:s villkor.
