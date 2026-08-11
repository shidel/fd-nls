# Language: Spanish
# File ending: es
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vinfo [options]
Utilidad general de informaci¢n del sistema.
    [none]      No hace nada.
    /V          Modo detallado.
    /D a        Prueba el estado de la unidad.
                Devuelve estos errorlevel:
                   15 - No presente
                    5 - No formateado (para DOS)
                    4 - Unidad de red (no probada)
                    3 - CD/DVD-ROM (Solo MSCDEX, la mayor¡a da 15)
                    2 - Medio extra¡ble (como disquete)
                    1 - (Reservado)
                    0 - Sin condiciones especiales
    /M          Devuelve tipo de m quina (puede fallar en el futuro)
                Devuelve estos errorlevel:
                    0 - Desconocido, normal o hardware 8086 nativo.
                    1 - 80186
                    2 - 80286
                    3 - 80386
                    4 - 80486
                    5 - 80586
                    6 - 80686 o superior
                  101 - DOSBox.
                  102 - QEMU.
                  103 - VirtualBox.
                  104 - VMware.
                  105 - Bochs.
    /P          Igual que /M, pero excluye la prueba de m quina
                virtual.
    /T          Igual que /M, pero incluye prueba general de emulador.
                  200 - General, se detect¢ otro emulador.
    /E n        Prueba el disco duro f¡sico #n (1, 2, etc) para MBR
                    0 - El MBR est  completamente vac¡o
                    5 - El MBR solo contiene informaci¢n de partici¢n
                   10 - El MBR contiene un c¢digo de arranque
                  101 - Ocurri¢ un error
    /G          Gr ficos
                    0 - Desconocido
                    1 - MDA
                    2 - HGC
                    3 - HGCPlus
                    4 - InColor
                    5 - CGA
                    6 - EGA
                    7 - MCGA
                    8 - VGA
                    9 - VESA/SuperVGA

M s opciones £tiles principalmente para programadores e I+D. Llevan
disponibles un tiempo, pero no son oficialmente parte de la API de
V8Power Tools y pueden cambiar o eliminarse en cualquier momento. Pero
como uso algunas, quiz  se conviertan en utilidades independientes.
    ASCII       Muestra toda la tabla ASCII
    RAM         Vuelca toda la memoria convencional a StdOut.
    /C *        Muestra valores ASCII para el resto de la l¡nea de comandos
    /R string   Busca string en toda la memoria convencional
    /U string   Busca string en memoria (desde a000:0000) sin
                distinguir may£sculas/min£sculas
    /J pos *    Devuelve el valor ASCII del car cter en pos en el resto
                de la l¡nea de comandos como errorlevel. Devuelve 0
                si no se encontr¢ la posici¢n.
    /K pos *    Igual que /J, pero primero se convierte a may£sculas.
    tba         (A£n en desarrollo, se anunciar  m s adelante)
