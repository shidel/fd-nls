# Language: Swedish
# File ending: sv
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

# Help Message

0.0:FDPKG v0.2 - GPL by Blair Campbell 2005\n
0.1:Installerar FreeDOS-paket i specialiserat och vanligt format.\n
0.2:Syntax: FDPKG [/INSTALL] [/REMOVE] [/CHECK] [/CONFIGURE] [/E] PKGX.ZIP ...\n
0.3:  /INSTALL        Installationsl„ge; installera paket (standard)\n
0.4:  /REMOVE         Borttagningsl„ge; ta bort paket\n
0.5:  /CHECK          Kontroll„ge; kontrollera paketberoenden\n
0.6:  /CONFIGURE      Konfigurationsl„ge; konfigurera paket\n
0.7:  /DESC[:FIELD]   Visa beskrivning fr†n LSM. Field (valfritt) „r\n
0.8:                  LSM-f„ltet. S”ker f”rst i den aktuella katalogen,\n
0.9:                  d„refter i %%DOSDIR%%\\APPINFO\n
0.10:  /DISPLAY        Lista alla installerade paket som matchar argumentet\n
0.11:  /E              Packa endast upp, kontrollera inga beroenden\n
0.12:                  (om de inte redan „r installerade), konfigurera ej\n
0.13:  /B              Var bak†tkompatibel med fdpkg.bat\n
0.14:  /S[:|=]ARG      Žndra omv„nda snedstreck i ARG till raka snedstreck\n
0.15:  /[-]F|/[-]Y     Tvinga; st„ll inga fr†gor (KAN VARA FARLIGT)\n
0.16:  /?[E]|/H[E]     Denna hj„lp; /?E eller /HE visar ut”kad hj„lp\n
0.17:  PKGX.ZIP        M†lpaket; flera namn/jokertecken till†ts\n
0.18:Avslutningskoder:\n
0.19:   255            Ogiltig s”kv„g\n
0.20:   0              Inga problem\n
0.21:   1              Ol”sta beroenden\n
0.22:   2              Ogiltigt namn\n
0.23:   3              Ogiltiga milj”variabler\n
0.24:   4              Ogiltiga alternativ eller argument\n
0.25:   5              Avbrutet av anv„ndaren\n
0.26:   6              Uppackare saknas i s”kv„gen\n
0.27:   7              Otillr„ckligt minne\n
0.28:   8              Inte alla filer kunde tas bort\n
0.29:   9              Fel vid uppackning\n
0.30:   10             V„xling lyckades\n
0.31:   11             V„xling misslyckades\n

# FDPKG Messages

1.0:Ogiltiga milj”variabler.\n
1.1:Otillr„ckliga argument.\n
1.2:Enheten eller katalogen finns inte.\n
1.3:Ogiltigt alternativ i %s\n
1.4:Ogiltigt LSM-f„lt : %s\n

# FUNC Misc Messages

2.0:Tryck p† en tangent...
2.1:Arkiverare saknas i s”kv„gen.\n
2.2:Kunde inte h„mta version av installerad %s %s.\n
2.3:Kunde inte h„mta version som ska installeras.\n
2.4:Versionen som ska installeras „r samma som det installerade paketet.\n
2.5:Versionen av det installerade paketet „r "%s"\noch versionen som ska installeras „r "%s".\nForts„tta (J/N)? 
2.6:Varningar vid uppackning av %s.\n
2.7:Uppackning misslyckades f”r %s.\n
2.8:Konfigurerar...\n
2.9:bin„rer
2.10:k„llkod

# FUNC Messages

3.0:Detta paket kr„ver att "%s" „r installerat\nF”rs”ka installera (J/N)? 
3.1:Detta paket „r i konflikt med "%s" Ta bort (J/N)? 
3.2:K”r depends.bat...\n
3.3:Kontrollerar existens...\n
3.4:Inget paket hittades : %s\n
3.5:Ogiltig %%DOSDIR%%-variabel.\n
3.6:Uppgraderar...\n
3.7:Paketet har packats upp\n
3.8:Packar upp...\n
3.9:Paketet har installerats.\n
3.10:Kunde inte h„mta f„ltet "%s" f”r : %s\n
3.11:Žr du s„ker? Ta bort %s %s (J/N)? 
3.12:Alla filer kunde inte tas bort\n
3.13:Alla beroenden „r inte uppfyllda.\n
3.14:Alla beroenden uppfyllda eller inga beroenden finns.\n
3.15:Konfigurationen slutf”rd.\n
3.16:Konfiguration on”dig.\n
3.17:Detta paket rekommenderar "%s"\n

# Yes character

4.0:J
