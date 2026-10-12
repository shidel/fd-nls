# fdnpkg, brazilian portuguese, pb, cp858
# This translation was created by Google AI.
# Please help the FreeDOS group to improve it.
#

#### Help ####

1.0:Este Ç um gerenciador de pacotes de rede para o FreeDOS.
1.1:Uso: FDNPKG aá∆o [parÉmetros]
1.2:Onde a aá∆o Ç uma das seguintes:
1.3: search [texto]    - procura nos reposit¢rios pelo pacote contendo 'texto'
1.4: vsearch [texto]   - igual a 'search', mas imprime reposit¢rios de origem
1.5: install pkg       - instala o pacote 'pkg' (ou arquivo zip local)
1.6: remove pkg        - remove o pacote 'pkg'
1.7: dumpcfg           - imprime a configuraá∆o carregada do arquivo cfg
1.8: license           - imprime a licenáa deste programa
1.9:FDNPKG est† vinculado Ö vers∆o do WatTCP abaixo:
1.10: install-nosrc pkg - instala pacote 'pkg' (ou zip local) sem as fontes
1.11: install-wsrc pkg  - instala pacote 'pkg' (ou zip local) com as fontes
1.12: showinstalled [str] - mostra a lista de pacotes instalados contendo 'str'
1.13: checkupdates      - verifica atualizaá‰es dispon°veis de pacotes e mostra
1.14: update pkg        - atualiza o pacote 'pkg' para uma vers∆o mais nova
1.15: update [pkg]      - atualiza 'pkg' (ou todos se sem args) p/ £ltima vers∆o
1.16: listlocal [str]   - lista todos os pacotes locais contendo 'str'
1.17:FDNPKG est† vinculado Ö vers∆o do Watt-32 abaixo:
1.18: listfiles pkg     - lista os arquivos pertencentes ao pacote 'pkg'
1.19: clearcache        - limpa o cache local do FDNPKG


### General stuff ####

2.0:%TEMP% n∆o definido! Deve apontar para um diret¢rio com acesso de escrita.
2.1:Exemplo: SET TEMP=C:\\TEMP
2.2:%DOSDIR% n∆o definido! Deve apontar para o diret¢rio principal do FreeDOS.
2.3:Exemplo: SET DOSDIR=C:\\FDOS
2.4:Argumentos inv†lidos. Execute fdnpkg sem parÉmetros para obter ajuda.
2.5:Nenhum reposit¢rio configurado. Vocà precisa de pelo menos um.
2.6:Coloque no seu arquivo de configuraá∆o pelo menos uma entrada desta forma:
2.7:REPO www.freedos.org/repo
2.8:A lista de reposit¢rios do fdnpkg configurados Ç:
2.9:Atualizando %s...
2.10:Falha no download do reposit¢rio!
2.11:Ocorreu um erro ao tentar carregar o reposit¢rio do arquivo tmp...
2.12:Aviso: %TZ% indefinido! As datas dos arquivos podem estar incorretas.
2.13:Banco de dados do pacote carregado a partir do cache local.
2.14:Sem mem¢ria! (%s)
2.15:Erro: a inicializaá∆o do TCP/IP falhou!
2.16:Carregando %s...
2.17:AVISO: Mem¢ria virtual muito baixa. FDNPKG pode funcionar de forma inst†vel.
2.18:ERRO: N∆o Ç poss°vel escrever no diret¢rio '%s'. Verifique a vari†vel %%TEMP%%.
2.19:Cache limpo.


#### Installing package ####

3.0:O pacote %s j† est† instalado! Remova-o primeiro para poder atualizar.
3.1:Nenhum pacote '%s' foi encontrado nos reposit¢rios online.
3.2:O pacote '%s' n∆o est† dispon°vel nos reposit¢rios.
3.3:%s est† dispon°vel em v†rios reposit¢rios. Escolha qual deles usar:
3.4:Sua escolha:
3.5:Escolha inv†lida!
3.6:Baixando pacote %s...
3.7:Erro ao baixar pacote. Abortado.
3.8:Erro: Arquivo zip inv†lido! O pacote n∆o foi instalado.
3.9:Erro: O pacote contÇm um arquivo que j† existe localmente:
3.10:Erro: N∆o foi poss°vel criar %s!
3.11:Pacote %s instalado.
3.12:Erro: O pacote n∆o contÇm o arquivo %s! N∆o Ç um pacote FreeDOS v†lido.
3.13:Erro: O pacote baixado tem um CRC incorreto. Instalaá∆o abortada.
3.14:Erro: Falha ao abrir o pacote baixado. Instalaá∆o abortada.
3.15:Erro: Sem mem¢ria ao calcular o CRC do pacote!
3.16:Pacote %s instalado (com o c¢digo-fonte, se dispon°vel).
3.17:Pacote %s instalado (sem o c¢digo-fonte).
3.18:Pacote %s j† instalado! Vocà talvez queira usar a aá∆o 'update'.
3.19:Pacote %s instalado: %d arquivos extra°dos, %d erros.
3.20:Erro: O pacote contÇm um arquivo criptografado:
3.21:Erro: Falha ao abrir o arquivo de link '%s' para leitura.
3.22:Erro: Falha ao abrir o arquivo de link '%s' para gravaá∆o.
3.23:Erro: O pacote contÇm um nome de arquivo inv†lido:


#### Removing package ####

4.0:O pacote %s n∆o est† instalado, portanto n∆o foi removido.
4.1:Erro ao abrir o arquivo lst!
4.2:Limite do Dirlist atingido. O diret¢rio %s n∆o ser† removido!
4.3:Sem mem¢ria! N∆o foi poss°vel armazenar o diret¢rio %s!
4.4:removendo %s
4.5:O pacote %s foi removido.


#### Searching package ####

5.0:Nenhum pacote corresponde Ö pesquisa.
5.1:Sem mem¢ria ao processar as descriá‰es dos pacotes!


#### Package database handling ####

6.0:Erro: Arquivo de °ndice inv†lido (cabeáalho ruim)! Reposit¢rio ignorado.
6.1:Erro: Arquivo de °ndice inv†lido! Reposit¢rio ignorado.
6.2:Erro: Sem mem¢ria ao carregar o banco de dados do pacote!
6.3:Erro: N∆o foi poss°vel abrir o arquivo de dados em '%s'.
6.4:Aviso: N∆o foi poss°vel abrir o arquivo de cache db em %s!
6.5:Mensagem de %s:


#### Loading configuration ####

7.0:Erro: o reposit¢rio '%s' est† listado duas vezes!
7.1:Erro: N∆o foi poss°vel abrir o arquivo de configuraá∆o '%s'!
7.2:Aviso: token sem valor na linha #%d
7.3:Aviso: Estouro de token do arquivo de configuraá∆o na linha #%d
7.4:Aviso: token com valor vazio na linha #%d
7.5:Aviso: espaáo(s) em branco ap¢s o valor na linha #%d
7.6:Reposit¢rio descartado: muitos configurados (m†x=%d)
7.8:Aviso: Token '%s' desconhecido na linha #%d
7.9:Aviso: Estouro de valor do arquivo de configuraá∆o na linha #%d
7.10:Aviso: Um valor ilegal '%s' foi ignorado na linha #%d
7.11:Aviso: Diretiva 'DIR' inv†lida encontrada na linha #%d
7.12:Erro: O caminho DIR Ç muito longo na linha #%d
7.13:Erro: Vari†vel de ambiente '%s' inexistente encontrada na linha #%d
7.14:Erro: o reposit¢rio '%s' est† listado duas vezes!
7.15:Erro: o diret¢rio personalizado '%s' n∆o Ç um caminho absoluto v†lido!
7.16:Erro: diret¢rio personalizado '%s' Ç um nome reservado!


#### Unzipping package ####

8.0:Sem mem¢ria!
8.1:assinatura zip desconhecida: 0x%08lx
8.2:Erro: O pacote contÇm arquivo com mÇtodo de compress∆o n∆o suportado (%d):
8.3:Erro ao extrair '%s' para '%s'!


#### Handling the local list of installed packages ####

9.0:Erro: N∆o foi poss°vel acessar o diret¢rio %s.
9.1:Erro: Pacote local %s n∆o encontrado.


#### Package updates ####

10.0:%s (vers∆o local: %s)
10.1:vers∆o %s em %s
10.2:Nenhuma atualizaá∆o encontrada para o pacote '%s'.
10.3:Uma atualizaá∆o de '%s' foi encontrada. Atualizaá∆o em andamento...
10.4:%d pacote(s) atualizado(s), %d pacote(s) com falha.
10.5:%d atualizaá∆o(‰es) de pacote encontrada(s).
10.6:O pacote %s n∆o est† instalado.
10.7:Procurando por atualizaá‰es...


#### Downloading ####

11.0:Baixando %s... %ld bytes

