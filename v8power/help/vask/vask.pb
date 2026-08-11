# Language: Portuguese (Brazil)
# File ending: pb
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vask [opá‰es]

Prompt para entrada de texto.

    [nenhum]    Usar configuraá‰es detectadas para entrada.
    [texto]     Texto editado predefinido.
    /S          Fornece uma escolha simples de caractere. Como o choice
                padr∆o.
                Quando usado, vask retorna apenas o errorlevel da escolha.
    /A n        Define o atributo de texto como n.
    /B cor      Define o atributo de texto de fundo para cor (ou um valor).
    /F cor      Define o atributo de texto de primeiro plano para cor (ou
                um valor).
    /G          Inserir texto globalmente e ignorar todos os quadros.
    /L          Inserir texto localmente em relaá∆o aos quadros. (PADR«O)
    /K n        Usar n em vez do caractere de quadro para detectar limites.
    /C          Quando especificado e Control-C Ç pressionado, sai com
                errorlevel 200 e retorna o valor padr∆o.
    /W largura  Substitui a largura padr∆o da barra.
                (o padr∆o Ç do cursor atÇ o fim da linha)
    /T arq. ID  Procura a ID no arquivo e a processa como opá‰es de linha
                de comando.
                Quaisquer opá‰es adicionais que seguem essa chave s∆o
                usadas para preencher as vari†veis %1-%9 na string de
                texto.
    /D segundos Atraso em segundos antes do prompt expirar e
                retornar o valor padr∆o inicial. (retorna errorlevel 1)

    tba         (Ainda em desenvolvimento, mais a ser anunciado)
