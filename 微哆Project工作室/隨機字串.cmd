@title 
@echo off
>nul chcp 950
if exist 隨機字串.txt (>nul findstr /b /e /offline /c:"微哆動作紀錄 --------------------------------------------- " 隨機字串.txt && echo ---------------------------------------------------------- >>隨機字串.txt) else (echo 微哆動作紀錄 --------------------------------------------- >隨機字串.txt)
if not %errorlevel%==0 echo 微哆動作紀錄 --------------------------------------------- >隨機字串.txt
goto 開始

:開始
title 程式開始中…… Now Loading...
echo Microdoft "arring"
for /f "tokens=1-4 delims=/ " %%a in ("%date%") do (
set _DoDate=%%a年%%b月%%c日（%%d）
)
for /f "tokens=1-4 delims=:. " %%e in ("%time%") do (
set _DoTime=%%e時%%f分%%g秒點%%h
)
echo 在%_DoDate%%_DoTime%啟動了程式>>隨機字串.txt
>nul timeout /t 1 /nobreak
goto 準備

:準備
title 隨機字串
setlocal enabledelayedexpansion
cls
set 字長=34
 set /p 表=輸入字元表。
if "%表%"=="" set 表=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789
goto 字長

:字長
cls
choice /n /c zxcsdwe /m "字長：%字長%，「Z」鍵--確定；「X」鍵--增加；「C」鍵--減少；「S」鍵--增加很多；「D」鍵--減少很多；「W」鍵--增加更多；「E」鍵--減少更多"
     if %errorlevel%==7 set /a 字長-=100 & goto 字長
     if %errorlevel%==6 set /a 字長+=100 & goto 字長
     if %errorlevel%==5 set /a 字長-=10 & goto 字長
     if %errorlevel%==4 set /a 字長+=10 & goto 字長
     if %errorlevel%==3 set /a 字長-=1 & goto 字長
     if %errorlevel%==2 set /a 字長+=1 & goto 字長
cls
set 表段=%表%987654321
set 表長=0
goto 表長

:表長
if not "%表段:~18%"=="" set 表段=%表段:~9% & set /a 表長+=9 & goto 表長
    set 表餘=%表段:~9,1%
set /a 表長=表長+表餘
set 次數=0
set 字串=
if %字長% lss 1 (goto 準備) else (goto 字串)

:字串
  set 隨機=%random%
set /a 隨機=隨機%%%表長%
set 字串=!字串!!表:~%隨機%,1!
set /a 次數+=1
if !次數! lss %字長% goto 字串
       echo 隨機字串：!字串! 
       echo 隨機字串：!字串!>>隨機字串.txt
>nul pause
goto 準備