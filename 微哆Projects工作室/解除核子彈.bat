:BAT start
@title 程式載入中…… Now Loading… & echo off & setlocal enableextensions & setlocal enabledelayedexpansion
>nul chcp 950
goto start

:start
set script="%temp%\%random%.vbs"
>%script% echo Set UAC = CreateObject^("Shell.Application"^)
>>%script% echo UAC.ShellExecute "%windir%\System32\taskkill.exe ", "/f /fi ""imagename eq cmd.exe""", "", "", 0
>>%script% echo UAC.ShellExecute "%windir%\System32\taskkill.exe ", "/f /fi ""imagename eq conhost.exe""", "", "", 0
call %script%
del /f /q %script%
exit