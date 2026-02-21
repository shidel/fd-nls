# Language: brazilian
# File ending: pb
# Codepage: 858
# This translation was made by Google AI,
# please help the FreeDOS group to improve it.

# common to many functions [Set 1]
1.1:\n
# main [Set 1] 
1.2:Listagem do CAMINHO do diret¢rio\n
# Must include %s for label 
1.3:Listagem do CAMINHO do diret¢rio para o Volume %s\n
# Must include %s for serial #  
1.4:O n£mero de s‚rie do volume ‚ %s\n
1.5:NÆo existem subdiret¢rios\n\n
# showUsage [Set 2] 
2.1:Exibe graficamente a estrutura de diret¢rios de uma unidade ou caminho.\n
# Each %c below will be replaced with proper switch/option
2.2:TREE [unidade:][caminho] [%c%c] [%c%c]\n
2.3:   %c%c   Exibir os nomes dos arquivos em cada diret¢rio.\n
2.4:   %c%c   Usar ASCII em vez de caracteres estendidos.\n
# showInvalidUsage [Set 3] 
# Must include the %s for option given.
3.1:Op‡Æo inv lida - %s\n
# The %c will be replaced with the primary switch (default is /)
3.2:Use TREE %c? para informa‡äes de uso.\n
#showTooManyOptions
3.3:Muitos parƒmetros - %s\n
# showVersionInfo [Set 4] 
# also uses treeDescription, message 2.1
4.1:Escrito para funcionar com o FreeDOS\n
4.2:Console Win32(c) e DOS com suporte a LFN.\n
# Must include the %s for version string. 
4.3:VersÆo %s\n
4.4:Escrito por: Kenneth J. Davis\n
4.5:Data:       Agosto/Setembro/Outubro/Novembro, 2000; Janeiro, 2001\n
4.6:Contato:    jeremyd@computer.org\n
4.7:Copyright (c): Dom¡nio P£blico [Defini‡Æo dos Estados Unidos]\n
#4.8 is only used when cats support is compiled in.
4.8:Usa a Cats Library de Jim Hall <jhall@freedos.org>\n  Copyright (C) 1999,2000,2001 Jim Hall\n
#4.20 20-30 reserved for FreeDOS tree derived from Dave Dunfield's tree
4.20:Copyright 1995, 2000 Dave Dunfield - Distribu¡vel livremente (GPL 2000).\n
# showInvalidDrive [Set 5] 
5.1:Especifica‡Æo de unidade inv lida\n
# showInvalidPath [Set 6] 
# Must include %s for the invalid path given. 
6.1:Caminho inv lido - %s\n
# misc error conditions [Set 7]
# showBufferOverrun
# %u required to show what the buffer's current size is. 
7.1:Erro: Caminho do arquivo excede o buffer m ximo = %u bytes\n
# showOutOfMemory
# %s required to display what directory we were processing when ran out of memory.
7.2:Mem¢ria insuficiente no subdiret¢rio: %s\n
#
# parseArguments [Set 8]
8.1:/
8.2:-
8.3:F
8.4:f
8.5:A
8.6:a
8.7:V
8.8:v
8.9:S
8.10:s
