# Language: Brazilian Portuguese
# File ending: pb
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

# Help Message

0.0:FDPKG v0.2 - GPL by Blair Campbell 2005\n
0.1:Instala pacotes do FreeDOS tanto no formato especializado quanto no normal.\n
0.2:Sintaxe: FDPKG [/INSTALL] [/REMOVE] [/CHECK] [/CONFIGURE] [/E] PKGX.ZIP ...\n
0.3:  /INSTALL        Modo de instalaá∆o; instalar pacote (padr∆o)\n
0.4:  /REMOVE         Modo de remoá∆o; remover pacote\n
0.5:  /CHECK          Modo de verificaá∆o; checar dependàncias do pacote\n
0.6:  /CONFIGURE      Modo de configuraá∆o; configurar pacote\n
0.7:  /DESC[:FIELD]   Ver a descriá∆o de um LSM. Field (opcional) seria\n
0.8:                  o campo do LSM. LSMs s∆o buscados no diret¢rio\n
0.9:                  atual primeiro, sen∆o em %%DOSDIR%%\\APPINFO\n
0.10:  /DISPLAY        Listar pacotes instalados correspondentes ao argumento\n
0.11:  /E              Apenas extrair, n∆o checar dependàncias (a menos que\n
0.12:                  j† instalado), n∆o configurar\n
0.13:  /B              Ser compat°vel com vers‰es anteriores do fdpkg.bat\n
0.14:  /S[:|=]ARG      Mudar barras invertidas de ARG para barras normais\n
0.15:  /[-]F|/[-]Y     Foráar; N∆o fazer perguntas (POSSIVELMENTE PERIGOSO)\n
0.16:  /?[E]|/H[E]     Esta ajuda; /?E ou /HE imprime a ajuda estendida\n
0.17:  PKGX.ZIP        Pacote a instalar; m£ltiplos nomes/curingas aceitos\n
0.18:C¢digos de sa°da:\n
0.19:   255            Caminho inv†lido\n
0.20:   0              Sem problemas\n
0.21:   1              Dependàncias n∆o resolvidas\n
0.22:   2              Nome inv†lido\n
0.23:   3              Vari†veis de ambiente inv†lidas\n
0.24:   4              Opá‰es ou argumentos inv†lidos\n
0.25:   5              Abortado pelo usu†rio\n
0.26:   6              Descompactador n∆o est† no caminho\n
0.27:   7              Mem¢ria insuficiente\n
0.28:   8              Nem todos os arquivos puderam ser removidos\n
0.29:   9              Falha ao extrair\n
0.30:   10             Troca bem-sucedida\n
0.31:   11             Troca falhou\n

# FDPKG Messages

1.0:Vari†veis de ambiente inv†lidas.\n
1.1:Argumentos insuficientes.\n
1.2:Unidade ou diret¢rio inexistente.\n
1.3:Opá∆o inv†lida em %s\n
1.4:Campo LSM inv†lido : %s\n

# FUNC Misc Messages

2.0:Pressione qualquer tecla...
2.1:Compactador n∆o est† no caminho.\n
2.2:N∆o foi poss°vel obter vers∆o do %s %s instalado.\n
2.3:N∆o foi poss°vel obter vers∆o a ser instalada.\n
2.4:A vers∆o a ser instalada Ç a mesma do pacote instalado.\n
2.5:A vers∆o do pacote instalado Ç "%s"\ne a vers∆o a ser instalada Ç "%s".\nProsseguir (S/N)? 
2.6:Avisos ao extrair %s.\n
2.7:Falha na descompactaá∆o para %s.\n
2.8:Configurando...\n
2.9:bin†rios
2.10:c¢digos-fonte

# FUNC Messages

3.0:Este pacote precisa de "%s" instalado\nTentar instalar (S/N)? 
3.1:Este pacote conflita com "%s" Remover (S/N)? 
3.2:Executando depends.bat...\n
3.3:Verificando existància...\n
3.4:Nenhum pacote encontrado : %s\n
3.5:Vari†vel %%DOSDIR%% inv†lida.\n
3.6:Atualizando...\n
3.7:Pacote extra°do\n
3.8:Descompactando...\n
3.9:Pacote instalado.\n
3.10:N∆o foi poss°vel obter o campo "%s" para : %s\n
3.11:Tem certeza? Remover o %s %s (S/N)? 
3.12:Nem todos os arquivos puderam ser removidos\n
3.13:Nem todas as dependàncias foram atendidas.\n
3.14:Todas as dependàncias atendidas ou n∆o h† dependàncias.\n
3.15:Configuraá∆o conclu°da.\n
3.16:Configuraá∆o desnecess†ria.\n
3.17:Este pacote recomenda "%s"\n

# Yes character

4.0:S
