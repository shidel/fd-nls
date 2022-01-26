SYSLINUX

SYSLINUX „r en samling av uppstartsinl„sare

Installation:
SYSLINUX C:
COPY MEMDISK C:\
COPY CHAIN.C32 C:\
COPY MENU.C32 C:\

N„r du ser en kommandorad vid uppstart, skriv
CHAIN.C32 FREEDOS=KERNEL.SYS

Alternativt skapa en SYSLINUX.CFG, l„s dokumentationen noggrannt om detta!
(i nedanst†ende exempel finns "CONTENTS" katalogen inuti ISOLINUX katalogen,
och inom den ISLINUX.BIN CDROM-uppstartsinl„saren - utan emulering.

Se till att anv„nda "/" och "\" precis som nedan!
 
F”r MEMDISK och ISOLINUX, l„s dokumentationen noggrannt!:
* mkisofs -b isolinux/freedos.img -o c:\cdtest\cd1.iso contents 
* mkisofs -no-emul-boot -b isolinux/isolinux.bin -o c:\cdtest\cd1.iso contents 

Alternativ f”r CDRECORD (inkluderat i MKISOFS) „r XORRISO och CDRKIT
(se http://sites.google.com/site/blairdude/cdrkit f”r en DOS-portering)
