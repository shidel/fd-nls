@ECHO OFF
set LANG=SV

IF NOT EXIST %DOSDIR%\BIN\DISPLAY.EXE GOTO NoCodePage
IF NOT EXIST %DOSDIR%\BIN\MODE.COM GOTO NoCodePage
IF NOT EXIST %DOSDIR%\CPI\EGA.CPX GOTO NoCodePage

IF NOT EXIST %DOSDIR%\BIN\NLSFUNC.EXE GOTO NoNLSFunc
NLSFUNC %dosdir%\BIN\COUNTRY.SYS
:NoNLSFunc

DISPLAY CON=(EGA,850,2)
MODE CON CP PREP=((850) %dosdir%\CPI\EGA.CPX)
MODE CON CP SEL=850
MODE CON CP REFRESH
REM CHCP 850
REM KEYB SV,850,%dosdir%\bin\keyboard.sys
REM MKEYB SV

:NoCodePage
