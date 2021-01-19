:批始
@echo off&>nul chcp 950&setlocal EnableExtensions&color 27&title 程式載入中…… Now Loading…
set LogNew=
if exist "%~dp0log.txt" (
  for /f "tokens=* usebackq" %%a in ("%~dp0log.txt") do (
    if not "%%a"=="微哆動作紀錄 ~～~～~～~～~～~～~～~～~～~～~～~～~～~～~～ " set LogNew=1&goto:批始續
  )
) else (
  set LogNew=1
)

:批始續
if defined LogNew (
  >"%~dp0log.txt" echo;微哆動作紀錄 ~～~～~～~～~～~～~～~～~～~～~～~～~～~～~～ 
) else (
  for /f "tokens=* usebackq" %%a in ("%~dp0log.txt") do set "LogLast=%%a"
  if not "!LogLast!"=="~～~～~～~～~～~～~～~～~～~～~～~～~～~～~～~～~～~～~～~ " >>"%~dp0log.txt" echo;~～~～~～~～~～~～~～~～~～~～~～~～~～~～~～~～~～~～~～~ 
)
call:DT
>>"%~dp0log.txt" echo;%_DT%　啟動了更新程式

:值原
echo;Microdoft "arring (initializing)"...
set i_重設=
for /f "tokens=1 delims==" %%a in ('set') do (
  for %%b in (ALLUSERSPROFILE ANDROID_SDK_HOME APPDATA CommonProgramFiles CommonProgramFiles^(x86^) CommonProgramW6432 COMPUTERNAME ComSpec configsetroot FP_NO_HOST_CHECK HOMEDRIVE HOMEPATH LOCALAPPDATA LOGONSERVER NUMBER_OF_PROCESSORS OS Path PATHEXT PROCESSOR_ARCHITECTURE PROCESSOR_IDENTIFIER PROCESSOR_LEVEL PROCESSOR_REVISION ProgramData ProgramFiles ProgramFiles^(x86^) ProgramW6432 PROMPT PSModulePath PUBLIC SESSIONNAME SystemDrive SystemRoot TEMP TMP USERDOMAIN USERNAME USERPROFILE windir) do if "%%a"=="%%b" set i_重設=1
  call:值原重設
)
goto:註

:值原重設
if defined i_重設 (set i_重設=) else (set %%a=)
goto:eof

:DT
for /f "tokens=1-4 delims=/ " %%a in ("%date%") do set _DoDate=%%a年%%b月%%c日（%%d）
for /f "tokens=1-4 delims=:. " %%e in ("%time%") do set _DoTime=%%e時%%f分%%g秒點%%h
set _DT=%_DoDate%%_DoTime%
set nl=^


goto:eof

:註
set 驗=12
set 現版=0100g
set 現板=1
if "%現版:~,1%%現版:~-1%"=="""" (
 set "現號=ver.%現版:~1,-1%"
) else (
 if "%現版:~,2%"=="0%現版:~1,1%" (set 現號=ver.%現版:~1,1%.%現版:~2%) else (set 現號=ver.%現版:~,2%.%現版:~2%)
)
if not "%現板%"=="0" set "現號=%現號% rev.%現板%"

:始
setlocal enabledelayedexpansion
title 程式執行中…… Now Running…
cls&echo;Microdoft "arring (checking for Internet)"...
2>&1 >nul ping /a /n 1 docs.google.com||(call:錯 1&exit /b %errorlevel%)
cls&echo;Microdoft "arring (checking for newer Ver.)"...

:升期
set 字址="https://docs.google.com/uc?authuser=0&id=0B1GI2ZfUddzgZEFXUGRjMXV5cjQ&export=download"
set 字檔="%temp%\Md3_SoS.ver"
call:升下
set 版找=
set 字址=
for /f "tokens=1-5 usebackq delims=" %%a in (%字檔%) do (
  if defined 版找 set 字址="%%e"
  if "%%a,%%b,%%c"=="%驗%,%現版%,%現板%" set 版找=1
  set 新版=%%b
  set 新板=%%c
  set 新名=%%d
)
if "%新版:~,1%%新版:~-1%"=="""" (
 set "新號=ver.%新版:~1,-1%"
) else (
 if "%新版:~,2%"=="0%新版:~1,1%" (set 新號=ver.%新版:~1,1%.%新版:~2%) else (set 新號=ver.%新版:~,2%.%新版:~2%)
)
if not "%新板%"=="0" set "新號=%新號% rev.%新板%"
>nul 2>&1 del /f /q /a %字檔%
if defined 字址 (
  set 升選=0
  set 升單錯=
  call:選升
  <nul set/p=""&color 2f
  call:升單
  call:DT&>>"%~dp0log.txt" echo;!_DT!　開始下載最新版（%新號%）
  color 27
  if defined 升單錯 cls&call:錯 !升單錯!&exit /b %errorlevel%
  if !升選! equ 0 (
    cls&echo;Microdoft "arring (downloading newest Ver.)"...
    set 字檔="%~dp0%新名%.tmp"
    call:升下
    call:升下驗
    if defined 檔找 (
      if exist "%~dp0%新名%.exe" >nul 2>&1 del /f /q /a "%~dp0%新名%.exe"
      rename !字檔! "%新名%.exe"
      attrib -a +r "%~dp0%新名%.exe"
      call:DT&>>"%~dp0log.txt" echo;!_DT!　最新版（%新號%）下載完成
      "%~dp0%新名%.exe"
    ) else (
      call:錯 2&exit /b %errorlevel%
    )
  )
  call:錯 0&exit /b %errorlevel%
)
call:錯 00&exit /b %errorlevel%

:升下
if exist %字檔% >nul 2>&1 del /f /q /a %字檔%
>"%temp%\%~n0tempUD.vbs" (
  echo;Download %字址%,%字檔%
  echo;Function Download^(strUrl,strFile^)
  echo;Set A=CreateObject^("MSXML2.ServerXMLHTTP"^)
  echo;A.Open "GET",strUrl,0
  echo;A.Send^(^)
  echo;Set B=CreateObject^("ADODB.Stream"^)
  echo;B.Mode=3
  echo;B.Type=1
  echo;B.Open^(^)
  echo;B.Write^(A.responseBody^)
  echo;B.SaveToFile strFile,2
  echo;End Function
)
>nul 2>&1 "%temp%\%~n0tempUD.vbs"
>nul 2>&1 del /f /q /a "%temp%\%~n0tempUD.vbs"
call:升下等
goto:eof

:升下等
if exist %字檔% goto:eof
goto:升下等

:升下驗
if exist %字檔% (set 檔找=1) else (set 檔找=)
goto:eof

:升單
if !升選!==0 (set 升選擇=＞　) else (set 升選擇=　＜)
set MG=程式有新版本（^^!新號^^!），要下載嗎？（目前版本：^^!現號^^!）
set NT=是的%升選擇:~,1%　　%升選擇:~1%不了
cls
choice /n /t 30 /c adzxq /d x /m "%MG:~,18%!nl!%MG:~-11%!nl!%NT%"

if %errorlevel% geq 6 (color 27&set 升單錯=%errorlevel%&goto:eof)
if %errorlevel%==5 (
>>"%~dp0log.txt" echo;%MG% "%NT%"「Q」
color 27&set 升單錯=0&goto:eof
)
if %errorlevel%==4 (
>>"%~dp0log.txt" echo;%MG% "%NT%"「X」
color 27&set 升選=1&goto:eof
)
if %errorlevel%==3 (
>>"%~dp0log.txt" echo;%MG% "%NT%"「Z」
color 27&goto:eof
)
if %errorlevel%==2 (
  if !升選! lss 1 (set/a 升選+=1)
)
if %errorlevel%==1 (
  if !升選! gtr 0 (set/a 升選-=1)
)
goto:升單

:錯
call:DT
color 2f&cls
if "%1"=="0" echo;GOoD ByE with you！&>>"%~dp0log.txt" echo;%_DT%　結束了更新程式
if "%1"=="00" echo;目前版本（%現號%）已是最新版！&>>"%~dp0log.txt" echo;%_DT%　結束了更新程式
if "%1"=="1" >&2 echo;ＮＯ　ＩＮＴＥＲＮＥＴ！&>>"%~dp0log.txt" echo;%_DT%　更新程式沒有網路而關閉
if "%1"=="2" >&2 echo;Ｄｏｗｎｌｏａｄｉｎｇ　Ｆａｉｌｅｄ！&>>"%~dp0log.txt" echo;%_DT%　最新版（%新號%）下載失敗
if %10 gtr 60 >&2 echo;發生了嚴重的錯誤，程式必須關閉。&>>"%~dp0log.txt" echo;%_DT%　更新程式遇到嚴重的錯誤而關閉
>>"%~dp0log.txt" echo;~～~～~～~～~～~～~～~～~～~～~～~～~～~～~～~～~～~～~～~ 
endlocal&endlocal
>nul timeout /t 10&color
title 命令提示字元&cls
exit /b %1