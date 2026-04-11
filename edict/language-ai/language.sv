# Language: Swedish
# File ending: SV
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

Information om spr†k”vers„ttning f”r EDICT

Notera att variabelinformation finns i flera typer och i en specifik ordning som
inte kan „ndras (f”r n„rvarande). Flera mellanslag komprimeras automatiskt
till ett enda mellanslag om de inte „r inom citattecken. F”r att visa ett citattecken
m†ste det omges av en annan typ av citattecken. Slutligen infogas inga
mellanslag automatiskt f”re eller efter n†gon variabel.

Din ”versatta spr†kfil ska tillhandah†llas i UTF-8-format tillsammans med en
DOS-teckentabellsversion (codepage) f”r att f”rhindra m”jliga konverteringsfel.
Till exempel „r de turkiska filerna EDICT.TR f”r DOS-versionen och
EDICT.TR.UTF-8 f”r UTF-8-versionen.

Se https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes f”r mer information
om spr†k- och landskoder.

Anv„nd en av de befintliga ”vers„ttningsfilerna, som EDICT.EN, som utg†ngspunkt
f”r din ”vers„ttning. P† s† s„tt saknas ingen n”dv„ndig text.

Variabler:

    %_          Ett enskilt mellanslagstecken
    %%          En enskild procentsymbol
    %r          En CRLF (radbrytning)

    %c          Infoga variabeln f”r ett enskilt tecken
    %s          Infoga variabeln f”r textstr„ng
    %b          Infoga variabeln f”r byte-hex-v„rde
    %w          Infoga variabeln f”r word-hex-v„rde (oanv„nd)
    %i          Infoga heltalsvariabeln
    %I          Infoga variabeln f”r (heltal + 1)


TITLE „r programtiteln.
COPYRIGHT „r mitt copyrightmeddelande.

LANGUAGE finns inte i standard”vers„ttningen och b”r f”rmodligen vara p†
”vers„ttningens spr†k. Du kan ange n†got i stil med dessa:

LANGUAGE=Svensk ”vers„ttning av [Namn]

HELP_* „r texten f”r hj„lpsk„rmen. Varje post visas p† en egen rad.
F”rsta g†ngen ett saknat objekt hittas avbryts utmatningen av hj„lptext.
Upp till 0xff (255) st”ds.

INVALID anv„nds n„r en ok„nd kommandoradsv„xel anges.

BAD_INT anv„nds n„r ett fel uppst†r vid tolkning av ett tal fr†n kommandoraden.
BAD_VAL anv„nds n„r ett tal ligger utanf”r intervallet.

BErr_* „r BIOS-felmeddelanden.
DErr_* „r DOS-felmeddelanden.

Med en liten „ndring „r texterna f”r BIOS- och DOS-felmeddelanden i den externa
engelska standardversionen en nedbantad version av de som finns tillg„ngliga
online fr†n en utm„rkt DOS- och ASM-resurs p†:

    http://stanislavs.org/helppc/idx_interrupt.html

Jag kan dock komma att byta ut dem mot mindre torra, anpassade felmeddelanden.

