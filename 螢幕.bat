@title 
@echo off
>nul chcp 950
if not "%1"=="閃" start 閃光 閃 & exit
setlocal enabledelayedexpansion
set 表=abcdef0123456789
:顏色
  set 次數=0
set 字串=
goto 字串
:字串
set 隨機=%random%
set /a 隨機=隨機%%16
set 字串=!字串!!表:~%隨機%,1!
set /a 次數+=1
if !次數! lss 2 goto 字串
  color !字串!
goto 顏色