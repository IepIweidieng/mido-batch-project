@echo off&>nul chcp 950&setlocal EnableExtensions EnableDelayedExpansion
title 程式執行中…… Now Running...
goto start

:start
color 2f
if "%1"=="" (cls&echo;費式數列&set/p n="輸入正整數　顯示數列中此項的數值；輸入非正整數　結束程式　") else (set n=%1)
set/a n*=1
if %n% leq 0 exit/b
call:F !n!
echo;%errorlevel%
if "%1"=="" >nul timeout /t 10&goto:start
exit/b

:F
if %1 leq 2 (
 exit/b 1
) else (
 setlocal
 set/a t=%1-1
 call:F !t!
 set m=!errorlevel!
 set/a t=%1-2
 call:F !t!
 set/a p=m+!errorlevel!
)
(endlocal&exit/b %p%)