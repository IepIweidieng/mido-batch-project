:BAT start
@echo off&title �{�����J��......Now Loading...&echo Microdoft "arring"...
>nul chcp 950
goto start

:start
color 2f
set high=25
set wide=70
call:transform
mode con cols=70 lines=25
echo �����z���I
>nul timeout /t 10
exit /b

:transform
cls
title �{�����椤......Now Running...
mode con cols=%wide% lines=%high%
set MG=��ܰʧ@
echo %MG%�C
set NT=�uS�v��--�u���v�F�uW�v��--�u�G�v�F�uA�v��--�u���v�F�uD�v��--�u�e�v
choice /n /c swad /m "%NT%"
if %errorlevel%==1 (
set/a high+=1
goto transform
)
if %errorlevel%==2 (
if %high% leq 1 goto :eof
set/a high-=1
goto transform
)
if %errorlevel%==3 (
if %wide% leq 13 goto :eof
set/a wide-=1
goto transform
)
if %errorlevel%==4 (
set/a wide+=1
goto transform
)
goto transform