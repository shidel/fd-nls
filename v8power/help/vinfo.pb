# Language: Brazilian Portuguese
# File ending: pb
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vinfo [options]
Utilit†rio geral de informaá‰es do sistema.
    [none]      N∆o faz nada.
    /V          Modo detalhado.
    /D a        Testa o status da unidade.
                Retorna estes errorlevel:
                   15 - N∆o presente
                    5 - N∆o formatado (para DOS)
                    4 - Unidade de rede (n∆o testado)
                    3 - CD/DVD-ROM (S¢ MSCDEX, a maioria relata 15)
                    2 - M°dia remov°vel (como disquete)
                    1 - (Reservado)
                    0 - Sem condiá‰es especiais
    /M          Retorna tipo de m†quina (pode falhar no futuro)
                Retorna estes errorlevel:
                    0 - Desconhecido, normal ou hardware 8086 nativo.
                    1 - 80186
                    2 - 80286
                    3 - 80386
                    4 - 80486
                    5 - 80586
                    6 - 80686 ou superior
                  101 - DOSBox.
                  102 - QEMU.
                  103 - VirtualBox.
                  104 - VMware.
                  105 - Bochs.
    /P          Igual ao /M, mas exclui o teste para m†quinas
                virtuais.
    /T          Igual ao /M, mas inclui teste geral de emulador.
                  200 - Geral, outro emulador detectado.
    /E n        Testa disco r°gido f°sico #n (1, 2, etc) para status MBR
                    0 - O MBR est† completamente vazio
                    5 - O MBR contÇm apenas informaá‰es de partiá∆o
                   10 - O MBR contÇm um c¢digo de boot
                  101 - Ocorreu um erro
    /G          Gr†ficos
                    0 - Desconhecido
                    1 - MDA
                    2 - HGC
                    3 - HGCPlus
                    4 - InColor
                    5 - CGA
                    6 - EGA
                    7 - MCGA
                    8 - VGA
                    9 - VESA/SuperVGA

Mais opá‰es que s∆o principalmente £teis para programadores e P&D. Elas
est∆o dispon°veis h† algum tempo, mas n∆o s∆o oficialmente parte da API
V8Power Tools e podem mudar/ser removidas a qualquer momento. Mas como
eu uso algumas, talvez elas se tornem seus pr¢prios utilit†rios.
    ASCII       Exibe toda a tabela ASCII
    RAM         Despeja toda a mem¢ria convencional para StdOut.
    /C *        Gera valores ASCII para o resto da linha de comando
    /R string   Pesquisa em toda a mem¢ria convencional por string
    /U string   Pesquisa na mem¢ria (a000:0000 em diante) por string
                ignorando mai£sculas/min£sculas
    /J pos *    Retorna o valor ASCII do caractere em pos no resto da
                linha de comando como errorlevel. 0 Ç retornado se a
                posiá∆o n∆o for encontrada.
    /K pos *    Igual a /J, mas primeiro convertido para mai£sculas.
    tba         (Ainda em desenvolvimento, mais ser† anunciado)
