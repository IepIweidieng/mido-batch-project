:BAT start
@title �{�����J���K�K Now Loading�K & echo off & setlocal enableextensions & setlocal enabledelayedexpansion
>nul chcp 950
echo Microdoft "arring"
goto start

:start
if "%1"=="" (
cls & color 2f
set /p F=�п�J�ɮ׸��|�Ϊ�����J�ɮסC�@
call "%~f0" !F!
exit /b
) else (
set F=%1
)
set Fo="%~dp1"
set Fi="%~nx1"
goto Y

:Y
cls
set /p Y=�п�J�ؼЦ~�]�d��G����20XX�~-���㢸�� �� ���إ���1601~1911�~ �� ����1912~9999�~�^�C�@
set /a Y=Y
if %Y% geq 0 (
if %Y% geq 1601 (
if %Y% gtr 9999 echo �d����~�C & >nul timeout /t 1 & goto Y
) else (
if %Y% geq 100 echo �d����~�C & >nul timeout /t 1 & goto Y
set /a Y+=2000
)) else (
echo �d����~�C & >nul timeout /t 1 & goto Y
)
goto M

:M
cls
set /p M=�п�J�ؼФ�]���㢰����^�C�@
set /a M=M
if %M% geq 1 (
if %M% gtr 12 echo �d����~�C & >nul timeout /t 1 & goto M
) else (
echo �d����~�C & >nul timeout /t 1 & goto M
)
goto D

:D
cls
set /p D=�п�J�ؼФ�]����������10 12��Т��㢲����A������11��Т��㢲����A����Т��㢱����A�|����Т��㢱����^�C�@
set /a D=D
if %D% geq 1 (
if %M%==2 (
set Yt=%Y%
if !Yt! lss 1912 if !Yt! geq 1601 set /a Yt+=1911
set /a Yte=Yt%400
if !Yte!==0 (
if %D% gtr 29 echo �d����~�C & >nul timeout /t 1 & goto D
) else (
set /a Ytt=Yt%100
if !Ytt!==0 (
if %D% gtr 28 echo �d����~�C & >nul timeout /t 1 & goto D
) else (
if %D% gtr 29 echo �d����~�C & >nul timeout /t 1 & goto D
))) else (
if %M% leq 7 (
set /a Mt=M%2
if !Mt!==1 (
if %D% gtr 31 echo �d����~�C & >nul timeout /t 1 & goto D
) else (
if %D% gtr 30 echo �d����~�C & >nul timeout /t 1 & goto D
)) else (
set /a Mt=M%2
if !Mt!==0 (
if %D% gtr 31 echo �d����~�C & >nul timeout /t 1 & goto D
) else (
if %D% gtr 30 echo �d����~�C & >nul timeout /t 1 & goto D
)))) else (
echo �d����~�C & >nul timeout /t 1 & goto D
)
goto H

:H
cls
set /p H=�п�J�ؼЮɡ]���㢱���ɡ^�C�@
set /a H=H
if %H% geq 0 (
if %H% gtr 23 echo �d����~�C & >nul timeout /t 1 & goto H
) else (
echo �d����~�C & >nul timeout /t 1 & goto H
)
goto Mi

:Mi
cls
set /p Mi=�п�J�ؼФ��]���㢴�����^�C�@
set /a Mi=Mi
if %Mi% geq 0 (
if %Mi% gtr 59 echo �d����~�C & >nul timeout /t 1 & goto Mi
) else (
echo �d����~�C & >nul timeout /t 1 & goto Mi
)
goto S

:S
cls
set /p S=�п�J�ؼЬ�]���㢴����^�C�@
set /a S=S
if %S% geq 0 (
if %S% gtr 59 echo �d����~�C & >nul timeout /t 1 & goto S
) else (
echo �d����~�C & >nul timeout /t 1 & goto S
)
cls & color 27
echo �еy��K�K
set v="%~dp0T.vbs"
>%v% echo Set objShell = _
>>%v%  echo CreateObject("Shell.Application")
>>%v%  echo Set objFolder = _
>>%v%  echo objShell.NameSpace(%Fo%)
>>%v%  echo Set objFolderItem = _
>>%v%  echo objFolder.ParseName(%Fi%)
>>%v%  echo objFolderItem.ModifyDate  = _
>>%v%  echo "%M%/%D%/%Y% %H%:%Mi%:%S%"
call %v%
del /f /q %v%
cls & color 2f
echo �@�~�����A�����N�䵲���C
>nul timeout /t 10
goto :eof