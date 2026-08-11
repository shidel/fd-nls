# Language: Brazilian Portuguese
# File ending: pb
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vstr [options]

Utilit†rio simples de processamento de string. Envia resultados para
STDOUT.

    /N          N∆o grava um CRLF quando conclu°do.
    /U          Filtro de Entrada: Converte para mai£sculas.
    /D          Filtro de Entrada: Converte para min£sculas.
    /B          Filtro de Entrada: Ignora linhas em branco.
    /I          Filtro de Entrada: Ignora indentaá∆o.
    /C code     Grava um c¢digo de caractere ASCII.
    /R times    Repete a pr¢xima gravaá∆o times n£mero de vezes. (1-65535)
    /L line     Retorna apenas esta line da entrada padr∆o. (0-65535)
                (Nota: vline /L TOTAL retornar† o n£mero total de linhas.)
                AlÇm disso, adicionar :n gerar† n n£mero de linhas.
    /S s1 s2    Pesquisa e substitui todas as ocorràncias de s1 por s2.
    /F s1 s2    Define o delimitador como s1 e retorna apenas a posiá∆o do
                campo ou intervalo s2.
    /A code s2  Retorna a posiá∆o de campo delimitada por code ou intervalo
                s2. (tab=0x09)
    /P s1       Imprime o texto s1.
    /T file ID  Procura ID no file e processa como opá‰es de linha de
                comando. Quaisquer opá‰es adicionais ap¢s essa chave s∆o
                usadas para preencher as vari†veis %1-%9 na string.

    tba         (Ainda em desenvolvimento, mais a ser anunciado)
