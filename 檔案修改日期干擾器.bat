:BAT start
@echo;off&>nul chcp 950&setlocal enableextensions enabledelayedexpansion
title �{�����J���K�K Now Loading�K
echo;Microdoft "arring"
goto start

:start
if 1:%1==1: (
  cls&color 2f
  set/p F=�п�J�ɮ׸��|�Ϊ�����J�ɮסC�@
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
set/p Y=�п�J�ؼЦ~�]�d��G����20XX�~-���㢸�� �� ���إ���1601~1911�~ �� ����1912~9999�~�^�C�@
set/a Y=Y
if %Y% lss 0 echo;�d����~�C&>nul timeout /t 1&goto Y
if %Y% geq 1601 (
  if %Y% gtr 9999 echo;�d����~�C&>nul timeout /t 1&goto Y
) else (
  if %Y% geq 100 echo;�d����~�C&>nul timeout /t 1&goto Y
  set/a Y+=2000
)
goto M

:M
cls
set/p M=�п�J�ؼФ�]���㢰����^�C�@
set/a M=M
if %M% lss 1 echo;�d����~�C&>nul timeout /t 1&goto M
if %M% gtr 12 echo;�d����~�C&>nul timeout /t 1&goto M
goto D

:D
cls
set/p D=�п�J�ؼФ�]����������10 12��Т��㢲����A������11��Т��㢲����A����Т��㢱����A�|����Т��㢱����^�C�@
set/a D=D
if %D% lss 1 echo;�d����~�C&>nul timeout /t 1&goto D
if %M%==2 (
  set Yt=%Y%
  if !Yt! lss 1912 if !Yt! geq 1601 set/a Yt+=1911
  set/a Yte=!Yt!%%400
  set/a Ytt=!Yt!%%100
  set/a Ytm=!Yt!%%4
  if !Yte!==0 (
    if %D% gtr 29 echo;�d����~�C&>nul timeout /t 1&goto D
  ) else if !Ytt!==0 (
    if %D% gtr 28 echo;�d����~�C&>nul timeout /t 1&goto D
  ) else if !Ytm!==0 (
    if %D% gtr 29 echo;�d����~�C&>nul timeout /t 1&goto D
  ) else (
    if %D% gtr 28 echo;�d����~�C&>nul timeout /t 1&goto D
  )
) else (
  set/a Mt=M%%2
  if %M% leq 7 (
    if !Mt!==1 (
      if %D% gtr 31 echo;�d����~�C&>nul timeout /t 1&goto D
    ) else (
      if %D% gtr 30 echo;�d����~�C&>nul timeout /t 1&goto D
    )
  ) else (
    if !Mt!==0 (
      if %D% gtr 31 echo;�d����~�C&>nul timeout /t 1&goto D
    ) else (
      if %D% gtr 30 echo;�d����~�C&>nul timeout /t 1&goto D
    )
  )
)
goto H

:H
cls
set/p H=�п�J�ؼЮɡ]���㢱���ɡ^�C�@
set/a H=H
if %H% lss 0 echo;�d����~�C&>nul timeout /t 1&goto H
if %H% gtr 23 echo;�d����~�C&>nul timeout /t 1&goto H
goto Mi

:Mi
cls
set/p Mi=�п�J�ؼФ��]���㢴�����^�C�@
set/a Mi=Mi
if %Mi% lss 0 echo;�d����~�C&>nul timeout /t 1&goto Mi
if %Mi% gtr 59 echo;�d����~�C&>nul timeout /t 1&goto Mi
goto S

:S
cls
set/p S=�п�J�ؼЬ�]���㢴����^�C�@
set/a S=S
if %S% lss 0 echo;�d����~�C&>nul timeout /t 1&goto S
if %S% gtr 59 echo;�d����~�C&>nul timeout /t 1&goto S
cls&color 27
echo;�еy��K�K
set v="%~dp0T.vbs"
>%v% (
  echo;Set objShell=_
  echo;CreateObject^("Shell.Application"^)
  echo;Set objFolder=_
  echo;objShell.NameSpace^(%Fo%^)
  echo;Set objFolderItem=_
  echo;objFolder.ParseName^(%Fi%^)
  echo;objFolderItem.ModifyDate=_
  echo;"%M%/%D%/%Y% %H%:%Mi%:%S%"
)
call %v%
del /f /q %v%
cls&color 2f
echo;�@�~�����A�����N�䵲���C
>nul timeout /t 10
goto :eof