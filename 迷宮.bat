:BAT start
@echo off & setlocal enableextensions & setlocal enabledelayedexpansion
>nul chcp 950 & title �{�����J���K�K Now Loading...
goto Program start

:Program start
set maze="%temp%\maze.js"
goto start

:start
title �{���}�l���K�K Now Loading...
cls & echo Microdoft "arring"
>nul timeout /t 1 /nobreak
color 27 & goto ready

:ready
title �{�����椤�K�K Now Running...
set C=0
set S0=�@
set S1=��
goto maze

:maze
set /a C+=1
if %C%==921 set C=0 & goto finish
set /a N=(%random%+%random%+1)%%2
set M=%M%!S%N%!
goto maze

:finish
cls
echo %M%
>nul pause
exit /b