# Language: Slovenian
# File ending: sl
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

# Help Message

0.0:FDPKG v0.2 - GPL by Blair Campbell 2005\n
0.1:Namesti pakete FreeDOS v specializiranem in navadnem formatu.\n
0.2:Sintaksa: FDPKG [/INSTALL] [/REMOVE] [/CHECK] [/CONFIGURE] [/E] PKGX.ZIP ...\n
0.3:  /INSTALL        Naüin namestitve; namesti paket (privzeto)\n
0.4:  /REMOVE         Naüin odstranjevanja; odstrani paket\n
0.5:  /CHECK          Naüin preverjanja; preveri odvisnosti paketa\n
0.6:  /CONFIGURE      Naüin konfiguracije; konfiguriraj paket\n
0.7:  /DESC[:FIELD]   Pokaßi opis iz LSM. Field (neobvezno) je\n
0.8:                  polje LSM. Najprej se iÁüe v trenutnem\n
0.9:                  imeniku, nato v %%DOSDIR%%\\APPINFO\n
0.10:  /DISPLAY        IzpiÁi nameÁüene pakete, ki ustrezajo argumentu\n
0.11:  /E              Samo razÁiri, ne preveri odvisnosti (razen\n
0.12:                  üe je ße nameÁüen), ne konfiguriraj\n
0.13:  /B              Bodi nazaj zdrußljiv z fdpkg.bat\n
0.14:  /S[:|=]ARG      Spremeni obratne poÁevnice v ARG v poÁevnice\n
0.15:  /[-]F|/[-]Y     Vsili; ne spraÁuj (LAHKO JE NEVARNO)\n
0.16:  /?[E]|/H[E]     Ta pomoü; /?E ali /HE izpiÁe razÁirjeno pomoü\n
0.17:  PKGX.ZIP        Ciljni paket; dovoljenih veü imen/nadomestnih znakov\n
0.18:Izhodne kode:\n
0.19:   255            Neveljavna pot\n
0.20:   0              Brez teßav\n
0.21:   1              NereÁene odvisnosti\n
0.22:   2              Neveljavno ime\n
0.23:   3              Neveljavne spremenljivke okolja\n
0.24:   4              Neveljavne moßnosti ali argumenti\n
0.25:   5              Prekinil uporabnik\n
0.26:   6              Program za razÁirjanje ni v poti\n
0.27:   7              Premalo pomnilnika\n
0.28:   8              Vseh datotek ni bilo mogoüe odstraniti\n
0.29:   9              Napaka pri razÁirjanju\n
0.30:   10             Zamenjava uspeÁna\n
0.31:   11             Zamenjava ni uspela\n

# FDPKG Messages

1.0:Neveljavne spremenljivke okolja.\n
1.1:Premalo argumentov.\n
1.2:Pogon ali imenik ne obstaja.\n
1.3:Neveljavna moßnost v %s\n
1.4:Neveljavno polje LSM : %s\n

# FUNC Misc Messages

2.0:Pritisnite katero koli tipko...
2.1:Arhivirnik ni v poti.\n
2.2:Ni bilo mogoüe dobiti razliüice nameÁüenega %s %s.\n
2.3:Ni bilo mogoüe dobiti razliüice za namestitev.\n
2.4:Razliüica za namestitev je enaka nameÁüenemu paketu.\n
2.5:Razliüica nameÁüenega paketa je "%s"\nin razliüica za namestitev je "%s".\nNadaljuj (D/N)? 
2.6:Opozorila pri razÁirjanju %s.\n
2.7:Razpakiranje ni uspelo za %s.\n
2.8:Konfiguriranje...\n
2.9:binarne datoteke
2.10:izvorne kode

# FUNC Messages

3.0:Ta paket zahteva namestitev "%s"\nPoskusi namestiti (D/N)? 
3.1:Ta paket je v sporu z "%s" Odstrani (D/N)? 
3.2:Izvajanje depends.bat...\n
3.3:Preverjanje obstoja...\n
3.4:Paketa ni bilo mogoüe najti : %s\n
3.5:Neveljavna spremenljivka %%DOSDIR%%.\n
3.6:Nadgrajevanje...\n
3.7:Paket razÁirjen\n
3.8:Razpakiranje...\n
3.9:Paket nameÁüen.\n
3.10:Ni bilo mogoüe dobiti polja "%s" za : %s\n
3.11:Ste prepriüani? Odstrani %s %s (D/N)? 
3.12:Vseh datotek ni bilo mogoüe odstraniti\n
3.13:Vse odvisnosti niso izpolnjene.\n
3.14:Vse odvisnosti so izpolnjene ali jih ni.\n
3.15:Konfiguracija konüana.\n
3.16:Konfiguracija ni potrebna.\n
3.17:Ta paket priporoüa "%s"\n

# Yes character

4.0:D
