VERSION=%0 (version %1)
LICENSE=3-klausulers BSD-licens
COPYRIGHT=Copyright (c) %1, %0
RIGHTS=Alla r„ttigheter f”rbeh†llna.

; If you want credit for your translation shown in the program, simply
; edit the LANGUAGE field and fill in the TRANSLATOR field. :-)

LANGUAGE=Svenska
TRANSLATOR=Sebastian Rasmussen

THANKS=Speciellt tack till %0 f”r ”vers„ttning till %1.

LOADING=L„ser in %0...
STANDBY=V„nta, behandlar...
GORT=Klaatu barada nikto

COMBO.ALTPLUS=(Alt+%0)
COMBO.CTLPLUS=(Ctrl+%0)

; Main Menu Items
MENU.FILE=Arkiv
MENU.FILE.NEW.FONT=Nytt typsnitt
MENU.FILE.NEW.IMAGE=Ny bild
MENU.FILE.NEW.SPRITE=Ny sprite
MENU.FILE.OPEN=™ppna...
MENU.FILE.IMPORT=Importera...
MENU.FILE.SAVE=Spara
MENU.FILE.SAVEAS=Spara som...
MENU.FILE.EXPORT=Exportera...
MENU.FILE.SAVEAS.IMGIGG=IGG-grafik
MENU.FILE.SAVEAS.SPRIGS=IGS-sprite
MENU.FILE.SAVEAS.IMGBMP=BMP-bild
MENU.FILE.SAVEAS.IMGPCX=PCX-bild
MENU.FILE.SAVEAS.IMGTIF=TIF-bild
MENU.FILE.SAVEAS.IMGGIF=GIF-bild
MENU.FILE.SAVEAS.IMGJPG=JPG-bild
MENU.FILE.SAVEAS.IMGJP2=JP2-bild
MENU.FILE.SAVEAS.IMGXPM=XPMv3-bild
MENU.FILE.SAVEAS.IMGASM=Nasm-inkludering
MENU.FILE.SAVEAS.IMGPAS=Pascal-kod
MENU.FILE.SAVEAS.IMGXBM=C-kod
MENU.FILE.EXIT=Avsluta

MENU.EDIT=Edit
MENU.EDIT.COPY=Kopiera
MENU.EDIT.PASTE=Klistra in

MENU.EDIT.FRAME.ADD=L„gg till ruta
MENU.EDIT.FRAME.DEL=Ta bort ruta
MENU.EDIT.SEQ.ADD=L„gg till sekvens
MENU.EDIT.SEQ.DEL=Ta bort sekvens

MENU.TOOLS=Verktyg
MENU.IMAGE.CLEAR=Rensa
MENU.IMAGE.INVERT=Invertera
MENU.IMAGE.ROTATE=Rotera
MENU.IMAGE.FLIP=Spegla
MENU.IMAGE.SHIFT=Skifta...
MENU.IMAGE.SHIFT.UP=Upp
MENU.IMAGE.SHIFT.DOWN=Ner
MENU.IMAGE.SHIFT.LEFT=V„nster
MENU.IMAGE.SHIFT.RIGHT=H”ger

MENU.HELP=Hj„lp
MENU.HELP.ABOUT=Om...

COLOR.DRAW=Rita
COLOR.ERASE=Radera

NOFILES=no matching files
DLG.BUTTON.OK=ok
DLG.BUTTON.CANCEL=avbryt

DLG.OPEN.CAPTION=™ppna en fil
DLG.IMPORT.CAPTION=Importera en bild
DLG.EXPORT.CAPTION=Exportera som
DLG.SAVEAS.FORMAT=Filformat

; Some more strings to come regarding sprite animation sequences.

ERROR.MOUSE=kan inte hitta musen. den „r n”dv„ndig.
ERROR.VIDEO=kan inte hitta n†gon l„mplig grafikdrivrutin

ERROR.DRIVER.FIND=kan inte hitta %0-drivrutin
ERROR.DRIVER.INIT=kan inte initiera %0-drivrutin
ERROR.DRIVER.MODE=”ppnar grafikdrivrutin %0 l„ge %1

ERROR.NOHELP=hj„lp inte tillg„nlig
ERROR.FORMAT=kunde inte identifiera format f”r fil %0

ERROR.TOOBIG=bild ”verskrider storleksbegr„nsning om %0 x %1 bildpunkter

; there are numerous other error message/codes possible. But those are should
; rarely (if ever) occur. So, have been ommited. Most of the ones left in should
; only occur when compiled in "Debug" mode. I should probably ommit those too.

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

; Keyboard shortcuts. All are mapped to ALT+ the letter.
; Please be aware, programs running under this GUI do not use the DOS keyboard
; driver. I had to write my own driver which allows multiple simultaneous
; keystrokes to support things like A+R+D+(RIGHT-SHIFT). So, if your language
; specific shortcut requires a key not present on a standard english keyboard,
; you'll need to let me know so I can map it to that character code. Also,
; use only lowercase letters. Uppercase would require also pressing a shift
; key to trigger the shortcut.

MKEY.FILE=
MKEY.FILE.NEW.FONT=t
MKEY.FILE.NEW.IMAGE=b
MKEY.FILE.NEW.SPRITE=s

MKEY.FILE.OPEN=o
MKEY.FILE.SAVE=s
MKEY.FILE.SAVEAS=
MKEY.FILE.IMPORT=i
MKEY.FILE.EXPORT=

MKEY.FILE.EXIT=a

MKEY.EDIT=
MKEY.EDIT.COPY=c
MKEY.EDIT.PASTE=v

MKEY.EDIT.FRAME.ADD=
MKEY.EDIT.FRAME.DEL=
MKEY.EDIT.SEQ.ADD=
MKEY.EDIT.SEQ.DEL=

MKEY.TOOLS=
MKEY.IMAGE.CLEAR=e
MKEY.IMAGE.INVERT=i
MKEY.IMAGE.ROTATE=r
MKEY.IMAGE.FLIP=s

; These could be set as well. But, the editor directly maps the SHIFT+ARROW
; keystrokes to perform the shift-image actions.

MKEY.IMAGE.SHIFT=
MKEY.IMAGE.SHIFT.UP=
MKEY.IMAGE.SHIFT.DOWN=
MKEY.IMAGE.SHIFT.LEFT=
MKEY.IMAGE.SHIFT.RIGHT=

MKEY.HELP=
MKEY.HELP.ABOUT=
