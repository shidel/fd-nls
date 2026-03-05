# Language: Portuguese (Brazil)
# File ending: PB
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

tee

Salva uma c¢pia da entrada (STDIN) em um ou mais arquivos e a exibe.
Uso:

tee [op‡äes] [d:][caminho]arquivo [[d:][caminho]arquivo2] ...
Op‡äes:

/A   Anexar aos arquivos: Anexa aos arquivos de sa¡da em vez de
     sobrescrevˆ-los.

/I   Ignorar interrup‡äes: ignora tentativas de interrup‡Æo pelo usu rio.

[d:][caminho]arquivo [[d:][caminho]arquivo2] ...   Especifica os arquivos
                                                   de sa¡da.
Exemplos:

echo "Ol , Mundo!" | tee ola.txt
Exibe "Ol , Mundo!" na tela e salva em ola.txt.

tee log.txt outro_log.txt < entrada.txt
Exibe o conte£do de entrada.txt e salva em log.txt e outro_log.txt.

catdoc carta.doc | tee /I carta.txt | wc
Salva o conte£do de carta.doc processado pelo catdoc em carta.txt e o envia
ao wc para contar as palavras.
NÆo permite interrup‡äes pelo usu rio.

Este arquivo faz parte da Documenta‡Æo de Ajuda HTML do FreeDOS e ‚ coberto
pelos termos da licen‡a GNU FDL.

