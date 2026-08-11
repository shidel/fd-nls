# Language: Brazilian Portuguese
# File ending: pb
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vfdutil [options]

Utilit†rio de arquivos e diret¢rios.

    [none]      N∆o faz nada.
    /D file     Calcula e envia a letra da unidade de file para STDOUT.
    /P file     Calcula e envia o caminho de file para STDOUT.
    /C          Use antes de /D ou /P para mudar unidade ou caminho
                sem sa°da de texto.
    /X          Use antes de /D ou /P para retornar errorlevel 1-26
                da letra da unidade.
    /F file     Calcula e envia o nome completo do arquivo para STDOUT.
    /B file     Calcula e envia nome do arquivo com extens∆o para
                STDOUT.
    /N file     Calcula e envia nome do arquivo sem extens∆o para
                STDOUT.
    /E file     Calcula e envia a extens∆o do arquivo para STDOUT.
    /U template Calcula e envia nome £nico de arquivo/dir baseado em
                template para STDOUT. A unidade e o caminho devem
                existir. Exemplo: "vfdutil /u C:\TEMP\TEST????.$$$"
    /S filespec Pesquisa no PATH por uma filespec dada e envia todos
                os arquivos correspondentes para STDOUT. O diret¢rio
                atual n∆o Ç pesquisado. Se filespec n∆o for achada
                no caminho, sai com errorlevel 1.
    /T filespec Igual ao /S, exceto que apenas errorlevel Ç retornado.
    /M location Envia a quantidade de espaáo livre em disco para
                location.
    /R required Use junto com /M para testar se a quantidade required
                de espaáo est† dispon°vel. Required Ç limitado a
                65535. Mas pode ser anexado com B, K, M, etc. Isso
                retornar† um errorlevel 1 quando n∆o houver
                espaáo suficiente.
    /A path     Testa se existem arquivos ou diret¢rios num path,
                0=dir existe e n∆o est† vazio, outros valores s∆o
                c¢digos de erro DOS do teste.

    tba         (Ainda em desenvolvimento, mais ser† anunciado)
