# Language: Dutch
# File ending: nl
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vreadkey [options]

Wacht op een toetsaanslag en stuur de waarde als hexadecimaal getal
naar het standaard uitvoerapparaat, en een waarde voor de toets
wordt geretourneerd als een %ERRORLEVEL%. Ongeldige schakelaars of
opties retourneren een %ERRORLEVEL% van 255. Speciale toetsen (zoals
pijltjes) retourneren een %ERRORLEVEL% hoger dan 128.

/N              Voer de toetswaarde niet uit naar het standaard
                uitvoerapparaat.
/D n            Time-out en retourneer standaardcode in n
                seconden (0-3600).
/R n            Stel de standaardcode in die wordt geretourneerd
                bij een time-out.
/P              Wis alle wachtende toetsaanslagen uit de
                invoerbuffer.

tba             (Nog in ontwikkeling, meer wordt aangekondigd)
