# Language: Brazilian Portuguese
# File ending: pb
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vview [options] file

Visualizador de arquivos. Suporta arquivos atÇ 2GB usando fins de linha
CRLF, CR ou LF. Diferente da maioria das ferramentas V8Power, este
utilit†rio usa a tela inteira por padr∆o. Para usar VVIEW dentro de um
quadro VFRAME, vocà precisar† especificar o modo de exibiá∆o local.

/A n            Define o atributo de texto para n.
/B color        Define a cor do atributo de texto de fundo (ou valor).
/F color        Define a cor do atributo de texto de primeiro plano.
/G              Usa a tela inteira. (Padr∆o)
/L              Exibiá∆o local dentro do VFRAME. Detecta o ambiente
                e usa apenas uma parte da tela. Provavelmente uma
                caixa, linha ou algo parecido.
/K n            Usa n em vez de caracteres de quadro para limites.

Ao visualizar um arquivo, vocà pode usar as teclas Up, Down, Left,
Right, PgUp, PgDn, Home e End para navegar. Para parar de visualizar,
pressione Escape. Se mais de um arquivo for especificado, eles ser∆o
exibidos um por vez.

tba             (Ainda em desenvolvimento, mais ser† anunciado)
