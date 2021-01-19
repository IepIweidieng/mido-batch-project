@title 程式載入中…… Now Loading…&echo off&setlocal enableextensions&color 27
>nul chcp 950

:ValueInitializor
echo Microdoft "arring (initializing)"...
set i_Reset=
for /f "tokens=1 delims==" %%a in ('set') do (
        for %%b in (ALLUSERSPROFILE ANDROID_SDK_HOME APPDATA CommonProgramFiles CommonProgramFiles^(x86^) CommonProgramW6432 COMPUTERNAME ComSpec configsetroot FP_NO_HOST_CHECK HOMEDRIVE HOMEPATH LOCALAPPDATA LOGONSERVER NUMBER_OF_PROCESSORS OS Path PATHEXT PROCESSOR_ARCHITECTURE PROCESSOR_IDENTIFIER PROCESSOR_LEVEL PROCESSOR_REVISION ProgramData ProgramFiles ProgramFiles^(x86^) ProgramW6432 PROMPT PSModulePath PUBLIC SESSIONNAME SystemDrive SystemRoot TEMP TMP USERDOMAIN USERNAME USERPROFILE windir) do if "%%a"=="%%b" set i_Reset=1
        call:ValueInitializeReseter
)
goto :Logger

:ValueInitializeReseter
if defined i_Reset (set i_Reset=) else (set %%a=)
goto :eof

:Logger
set nl=^^^

^


if "%2" equ "para2" goto :para2

set CurrectVersion=0001g
if "%CurrectVersion:~,-3%"=="0%CurrectVersion:~1,-3%" (set CVer=%CurrectVersion:~1,-3%) else (set CVer=%CurrectVersion:~,-3%)
set CVer=%CVer%.%CurrectVersion:~2%

>"%~dpn0log.txt" echo;微哆動作紀錄 --------------------------------------------- 

cls&echo Microdoft "arring (setting)"...

::設定參數--------------------------------------
:boast
set        "d-v=for %%A in (!str!) do set/a one=0x%%A,x=one/4+n,y=one%%4+m&(for %%B in ("r!x!.!y!") do if "!%%~B!" equ "　" (set r!x!.!y!=■) else (set err=1))"
::函數d-v，把str中的圖標數據，放置到總坐標空間中，如果有覆蓋，則err=1。調用方法：(%d-v%)
::變量使用：one  x  y

set "d-e=set aec=!cr! 　　　┌──────────┐　　!ebu1!!cr!&(for /l %%A in (2,1,#) do for %%B in ("│!ebuf:@=%%A!!ebu%%A!!mark%%A!") do set aec=!aec!　　　 %%~B!cr!)&set aec=!aec!　　　 └──────────┘　　!ebu22!&cls&echo;!aec!"
::函數d-e，把總坐標空間顯示出來，調用方法：(%d-e:#=行數%)
set ebu4=｜　　Ｈiscore　!hiscores!!hiscoren!
set ebu5=｜　　　　　 !scores!!jiafenn!
set ebu6=｜　　Ｓcore　　!scores!!scoren!
set ebu8=├─next─╮
set ebu13=├─hold★┤
set ebu18=├────╯
set ebu19=｜　!cbn!
set ebu20=｜　!tcnn!
set mark8=　｜╯○
set mark9=　╯什一─╮
set mark10=　｜｜戈　│　○
set mark11=　　　╰─┴一一
set mark12=　╭比口　　╯丁
set mark13=　│ㄠ仕
set mark14=　╰小仕 Tension
set mark15=　of　　╭─╮,
set mark16=　　　　│一十田
set mark17=　　甘厂╰一一儿●
set mark18=　　廾丌▼ Tetris
set guan=1
set guoguan=0
set hiscoren=0
set scoren=0
set scoret=0
set tc=0
set tcn=0

if not exist "%~s0score.dat" (>"%~s0score.dat" echo 100000 200000 300000 400000 500000)
>"%~s0aswd.dat" echo 0 0
set/a err=0
for /f "tokens=1-5 usebackq" %%a in ("%~s0score.dat") do (
        if %%a0 lss 1000000 (set hiscoren0=100000) else (set hiscoren0=%%a)
        if %%b0 lss 2000000 (set hiscoren1=200000) else (set hiscoren1=%%b)
        if %%c0 lss 3000000 (set hiscoren2=300000) else (set hiscoren2=%%c)
        if %%d0 lss 4000000 (set hiscoren3=400000) else (set hiscoren3=%%d)
        if %%e0 lss 5000000 (set hiscoren4=500000) else (set hiscoren4=%%e)
)

set cr=　^

::難度名稱定義
set diff0=Ｅ ａ ｓ ｙ
set diff1=Ｎ ｏ ｒ ｍ ａ ｌ
set diff2=Ｈ ａ ｒ ｄ
set diff3=Ｅ ｘ ｃ ｉ ｔ ｉ ｎ ｇ
set diff4=Ｏ ｖ ｅ ｒ ｗ ｈ ｅ ｌ ｍ

::難度定義
::easy
set down0=60
set down0hi=40
::下降速度
set tncrowd0=2
::方塊固定時間延長幅度
set tncrowu0=1
::方塊固定時間縮短幅度
set tnchi0=2
::固定時間
set downs0=7
set downs0hi=5
::加速時下降速度
set break0=100
::消行的休息時間

set guoguan0=30
::每關卡方塊數
set tchi0=300
::遊戲總方塊
set jiafenm0=1
::消行加分乘方率

::normal
set down1=40
set down1hi=25
set tncrowd1=2
set tncrowu1=1
set tnchi1=2
set downs1=5
set downs1hi=3
set guoguan1=50
set tchi1=500
set jiafenm1=2
set break1=90

::hard
set down2=10
set down2hi=6
set tncrowd2=2
set tncrowu2=3
set tnchi2=8
set downs2=2
set downs2hi=1
set guoguan2=80
set tchi2=800
set jiafenm2=3
set break2=80

::exciting
set down3=2
set down3hi=1
set tncrowd3=1
set tncrowu1=9
set tnchi3=20
set downs3=0.5
set downs3hi=0.25
set guoguan3=100
set tchi3=999
set jiafenm3=4
set break3=70

::overwhelm
set down4=1
set down4hi=0.5
set tncrowd4=5
set tncrowu4=1
set tnchi4=24
set downs4=0.25
set guoguan4=100
set tchi4=200
set jiafenm4=9
set break4=80

mode con cols=80 lines=30
echo Microdoft "arring (setting)"...

set test=0
>"%~s0temp.dat" echo 0
start "操作視窗" "%~f0" /i para2
::起動控制窗口

setlocal enabledelayedexpansion

call :MainDoubleDetecter
if defined DoubleDetect endlocal&goto :eof
title 程式載入中…… Now Loading…

2>&1 >nul ping /a /n 1 docs.google.com||goto :UpdateFinish
cls&echo Microdoft "arring (checking for newer Ver.)"...

call Update

:UpdateFinish
cls&echo Microdoft "arring (entering game)"...
>nul timeout /t 0 /nobreak
color 2f
goto :restart

:MainDoubleDetecter
set DoubleDetect=
title 程式執行中…… Now Running...
for /f "skip=2 tokens=*" %%a in ('tasklist /fi "imagename eq cmd.exe" /fi "windowtitle eq 俄羅斯方塊 ver. %CVer%"') do (
        >nul timeout /t 1 /nobreak
        set MG=錯誤：不能同時啟動兩個遊戲程式
        >>"%~dpn0log.txt" echo;!MG!
        >"%temp%\%~n0temp.vbs" echo;a=msgbox^("微哆動作紀錄 --------------------------------------------- "^&vbcrlf^&"!MG:~3!"^&vbcrlf^&"---------------------------------------------------------- " ,16,"log"^)
        >"%temp%\%~n0tmp.vbs" echo;set b=createobject^("wscript.shell"^)
        >>"%temp%\%~n0tmp.vbs" echo;b.run """%temp%\%~n0temp.vbs""","0"
        >nul 2>&1 "%temp%\%~n0tmp.vbs"
        >nul 2>&1 del /f /q /a "%temp%\%~n0tmp.vbs"
        >nul timeout /t 0 /nobreak
        >nul 2>&1 del /f /q /a "%temp%\%~n0temp.vbs"
        set DoubleDetect=1
        >>"%~dpn0log.txt" echo;---------------------------------------------------------- 
        goto :eof
)
goto :eof

:ParaDetecter
set PDti=1!time:~6,2!!time:~9,2!
if !PDti! lss !PDbti! (set/a PDtn=PDti-PDbti+6000) else (set /a PDtn=PDti-PDbti)
if !PDtn! gtr 100 (
        set para=
        for /f "skip=2 tokens=*" %%a in ('tasklist /fi "imagename eq cmd.exe" /fi "windowtitle eq 操作視窗"') do (set para=1)
        for /f "skip=2 tokens=*" %%a in ('tasklist /fi "imagename eq cmd.exe" /fi "windowtitle eq 程式執行中…… Now Running..."') do (set para=1)
        if not defined para (start "操作視窗" %1 /i para2)
        set PDbti=1!time:~6,2!!time:~9,2!
)
goto :eof

:snapshot
>"%~dpn0snapshot.txt" <nul set/p=""
for /f "tokens=* delims=" %%A in ("!aec!") do >>"%~dpn0snapshot.txt" echo;%%A
goto :eof

::進入遊戲---------------------------------------

:restart
call :MainDoubleDetecter
if defined DoubleDetect endlocal&goto :eof
title 俄羅斯方塊 ver. %CVer%
set tcnn=
set jiafenn=
set scoreh=0

set ebu2=｜
for /l %%a in (0,1,21) do (for /l %%b in (0,1,9) do set r%%a.%%b=　)
for /l %%a in (9,1,17) do (if "%%a" neq "13" (set ebu%%a=｜　　　　｜))
set hiscores=
for /l %%a in (0,1,13) do (if "!hiscoren:~-%%a!" equ "!hiscoren!" (set hiscores= !hiscores!))
set scores=
for /l %%a in (0,1,13) do (if "!scoren:~-%%a!" equ "!scoren!" (set scores= !scores!))
if "!scoret!" neq "0" (goto :gamestart) else (
        set score=0
        set tc=0
        set tcn=0
        set guan=1
)

call Difficulty

:gamestart
set/a guoguantc=guoguan%diffn%
set/a guoguan=guan*guoguantc
set tnchi=!tnchi%diffn%!
if !guoguan! geq !tchi%diffn%! (set guoguan=!tchi%diffn%!)
(%d-e:#=21%)

call Tetris

::操作視窗----------------------------------------

:para2
title 操作視窗
mode con: cols=40 lines=2
mode con: rate=62 delay=0
call :Para2DoubleDetecter
if defined DoubleDetect endlocal&exit
color 2f
set mode=0
set tn=0

:p_lp
set mode=
for /f "tokens=1 usebackq" %%a in ("%~s0temp.dat") do set mode=%%a
if not defined mode goto :paraexit
if %mode% equ 0 (echo 　　W上移 S下移 Z確定 X取消 Q退出　　　) else (echo A左 D右 W/Z逆轉 X順轉 S加速 C保留 Q退出)
set/a n=n"%%"100+1
::計時器
>nul choice /c adwscqzxp /n
0>&1 >nul >"%~s0aswd.dat" echo;%n% %errorlevel%
if %errorlevel% lss 10 if %errorlevel% neq 6 goto :p_lp
set Para2error=%errorlevel%
goto :paraexit

:paraexit
set/a n=n"%%"100+1
0>&1 >nul >"%~s0aswd.dat" echo;%n% %Para2error%
endlocal
title 命令提示字元
exit

:Para2DoubleDetecter
set DoubleDetect=
title 程式執行中…… Now Running...
for /f "skip=2 tokens=*" %%a in ('tasklist /fi "imagename eq cmd.exe" /fi "windowtitle eq 操作視窗"') do (
        title 操作視窗
        set MG=錯誤：不能同時啟動兩個操作視窗
        setlocal enabledelayedexpansion
        >>"%~dpn0log.txt" echo;!MG!
        >"%temp%\%~n0Para2temp.vbs" echo;a=msgbox^("微哆動作紀錄 --------------------------------------------- "^&vbcrlf^&"!MG:~3!"^&vbcrlf^&"---------------------------------------------------------- " ,16,"log"^)
        >"%temp%\%~n0Para2tmp.vbs" echo;set b=createobject^("wscript.shell"^)
        >>"%temp%\%~n0Para2tmp.vbs" echo;b.run """%temp%\%~n0Para2temp.vbs""","0"
        >nul 2>&1 "%temp%\%~n0Para2tmp.vbs"
        >nul 2>&1 del /f /q /a "%temp%\%~n0Para2tmp.vbs"
        >nul timeout /t 0 /nobreak
        >nul timeout /t 0 /nobreak
        >nul 2>&1 del /f /q /a "%temp%\%~n0Para2temp.vbs"
        endlocal
        set DoubleDetect=1
        goto :eof
)
title 操作視窗
goto :eof

:store
call Quit