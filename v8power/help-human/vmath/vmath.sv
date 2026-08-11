# Language: Swedish
# File ending: sv
# Codepage: 850
# This translation was made by Google Gemini because it was updated by the programmer.
# Please help the FreeDOS group to improve it.

vmath [options]

Enkelt matteverktyg. Det „r INTE en minir„knare och prioriteten „r
strikt fr†n v„nster till h”ger (jag kanske „ndrar det). Det st”der
64-bitars heltalsmatematik p† en 8086:a och utan behov av en
matematikprocessor. Mestadels „r det bra f”r loopar, best„mning av
sk„rmf”rskjutningar osv.

    +, ADD      L„gg till n„sta tal till summan.
    -, SUB      Subtrahera n„sta tal fr†n summan.
    *, MUL      Multiplicera summan med n„sta tal.
    /, DIV      Dividera summan med n„sta tal.
    \, MOD      Dividera summan med n„sta tal och s„tt summan till resten.

    AND         Logiskt AND.
    OR          Logiskt OR.
    XOR         Logiskt XOR.
    SHR         Bitf”rskjutning †t h”ger.
    SHL         Bitf”rskjutning †t v„nster.

    /H eller /B St„ll in utdata till hexadecimal eller bin„r. Žven om
                ber„kningar utf”rs med 64-bitars matematik, f”rkortas
                resultaten till den minsta bitstorleken f”r deras v„rde
                n„r de matas ut i dessa format. Till exempel som 64-,
                32-, 16- eller 8-bitars tal efter behov.
