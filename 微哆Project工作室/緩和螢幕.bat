@title 
@echo off
>nul chcp 950
if not "%1"=="閃" start 緩和閃光 & exit
setlocal enabledelayedexpansion
set 表=08fceab9d7462315
set 顏色=0
goto 顏色

:顏色
set /a 顏色+=1
if %顏色% gtr 15 set 顏色=0
set 字串=!表:~%顏色%,1!
if !字串!==0 (
color !字串!1
) else (
color !字串!0
)
>nul ping /n 1 /w 1000 127.0.0.1
goto 顏色