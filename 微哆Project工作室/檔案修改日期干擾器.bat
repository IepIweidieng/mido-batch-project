:BAT start
@echo;off&>nul chcp 950&setlocal enableextensions enabledelayedexpansion
title 程式載入中…… Now Loading…
echo;Microdoft "arring"
goto start

:start
if 1:%1==1: (
  cls&color 2f
  set/p F=請輸入檔案路徑或直接拖入檔案。　
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
set/p Y=請輸入目標年（範圍：公元20XX年-０∼９９ 或 中華民國1601~1911年 或 公元1912~9999年）。　
set/a Y=Y
if %Y% lss 0 echo;範圍錯誤。&>nul timeout /t 1&goto Y
if %Y% geq 1601 (
  if %Y% gtr 9999 echo;範圍錯誤。&>nul timeout /t 1&goto Y
) else (
  if %Y% geq 100 echo;範圍錯誤。&>nul timeout /t 1&goto Y
  set/a Y+=2000
)
goto M

:M
cls
set/p M=請輸入目標月（１∼１２月）。　
set/a M=M
if %M% lss 1 echo;範圍錯誤。&>nul timeout /t 1&goto M
if %M% gtr 12 echo;範圍錯誤。&>nul timeout /t 1&goto M
goto D

:D
cls
set/p D=請輸入目標日（１３５７８10 12月－１∼３１日，４６９11月－１∼３０日，２月－１∼２８日，閏２月－１∼２９日）。　
set/a D=D
if %D% lss 1 echo;範圍錯誤。&>nul timeout /t 1&goto D
if %M%==2 (
  set Yt=%Y%
  if !Yt! lss 1912 if !Yt! geq 1601 set/a Yt+=1911
  set/a Yte=!Yt!%%400
  set/a Ytt=!Yt!%%100
  set/a Ytm=!Yt!%%4
  if !Yte!==0 (
    if %D% gtr 29 echo;範圍錯誤。&>nul timeout /t 1&goto D
  ) else if !Ytt!==0 (
    if %D% gtr 28 echo;範圍錯誤。&>nul timeout /t 1&goto D
  ) else if !Ytm!==0 (
    if %D% gtr 29 echo;範圍錯誤。&>nul timeout /t 1&goto D
  ) else (
    if %D% gtr 28 echo;範圍錯誤。&>nul timeout /t 1&goto D
  )
) else (
  set/a Mt=M%%2
  if %M% leq 7 (
    if !Mt!==1 (
      if %D% gtr 31 echo;範圍錯誤。&>nul timeout /t 1&goto D
    ) else (
      if %D% gtr 30 echo;範圍錯誤。&>nul timeout /t 1&goto D
    )
  ) else (
    if !Mt!==0 (
      if %D% gtr 31 echo;範圍錯誤。&>nul timeout /t 1&goto D
    ) else (
      if %D% gtr 30 echo;範圍錯誤。&>nul timeout /t 1&goto D
    )
  )
)
goto H

:H
cls
set/p H=請輸入目標時（０∼２３時）。　
set/a H=H
if %H% lss 0 echo;範圍錯誤。&>nul timeout /t 1&goto H
if %H% gtr 23 echo;範圍錯誤。&>nul timeout /t 1&goto H
goto Mi

:Mi
cls
set/p Mi=請輸入目標分（０∼５９分）。　
set/a Mi=Mi
if %Mi% lss 0 echo;範圍錯誤。&>nul timeout /t 1&goto Mi
if %Mi% gtr 59 echo;範圍錯誤。&>nul timeout /t 1&goto Mi
goto S

:S
cls
set/p S=請輸入目標秒（０∼５９秒）。　
set/a S=S
if %S% lss 0 echo;範圍錯誤。&>nul timeout /t 1&goto S
if %S% gtr 59 echo;範圍錯誤。&>nul timeout /t 1&goto S
cls&color 27
echo;請稍後……
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
echo;作業完成，按任意鍵結束。
>nul timeout /t 10
goto :eof