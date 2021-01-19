@title 程式載入中…… Now Loading… & echo off & setlocal enableextensions & setlocal enabledelayedexpansion
>nul chcp 950
goto start

:start
choice /n /c zxcq /m "「Z」鍵--慢；「X」鍵--中；「C」鍵--最快"
if %errorlevel%==4 (
set dots=      
for /L %%A in (1,1,9950) do (
set dots=.!dots!
if "!dots:~,7!"=="......." set dots=      
cls
echo 運算中!dots:~,6!!n!％
set /a n=10*%%A*%%A/59
)
goto start
)
if %errorlevel%==3 (
set s1=::
set s2=::
)
if %errorlevel%==2 (
set s2=::
)
if %errorlevel%==1 (
set s1=::
)
set n=1
goto dots

:dots
set /a n+=1
set dots=%dots%.
if %dots%==.... set dots=
cls & echo %n%　%dots%　%s1%　%s2%
%s1%>nul ping /n 1 /w 1000 127.0.0.1
%s2%>nul timeout /t 0
goto dots