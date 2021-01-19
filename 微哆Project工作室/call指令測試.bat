@title 程式載入中…… Now Loading... & echo off
>nul chcp 950
goto start

:start
color 2f
set CallCount=1
call:call
echo 掉入深淵；程式即將結束
>nul timeout /t 10
exit /b

:call
cls
title %choiced%第%CallCount%層
set MG=選擇動作
echo %MG%。
set NT=「Z」鍵--「平移」；「C」鍵--「往上一層」；「X」鍵--「往下一層」
choice /n /c zcx /m "%NT%"
if %errorlevel%==3 (
set choiced=已往下一層，
set /a CallCount-=1
goto :eof
)
if %errorlevel%==2 (
set choiced=已往上一層，
set /a CallCount+=1
call:call
goto call
)
if %errorlevel%==1 (
set choiced=已平移，
goto call
)
echo 程式已出錯。%CallCount%　%choiced%
>nul timeout /t 0
goto call