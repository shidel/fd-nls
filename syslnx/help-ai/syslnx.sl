# Language: Slovenian
# File ending: SL
# Codepage: 852
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

SYSLINUX

SYSLINUX je zbirka zagonskih nalagalnikov (bootloaders)

Namestitev:
SYSLINUX C:
COPY MEMDISK C:\
COPY CHAIN.C32 C:\
COPY MENU.C32 C:\

Ob zagonu, ko se prikaße ukazna vrstica, vtipkajte
CHAIN.C32 FREEDOS=KERNEL.SYS

Lahko pa ustvarite SYSLINUX.CFG, za to natanüno preberite dokumentacijo!
(v spodnjem primeru imenik "CONTENTS", znotraj njega imenik ISOLINUX,
v njem pa zagonski nalagalnik CD-ROM ISOLINUX.BIN - naüin brez emulacije.
pazite na natanüno uporabo "/" in "\", kot je prikazano spodaj!

Za MEMDISK in ISOLINUX natanüno preberite dokumentacijo!:
* mkisofs -b isolinux/freedos.img -o c:\cdtest\cd1.iso contents
* mkisofs -no-emul-boot -b isolinux/isolinux.bin -o c:\cdtest\cd1.iso
  contents

Alternative za CDRECORD (ki vkljuüuje MKISOFS) so XORRISO in CDRKIT
(oglejte si http://sites.google.com/site/blairdude/cdrkit za DOS vrata)

