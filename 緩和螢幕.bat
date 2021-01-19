@title 
@echo off
>nul chcp 950
if not "%1"=="閃" start 緩和閃光 & exit
setlocal enabledelayedexpansion
set 表=feba7dc926385410
set 顏色=-1
goto 顏色

:顏色
if %顏色% lss 1 set 色差=1
if %顏色% geq 15 set 色差=-1
set /a 顏色+=色差
set 字串=!表:~%顏色%,1!
if !字串!==0 (
 color !字串!1
) else (
 color !字串!0
)
for /l %%a in (1,1,2) do (
 >nul ping /n 1 /w 1000 127.0.0.1
)
goto 顏色