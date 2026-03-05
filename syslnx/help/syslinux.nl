# Language: Dutch
# File ending: NL
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

SYSLINUX

SYSLINUX is een verzameling bootloaders

Installatie:
SYSLINUX C:
COPY MEMDISK C:\
COPY CHAIN.C32 C:\
COPY MENU.C32 C:\

Wanneer u opstart en de opdrachtregel ziet, typt u
CHAIN.C32 FREEDOS=KERNEL.SYS

U kunt ook een SYSLINUX.CFG maken, lees daarvoor de documentatie zorgvuldig!
(in het onderstaande voorbeeld een "CONTENTS"-map met daarin de ISOLINUX-map,
met daarin de ISOLINUX.BIN CDROM-bootloader - niet-emulatiestijl.
let erop dat u "/" en "\" precies gebruikt zoals hieronder!

Lees voor MEMDISK en ISOLINUX de documentatie zorgvuldig door!:
* mkisofs -b isolinux/freedos.img -o c:\cdtest\cd1.iso contents
* mkisofs -no-emul-boot -b isolinux/isolinux.bin -o c:\cdtest\cd1.iso
  contents

Alternatieven voor CDRECORD (waaronder MKISOFS) zijn XORRISO en CDRKIT
(zie http://sites.google.com/site/blairdude/cdrkit voor de DOS-port)

