# Language: Dutch
# File ending: nl
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

# Help Message

0.0:FDPKG v0.2 - GPL by Blair Campbell 2005\n
0.1:Installeert FreeDOS-pakketten in speciaal en regulier formaat.\n
0.2:Syntax: FDPKG [/INSTALL] [/REMOVE] [/CHECK] [/CONFIGURE] [/E] PKGX.ZIP ...\n
0.3:  /INSTALL        Installatiemodus; installeer pakket (standaard)\n
0.4:  /REMOVE         Verwijdermodus; verwijder pakket\n
0.5:  /CHECK          Controlemodus; controleer afhankelijkheden\n
0.6:  /CONFIGURE      Configuratiemodus; configureer pakket\n
0.7:  /DESC[:FIELD]   Bekijk beschrijving uit LSM. Field (optioneel)\n
0.8:                  is het LSM-veld. Er wordt eerst lokaal gezocht,\n
0.9:                  daarna in %%DOSDIR%%\\APPINFO\n
0.10:  /DISPLAY        Toon ge‹nstalleerde pakketten volgens argument\n
0.11:  /E              Alleen uitpakken, afhankelijkheden niet testen\n
0.12:                  (tenzij ge‹nstalleerd), niet configureren\n
0.13:  /B              Achterwaarts compatibel met fdpkg.bat\n
0.14:  /S[:|=]ARG      Verander backslashes in ARG naar forward slashes\n
0.15:  /[-]F|/[-]Y     Forceer; stel geen vragen (MOGELIJK GEVAARLIJK)\n
0.16:  /?[E]|/H[E]     Deze help; /?E of /HE toont uitgebreide help\n
0.17:  PKGX.ZIP        Doelpakket; meerdere namen/wildcards toegestaan\n
0.18:Exit-codes:\n
0.19:   255            Ongeldig pad\n
0.20:   0              Geen problemen\n
0.21:   1              Onopgeloste afhankelijkheden\n
0.22:   2              Ongeldige naam\n
0.23:   3              Ongeldige omgevingsvariabelen\n
0.24:   4              Ongeldige opties of argumenten\n
0.25:   5              Afgebroken door gebruiker\n
0.26:   6              Uitpakprogramma niet in pad\n
0.27:   7              Onvoldoende geheugen\n
0.28:   8              Niet alle bestanden konden worden verwijderd\n
0.29:   9              Fout bij uitpakken\n
0.30:   10             Wissel geslaagd\n
0.31:   11             Wissel mislukt\n

# FDPKG Messages

1.0:Ongeldige omgevingsvariabelen.\n
1.1:Onvoldoende argumenten.\n
1.2:Station of map bestaat niet.\n
1.3:Ongeldige optie in %s\n
1.4:Ongeldig LSM-veld : %s\n

# FUNC Misc Messages

2.0:Druk op een toets...
2.1:Archiveerprogramma niet in pad.\n
2.2:Kon versie van ge‹nstalleerde %s %s niet ophalen.\n
2.3:Kon te installeren versie niet ophalen.\n
2.4:Te installeren versie is gelijk aan het ge‹nstalleerde pakket.\n
2.5:Versie van het ge‹nstalleerde pakket is "%s"\nen de te installeren versie is "%s".\nDoorgaan (J/N)?
2.6:Waarschuwingen bij uitpakken van %s.\n
2.7:Uitpakken mislukt voor %s.\n
2.8:Configureren...\n
2.9:binaire bestanden
2.10:broncode

# FUNC Messages

3.0:Dit pakket vereist dat "%s" is ge‹nstalleerd\nInstallatie proberen (J/N)? 
3.1:Dit pakket conflicteert met "%s" Verwijderen (J/N)? 
3.2:depends.bat uitvoeren...\n
3.3:Aanwezigheid controleren...\n
3.4:Geen pakket gevonden : %s\n
3.5:Ongeldige %%DOSDIR%% variabele.\n
3.6:Upgraden...\n
3.7:Pakket uitgepakt\n
3.8:Uitpakken...\n
3.9:Pakket ge‹nstalleerd.\n
3.10:Kon veld "%s" niet ophalen voor : %s\n
3.11:Weet u het zeker? De %s %s verwijderen (J/N)? 
3.12:Niet alle bestanden konden worden verwijderd\n
3.13:Niet aan alle afhankelijkheden is voldaan.\n
3.14:Aan alle afhankelijkheden is voldaan of er zijn er geen.\n
3.15:Configuratie voltooid.\n
3.16:Configuratie onnodig.\n
3.17:Dit pakket beveelt "%s" aan\n

# Yes character

4.0:J
