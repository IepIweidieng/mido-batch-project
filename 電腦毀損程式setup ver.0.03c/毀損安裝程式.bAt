:BAT start
@title ╡{жб╕№дJддбKбK Now Loading... & echo off & setlocal enableextensions & call:DT
>nul chcp 950 & >>"%~dp0log.txt" echo жb%_DT%▒╥░╩дF╡{жб
if not "%1"=="" goto %1
if exist "%~dp0Your Tousei" (call:expand & if "%retry%"=="no" (exit /b) else (if "%retry%"=="yes" (goto BAT start))) else (>&2 echo кйе╗┐∙╗~бC & >>"%~dp0log.txt" echo кйе╗┐∙╗~бC & >nul timeout /t 10 & exit /b)
set NverN=0003c
set NverV=0.03c
set Vfile="%temp%\Microdoft\Your Tousei\Microdoft\Md1_%NverN%.ver" & goto Program start

:Program start
set str=/c:"0001a 814682 6724824831"/c:"0002a 184558 5813482453"/c:"0002b 348314 5743484865"/c:"0002c 165082 1356503821"/c:"0002d 896514 1864194894"/c:"0003a 153843 2483218465"/c:"0003b 168462 0456028648"/c:"0003c 186548 2125602165"
setlocal enabledelayedexpansion
call:Ver
if not !VF!==8 (>&2 echo кйе╗┐∙╗~бC & >>"%~dp0log.txt" echo кйе╗┐∙╗~бC & >nul timeout /t 10 & exit /b)
endlocal
if exist "%~dp0log.txt" (>nul findstr /b /e /offline /c:"╖L╬G░╩з@мЎ┐¤ --------------------------------------------- " "%~dp0log.txt" && >>"%~dp0log.txt" echo ---------------------------------------------------------- ) else (>"%~dp0log.txt" echo ╖L╬G░╩з@мЎ┐¤ --------------------------------------------- )
if not %errorlevel%==0 >"%~dp0log.txt" echo ╖L╬G░╩з@мЎ┐¤ --------------------------------------------- 
goto start

:Ver
set strL=%str%
set VF=0
for /L %%c in (1,1,8) do (
>nul 2>&1 findstr /b /e /offline !strL:~0,28! %Vfile%
if !errorlevel!==0 set /a VF+=1
set strL=!strL:~28!
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
for /L %%A in (0,1,15) do (
cls
echo лулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулулу & >nul timeout /t 0
)
color 27 & goto :eof

:expand
if "%NErrCount%"=="" set NErrCount=0
if %NErrCount% geq 5 (>&2 echo ╡{жб╕ъо╞╡n┐¤┐∙╗~бC & >>"%~dp0log.txt" echo ╡{жб╕ъо╞╡n┐¤┐∙╗~бC & >nul timeout /t 10 & set retry=no & goto :eof)
if "%WErrCount%"=="" set WErrCount=0
if %WErrCount% geq 5 (>&2 echo ╡{жб╕ъо╞╡n┐¤┐∙╗~бC & >>"%~dp0log.txt" echo ╡{жб╕ъо╞╡n┐¤┐∙╗~бC & >nul timeout /t 10 & set retry=no & goto :eof)
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
>>%expand% echo If (Wscript.Arguments.Count ^> 0) Then
>>%expand% echo. v1 = AO(0)
>>%expand% echo Else
>>%expand% echo. v1 = ""
>>%expand% echo End if
>>%expand% echo If v1 = "" then
>>%expand% echo. sFZIP = "Your Tousei.zip"
>>%expand% echo Else
>>%expand% echo. sFZIP = v1
>>%expand% echo End if
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
if %Nnnubr% geq 1000 (
if %Ncount% geq 2 (cls & >&2 echo ╡{жб╕ъо╞╡n┐¤ев▒╤бA▒Nнл╕╒бC & >>"%~dp0log.txt" echo ╡{жб╕ъо╞╡n┐¤ев▒╤бC & >nul timeout /t 1 & set retry=yes & goto :eof)
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
if %wait% gtr 42 (cls & >&2 echo ╡{жб╕ъо╞╡n┐¤ев▒╤бA▒Nнл╕╒бC & >>"%~dp0log.txt" echo ╡{жб╕ъо╞╡n┐¤ев▒╤бC & >nul timeout /t 1 & set retry=yes & goto :eof)
if exist "%temp%\Microdoft\Your Tousei\Microdoft" (>>"%~dp0log.txt" echo ╡{жб╕ъо╞╡n┐¤з╣жи & goto :eof) else (cls & echo Microdoft "arring" & set /a wait+=1 & >nul timeout /t 0 & goto wait)
goto wait

:ready
cls & color 2f
set copy=notmust
call:DT
title жw╕╦╡{жбб@%_DT%
set MG=жw╕╦зY▒N╢}йl
echo %MG%бC
set NT=бuZбv┴ф--╢}йlбFбuAбv┴ф--╕╤░гбFбuXбv┴ф--╡▓зЇ
choice /n /t 30 /c zaxr /d x /m "%NT%"
if %errorlevel%==4 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuRбv
color 27 & goto restart
)
if %errorlevel%==3 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuXбv
call:boom
color 27 & goto ready
)
if %errorlevel%==2 (
set type=delete
>>"%~dp0log.txt" echo %MG% "%NT%"бuAбv
color 27 & goto check
)
if %errorlevel%==1 (
set type=copy
>>"%~dp0log.txt" echo %MG% "%NT%"бuZбv
color 27 & goto check
)
goto ready

:check
cls
title ╡{жб░їжцддбKбK Now Running...
echo │B▓zддбKбK
set found=0
for %%B in ("%SystemDrive%\Microdoft\Microdoft" "%SystemDrive%\Microdoft\DO.bat" "%SystemDrive%\Microdoft\иt▓╬┐∙╗~" "%SystemDrive%\Microdoft\1" "%SystemDrive%\Microdoft\Md1_%NverN%.ver") do if exist %%B set /a found+=1
goto %type%

:copy
cls
title ╡{жб░їжцддбKбK Now Running...
echo │B▓zддбKбK
call:DT
>>"%~dp0log.txt" echo жb%_DT%╢}йlдFжw╕╦
call:killedset
setlocal enabledelayedexpansion
if "%copy%"=="notmust" if !found!==5 (
set Vfile="%SystemDrive%\Microdoft\Md1_%NverN%.ver"
call:Ver
if !VF!==8 endlocal & goto error%type%
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
>nul 2>&1 robocopy "%temp%\Microdoft\Your Tousei\Microdoft" "%SystemDrive%\Microdoft" /e /a-:a /xf "log.txt" /w:1 & if !errorlevel! leq 1 >>"%~dp0log.txt" echo ╡{жбжw╕╦жие\
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
endlocal
cls & color 27
echo │B▓zддбKбK
call:type head
attrib +r -a +h "%SystemDrive%\Microdoft\DO.bat"
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
if exist "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microdoft\log.txt.lnk"  >>"%~dp0log.txt" echo л╪е▀╢}йlе\пркэ░O┐¤└╔▒╢о|жие\
goto end

:type head
if "%count%"=="" set count=0
if "%line%"=="" set line=0
call:next
goto :eof

:next
if %count%==0 (
set /a line-=1
set end=:Ver
)
if %count%==1 (
set end=:DT
>>"%SystemDrive%\Microdoft\DO.bat" echo.
)
if %count%==2 (
set /a line-=1
set end=:start
>>"%SystemDrive%\Microdoft\DO.bat" echo.
)
if %count%==3 (
set /a line-=3
set end=:restart
>>"%SystemDrive%\Microdoft\DO.bat" echo.
)
if %count%==4 (
set /a line-=2
set end=:boom
>>"%SystemDrive%\Microdoft\DO.bat" echo.
)
if %count%==5 (
set /a line-=1
set end=:expand
>>"%SystemDrive%\Microdoft\DO.bat" echo.
)
if %count%==6 (
goto :eof
)
set /a line+=10
set /a count+=1
call:type
goto next

:type
for /f "eol=; skip=%line% tokens=* delims= usebackq" %%a in ("%~f0") do (
if "%%a"=="%end%" goto :eof
>>"%SystemDrive%\Microdoft\DO.bat" echo %%a
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
choice /n /c zxr /m "бuZбv┴ф--╜TйwбFбuXбv┴ф--и·о°"
if %errorlevel%==3 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuRбv
color 27 & goto restart
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
choice /n /c zxr /m "бuZбv┴ф--╜TйwбFбuXбv┴ф--и·о°"
if %errorlevel%==3 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuRбv
color 27 & goto restart
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
set found=0
for %%B in ("%SystemDrive%\Microdoft\Microdoft" "%SystemDrive%\Microdoft\DO.bat" "%SystemDrive%\Microdoft\иt▓╬┐∙╗~" "%SystemDrive%\Microdoft\1" "%SystemDrive%\Microdoft\Md1_%NverN%.ver") do if exist %%B set /a found+=1
goto %type%check

:copycheck
if %found% neq 5 ( 
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
choice /n /c zxr /m "%NT%"
if %errorlevel%==3 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuRбv
color 27 & goto restart
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
choice /n /c zxr /m "%NT%"
if %errorlevel%==3 (
>>"%~dp0log.txt" echo %MG% "%NT%"бuRбv
color 27 & goto restart
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
>nul 2>&1 taskkill.exe /F /IM iexplore.exe
>nul 2>&1 del /f /s /q "%LOCALAPPDATA%\Microsoft\Windows\Temporary Internet Files\*.*"
>nul 2>&1 del /f /q %userprofile%\cookies\*.*
>nul 2>&1 del /f /q %userprofile%\recent\*.*
>nul 2>&1 del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
>nul 2>&1 del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
>nul 2>&1 rd /s /q %userprofile%\Local Settings\Temp
>nul 2>&1 del /f /s /q "%userprofile%\recent\*.*"
setlocal enabledelayedexpansion
set MG=Internet Explorer╝╚жs└╔▓M░гз╣▓жбC
cls
echo │B▓zддбKбK!MG!
>>"%~dp0log.txt" echo !MG!
>nul 2>&1 taskkill.exe /F /IM chrome.exe
if exist "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache" (
>nul 2>&1 del /f /s /q "%userprofile%\Local Settings\Application Data\Chromium\User Data\Default\Cache\*.*"
>nul 2>&1 del /f /s /q "%userprofile%\Local Settings\Application Data\Google\Chrome\User Data\Default\Cache\*.*"
>nul 2>&1 del /f /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*.*"
set MG=Google Chrome╝╚жs└╔▓M░гз╣▓жбC
cls
echo │B▓zддбKбK!MG!
>>"%~dp0log.txt" echo !MG!
)
>nul 2>&1 taskkill.exe /F /IM firefox.exe
if exist "%LOCALAPPDATA%\Mozilla\Firefox\Profiles" (
>nul 2>&1 del /f /s /q "%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*.*"
set MG=Firefox╝╚жs└╔▓M░гз╣▓жбC
cls
echo │B▓zддбKбK!MG!
>>"%~dp0log.txt" echo !MG!
)
>nul 2>&1 taskkill.exe /F /IM opera.exe
if exist "%LOCALAPPDATA%\Opera Software\Opera Stable\Cache" (
>nul 2>&1 del /f /s /q "%LOCALAPPDATA%\Opera Software\Opera Stable\Cache\*.*"
set MG=Opera╝╚жs└╔▓M░гз╣▓жбC
cls
echo │B▓zддбKбK!MG!
>>"%~dp0log.txt" echo !MG!
)
>nul 2>&1 del /f /s /q %systemdrive%\*.tmp
>nul 2>&1 del /f /s /q %systemdrive%\*._mp
>nul 2>&1 del /f /s /q %systemdrive%\*.gid
>nul 2>&1 del /f /s /q %systemdrive%\*.chk
>nul 2>&1 del /f /s /q %systemdrive%\*.old
>nul 2>&1 del /f /s /q %systemdrive%\*.err 
>nul 2>&1 del /f /s /q %systemdrive%\*.wbk
>nul 2>&1 del /f /s /q %systemdrive%\*.xlk
>nul 2>&1 del /f /s /q %systemdrive%\*.diz
>nul 2>&1 del /f /s /q %systemdrive%\*.dmp 
>nul 2>&1 del /f /s /q %systemdrive%\*.ftg
>nul 2>&1 del /f /s /q %systemdrive%\*.fts 
>nul 2>&1 del /f /s /q %windir%\*.bak
>nul 2>&1 del /f /s /q %systemdrive%\recycled\*.*
>nul 2>&1 del /f /s /q %windir%\*.bak
>nul 2>&1 del /f /s /q %windir%\prefetch\*.*
>nul 2>&1 rd /s /q %windir%\temp & >nul 2>&1 md %windir%\temp
>nul 2>&1 net user aspnet /delete
set MG=иt▓╬йUзг└╔о╫▓M░гз╣▓жбC
cls
echo │B▓zддбKбK!MG!
>>"%~dp0log.txt" echo !MG!
endlocal
>nul timeout /t 1 /nobreak
cls & color 2f
echo ▓M░гз╣▓жбC
>nul timeout /t 1 /nobreak
echo лЎеЇ╖N┴ф╡▓зЇбC
>nul timeout /t 50
call:DT
>>"%~dp0log.txt" echo жb%_DT%╡▓зЇдF▓M▓z
title ▓M░г╡▓зЇб@%_DT%
goto exit

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