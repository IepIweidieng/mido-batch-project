@echo off&>nul chcp 950&setlocal enabledelayedexpansion
title �������V�V����&mode con cols=34 lines=17&color 07
set "ca=27abcdef0"
<nul set/p="   ">"%~dp0temp"
for /f "skip=21 tokens=*" %%a in ('type "%0"') do (
 set "a=%%a"
 for /l %%b in (0,1,20) do (
  set "str=!a:~%%b,1!"
  if defined str (
   set/a "cb=!random!%%8+1"
   call set "cc=%%ca:~!cb!,1%%"
   >nul 2>nul ren "%~dp0temp" !str!
   findstr /s /a:!cc! . !str!
   >nul 2>nul ren "%~dp0!str!" temp
  )
 )
 echo.&echo.
)
del /f /q /a temp&>nul pause&exit
--------------�峹����------------------
��v�īa�A����B�B�t�t�B���C
��沴�B���Ѫ��S�A���h�E�P�C
�T�Q�\�W�лP�g�A�K�d�������M��C
�������B�դF�֦~�Y�A�Ŵd���I
�t�d���A�S�����C�ڤl��A��ɷ��H
�r������}�A�P���s�ʡC
�������\�J���סA���ʹ����I����C
�ݭ��Y�B���B�¤s�e�A�¤����I