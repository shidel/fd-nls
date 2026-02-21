# Language: slovenian
# File ending: sl
# Codepage: 852
# Translation made by Google Gemini
# This translation was made by Google AI, please help the 
# FreeDOS group to improve it.

FreeDOS APPEND. Programom omogoüa odpiranje podatkovnih datotek v navedenih
mapah, kot da bi bile v trenutni mapi.
(C) 2004-2006 Eduardo Casino, pod pogoji GNU GPL, razliüica 2

Sintaksa:

APPEND [[pogon:]pot[;...]] [/X[:ON|:OFF]] [/PATH:ON|/PATH:OFF] [/E]
APPEND ;

[pogon:]pot      Pogon in mapa za dodajanje.
/X[:ON]          RazÁiri APPEND na iskanje in izvajanje ukazov.
/X:OFF           APPEND uporabi le pri zahtevah za odpiranje datotek.
                 Privzeto je /X:OFF.
/PATH:ON         IÁüe v dodanih mapah zahteve, ki ße vsebujejo pot.
                 To je privzeta nastavitev.
/PATH:OFF        Izklopi /PATH:ON.
/E               Shrani seznam dodanih map v okolje (env).
                 /E se lahko uporabi le ob prvem klicu APPEND.
                 Na isti ukazni vrstici z /E ne sme biti nobene poti.

APPEND ; poüisti seznam dodanih map.
APPEND brez parametrov prikaße seznam dodanih map.

Opomba:

APPEND se po prvem zagonu namesti kot notranji ukaz.
Drugi in naslednji klici MORAJO biti brez poti in konünice datoteke.

