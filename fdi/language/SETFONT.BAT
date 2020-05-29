@ECHO OFF

if not "%1" == "" goto %1
goto End

:RU
set _DCP=866
goto Load

:TR
set _DCP=857
goto Load

:NL
set _DCP=865
goto Load

:RU
set _DCP=866
goto Load

:FR
:ES
:EO
:DE
set _DCP=850
goto Load

:Unload
:EN
vfont /d
goto End

:Load
set _FNT=%1%_DCP%.V8F
if exist %_FNT% goto LoadFont
set _FNT=CP%_DCP%.V8F
if exist %_FNT% goto LoadFont
goto Unload

:LoadFont
vfont /f16 %_FNT%
if errorlevel 1 goto Unload

:End
set _DCP=
set _FNT=