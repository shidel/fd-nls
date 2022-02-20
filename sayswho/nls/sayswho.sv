; Once the main text for this program is ready, these language specific files
; will be removed from this project and moved to the FD-NLS translation project.
; Translations or corrections are welcome. However, they will not will be
; accepted directly into source code development of this project.

VERSION=%0 (version %1)
LICENSE=3-klausulers BSD-licens
COPYRIGHT=Copyright (c) %1, %0
RIGHTS=Alla r„ttigheter f”rbeh†llna.

; If you want credit for your translation shown in the program, simply
; edit the LANGUAGE field and fill in the TRANSLATOR field. :-)

LANGUAGE=Svenska
TRANSLATOR=Sebastian Rasmussen

THANKS=Ett speciellt tack till %0 f”r %1-”vers„ttningen.

; this game has very little text and a lot of empty screen space.
; so it uses a larger 12x14 English font by default. And in that font, the
; HINT line takes up most of the width of the screen. However, for other
; languages the largest fonts ar 10x12 or 8x16. You can find those language
; specific fonts on FD-NLS under danger (for the danger engine) directory.

LEVEL=Sekvens
TRIES=f”rs”k
START=klicka eller tryck p† en tangent
DEATH=felaktigt
GAMEOVER=spelet ”ver

; If your HINT translation is much longer, it will probably be cropped.
; Consider leaving out the reference to the number pad. Maybe just translate
; it as "use arrow keys or mouse"

HINT=anv„nd piltangenter, numeriskt tangentbord eller mus

ERROR.MOUSE=kan inte hitta musen. den „r n”dv„ndig.
ERROR.VIDEO=kan inte hitta n†gon l„mplig grafikdrivrutin

ERROR.DRIVER.FIND=kan inte hitta %0-drivrutin
ERROR.DRIVER.INIT=kan inte initiera %0-drivrutin
ERROR.DRIVER.MODE=”ppnar grafikdrivrutin %0 l„ge %1

ERROR.NOHELP=hj„lp inte tillg„nlig
ERROR.FORMAT=kunde inte identifiera format i fil %0

; there are numerous other error message/codes possible. But those should
; rarely (if ever) occur. So, most have been ommited. Of the ones left in, they
; should really only occur when compiled in "Debug" mode. I should probably
; omit those messages as well.

ERROR.1=ogiltig funktion
ERROR.2=fil hittades ej
ERROR.3=s”kv„g hittades ej
ERROR.4=f”r m†nga ”ppna filer
ERROR.5=fil†tkomst nekad
ERROR.8=slut p† minne
ERROR.201=kontroll av dataintervall
ERROR.202=stack”verspill
ERROR.203=minnes”verspill
ERROR.204=pekaroperation
ERROR.220=kontroll av datatyp
ERROR.221=operation st”ds ej
ERROR.222=ogiltigt filformat
ERROR.223=struktur f”r stor
ERROR.224=dataverifikation
ERROR.225=otilldelad pekare
ERROR.226=sl„ng l†st resurs
ERROR.227=fel i komprimerad avbild
ERROR.230=initieringsfel
ERROR.231=baktalad drivrutin
ERROR.232=drivrutinstyp st”ds ej
ERROR.233=ogiltig drivrutinstyp
ERROR.234=drivrutinsverifikation
ERROR.240=fel i grafikdrivrutin
ERROR.241=fel i ljuddrivrutin
ERROR.242=fel i tangentbordsdrivrutin
ERROR.243=fel i musdrivrutin
ERROR.244=fel i joystickdrivrutin
