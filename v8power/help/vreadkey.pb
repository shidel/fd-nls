# Language: Brazilian Portuguese
# File ending: pb
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vreadkey [options]

Aguarda um pressionamento de tecla e retorna o seu valor como um
n£mero hexadecimal atravÇs do dispositivo de sa°da padr∆o, e um
valor para a tecla ser† retornado como um %ERRORLEVEL%. Opá‰es ou
parÉmetros inv†lidos retornar∆o um %ERRORLEVEL% de 255. Teclas
especiais (como setas) retornar∆o um %ERRORLEVEL% acima de 128.

/N              N∆o envia o valor da tecla para o dispositivo
                de sa°da padr∆o.
/D n            Tempo limite e retorna c¢digo padr∆o em n
                segundos (0-3600).
/R n            Define o c¢digo padr∆o retornado se ocorrer
                um tempo limite.
/P              Limpa o buffer de entrada de quaisquer teclas
                em espera.

tba             (Ainda em desenvolvimento, mais ser† anunciado)
