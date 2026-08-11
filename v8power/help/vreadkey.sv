# Language: Swedish
# File ending: sv
# Codepage: 850
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vreadkey [options]

V„ntar p† en tangenttryckning och returnerar dess v„rde som ett
hexadecimalt tal via standardutmatningsenheten, och ett v„rde f”r
tangenten returneras som en %ERRORLEVEL%. Ogiltiga v„xlar eller
alternativ returnerar en %ERRORLEVEL% p† 255. Specialtangenter (som
pilar) returnerar en %ERRORLEVEL% ”ver 128.

/N              Mata inte ut tangentv„rdet till
                standardutmatningsenheten.
/D n            Tidsgr„ns och returnera standardkod inom n
                sekunder (0-3600).
/R n            St„ll in standardkoden som returneras om en
                tidsgr„ns uppn†s.
/P              Rensa inmatningsbufferten fr†n alla v„ntande
                tangenttryckningar.

tba             (Fortfarande under utveckling, mer kommer meddelas)
