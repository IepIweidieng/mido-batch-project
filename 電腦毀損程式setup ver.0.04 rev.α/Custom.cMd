:BAT start
@title 程式載入中…… & echo off & setlocal enableextensions & setlocal enabledelayedexpansion & call:DT
>nul chcp 950 & >>"%~dp0log.txt" echo 在%_DT%啟動了設定程式
if not exist "%~dp0毀損安裝程式.bAt" (>&2 echo 沒有可以進行設定的程式。 & >>"%~dp0log.txt" echo 沒有可以進行設定的程式。 & >nul timeout /t 10 & exit /b 1)
call:custom & set Bdots=Microdoft "arring", please wait & set Adots= 
cls & echo %Bdots% & goto ProgramStart

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
echo 　%MG%。
echo.
set NT=「Z」鍵--進入設定；「X」鍵--結束
echo %NT:~,11%
choice /n /t 30 /c zxqr /d x /m "%NT:~-8%"
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
color 27 & echo  & goto CustomSet
)
goto ready

:Menu
echo 　　　%MG%
echo.
echo.
echo 　%Ml1%　 %M1%
echo 　　　　　　　　　　　　　 %Mop1%
if %MI% geq 2 (
echo 　%Ml2%　　%M2%
echo 　　　　　　　　　　　　　　%Mop2%
) else (echo. & echo.)
if %MI% geq 3 (
echo 　%Ml3%　　 %M3%
echo 　　　　　　　　　　　　　　 %Mop3%
) else (echo. & echo.)
if %MI% geq 4 (
echo 　%Ml4%　　%M4%
echo 　　　　　　　　　　　　　　%Mop4%
) else (echo. & echo.)
if %MI% geq 5 (
echo 　%Ml5%　 %M5%
echo 　　　　　　　　　　　　　 %Mop5%
) else (echo. & echo.)
if %MI% geq 6 (
echo 　%Ml6%　　%M6%
echo 　　　　　　　　　　　　　　%Mop6%
) else (echo. & echo.)
if %MI% geq 7 (
echo 　%Ml7%　　　 %M7%
echo 　　　　　　　　　　　　　　　 %Mop7%
) else (echo. & echo.)
if %MI% geq 8 (
echo 　%Ml8%　　　%M8%
echo 　　　　　　　　　　　　　　　%Mop8%
) else (echo. & echo.)
if %MI% geq 9 (
echo 　%Ml9%　　 %M9%
echo 　　　　　　　　　　　　　　%Mop9%
) else (echo. & echo.)
if not "%Hp%"=="" (echo 　　　　%Hp%) else (echo 　　　　　　　　　　　　　　　　　　　　　%ESp%%Ex%)
goto :eof

:set-2
cls & color 2f
if %V7% geq 2 (set VAr=　) else (set VAr=＞)
if %V7% leq 1 (set VAl=　) else (set VAl=＜)
set MG=選擇選項
set Hp=　　　　　　　　　　　　　　　　　　　　　　　　確認是否清除記錄檔。
set Mop7= 是的%VAr%　　%VAl%不了
call:Menu
echo.
set NT=「D」鍵--右選；「A」鍵--左選；「Z」鍵--設定；「X」鍵--取消
choice /n /c adzx /m "%NT%"
if %errorlevel%==4 (goto CustomSet)
if %errorlevel%==3 (
if %V7%==1 (
if exist "%~dp0log.txt" del /f /q /a "%~dp0log.txt"
if not exist "%~dp0log.txt" (
set Mop7= 　記錄檔清除成功！
cls
call:Menu
>nul timeout /t 1 /nobreak
) else (
set Mop7= 　記錄檔清除失敗！
cls
call:Menu
>nul timeout /t 1 /nobreak
))
echo  & goto CustomSet)
if %errorlevel%==2 (
if %V7% geq 2 (set V7=2) else (set /a V7+=1))
if %errorlevel%==1 (
if %V7% leq 1 (set V7=1) else (set /a V7-=1))
goto set-2

:set-1
cls & color 2f
if %V8% geq 2 (set VAr=　) else (set VAr=＞)
if %V8% leq 1 (set VAl=　) else (set VAl=＜)
set MG=選擇選項
set Hp=　　　　　　　　　　　　　　　　　　　　　　　確認是否回復預設設定。
set Mop8= 是的%VAr%　　%VAl%不了
call:Menu
echo.
set NT=「D」鍵--右選；「A」鍵--左選；「Z」鍵--設定；「X」鍵--取消
choice /n /c adzx /m "%NT%"
if %errorlevel%==4 (goto CustomSet)
if %errorlevel%==3 (
if %V8%==1 (call:reset)
echo  & goto CustomSet)
if %errorlevel%==2 (
if %V8% geq 2 (set V8=2) else (set /a V8+=1))
if %errorlevel%==1 (
if %V8% leq 1 (set V8=1) else (set /a V8-=1))
goto set-1

:set0
cls & color 2f
if %V9% geq 2 (set VAr=　) else (set VAr=＞)
if %V9% leq 1 (set VAl=　) else (set VAl=＜)
set MG=選擇選項
set Hp=　　　　　　　　　　　　　　　　　　　　　　　確認是否離開設定程式。
set Mop9= 是的%VAr%　　%VAl%不了
call:Menu
echo.
set NT=「D」鍵--右選；「A」鍵--左選；「Z」鍵--設定；「X」鍵--取消
choice /n /c adzx /m "%NT%"
if %errorlevel%==4 (goto CustomSet)
if %errorlevel%==3 (
if %V9%==1 (set V9=1 & goto set0r)
echo  & goto CustomSet)
if %errorlevel%==2 (
if %V9% geq 2 (set V9=2) else (set /a V9+=1))
if %errorlevel%==1 (
if %V9% leq 1 (set V9=1) else (set /a V9-=1))
goto set0

:set0r
cls & color 2f
if %V9% geq 2 (set VL=不了 & set VAr=　) else (set VAr=＞)
if %V9% leq 1 (set VL=是的 & set VAl=　) else (set VAl=＜)
set MG=選擇選項
set Hp=　　　　　　　　　　　　　　　　　　　　　　　　　確認是否儲存設定。
set Mop9= 是的%VAr%　　%VAl%不了
call:Menu
echo.
set NT=「D」鍵--右選；「A」鍵--左選；「Z」鍵--設定；「X」鍵--取消
choice /n /c adzx /m "%NT%"
if %errorlevel%==4 (goto CustomSet)
if %errorlevel%==3 (
if %V9%==2 (set enter=0)
>>"%~dp0log.txt" echo 儲存設定 "%NT%"　%VL%「Z」
echo  & goto end
)
if %errorlevel%==2 (
if %V9% geq 2 (set V9=2) else (set /a V9+=1))
if %errorlevel%==1 (
if %V9% leq 1 (set V9=1) else (set /a V9-=1))
goto set0r

:set1
cls & color 2f
if %V1% lss 100 (
set VSp1=
if %V1% lss 10 (
set VSp1= )
set VS1= ) else (
set VSp1= 
set VS1=)
if %V1% geq 100 (set VAr=　) else (set VAr=＞)
if %V1% leq 1 (set VAl=　) else (set VAl=＜)
set MG=設定%Ex%
set Hp=　　　　　　　　　　　　　　　　　　值愈大，炸彈炸得愈久；否則愈短。
set Mop1=%VS1%%VAl%%VSp1%%V1%%VAr%%VS1%　　（以爆炸次數為單位，範圍為1～100）
call:Menu
echo.
set NT=「D」鍵--增加；「A」鍵--減少；「Z」鍵--設定；「X」鍵--取消
choice /n /c adzx /m "%NT%"
if %errorlevel%==4 (
set V1=%S1%
goto CustomSet
)
if %errorlevel%==3 (
set S1=%V1%
echo  & goto CustomSet
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
set Mop9=設定儲存成功！
>>"%~dp0log.txt" echo 設定成功
) else (
set Mop9=設定儲存失敗！
>>"%~dp0log.txt" echo 設定失敗
)
cls
call:Menu
>>"%~dp0log.txt" echo 在%_DT%結束了設定程式
>>"%~dp0log.txt" echo ---------------------------------------------------------- 
>nul timeout /t 5
)
exit /b %err%

:dots
set dots=.%dots%
if "%dotsN%"=="2" (
if "%dots:~,7%"=="......." set dots=      
cls & echo %Bdots%%dots:~,6%%Adots%
) else (
if "%dots:~,4%"=="...." set dots=   
cls & echo %Bdots%%dots:~,3%%Adots%
)
goto :eof

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
set S6=30
set V6=30
goto :eof

:CustomSet
set SN1=炸彈長度 & set Ex1=炸彈爆炸的次數 & set ESp1=　　　　　　　　　 & set Sl1= 
set SN2=登錄處檢查數量 & set Ex2=資料登錄時要檢查的目標目錄數量 & set ESp2=　 & set Sl2= 
set SN3=登錄處檢查次數 & set Ex3=資料登錄時最多的檢查目標的次數 & set ESp3=　 & set Sl3= 
set SN4=登錄處重檢查次數 & set Ex4=資料登錄時最多的檢查目標重試次數 & set ESp4= & set Sl4= 
set SN5=資料重登錄次數 & set Ex5=資料登錄最多的重試次數 & set ESp5=　　　　　 & set Sl5= 
set SN6=登錄等待最大長度 & set Ex6=等待資料登錄完成的最大等待次數 & set ESp6=　 & set Sl6= 
set SN-2=清除記錄檔 & set Ex-2=清除毀損安裝程式的紀錄檔 & set ESp-2=　　　　 & set Sl-2= 
set SN-1=回復預設設定 & set Ex-1=將設定設為初始值 & set ESp-1=　　　　　　　　 & set Sl-1= 
set SN0=離開設定 & set Ex0=儲存並離開設定程式 & set ESp0=　　　　　　　 & set Sl0= 
set Hp=
set MI=9
goto CustomMenu

:CustomMenu
if "%C%"=="" set C=1
if %C%==1 set SN=%SN1% & set Ex=%Ex1% & set ESp=%ESp1% & set Sl1=》
if %C%==2 set SN=%SN2% & set Ex=%Ex2% & set ESp=%ESp2% & set Sl2=》
if %C%==3 set SN=%SN3% & set Ex=%Ex3% & set ESp=%ESp3% & set Sl3=》
if %C%==4 set SN=%SN4% & set Ex=%Ex4% & set ESp=%ESp4% & set Sl4=》
if %C%==5 set SN=%SN5% & set Ex=%Ex5% & set ESp=%ESp5% & set Sl5=》
if %C%==6 set SN=%SN6% & set Ex=%Ex6% & set ESp=%ESp6% & set Sl6=》
if %C%==-2 set SN=%SN-2% & set Ex=%Ex-2% & set ESp=%ESp-2% & set Sl-2=》
if %C%==-1 set SN=%SN-1% & set Ex=%Ex-1% & set ESp=%ESp-1% & set Sl-1=》
if %C%==0 set SN=%SN0% & set Ex=%Ex0% & set ESp=%ESp0% & set Sl0=》
cls & color 2f
title 設定選單
set MG=選擇設定項目
set Ml1=%Sl1% & set M1=%SN1% & set Mop1=　%V1%
set Ml2=%Sl2% &  set M2=%SN2% & set Mop2=　%V2%
set Ml3=%Sl3% &  set M3=%SN3% & set Mop3=　%V3%
set Ml4=%Sl4% &  set M4=%SN4% & set Mop4=　%V4%
set Ml5=%Sl5% &  set M5=%SN5% & set Mop5=　%V5%
set Ml6=%Sl6% &  set M6=%SN6% & set Mop6=　%V6%
set Ml7=%Sl-2% &  set M7=%SN-2% & set Mop7=......
set Ml8=%Sl-1% &  set M8=%SN-1% & set Mop8=......
set Ml9=%Sl0% &  set M9=%SN0% & set Mop9=......
call:Menu
echo.
set NT=「W」鍵--上選；「S」鍵--下選；「Z」鍵--設定；「X」鍵--離開
choice /n /c swzxqr /m "%NT%"
if %errorlevel%==6 (
>>"%~dp0log.txt" echo %MG% "%NT%"　%SN%「R」
color 27 & goto restart
)
if %errorlevel%==5 (
>>"%~dp0log.txt" echo %MG% "%NT%"　%SN%「Q」
goto set0
)
if %errorlevel%==4 (
if %C%==0 (set V9=1 & goto set0r) else (
set C=0
))
if %errorlevel%==3 (
if %C% leq 0 set V7=1 & set V8=1 & set V9=1
echo  & goto set%C%
)
if %errorlevel%==2 (
if %C% leq -2 (set C=6) else (set /a C-=1))
if %errorlevel%==1 (
if %C% geq 6 (set C=-2) else (set /a C+=1))
goto CustomSet

:set2
cls & color 2f
if %V2% lss 1000 (
set VSp2= 
if %V2% lss 100 (
set VSp2=
set VS2= 
) else (set VS2=)) else (set VSp2=)
if %V2% geq 1000 (set VAr=　) else (set VAr=＞)
if %V2% leq 10 (set VAl=　) else (set VAl=＜)
set MG=設定%Ex%
set Hp=　　　　　值愈大，登錄愈快；否則愈慢，且可能發生沒有可用目錄的錯誤。
set Mop2=%VS2%%VAl%%VSp2%%V2%%VAr%%VS2%　（以檢查的目錄數量為單位，範圍為10～1000）
call:Menu
echo 「D」鍵--增加；「A」鍵--減少；「F」鍵--增加（強）；「S」鍵--減少（強）；
set NT=　「Z」鍵--設定；「X」鍵--取消
choice /n /c adsfzx /m "%NT%"
if %errorlevel%==6 (
set V2=%S2%
goto CustomSet
)
if %errorlevel%==5 (
set S2=%V2%
echo  & goto CustomSet
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
if %V3% geq 5 (set VAr=　) else (set VAr=＞)
if %V3% leq 1 (set VAl=　) else (set VAl=＜)
set MG=設定%Ex%
set Hp=　值愈大，最長登錄時間愈久；否則愈短，且可能發生沒有可用目錄的錯誤。
set Mop3= %VS3%%VAl%%VSp3%%V3%%VAr%%VS3%　（以檢查的上限次數為單位，範圍為1～5）
call:Menu
echo.
set NT=「D」鍵--增加；「A」鍵--減少；「Z」鍵--設定；「X」鍵--取消
choice /n /c adzx /m "%NT%"
if %errorlevel%==4 (
set V3=%S3%
goto CustomSet
)
if %errorlevel%==3 (
set S3=%V3%
echo  & goto CustomSet
)
if %errorlevel%==2 (
if %V3% geq 5 (set V3=5) else (set /a V3+=1))
if %errorlevel%==1 (
if %V3% leq 1 (set V3=1) else (set /a V3-=1))
goto set3

:set4
cls & color 2f
if %V4% geq 4 (set VAr=　) else (set VAr=＞)
if %V4% leq 0 (set VAl=　) else (set VAl=＜)
set MG=設定%Ex%
set Hp=值愈大，最長登錄時間愈久；否則愈短，且可能發生找不到可用目錄的錯誤。
set Mop4= %VS4%%VAl%%VSp4%%V4%%VAr%%VS4%　（以重新檢查的上限次數為單位，範圍為0～4）
call:Menu
echo.
set NT=「D」鍵--增加；「A」鍵--減少；「Z」鍵--設定；「X」鍵--取消
choice /n /c adzx /m "%NT%"
if %errorlevel%==4 (
set V4=%S4%
goto CustomSet
)
if %errorlevel%==3 (
set S4=%V4%
echo  & goto CustomSet
)
if %errorlevel%==2 (
if %V4% geq 4 (set V4=4) else (set /a V4+=1))
if %errorlevel%==1 (
if %V4% leq 0 (set V4=0) else (set /a V4-=1))
goto set4

:set5
cls & color 2f
if %V5% geq 4 (set VAr=　) else (set VAr=＞)
if %V5% leq 0 (set VAl=　) else (set VAl=＜)
set MG=設定%Ex%
set Hp=　　　值愈大，最長登錄時間愈久；否則愈短，且可能發生登錄失敗的錯誤。
set Mop5= %VS5%%VAl%%VSp5%%V5%%VAr%%VS5%　（以重新登錄的上限次數為單位，範圍為0～4）
call:Menu
echo.
set NT=「D」鍵--增加；「A」鍵--減少；「Z」鍵--設定；「X」鍵--取消
choice /n /c adzx /m "%NT%"
if %errorlevel%==4 (
set V5=%S5%
goto CustomSet
)
if %errorlevel%==3 (
set S5=%V5%
echo  & goto CustomSet
)
if %errorlevel%==2 (
if %V5% geq 4 (set V5=4) else (set /a V5+=1))
if %errorlevel%==1 (
if %V5% leq 0 (set V5=0) else (set /a V5-=1))
goto set5

:set6
cls & color 2f
if %V6% lss 100 (
set VSp6=
if %V6% lss 10 (
set VSp6= )
set VS6= ) else (
set VSp6= 
set VS6=)
if %V6% geq 100 (set VAr=　) else (set VAr=＞)
if %V6% leq 1 (set VAl=　) else (set VAl=＜)
set MG=設定%Ex%
set Hp=值愈大，最長等待登錄時間愈久；否則愈短，且可能發生來不及登錄的錯誤。
set Mop6= %VS6%%VAl%%VSp6%%V6%%VAr%%VS6%　（以等待10次的上限次數為單位，範圍為1～100）
call:Menu
echo.
set NT=「D」鍵--增加；「A」鍵--減少；「Z」鍵--設定；「X」鍵--取消
choice /n /c adzx /m "%NT%"
if %errorlevel%==4 (
set V6=%S6%
goto CustomSet
)
if %errorlevel%==3 (
set S6=%V6%
echo  & goto CustomSet
)
if %errorlevel%==2 (
if %V6% geq 100 (set V6=100) else (set /a V6+=1))
if %errorlevel%==1 (
if %V6% leq 1 (set V6=1) else (set /a V6-=1))
goto set6

:end
if not "enter"=="0" set Mop9=處理中......
cls
call:Menu
call:CustomCheck
>"%~dp0毀損安裝程式.cfg" echo set1=%S1%
>>"%~dp0毀損安裝程式.cfg"  echo set2=%S2%
>>"%~dp0毀損安裝程式.cfg"  echo set3=%S3%
>>"%~dp0毀損安裝程式.cfg"  echo set4=%S4%
>>"%~dp0毀損安裝程式.cfg"  echo set5=%S5%
>>"%~dp0毀損安裝程式.cfg"  echo set6=%S6%
goto finish

:finish
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