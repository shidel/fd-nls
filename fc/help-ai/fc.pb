# Language: brazilian
# File ending: pb
# Codepage: 858
# This translation was made by Google AI,
# please help the FreeDOS group to improve it.

FC v. 3.03 (c) 2004 Maurizio Spagni

O FC compara dois arquivos ou conjuntos de arquivos, em modo texto ou bin†rio,
e exibe as diferenáas entre eles.

O FC implementa o algoritmo de Paul Heckel das Communications of the
Association for Computing Machinery, Abril de 1978, p264 - p268,
"A Technique for Isolating Differences Between Files".

Este algoritmo tem a vantagem sobre algoritmos de comparaá∆o comuns de ser
r†pido e detectar diferenáas de um n£mero arbitr†rio de linhas. Na maioria
das aplicaá‰es, o algoritmo isola diferenáas similares Ös isoladas pela
subsequància comum mais longa.

A sintaxe Ç a seguinte:

FC [opá‰es] [unid1:][caminho1]arquivo1 [unid2:][caminho2]arquivo2 [opá‰es]

 /A    Exibir apenas a primeira e £ltima linha de cada conjunto de diferenáas
 /B    Realizar uma comparaá∆o bin†ria
 /C    Desconsiderar mai£sculas/min£sculas
 /L    Comparar arquivos como texto ASCII
 /LBn  Definir o n£mero m†ximo de linhas ASCII consecutivas diferentes para n
 /Mn   Definir o m†ximo de diferenáas na comparaá∆o bin†ria para n bytes
 /N    Exibir os n£meros de linha em uma comparaá∆o de texto
 /Q    N∆o exibir a lista de diferenáas
 /R    Mostrar um relat¢rio final breve (sempre ativo ao usar /S)
 /S    Estender a busca para arquivos em subdiret¢rios
 /T    N∆o expandir tabs para espaáos
 /U    Exibir nomes de arquivos sem um correspondente
 /W    Compactar espaáos (tabs e espaáos) para comparaá∆o de texto
 /X    N∆o exibir linhas de contexto na comparaá∆o de texto
 /nnn  Definir o n£mero m°nimo de linhas consecutivas iguais para nnn
       para ressincronizaá∆o da comparaá∆o

O programa reconhece nomes longos de arquivos (LFN) e os usa automaticamente
se o sistema operacional suportar.

O FC assume modo bin†rio para arquivos .EXE, .COM, .SYS, .OBJ, .BIN, .DLL
e .LIB.

No modo bin†rio, o FC mostra o deslocamento (offset) dos bytes divergentes,
seu valor em hexadecimal e, se forem caracteres imprim°veis, o caractere ASCII.

Por padr∆o, a comparaá∆o bin†ria para ap¢s 20 diferenáas, mas esse valor pode
ser modificado com a opá∆o /M. /M0 significa "diferenáas ilimitadas".
/M Ç interpretado como /M0.

Uma limitaá∆o de design Ç que, na comparaá∆o de modo texto, apenas as primeiras
32765 linhas s∆o comparadas; as linhas restantes s∆o ignoradas. O comprimento
da linha Ç virtualmente ilimitado.

O FC suporta wildcards (coringas). Algumas observaá‰es:
- especificar um diret¢rio Ç o mesmo que especificar todos os arquivos dele
  (ou seja, "*.*"). Exemplo: "FC C:\ A:" Ç o mesmo que "FC C:\*.* A:*.*"
- se nenhum arquivo2 for inserido, assume-se "." (o diret¢rio atual).
  Exemplo: "FC C:\ARQ.TXT" Ç o mesmo que "FC C:\ARQ.TXT .\*.*"
- se arquivo1 tem coringas mas arquivo2 n∆o, todos os arquivos que coincidem
  com arquivo1 s∆o comparados com o mesmo arquivo2.
  Exemplo: "FC ARQ.BK? ARQ.TXT"
- se arquivo1 tem coringas e arquivo2 Ç um caminho seguido por "*.*", todos
  os arquivos que coincidem com arquivo1 s∆o comparados com os arquivos de
  mesmo nome no caminho arquivo2.
  Exemplo: "FC *.* A:*.*" compara arquivos locais com suas c¢pias em A:
- se arquivo1 e arquivo2 possuem coringas, os arquivos de arquivo1 s∆o
  comparados com os arquivos relevantes em arquivo2.
  Exemplo: "FC *.TXT VELHOS\*.BAK"
ê mais f†cil fazer do que dizer. Se quiser comparar cada arquivo de um
diret¢rio com todos os arquivos de outro, use: FC *.* MEUDIR\????????.???

A opá∆o /S itera o mesmo padr∆o de busca em subdiret¢rios com o mesmo nome
em ambos os caminhos.
  Exemplo: "FC /S C:*.TXT D:*.BAK"
  Assumindo subdiret¢rios C:\LIVRO e D:\LIVRO, este comando compara todos os
  *.TXT locais com *.BAK e tambÇm LIVRO\*.TXT com LIVRO\*.BAK.

Os c¢digos de sa°da para ERRORLEVEL s∆o:
	0	Todos os arquivos coincidem
	1	Pelo menos um par de arquivos Ç diferente
	2	ParÉmetro inv†lido na linha de comando
	3	Arquivo n∆o encontrado
	4	Erro ao abrir arquivo(s)
