# fdnpkg, dutch, nl, cp858
# This translation was created by Google AI.
# Please help the FreeDOS group to improve it.
#

#### Help ####

1.0:Dit is een netwerkpakketbeheerder voor FreeDOS.
1.1:Gebruik: FDNPKG actie [parameters]
1.2:Waarbij actie een van de volgende is:
1.3: search [string]   - zoek in online repositories naar pakket met 'string'
1.4: vsearch [string]  - als 'search', maar toont ook de bronrepositories
1.5: install pkg       - installeer het pakket 'pkg' (of lokaal zip-bestand)
1.6: remove pkg        - verwijder het pakket 'pkg'
1.7: dumpcfg           - toon de configuratie geladen uit het cfg-bestand
1.8: license           - print de licentie van dit programma
1.9:FDNPKG is gelinkt met de onderstaande WatTCP-versie:
1.10: install-nosrc pkg - installeer pakket (of zip) zonder broncode
1.11: install-wsrc pkg  - installeer pakket (of zip) met broncode
1.12: showinstalled [str] - toon lijst van geãnstalleerde pakketten met 'str'
1.13: checkupdates      - controleer op beschikbare updates en toon deze
1.14: update pkg        - update het 'pkg' pakket naar een nieuwere versie
1.15: update [pkg]      - update 'pkg' (of alles) naar de nieuwste versie
1.16: listlocal [str]   - toon alle lokale pakketten die 'str' bevatten
1.17:FDNPKG is gelinkt met de onderstaande Watt-32-versie:
1.18: listfiles pkg     - toon bestanden die bij het pakket 'pkg' horen
1.19: clearcache        - wis de lokale cache van FDNPKG


### General stuff ####

2.0:%TEMP% niet ingesteld! Deze moet naar een schrijfbare map verwijzen.
2.1:Voorbeeld: SET TEMP=C:\\TEMP
2.2:%DOSDIR% niet ingesteld! Deze moet naar de FreeDOS-hoofdmap verwijzen.
2.3:Voorbeeld: SET DOSDIR=C:\\FDOS
2.4:Ongeldig aantal argumenten. Start fdnpkg zonder parameters voor hulp.
2.5:Er is geen repository geconfigureerd. U heeft er minimaal ÇÇn nodig.
2.6:Plaats in uw configuratiebestand minstens ÇÇn regel in deze vorm:
2.7:REPO www.freedos.org/repo
2.8:De lijst van geconfigureerde fdnpkg-repositories is als volgt:
2.9:Vernieuwen van %s...
2.10:Downloaden van repository mislukt!
2.11:Er is een fout opgetreden bij het laden van repository uit tmp-bestand...
2.12:Waarschuwing: %TZ% niet ingesteld! Tijdstempels kunnen onnauwkeurig zijn.
2.13:Pakketdatabase geladen vanuit lokale cache.
2.14:Onvoldoende geheugen! (%s)
2.15:Fout: TCP/IP-initialisatie mislukt!
2.16:Laden van %s...
2.17:WAARSCHUWING: Virtueel geheugen te laag. FDNPKG kan onbetrouwbaar werken.
2.18:FOUT: Kan niet schrijven in de map '%s'. Controleer uw %%TEMP%% variabele.
2.19:Cache gewist.


#### Installing package ####

3.0:Pakket %s is al geãnstalleerd! Verwijder het eerst om te upgraden.
3.1:Geen pakket '%s' gevonden in online repositories.
3.2:Pakket '%s' is niet beschikbaar in repositories.
3.3:%s is beschikbaar in meerdere repositories. Kies welke u wilt gebruiken:
3.4:Uw keuze:
3.5:Ongeldige keuze!
3.6:Downloaden van pakket %s...
3.7:Fout bij downloaden van pakket. Afgebroken.
3.8:Fout: Ongeldig zip-archief! Pakket niet geãnstalleerd.
3.9:Fout: Pakket bevat een bestand dat lokaal al bestaat:
3.10:Fout: Kon %s niet aanmaken!
3.11:Pakket %s geãnstalleerd.
3.12:Fout: Pakket bevat geen %s bestand! Geen geldig FreeDOS-pakket.
3.13:Fout: Gedownload pakket heeft verkeerde CRC. Installatie afgebroken.
3.14:Fout: Kon gedownload pakket niet openen. Installatie afgebroken.
3.15:Fout: Onvoldoende geheugen bij berekenen van de CRC van het pakket!
3.16:Pakket %s geãnstalleerd (met broncode, indien beschikbaar).
3.17:Pakket %s geãnstalleerd (zonder broncode).
3.18:Pakket %s is al geãnstalleerd! U wilt misschien de 'update' actie gebruiken.
3.19:Pakket %s geãnstalleerd: %d bestanden uitgepakt, %d fouten.
3.20:Fout: Pakket bevat een gecodeerd bestand:
3.21:Fout: Kon link-bestand '%s' niet openen om te lezen.
3.22:Fout: Kon link-bestand '%s' niet openen om te schrijven.
3.23:Fout: Pakket bevat een ongeldige bestandsnaam:


#### Removing package ####

4.0:Pakket %s is niet geãnstalleerd, dus niet verwijderd.
4.1:Fout bij openen van lst-bestand!
4.2:Dirlist-limiet bereikt. Map %s wordt niet verwijderd!
4.3:Onvoldoende geheugen! Kon map %s niet opslaan!
4.4:verwijderen van %s
4.5:Pakket %s is verwijderd.


#### Searching package ####

5.0:Geen enkel pakket komt overeen met de zoekopdracht.
5.1:Onvoldoende geheugen tijdens het verwerken van pakketbeschrijvingen!


#### Package database handling ####

6.0:Fout: Ongeldig indexbestand (slechte header)! Repository overgeslagen.
6.1:Fout: Ongeldig indexbestand! Repository overgeslagen.
6.2:Fout: Onvoldoende geheugen bij het laden van de pakketdatabase!
6.3:Fout: Kon het databestand op '%s' niet openen.
6.4:Waarschuwing: Kon db-cachebestand op %s niet openen!
6.5:Bericht van %s:


#### Loading configuration ####

7.0:Fout: repository '%s' staat twee keer vermeld!
7.1:Fout: Kon configuratiebestand '%s' niet openen!
7.2:Waarschuwing: token zonder waarde op regel %d
7.3:Waarschuwing: token overflow in configuratiebestand op regel %d
7.4:Waarschuwing: token met lege waarde op regel %d
7.5:Waarschuwing: spatie(s) achter de waarde op regel %d
7.6:Repository overgeslagen: te veel geconfigureerd (max=%d)
7.8:Waarschuwing: Onbekend token '%s' op regel %d
7.9:Waarschuwing: waarde overflow in configuratiebestand op regel %d
7.10:Waarschuwing: ongeldige '%s' waarde genegeerd op regel %d
7.11:Waarschuwing: ongeldige 'DIR' richtlijn gevonden op regel %d
7.12:Fout: DIR-pad te lang op regel %d
7.13:Fout: niet-bestaande omgevingsvariabele '%s' gevonden op regel %d
7.14:Fout: repository '%s' staat twee keer vermeld!
7.15:Fout: aangepaste map '%s' is geen geldig absoluut pad!
7.16:Fout: aangepaste map '%s' is een gereserveerde naam!


#### Unzipping package ####

8.0:Onvoldoende geheugen!
8.1:onbekende zip-handtekening: 0x%08lx
8.2:Fout: Pakket heeft een bestand met niet-ondersteunde compressie (%d):
8.3:Fout tijdens uitpakken van '%s' naar '%s'!


#### Handling the local list of installed packages ####

9.0:Fout: Kreeg geen toegang tot de map %s.
9.1:Fout: Lokaal pakket %s niet gevonden.


#### Package updates ####

10.0:%s (lokale versie: %s)
10.1:versie %s bij %s
10.2:Geen update gevonden voor het pakket '%s'.
10.3:Update gevonden voor '%s'. Bezig met updaten...
10.4:%d pakket(ten) geÅpdatet, %d pakket(ten) mislukt.
10.5:%d pakketupdate(s) gevonden.
10.6:Pakket %s is niet geãnstalleerd.
10.7:Zoeken naar updates...


#### Downloading ####

11.0:Downloaden van %s... %ld bytes

