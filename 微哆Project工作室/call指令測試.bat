@title �{�����J���K�K Now Loading... & echo off
>nul chcp 950
goto start

:start
color 2f
set CallCount=1
call:call
echo ���J�`�W�F�{���Y�N����
>nul timeout /t 10
exit /b

:call
cls
title %choiced%��%CallCount%�h
set MG=��ܰʧ@
echo %MG%�C
set NT=�uZ�v��--�u�����v�F�uC�v��--�u���W�@�h�v�F�uX�v��--�u���U�@�h�v
choice /n /c zcx /m "%NT%"
if %errorlevel%==3 (
set choiced=�w���U�@�h�A
set /a CallCount-=1
goto :eof
)
if %errorlevel%==2 (
set choiced=�w���W�@�h�A
set /a CallCount+=1
call:call
goto call
)
if %errorlevel%==1 (
set choiced=�w�����A
goto call
)
echo �{���w�X���C%CallCount%�@%choiced%
>nul timeout /t 0
goto call