@title 
@echo off
>nul chcp 950
if exist �H���r��.txt (>nul findstr /b /e /offline /c:"�L�G�ʧ@���� --------------------------------------------- " �H���r��.txt && echo ---------------------------------------------------------- >>�H���r��.txt) else (echo �L�G�ʧ@���� --------------------------------------------- >�H���r��.txt)
if not %errorlevel%==0 echo �L�G�ʧ@���� --------------------------------------------- >�H���r��.txt
goto �}�l

:�}�l
title �{���}�l���K�K Now Loading...
echo Microdoft "arring"
for /f "tokens=1-4 delims=/ " %%a in ("%date%") do (
set _DoDate=%%a�~%%b��%%c��]%%d�^
)
for /f "tokens=1-4 delims=:. " %%e in ("%time%") do (
set _DoTime=%%e��%%f��%%g���I%%h
)
echo �b%_DoDate%%_DoTime%�ҰʤF�{��>>�H���r��.txt
>nul timeout /t 1 /nobreak
goto �ǳ�

:�ǳ�
title �H���r��
setlocal enabledelayedexpansion
cls
set �r��=34
 set /p ��=��J�r����C
if "%��%"=="" set ��=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789
goto �r��

:�r��
cls
choice /n /c zxcsdwe /m "�r���G%�r��%�A�uZ�v��--�T�w�F�uX�v��--�W�[�F�uC�v��--��֡F�uS�v��--�W�[�ܦh�F�uD�v��--��֫ܦh�F�uW�v��--�W�[��h�F�uE�v��--��֧�h"
     if %errorlevel%==7 set /a �r��-=100 & goto �r��
     if %errorlevel%==6 set /a �r��+=100 & goto �r��
     if %errorlevel%==5 set /a �r��-=10 & goto �r��
     if %errorlevel%==4 set /a �r��+=10 & goto �r��
     if %errorlevel%==3 set /a �r��-=1 & goto �r��
     if %errorlevel%==2 set /a �r��+=1 & goto �r��
cls
set ��q=%��%987654321
set ���=0
goto ���

:���
if not "%��q:~18%"=="" set ��q=%��q:~9% & set /a ���+=9 & goto ���
    set ��l=%��q:~9,1%
set /a ���=���+��l
set ����=0
set �r��=
if %�r��% lss 1 (goto �ǳ�) else (goto �r��)

:�r��
  set �H��=%random%
set /a �H��=�H��%%%���%
set �r��=!�r��!!��:~%�H��%,1!
set /a ����+=1
if !����! lss %�r��% goto �r��
       echo �H���r��G!�r��! 
       echo �H���r��G!�r��!>>�H���r��.txt
>nul pause
goto �ǳ�