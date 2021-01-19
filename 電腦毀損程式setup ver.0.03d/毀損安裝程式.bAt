:BAT start
@title ╡{жб╕№дJддбKбK Now Loading... & echo off & setlocal enableextensions & setlocal enabledelayedexpansion & if not "%1"=="" goto %1
>nul chcp 950 & call:DT & >>"%~dp0log.txt" echo жb!_DT!▒╥░╩дF╡{жб
if exist "%~dp0Your Tousei" (call:custom & call:expand & if "%retry%"=="no" (exit /b) else (if "%retry%"=="yes" (goto BAT start))) else (>&2 echo ╕ъо╞┐∙╗~бC & >>"%~dp0log.txt" echo ╕ъо╞┐∙╗~бC & >nul timeout /t 10 & exit /b)
set NverN=0003d
set NverV=0.03d
set Vfile="%temp%\Microdoft\Your Tousei\Microdoft\Md1_%NverN%.ver"
goto Program start

:Program start
set str=0001a 814682 67248248310002a 184558 58134824530002b 348314 57434848650002c 165082 13565038210002d 896514 18641948940003a 153843 24832184650003b 168462 04560286480003c 186548 21256021650003d 192168 1568421846
call:Ver
if not !VF!==9 (>&2 echo кйе╗┐∙╗~бC & >>"%~dp0log.txt" echo кйе╗┐∙╗~бC & >nul timeout /t 10 & exit /b)
if exist "%~dp0log.txt" (>nul findstr /b /e /offline /c:"╖L╬G░╩з@мЎ┐¤ --------------------------------------------- " "%~dp0log.txt" && >>"%~dp0log.txt" echo ---------------------------------------------------------- ) else (>"%~dp0log.txt" echo ╖L╬G░╩з@мЎ┐¤ --------------------------------------------- )
if not %errorlevel%==0 >"%~dp0log.txt" echo ╖L╬G░╩з@мЎ┐¤ --------------------------------------------- 
goto start

:Ver
set strL=%str%
set VF=0
for /L %%c in (1,1,9) do (
>nul 2>&1 findstr /b /e /offline /c:"!strL:~0,23!" %Vfile%
if !errorlevel!==0 set /a VF+=1
set strL=!strL:~23!
)
goto :eof

:DT
for /f "tokens=1-4 delims=/ " %%a in ("%date%") do set _DoDate=%%aж~%%bды%%cдщб]%%dб^
for /f "tokens=1-4 delims=:. " %%e in ("%time%") do set _DoTime=%%eо╔%%fд└%%gмэ┬I%%h
set _DT=%_DoDate%%_DoTime%
goto :eof

:start
title ╡{жб╢}йlддбKбK Now Loading...
cls & echo Microdoft "arring"
call:DT
>>"%~dp0log.txt" echo жb%_DT%╢}йlдF╡{жб
>nul timeout /t 1 /nobreak
color 27 & goto ready

:restart
cls & color
title ╡{жбнл╖s╢}йlддбKбK Now Loading...
echo Microdoft re"arring"
call:DT
>>"%~dp0log.txt" echo жb%_DT%нл╢}дF╡{жб
>nul timeout /t 1 /nobreak
color 27 & goto ready

:boom
cls & color c0
title лулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулу
for /L %%A in (0,1,%S1%) do (
cls
echo лулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулу & >nul timeout /t 0
)
color 27 & goto :eof

:expand
if "%NErrCount%"=="" set NErrCount=0
if %NErrCount% geq %NS4% (>&2 echo ╡{жб╕ъо╞е╪┐¤┐∙╗~бC & >>"%~dp0log.txt" echo ╡{жб╕ъо╞е╪┐¤┐∙╗~бC & >nul timeout /t 10 & set retry=no & goto :eof)
if "%WErrCount%"=="" set WErrCount=0
if %WErrCount% geq %NS5% (>&2 echo ╡{жб╕ъо╞╡n┐¤┐∙╗~бC & >>"%~dp0log.txt" echo ╡{жб╕ъо╞╡n┐¤┐∙╗~бC & >nul timeout /t 10 & set retry=no & goto :eof)
cls & echo Microdoft "arring"..., please wait
if exist "%temp%\Microdoft" >nul 2>&1 rd /s /q "%temp%\Microdoft"
if "%Nname%"=="" set Nname=000
if "%Ncount%"=="" set Ncount=0
call:Nname
if "%retry%"=="yes" (set /a NErrCount +=1 & set retry=
goto expand)
if exist "%temp%\Microdoft" (
>nul 2>&1 rename "%temp%\Microdoft" "Microdoft%Nname%"
)
>nul 2>&1 mkdir "%temp%\Microdoft"
set expand="%temp%\Microdoft\unzip.vbs"
>%expand% echo Set AO = WScript.Arguments
>nul 2>&1 attrib +h %expand%
>>%expand% echo sZipF = "%temp%\Microdoft\Your Tousei.zip"
>>%expand% echo Set oS = CreateObject( "Shell.Application" )
>>%expand% echo Set oSc = oS.NameSpace(sZipF).Items()
>>%expand% echo Set oT = oS.NameSpace("%temp%\Microdoft")
>>%expand% echo oT.CopyHere oSc,256
set dp=%~dp0
>nul 2>&1 robocopy "%dp:~,-1%" "%temp%\Microdoft" "Your Tousei" /e /a-:h /w:1
>nul 2>&1 rename "%temp%\Microdoft\Your Tousei" "Your Tousei.zip"
>nul 2>&1 attrib +h -a "%temp%\Microdoft\Your Tousei.zip"
call:killedset
if exist "%temp%\Microdoft\Your Tousei.zip" (call %expand%) else (set /a WErrCount +=1 & set retry=
goto expand)
set wait=0
call:wait
del /f /q /a %expand%
del /f /q /a "%temp%\Microdoft\Your Tousei.zip"
if "%retry%"=="yes" (set /a WErrCount +=1 & set retry=
goto expand)
goto :eof

:Nname
if "%retry%"=="yes" goto :eof
if exist "%temp%\Microdoft%Nname%" (
>nul 2>&1  rd /s /q "%temp%\Microdoft%Nname%"
if "%Nname%"=="00%Nname:~-1%" (set Nnnubr=%Nname:~-1%
) else (if "%Nname%"=="0%Nname:~-2%" (set Nnnubr=%Nname:~-2%))
set /a Nnnubr+=1 & call:Nnstr
goto Nname)
if %Ncount% geq 1 (goto :eof) else (
if "%Nname%"=="00%Nname:~-1%" (set Nnnubr=%Nname:~-1%
) else (if "%Nname%"=="0%Nname:~-2%" (set Nnnubr=%Nname:~-2%))
set /a Nnnubr+=1 & call:Nnstr
goto Nname)
goto Nname

:Nnstr
if %Nnnubr% geq %S2% (
if %Ncount% geq %S3% (cls & >&2 echo ╡{жб╕ъо╞╡n┐¤ев▒╤бA▒Nнл╕╒бC & >>"%~dp0log.txt" echo ╡{жб╕ъо╞╡n┐¤ев▒╤бC & >nul timeout /t 1 & set retry=yes & goto :eof)
set Nname=000
set /a Ncount+=1
) else (set Nname=%Nnnubr%
if %Nnnubr% lss 10 (set Nname=00%Nnnubr%
) else (if %Nnnubr% lss 100 (set Nname=0%Nnnubr%)))
goto :eof

:killedset
set killed=wmplayer.exe
set killfi=imagename
call:taskkill
set killed=иt▓╬┐∙╗~
set killfi=windowtitle
call:taskkill
set killed=м█д∙
call:taskkill
goto :eof

:taskkill
>nul 2>&1 taskkill /f /fi "%killfi% eq %killed%"
>nul 2>&1 taskkill /f /fi "%killfi% eq %killed%*"
>nul 2>&1 taskkill /f /fi "%killfi% eq *%killed%*"
>nul 2>&1 taskkill /f /fi "%killfi% eq *%killed%"
goto :eof

:wait
if %wait% gtr %NS6% (cls & >&2 echo ╡{жб╕ъо╞╡n┐¤╣Lд[бA▒Nнл╕╒бC & >>"%~dp0log.txt" echo ╡{жб╕ъо╞╡n┐¤ев▒╤бC & >nul timeout /t 1 & set retry=yes & goto :eof)
if exist "%temp%\Microdoft\Your Tousei\Microdoft" (>>"%~dp0log.txt" echo ╡{жб╕ъо╞╡n┐¤з╣жи & goto :eof) else (cls & echo Microdoft "arring" & set /a wait+=1 & >nul timeout /t 0 & goto wait)
goto wait

:custom
if exist "%~dp0╖┤╖lжw╕╦╡{жб.cfg" (
set CC=1
for /f "eol=; tokens=1,2 delims== usebackq" %%a in ("%~dp0╖┤╖lжw╕╦╡{жб.cfg") do (
set set!CC!=%%b
set /a CC+=1
)) else (call:reset)
set S1=%set1%
set S2=%set2%
set S3=%set3%
set S4=%set4%
set S5=%set5%
set S6=%set6%
goto CustomCheck

:CustomCheck
if "%S1%"=="" call:reset1
if "%S2%"=="" call:reset2
if "%S3%"=="" call:reset3
if "%S4%"=="" call:reset4
if "%S5%"=="" call:reset5
if "%S6%"=="" call:reset6
>"%~dp0╖┤╖lжw╕╦╡{жб.cfg" echo set1=%S1%
>>"%~dp0╖┤╖lжw╕╦╡{жб.cfg"  echo set2=%S2%
>>"%~dp0╖┤╖lжw╕╦╡{жб.cfg"  echo set3=%S3%
>>"%~dp0╖┤╖lжw╕╦╡{жб.cfg"  echo set4=%S4%
>>"%~dp0╖┤╖lжw╕╦╡{жб.cfg"  echo set5=%S5%
>>"%~dp0╖┤╖lжw╕╦╡{жб.cfg"  echo set6=%S6%
set /a NS4=S4+1
set /a NS5=S5+1
set /a NS6=S6-1
goto :eof

:reset
for /L %%A in (1,1,6) do (call:reset%%A)
goto :eof

:reset1
set S1=15
goto :eof

:reset2
set S2=100
goto :eof

:reset3
set S3=2
goto :eof

:reset4
set S4=2
goto :eof

:reset5
set S5=2
goto :eof

:reset6
set S6=15
goto :eof

:ready
cls & color 2f
call:DT
title жw╕╦╡{жбб@%_DT%
set MG=жw╕╦зY▒N╢}йl
echo %MG%бC
set NT=бuZбv┴ф--╢}йlбFбuXбv┴ф--╡▓зЇ
choice /n /t 30 /c zxqr /d x /m "%NT%"
if %errorlevel%==4 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuRбv
color 27 & goto restart
)
if %errorlevel%==3 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuQбv
color 27 & goto finish
)
if %errorlevel%==2 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuXбv
call:boom
color 27 & goto ready
)
if %errorlevel%==1 (
set type=copy
>>"%~dp0log.txt" echo %MG% "%NT%"бuZбv
goto pre-check
)
goto ready

:pre-check
cls & color 2f
call:DT
title жw╕╦╡{жбб@%_DT%
set MG=┐я╛▄жw╕╦┐я╢╡
echo %MG%бC
set NT=бuZбv┴ф--жw╕╦бFбuXбv┴ф--н╫┤_бFбuCбv┴ф--╕╤░гжw╕╦
choice /n /t 30 /c zxcqr /d x /m "%NT%"
if %errorlevel%==5 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuRбv
color 27 & goto restart)
if %errorlevel%==4 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuQбv
color 27 & goto ready)
if %errorlevel%==3 (
set type=delete
>>"%~dp0log.txt" echo %MG% "%NT%"бuCбv
color 27 & goto check
)
if %errorlevel%==2 (
set type=copy
set copy=
>>"%~dp0log.txt" echo %MG% "%NT%"бuXбv
color 27 & goto check
)
if %errorlevel%==1 (
set type=copy
set copy=notmust
>>"%~dp0log.txt" echo %MG% "%NT%"бuZбv
color 27 & goto check
)
goto pre-check

:check
cls
title ╡{жб░їжцддбKбK Now Running...
echo │B▓zддбKбK
call:FoundCheck
goto %type%

:FoundCheck
set found=0
for %%B in ("%SystemDrive%\Microdoft\Microdoft" "%SystemDrive%\Microdoft\DO.bat" "%SystemDrive%\Microdoft\иt▓╬┐∙╗~" "%SystemDrive%\Microdoft\1" "%SystemDrive%\Microdoft\Md1_%NverN%.ver" "%SystemDrive%\Microdoft\CustomDO.cmd") do if exist %%B set /a found+=1
goto :eof

:copy
cls
title ╡{жб░їжцддбKбK Now Running...
echo │B▓zддбKбK
call:DT
>>"%~dp0log.txt" echo жb%_DT%╢}йlдFжw╕╦
call:killedset
if "%copy%"=="notmust" if !found!==6 (
set Vfile="%SystemDrive%\Microdoft\Md1_%NverN%.ver"
call:Ver
if !VF!==9 goto error%type%
)
if exist "%SystemDrive%\Microdoft\log.txt" (
goto copy-log

:copy-log
cls & color 2f
set MG=нn▓M░гмЎ┐¤└╔╢▄?
echo !MG!
set NT=бuZбv┴ф--╜TйwбFбuXбv┴ф--дгдF
choice /n /t 15 /c zx /d x /m "!NT!"
if !errorlevel!==2 (
>>"%~dp0log.txt" echo !MG! "!NT!"бuXбv
) else (
if !errorlevel!==1 (
>>"%~dp0log.txt" echo !MG! "!NT!"бuZбv
if exist "%SystemDrive%\Microdoft" rd /s /q "%SystemDrive%\Microdoft"
) else (
goto copy-log))
cls & color 27
echo │B▓zддбKбK
)
if exist "%SystemDrive%\Microdoft\Md1_?????.ver" (
attrib -h "%SystemDrive%\Microdoft\Md1_?????.ver"
for %%c in ("%SystemDrive%\Microdoft\Md1_?????.ver") do set Vfile=%%~fc & call:Ver
if not !VF!==0 (
for %%C in ("%SystemDrive%\Microdoft\Md1_?????.ver") do set Fver=%%~nC
set ver=!Fver:~5,1!
set rev=!Fver:~6,3!
del /f /q /a "%SystemDrive%\Microdoft\*.ver"
call:DT
if !ver!.!rev!==%NverV% (
>>"%SystemDrive%\Microdoft\log.txt" echo жb!_DoDate!!_DoTime!╢iжцдFн╫┤_
>>"%SystemDrive%\Microdoft\log.txt" echo %NverV%
) else (
>>"%SystemDrive%\Microdoft\log.txt" echo жb!_DoDate!!_DoTime!╢iжцдFзє╖s
>>"%SystemDrive%\Microdoft\log.txt" echo !ver!.!rev! бў %NverV%
)))
if exist "%SystemDrive%\Microdoft" (
if exist "%SystemDrive%\Microdoft\log.txt" (
md "%SystemDrive%\Microdoft\work"
>nul 2>&1 move /y "%SystemDrive%\Microdoft\log.txt" "%SystemDrive%\Microdoft\work\log.txt"
)
del /f /q /a "%SystemDrive%\Microdoft\*"
if exist "%SystemDrive%\Microdoft\work\log.txt" (
>nul 2>&1 move /y "%SystemDrive%\Microdoft\work\log.txt" "%SystemDrive%\Microdoft\log.txt"
rd /s /q "%SystemDrive%\Microdoft\work"
))
>nul 2>&1 robocopy "%temp%\Microdoft\Your Tousei\Microdoft" "%SystemDrive%\Microdoft" /e /a-:a /xf "log.txt" "╣q╕г╖┤╖l╡{жб.cfg" /w:1 & if !errorlevel! leq 1 >>"%~dp0log.txt" echo ╡{жбжw╕╦жие\
goto copy-damage

:copy-damage
cls & color 2f
set MG=нnжw╕╦╖┤╖l╛ўпр╢▄?
echo !MG!
set NT=бuZбv┴ф--╜TйwбFбuXбv┴ф--дгдF
choice /n /t 15 /c zx /d z /m "!NT!"
if !errorlevel!==2 (
>>"%~dp0log.txt" echo !MG! "!NT!"бuXбv
attrib -r -h "%SystemDrive%\Microdoft\DO.bat"
>>"%SystemDrive%\Microdoft\DO.bat" echo goto :eof
>>"%SystemDrive%\Microdoft\DO.bat" echo.
) else (
if !errorlevel!==1 (
>>"%~dp0log.txt" echo !MG! "!NT!"бuZбv
attrib -r -h "%SystemDrive%\Microdoft\DO.bat"
>>"%SystemDrive%\Microdoft\DO.bat" type "%temp%\Microdoft\Your Tousei\damage"
) else (
goto copy-damage))
cls & color 27
echo │B▓zддбKбK
attrib -r -h "%SystemDrive%\Microdoft\CustomDO.cmd"
call:type head
attrib +r -a +h "%SystemDrive%\Microdoft\DO.bat"
attrib +r -a +h "%SystemDrive%\Microdoft\CustomDO.cmd"
>"%SystemDrive%\Microdoft\╣q╕г╖┤╖l╡{жб.cfg" echo set=%S1%
attrib -a +h "%SystemDrive%\Microdoft\╣q╕г╖┤╖l╡{жб.cfg"
if not exist "%userprofile%\Desktop\Microdoft" mkdir "%userprofile%\Desktop\Microdoft" && >>"%~dp0log.txt" echo л╪е▀орн▒╕ъо╞зижие\
if not exist "%SystemDrive%\Microdoft\log.txt" >>"%SystemDrive%\Microdoft\log.txt" echo.
set script="%temp%\Microdoft\%random%.vbs"
set target="%userprofile%\Desktop\Microdoft\╣q╕г╖l╖┤╡{жб.lnk"
set source="%SystemDrive%\Microdoft\DO.bat"
set icon="%SystemDrive%\Microdoft\Microdoft"
set desc="This application may ╖┤╖l your computer."
> %script% echo set ows = wscript.createobject("wscript.shell")
>> %script% echo slinkfile = %target%
>> %script% echo set olink = ows.createshortcut(slinkfile)
>> %script% echo olink.targetpath = %source%
>> %script% echo olink.iconlocation = %icon%
>> %script% echo olink.windowstyle = 1
>> %script% echo olink.description = %desc%
>> %script% echo olink.hotkey = ""
>> %script% echo olink.arguments = ""
>> %script% echo olink.save
cscript /b /nologo %script% && >>"%~dp0log.txt" echo л╪е▀орн▒▒╢о|жие\
set target="%userprofile%\Desktop\Microdoft\╣q╕г╖┤╖l╡{жб custom.lnk"
set source="%SystemDrive%\Microdoft\CustomDO.cmd"
set icon="%SystemRoot%\system32\SHELL32.dll,2"
set desc="This application may │]йw your ╖┤╖lapplication."
> %script% echo set ows = wscript.createobject("wscript.shell")
>> %script% echo slinkfile = %target%
>> %script% echo set olink = ows.createshortcut(slinkfile)
>> %script% echo olink.targetpath = %source%
>> %script% echo olink.iconlocation = %icon%
>> %script% echo olink.windowstyle = 1
>> %script% echo olink.description = %desc%
>> %script% echo olink.hotkey = ""
>> %script% echo olink.arguments = ""
>> %script% echo olink.save
cscript /b /nologo %script% && >>"%~dp0log.txt" echo л╪е▀орн▒│]йw╡{жб▒╢о|жие\
set target="%userprofile%\Desktop\Microdoft\log.txt.lnk"
set source="%SystemDrive%\Microdoft\log.txt"
set icon="%SystemRoot%\system32\SHELL32.dll,70"
set desc="╖┤╖lд@─¤"
> %script% echo set ows = wscript.createobject("wscript.shell")
>> %script% echo slinkfile = %target%
>> %script% echo set olink = ows.createshortcut(slinkfile)
>> %script% echo olink.targetpath = %source%
>> %script% echo olink.iconlocation = %icon%
>> %script% echo olink.windowstyle = 1
>> %script% echo olink.description = %desc%
>> %script% echo olink.hotkey = ""
>> %script% echo olink.arguments = ""
>> %script% echo olink.save
cscript /b /nologo %script% && >>"%~dp0log.txt" echo л╪е▀орн▒░O┐¤└╔▒╢о|жие\
> %script% echo Set UAC = CreateObject^("Shell.Application"^)
>> %script% echo UAC.ShellExecute "%windir%\System32\robocopy.exe ", """%userprofile%\Desktop\Microdoft"" ""%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microdoft"" /mir /a-:a /w:1", "", "runas", 0
call %script%
del /f /q %script%
if exist "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microdoft\╣q╕г╖l╖┤╡{жб.lnk" >>"%~dp0log.txt" echo л╪е▀╢}йlе\пркэ▒╢о|жие\
if exist "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microdoft\╣q╕г╖┤╖l╡{жб custom.lnk" >>"%~dp0log.txt" echo л╪е▀╢}йlе\пркэ│]йw╡{жб▒╢о|жие\
if exist "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microdoft\log.txt.lnk"  >>"%~dp0log.txt" echo л╪е▀╢}йlе\пркэ░O┐¤└╔▒╢о|жие\
goto end

:type head
if "%count%"=="" set count=0
if "%line%"=="" set line=0
call:next
goto :eof

:next
if %count%==0 (
set RC=%~f0
set G="%SystemDrive%\Microdoft\DO.bat"
set /a line-=1
set end=:Ver
)
if %count%==1 (
set /a line-=2
set end=:DT
>>%G% echo.
)
if %count%==2 (
set end=:start
>>%G% echo.
)
if %count%==3 (
set /a line-=4
set end=:restart
>>%G% echo.
)
if %count%==4 (
set /a line-=2
set end=:boom
>>%G% echo.
)
if %count%==5 (
set /a line-=1
set end=:expand
>>%G% echo.
)
if %count%==6 (
set line=-4
set RC=%~dp0Custom.cMd
set G="%SystemDrive%\Microdoft\CustomDO.cmd"
set end=:DT
>>%G% echo.
)
if %count%==7 (
set /a line-=5
set end=:start
>>%G% echo.
)
if %count%==8 (
set /a line-=5
set end=:restart
>>%G% echo.
)
if %count%==9 (
set /a line-=2
set end=:boom
>>%G% echo.
)
if %count%==10 (
set /a line+=3
set end=:set-1
>>%G% echo.
)
if %count%==11 (
set /a line+=19
set end=:set0
>>%G% echo.
)
if %count%==12 (
set /a line-=6
set end=:set1
>>%G% echo.
)
if %count%==13 (
set /a line-=6
set end=:exit
>>%G% echo.
)
if %count%==14 (
set /a line+=30
set end=:custom
>>%G% echo.
)
if %count%==15 (
goto :eof
)
set /a line+=10
set /a count+=1
call:type
goto next

:type
for /f "eol=; skip=%line% tokens=* delims= usebackq" %%a in ("%RC%") do (
if "%%a"=="%end%" goto :eof
>>%G% echo %%a
)

:delete
cls
title ╡{жб░їжцддбKбK Now Running...
echo │B▓zддбKбK
call:DT
>>"%~dp0log.txt" echo жb%_DT%╢}йlдF╕╤░гжw╕╦
if %found% equ 0 goto error%type%
>nul timeout /t 0
call:killedset
if exist "%SystemDrive%\Microdoft" rd /s /q "%SystemDrive%\Microdoft" & if not exist "%SystemDrive%\Microdoft" >>"%~dp0log.txt" echo ╡{жб╕╤░гжw╕╦жие\
if exist "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microdoft" rd /s /q "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microdoft" & if not exist "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microdoft" >>"%~dp0log.txt" echo зR░г╢}йlе\пркэ▒╢о|жие\
if exist "%userprofile%\Desktop\Microdoft" rd /s /q "%userprofile%\Desktop\Microdoft" & if not exist "%userprofile%\Desktop\Microdoft" >>"%~dp0log.txt" echo зR░горн▒▒╢о|жие\
goto end

:errorcopy
call:DT
>>"%~dp0log.txt" echo жb%_DT%╡oе═дF┐∙╗~
title ┐∙╗~╡oе═б@%_DT%
cls & color 1f
>&2 echo ╡oе═┐∙╗~бC
>nul timeout /t 1 /nobreak
cls
>&2 echo зAдw╕gжw╕╦╣LдFбC
>nul timeout /t 1 /nobreak
goto errorcopied

:errorcopied
set MG=нnнл╖sжw╕╦╢▄бH
color 2f
echo %MG%
set NT=бuZбv┴ф--╜TйwбFбuXбv┴ф--и·о°
choice /n /c zxqr /m "бuZбv┴ф--╜TйwбFбuXбv┴ф--и·о°"
if %errorlevel%==4 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuRбv
color 27 & goto restart
)
if %errorlevel%==3 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuQбv
color 27 & goto finish
)
if %errorlevel%==2 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuXбv
goto finish
)
if %errorlevel%==1 (
set copy=must
>>"%~dp0log.txt" echo %MG% "%NT%"бuZбv
color 27 & goto copy
)
cls & goto errorcopied

:errordelete
call:DT
>>"%~dp0log.txt" echo жb%_DT%╡oе═дF┐∙╗~
title ┐∙╗~╡oе═б@%_DT%
cls & color 1f
>&2 echo ╡oе═┐∙╗~бC
>nul timeout /t 1 /nobreak
cls
>&2 echo зA┴┘иSжw╕╦бC
>nul timeout /t 1 /nobreak
goto errordeleted

:errordeleted
set MG=нnжw╕╦╢▄бH
color 2f
echo %MG%
set NT=бuZбv┴ф--╜TйwбFбuXбv┴ф--и·о°
choice /n /c zxqr /m "бuZбv┴ф--╜TйwбFбuXбv┴ф--и·о°"
if %errorlevel%==4 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuRбv
color 27 & goto restart
)
if %errorlevel%==3 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuQбv
color 27 & goto finish
)
if %errorlevel%==2 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuXбv
goto finish
)
if %errorlevel%==1 (
set type=copy
set copy=must
>>"%~dp0log.txt" echo %MG% "%NT%"бuZбv
color 27 & goto copy
)
cls & goto errordeleted

:end
cls
call:DT
>>"%~dp0log.txt" echo жb%_DT%╡▓зЇдFжw╕╦
title жw╕╦╡▓зЇб@%_DT%
call:FoundCheck
goto %type%check

:copycheck
if %found% neq 6 ( 
cls & color 1f
set MG=┐∙╗~бAжw╕╦дгжие\бC
>&2 echo %MG%
>>"%~dp0log.txt" echo %MG%
>nul timeout /t 1 /nobreak
cls
echo ╜╨лЎдUеЇ╖N┴ф╡▓зЇбC
>nul timeout /t 50
goto finish
)
set MG=жw╕╦жие\бC
color 2f
echo %MG%
>>"%~dp0log.txt" echo %MG%
>nul timeout /t 1 /nobreak
echo ╜╨лЎдUеЇ╖N┴ф─~─ЄбC
>nul timeout /t 50
goto copychecked

:copychecked
cls
set MG=нnе┤╢}╡{жб╢▄бH
echo %MG%
set NT=бuZбv┴ф--╜TйwбFбuXбv┴ф--дгдF
choice /n /c zxqr /m "%NT%"
if %errorlevel%==4 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuRбv
color 27 & goto restart
)
if %errorlevel%==3 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuQбv
color 27 & goto finish
)
if %errorlevel%==2 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuXбv
goto finish
)
if %errorlevel%==1 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuZбv
set start=yes
goto finish
)
goto copychecked

:deletecheck
if %found% neq 0 ( 
cls & color 1f
set MG=┐∙╗~бA╕╤░гжw╕╦дгжие\бC
>&2 echo %MG%
>>"%~dp0log.txt" echo %MG%
>nul timeout /t 1 /nobreak
cls
echo ╜╨лЎдUеЇ╖N┴ф╡▓зЇбC
>nul timeout /t 50
goto finish
)
set MG=╕╤░гжw╕╦жие\бC
color 2f
echo %MG%
>>"%~dp0log.txt" echo %MG%
>nul timeout /t 1 /nobreak
echo ╜╨лЎдUеЇ╖N┴ф╡▓зЇбC
>nul timeout /t 50
goto finish

:finish
cls & color 2f
set MG=нn▓M░гиt▓╬йUзг╢▄бH
echo %MG%
set NT=бuZбv┴ф--╜TйwбFбuXбv┴ф--дгдF
choice /n /c zxqr /m "%NT%"
if %errorlevel%==4 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuRбv
color 27 & goto restart
)
if %errorlevel%==3 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuQбv
color 27 & goto exit
)
if %errorlevel%==2 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuXбv
color 27 & goto exit
)
if %errorlevel%==1 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuZбv
color 27 & goto cleancheck
)
goto finish

:cleancheck
call:TestAdm
if "%err%"=="0"  call:clean
exit /b

:TestAdm
set GetAdm="%temp%\Microdoft\getadmin.vbs"
>nul 2>&1 at
if not "%errorlevel%"=="0" (
call:UAC
set err=1
) else (
if exist %GetAdm% >nul 2>&1 del %GetAdm%
set err=0
)
goto :eof

:UAC
> %GetAdm% echo Set UAC = CreateObject^("Shell.Application"^)
>> %GetAdm% echo UAC.ShellExecute "%~s0", "cleancheck %start%", "", "runas", 1
call %GetAdm%
goto :eof

:clean
cls & color 27
call:DT
>>"%~dp0log.txt" echo жb%_DT%╢}йlдFйUзг▓M▓z
title ╡{жб░їжцддбKбK Now Running...
echo │B▓zддбKбK
>nul timeout /t 1
set CP=▓M░гInternet Explorer╝╚жs└╔
echo │B▓zддбKбK!CP!
set Tp=7
>nul 2>&1 taskkill.exe /F /IM iexplore.exe
set CJ=0
call:cleanCP
>nul 2>&1 del /f /s /q "%LOCALAPPDATA%\Microsoft\Windows\Temporary Internet Files\*.*"
call:cleanCP
>nul 2>&1 del /f /q %userprofile%\cookies\*.*
call:cleanCP
>nul 2>&1 del /f /q %userprofile%\recent\*.*
call:cleanCP
>nul 2>&1 del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
call:cleanCP
>nul 2>&1 del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
call:cleanCP
>nul 2>&1 rd /s /q %userprofile%\Local Settings\Temp
call:cleanCP
>nul 2>&1 del /f /s /q "%userprofile%\recent\*.*"
call:cleanCP
>nul timeout /t 1
set MG=Internet Explorer╝╚жs└╔▓M░гз╣▓жбC
cls
echo │B▓zддбKбK!MG!
>>"%~dp0log.txt" echo !MG!
>nul timeout /t 1
set Tp=3
>nul 2>&1 taskkill.exe /F /IM chrome.exe
set CJ=0
if exist "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache" (
set CP=▓M░гGoogle Chrome╝╚жs└╔
echo │B▓zддбKбK!MG!!CP!
call:cleanCP
>nul 2>&1 del /f /s /q "%userprofile%\Local Settings\Application Data\Chromium\User Data\Default\Cache\*.*"
call:cleanCP
>nul 2>&1 del /f /s /q "%userprofile%\Local Settings\Application Data\Google\Chrome\User Data\Default\Cache\*.*"
call:cleanCP
>nul 2>&1 del /f /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*.*"
call:cleanCP
>nul timeout /t 1
set MG=Google Chrome╝╚жs└╔▓M░гз╣▓жбC
cls
echo │B▓zддбKбK!MG!
>>"%~dp0log.txt" echo !MG!
>nul timeout /t 1
)
set Tp=1
>nul 2>&1 taskkill.exe /F /IM firefox.exe
set CJ=0
if exist "%LOCALAPPDATA%\Mozilla\Firefox\Profiles" (
set CP=▓M░гFirefox╝╚жs└╔
echo │B▓zддбKбK!MG!!CP!
call:cleanCP
>nul 2>&1 del /f /s /q "%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*.*"
call:cleanCP
set MG=Firefox╝╚жs└╔▓M░гз╣▓жбC
cls
echo │B▓zддбKбK!MG!
>>"%~dp0log.txt" echo !MG!
>nul timeout /t 1
)
set Tp=1
>nul 2>&1 taskkill.exe /F /IM opera.exe
set CJ=0
if exist "%LOCALAPPDATA%\Opera Software\Opera Stable\Cache" (
set CP=▓M░гOpera╝╚жs└╔
echo │B▓zддбKбK!MG!!CP!
call:cleanCP
>nul 2>&1 del /f /s /q "%LOCALAPPDATA%\Opera Software\Opera Stable\Cache\*.*"
call:cleanCP
>nul timeout /t 1
set MG=Opera╝╚жs└╔▓M░гз╣▓жбC
cls
echo │B▓zддбKбK!MG!
>>"%~dp0log.txt" echo !MG!
>nul timeout /t 1
)
set Tp=18
set CJ=0
set CP=▓M░гиt▓╬йUзг└╔о╫
echo │B▓zддбKбK!MG!!CP!
call:cleanCP
>nul 2>&1 del /f /s /q %systemdrive%\*.tmp
call:cleanCP
>nul 2>&1 del /f /s /q %systemdrive%\*._mp
call:cleanCP
>nul 2>&1 del /f /s /q %systemdrive%\*.gid
call:cleanCP
>nul 2>&1 del /f /s /q %systemdrive%\*.chk
call:cleanCP
>nul 2>&1 del /f /s /q %systemdrive%\*.old
call:cleanCP
>nul 2>&1 del /f /s /q %systemdrive%\*.err 
call:cleanCP
>nul 2>&1 del /f /s /q %systemdrive%\*.wbk
call:cleanCP
>nul 2>&1 del /f /s /q %systemdrive%\*.xlk
call:cleanCP
>nul 2>&1 del /f /s /q %systemdrive%\*.diz
call:cleanCP
>nul 2>&1 del /f /s /q %systemdrive%\*.dmp 
call:cleanCP
>nul 2>&1 del /f /s /q %systemdrive%\*.ftg
call:cleanCP
>nul 2>&1 del /f /s /q %systemdrive%\*.fts 
call:cleanCP
>nul 2>&1 del /f /s /q %windir%\*.bak
call:cleanCP
>nul 2>&1 del /f /s /q %systemdrive%\recycled\*.*
call:cleanCP
>nul 2>&1 del /f /s /q %windir%\*.bak
call:cleanCP
>nul 2>&1 del /f /s /q %windir%\prefetch\*.*
call:cleanCP
>nul 2>&1 rd /s /q %windir%\temp & >nul 2>&1 md %windir%\temp
call:cleanCP
>nul 2>&1 net user aspnet /delete
call:cleanCP
>nul timeout /t 1
set MG=иt▓╬йUзг└╔о╫▓M░гз╣▓жбC
cls
echo │B▓zддбKбK!MG!
>>"%~dp0log.txt" echo !MG!
>nul timeout /t 1
cls & color 2f
echo ▓M░гз╣▓жбC
>nul timeout /t 1 /nobreak
echo лЎеЇ╖N┴ф╡▓зЇбC
>nul timeout /t 50
call:DT
>>"%~dp0log.txt" echo жb%_DT%╡▓зЇдF▓M▓z
title ▓M░г╡▓зЇб@%_DT%
goto exit

:cleanCP
cls
echo %MG%%CP%бKбK%CJ%б■%Tp%
set /a CJ+=1
goto :eof

:exit
call:DT
>>"%~dp0log.txt" echo жb%_DT%╡▓зЇдF╡{жб
>>"%~dp0log.txt" echo ---------------------------------------------------------- 
if "%start%"=="" set start=%2
if "%start%"=="yes" (
explorer "%userprofile%\Desktop\Microdoft\╣q╕г╖l╖┤╡{жб.lnk"
>nul timeout /t 0
>nul timeout /t 0
)
goto :eof