:BAT start
@echo off&title 程式載入中......Now Loading...&echo Microdoft "arring"...
>nul chcp 950
goto start

:start
color 2f
set high=25
set wide=70
call:transform
mode con cols=70 lines=25
echo 視窗爆炸！
>nul timeout /t 10
exit /b

:transform
cls
title 程式執行中......Now Running...
mode con cols=%wide% lines=%high%
set MG=選擇動作
echo %MG%。
set NT=「S」鍵--「高」；「W」鍵--「矮」；「A」鍵--「窄」；「D」鍵--「寬」
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