# Language: Spanish
# File ending: es
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vreadkey [options]

Espera una pulsaci¢n de tecla y devuelve su valor como un n£mero
hexadecimal a trav‚s del dispositivo de salida est ndar, y un valor
para la tecla se devolver  como un %ERRORLEVEL%. Los par metros u
opciones no v lidos devolver n un %ERRORLEVEL% de 255. Las teclas
especiales (como flechas) devolver n un %ERRORLEVEL% mayor a 128.

/N              No env¡a el valor de la tecla al dispositivo
                de salida est ndar.
/D n            Tiempo de espera y devuelve c¢digo por defecto
                en n segundos (0-3600).
/R n            Establece el c¢digo por defecto devuelto si
                ocurre un tiempo de espera.
/P              Purga el b£fer de entrada de cualquier
                pulsaci¢n en espera.

tba             (A£n en desarrollo, se anunciar  m s adelante)
