@title �{�����J���K�K Now Loading... & echo off
>nul chcp 950
goto start

:start
choice /n /c zxc /m "�uZ�v��--�C�F�uX�v��--���F�uC�v��--�̧�"
if %errorlevel%==3 (
set s1=::
set s2=::
)
if %errorlevel%==2 (
set s2=::
)
if %errorlevel%==1 (
set s1=::
)
set n=1
goto dots

:dots
set /a n+=1
set dots=%dots%.
if %dots%==.... set dots=
cls & echo %n%�@%dots%
%s1%>nul ping /n 1 /w 1000 127.0.0.1
%s2%>nul timeout /t 0
goto dots