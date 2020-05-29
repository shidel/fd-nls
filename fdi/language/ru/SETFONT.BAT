@ECHO OFF

REM Temporary Load or unload font for specific language.

if not "%1" == "" goto %1
goto End

:Unload
vfont /d
goto End

:Load
if exist ru\ru866.v8f vfont /f16 ru\ru866.v8f
if exist ru866.v8f vfont /f16 ru866.v8f

:End