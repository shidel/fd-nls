# Language: Portuguese (Brazil)
# File ending: pb
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

****************************************************************************
V8Power Tools
Copyright 2015-2024 Jerome Shidel
Lanáado sob a licenáa GPL v2.0.
****************************************************************************

Colocando a potància de um motor de 8 cilindros sob o capì dos
arquivos em lote do DOS.

============================================================================

O projeto V8Power Tools est† sendo projetado em cooperaá∆o com
Jim Hall para o sistema operacional FreeDOS(TM) (http://www.freedos.org).
Destina-se a expandir a funcionalidade dos scripts escritos usando
arquivos de lote e fornecer-lhes uma interface de usu†rio com melhor
aparància e maior funcionalidade.

============================================================================

Compilando o V8Power Tools

    PrÇ-requisitos:

        CPU 8086 ou superior.
        Adaptador de v°deo EGA ou superior.
        FreeDOS(TM) 1.1 (http://www.freedos.org) ou superior
        NASM para DOS vers∆o 2.16.01 (http://wwww.nasm.us) ou mais
        recente

    Compilaá∆o:

        Certifique-se de que o diret¢rio NASM est† na sua especificaá∆o
        de caminho.
        Baixe as fontes mais recentes de http://github.com/LoopZ/V8Power
        Execute o script mkV8.bat.
        Todos os execut†veis ser∆o colocados no diret¢rio BIN recÇm-criado.

    Para pessoas preguiáosas, como eu:

        Vers‰es prÇ-compiladas est∆o dispon°veis em
        http://up.lod.bz/V8Power.

============================================================================

Compatibilidade Testada do V8Power Tools

    FreeDOS 1.1+

Compatibilidade limitada de recursos avanáados (sem suporte a batch
"set /p"):

    MS-DOS 6.2 e 6.22
    PC-DOS 7.0, 7.01 e 2000
    DR-DOS 7.03
    DOSBox (o redirecionamento de e/s ou consultas usando stdout N«O
        funcionar∆o usando o shell DOSBox embutido. No entanto, eles
        funcionam bem no DOSBox quando um shell compat°vel como o
        FreeCOM Ç usado)
    Windows 3.11 Shell
    Windows 98 Shell e Command Line
    Windows XP SP3 Shell (exceto vcursor)

============================================================================

Uso do V8Power Tools

Aqui est∆o algumas informaá‰es b†sicas sobre todos os utilit†rios e
como eles funcionam.

    As opá‰es, valores e n£meros hexadecimais n∆o diferenciam
    mai£sculas de min£sculas /f white Ç o mesmo que /F wHIte.

    N£meros hexadecimais podem ser prefixados com 0x para evitar que
    sejam tratados como base dez. (Exemplo: 10 e 0x10)

    Os espaáos s∆o em grande parte opcionais. /B7/f0 Ç o mesmo que
    /B 7 /F 0. Mas, n∆o / B7 / F0.

    Para usar um / ou espaáos em um valor, coloque-o entre aspas.
    Como "Jack and/or Jill".

    Use v†rias aspas para usar aspas. Como "Jack's house" ou
    'Say "What?"'.

    A menos que seja substitu°do, a maioria dos utilit†rios usa o
    atributo de texto na localizaá∆o atual do cursor.

============================================================================

Aqui est† a tabela de cores usada para todos os interruptores /A, /F e /B:

    Decimal     Hex         Etiqueta (N∆o diferencia mai£sc./min£sc.)

    0           0x00        Black
    1           0x01        Blue
    2           0x02        Green
    3           0x03        Cyan
    4           0x04        Red
    5           0x05        Magenta
    6           0x06        Brown
    7           0x07        Gray / Grey

    (Apenas primeiro plano /f e /a)

    8           0x08        DarkGray / DarkGrey
    9           0x09        LightBlue
    10          0x0a        LightGreen
    11          0x0b        LightCyan
    12          0x0c        LightRed
    13          0x0d        LightMagenta
    14          0x0e        Yellow
    15          0x0f        White

A maioria das ferramentas individuais que suportam mudanáa de cor tambÇm
suportam a mudanáa da configuraá∆o Blink/Intensity. No entanto, a
maioria das ferramentas n∆o menciona isso.

    /BlinkOn    Ativar o bit Blink/Intensity. (Comeáar a piscar)
    /BlinkOff   Desativar o bit Blink/Intensity. (Parar de piscar)

============================================================================

A linha de comando do DOS (e arquivos de lote) Ç limitada a
aproximadamente 128 caracteres. Isso pode dificultar que ferramentas
como vecho imprimam v†rias linhas de uma vez. No entanto, muitas
ferramentas como vecho, vstr, etc. suportam o carregamento de recursos
de texto de um arquivo usando o interruptor /T. Geralmente, o
interruptor /T Ç usado para fornecer texto de "Traduá∆o" para um
lote. Quando carregado a partir do arquivo, o utilit†rio V8Power Tools
Ç limitado a 10 kilobytes por linha. AlÇm disso, o utilit†rio ignorar†
qualquer texto restante nessa linha. 10kb Ç igual a 5 telas ou mais de
texto e Ç um exagero.
