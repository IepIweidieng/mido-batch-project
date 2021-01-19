@title 程式載入中…… Now Loading…&echo off&setlocal enableextensions&color 27
>nul chcp 950
echo Microdoft "arring (initializing)"...
for /f "tokens=1 delims==" %%a in ('set') do (
        for %%b in (ALLUSERSPROFILE ANDROID_SDK_HOME APPDATA CommonProgramFiles CommonProgramFiles^(x86^) CommonProgramW6432 COMPUTERNAME ComSpec configsetroot FP_NO_HOST_CHECK HOMEDRIVE HOMEPATH LOCALAPPDATA LOGONSERVER NUMBER_OF_PROCESSORS OS Path PATHEXT PROCESSOR_ARCHITECTURE PROCESSOR_IDENTIFIER PROCESSOR_LEVEL PROCESSOR_REVISION ProgramData ProgramFiles ProgramFiles^(x86^) ProgramW6432 PROMPT PSModulePath PUBLIC SESSIONNAME SystemDrive SystemRoot TEMP TMP USERDOMAIN USERNAME USERPROFILE windir) do if "%%a"=="%%b" goto :ValueReseterContinue
        set %%a=
        :ValueReseterContinue
        <nul set/p=""
)
set nl=^^^

^


if "%1" equ "para2" goto :para2

set CurrectVersion=0001f
if "%CurrectVersion:~,-3%"=="0%CurrectVersion:~1,-3%" (set CVer=%CurrectVersion:~1,-3%) else (set CVer=%CurrectVersion:~,-3%)
set CVer=%CVer%.%CurrectVersion:~2%

>"%~dpn0log.txt" echo;微哆動作紀錄 --------------------------------------------- 

::俄羅斯方塊遊戲，由netbenton編寫，在bathome首發，完成時間：2009年9月25日 ver 2.0
::由dom2112註解並修改
::2015/7/7　ver 0.01a　加入Hold系統（「C」鍵）、最高分數系統、加分顯示系統、「Z」鍵與「X」鍵、難度系統、續關選單
::　　　　改變計分方式，更改介面
::2015/7/7　ver 0.01b　完成關卡系統
::　　　　改變旋轉方向
::2015/9/27 　ver 0.01c　分開了鍵盤操作用與儲存分數的檔案，不用擔心最高分數被意外歸零
::　　　　修正Hold使用後，方塊的放置會過快的問題
::　　　　增加Overwhelm模式
::　　　　增加Mark
::　　　　修正分數系統，不會樂極生悲
::2015/10/26　ver 0.01d　修正最高分數系統
::　　　　修正加分不會重置的問題
::2015/11/17　ver 0.01e　修正最高分數讀取系統
::　　　　開啟Overwhelm模式後會保持可選擇狀態，直到下一次進入難度選單
::　　　　移除已經無用的「Press any key......」提示
::　　　　修正關卡目標方塊的更新時機
::　　　　修正離開程式時，顯示訊息的顯示
::　　　　修改加分系統
::2015/12/6　ver 0.01f　修正最高分數更新系統
::　　　　增加消行後短暫的休息時間
::　　　　增加消行效果
::　　　　修正最後關卡的方塊的下落速度
::　　　　現在同一種方塊最多連續出現兩次
::　　　　修正當儲存分數的檔案為唯獨狀態時無法儲存分數的錯誤
::　　　　現在啟動程式時會初始化變數，結束程式時也會還原變數
::　　　　現在不能同時啟動兩個遊戲視窗或操作視窗
::　　　　現在消一行只會增加一個方塊的進度
::　　　　增加在有網路時檢查及下載更新版本的功能
::　　　　修正方塊，並刪除不再使用的方塊種類
::　　　　修正回到難度選單時難度的顯示沒有消失的問題
::　　　　修正以消行結束遊戲時，被消行上方的方塊不會下降的問題
::　　　　現在當遊戲程式沒有進行遊戲時，操作視窗被關閉就會重新開啟操作視窗
::　　　　修正在Exciting難度中，方塊進度達到999就會判為完成遊戲的問題
::　　　　修正開啟Overwhelm模式後仍然可以透過連打A鍵來關閉的問題
::　　　　修正有時按下Q鍵時會發生的問題
::　　　　修正操作視窗發生問題而退出時遊戲程式仍然判定為一般退出的問題

cls&echo Microdoft "arring (setting)"...

::設定參數--------------------------------------
:boast
set        "d-v=for %%a in (!str!) do set/a one=0x%%a,x=one/4+n,y=one%%4+m&(for %%b in ("r!x!.!y!") do if "!%%~b!" equ "　" (set r!x!.!y!=■) else (set err=1))"
::函數d-v，把str中的圖標數據，放置到總坐標空間中，如果有覆蓋，則err=1。調用方法：(%d-v%)
::變量使用：one  x  y

set "d-e=set aec=!cr! 　　　┌──────────┐　　!ebu1!!cr!&(for /l %%a in (2,1,#) do for %%b in ("│!ebuf:@=%%a!!ebu%%a!!mark%%a!") do set aec=!aec!　　　 %%~b!cr!)&cls&echo;!aec!　　　 └──────────┘　　!ebu22!"
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
set cr=^


::各種圖標定義
set ga1=4 5 9 a
set ga2=1 4 5 8
set ga3=0 1 5 6
set ga4=2 5 6 9
::□□□□　　□■□□　　■■□□　　□□■□
::■■□□　　■■□□　　□■■□　　□■■□
::□■■□　　■□□□　　□□□□　　□■□□

set gb1=5 6 8 9
set gb2=0 4 5 9
set gb3=1 2 4 5
set gb4=1 5 6 a
::□□□□　　■□□□　　□■■□　　□■□□
::□■■□　　■■□□　　■■□□　　□■■□
::■■□□　　□■□□　　□□□□　　□□■□

set za1=4 5 6 7
set za2=2 6 a e
set za3=8 9 a b
set za4=1 5 9 d
::□□□□　　□□■□　　□□□□　　□■□□
::■■■■　　□□■□　　□□□□　　□■□□
::□□□□　　□□■□　　■■■■　　□■□□
::□□□□　　□□■□　　□□□□　　□■□□

set qa1=2 6 a 9
set qa2=4 8 9 a
set qa3=0 1 4 8
set qa4=0 1 2 6
::□□■□　　□□□□　　■■□□　　■■■□
::□□■□　　■□□□　　■□□□　　□□■□
::□■■□　　■■■□　　■□□□　　□□□□

set qb1=0 4 8 9
set qb2=0 1 2 4
set qb3=1 2 6 a
set qb4=6 8 9 a
::■□□□　　■■■□　　□■■□　　□□□□
::■□□□　　■□□□　　□□■□　　□□■□
::■■□□　　□□□□　　□□■□　　■■■□

set ta1=5 6 9 a
::□□□□
::□■■□
::□■■□


set sa1=1 4 5 6
set sa2=1 5 6 9
set sa3=4 5 6 9
set sa4=1 4 5 9
::□■□□　　□■□□　　□□□□　　□■□□
::■■■□　　□■■□　　■■■□　　■■□□
::□□□□　　□■□□　　□■□□　　□■□□

setlocal enabledelayedexpansion

for /l %%a in (0,1,9) do (set "ebuf=!ebuf!^!r@.%%a^!")
for %%a in (sa_4 ta_1 qb_4 qa_4 za_4 ga_4 gb_4) do (
        for /f "tokens=1,2 delims=_" %%b in ("%%a") do (
                set _%%b=%%c
                set/a nx+=1&set ran!nx!=%%b1
        )
)
::定義各種圖型的可變型數，及單個圖的隨機號        
::將ebuf附加上字串!r@.%%a(0~9)!
::ebuf最後為!r@.0!!r@.1!!r@.2!!r@.3!...!r@.9!
::為(d-e)中之│!ebuf:@=%%a!│，@為該處之%%a
::set _%%b=%%c　e.g., set _sa=4
::set ran!nx!=%%b%%d　e.g., set ran4=sa4

for /l %%a in (2,1,21) do if "!ebu%%a!"=="" set ebu%%a=｜

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

mode con: cols=66 lines=25
echo Microdoft "arring (setting)"...

set test=0
>"%~s0temp.dat" echo 0
start "操作視窗" "%~f0" para2
::起動控制窗口

call :MainDoubleDetecter
if defined DoubleDetect endlocal&goto :eof
title 程式載入中…… Now Loading…

2>&1 >nul ping /a /n 1 docs.google.com||goto :UpdateFinish
cls&echo Microdoft "arring (checking for newer Ver.)"...

:Updater
set strUrl="https://docs.google.com/uc?authuser=0&id=0B1GI2ZfUddzgWG5WWVpPbTlvNWc&export=download"
set strFile="%temp%\%~n0Md2_ToT.ver"
call :UpdateDownloader
set CVFound=
set strUrl=
for /f "tokens=1,2 usebackq" %%a in (%strFile%) do (
        if defined CVFound set strUrl="%%b"
        if "%%a"=="%CurrectVersion%" set CVFound=1
        set NewVersion=%%a
)
set NewVersion=0001f
if "%NewVersion:~,-3%"=="0%NewVersion:~1,-3%" (set NVer=%NewVersion:~1,-3%) else (set NVer=%NewVersion:~,-3%)
set NVer=%NVer%.%NewVersion:~2%
>nul 2>&1 del /f /q /a %strFile%
if defined strUrl (
        set UChoiceN=0
        set UMerror=
        >"%~s0temp.dat" echo 0
        >"%~s0aswd.dat" echo;!test! 0
        call :selectUpdater
        <nul set/p=""&color 2f
        call :UpdaterMenu
        color 27
        if defined UMerror cls&call :error !UMerror!&exit /b
        if !UChoiceN! equ 0 (
                cls&echo Microdoft "arring (downloading newest Ver.)"...
                set strFile="%~dpn0Update.tmp"
                call :UpdateDownloader
                if exist "%~n0Update.exe" >nul 2>&1 del /f /q /a "%~n0Update.exe"
                rename "%~dpn0Update.tmp" "%~n0Update.exe"
                attrib -a +r "%~dpn0Update.exe"
                "%~dpn0Update.exe"
                call :error 0&exit /b
        )
)
goto :UpdateFinish

:UpdateDownloader
if exist %strFile% >nul 2>&1 del /f /q /a %strFile%
>"%temp%\%~n0tempUD.vbs" echo;Download %strUrl%,%strFile%
>>"%temp%\%~n0tempUD.vbs" echo;Function Download^(strUrl,strFile^)
>>"%temp%\%~n0tempUD.vbs" echo;Set A=CreateObject^("MSXML2.ServerXMLHTTP"^)
>>"%temp%\%~n0tempUD.vbs" echo;A.Open "GET", strUrl,0
>>"%temp%\%~n0tempUD.vbs" echo;A.Send^(^)
>>"%temp%\%~n0tempUD.vbs" echo;Set B=CreateObject("ADODB.Stream")
>>"%temp%\%~n0tempUD.vbs" echo;B.Mode=3
>>"%temp%\%~n0tempUD.vbs" echo;B.Type=1
>>"%temp%\%~n0tempUD.vbs" echo;B.Open^(^)
>>"%temp%\%~n0tempUD.vbs" echo;B.Write(A.responseBody)
>>"%temp%\%~n0tempUD.vbs" echo;B.SaveToFile strFile,2
>>"%temp%\%~n0tempUD.vbs" echo;End Function
>nul 2>&1 "%temp%\%~n0tempUD.vbs"
>nul 2>&1 del /f /q /a "%temp%\%~n0tempUD.vbs"
call :UpdateDownloadWaiter
goto :eof

:UpdateDownloadWaiter
if exist %strFile% goto :eof
goto :UpdateDownloadWaiter

:UpdaterMenu
for /f "tokens=1,2 usebackq" %%a in ("%~s0aswd.dat") do (
         if %%b geq 10 (set UMerror=%%b&goto :eof)
         if "%%a" neq "!test!" (
                  set test=%%a
                  if "%%b" equ "1" (
                        if !UChoiceN! gtr 0 (set/a UChoiceN-=1)
                  )
                  if "%%b" equ "2" (
                        if !UChoiceN! lss 1 (set/a UChoiceN+=1)
                  )
                  if "%%b" equ "6" (set UMerror=0&goto :eof)
                  if "%%b" equ "7" (goto :eof)
                  if "%%b" equ "8" (set UChoiceN=1&goto :eof)
        call :selectUpdater
        )
)
call :ParaDetecter %~s0

goto :UpdaterMenu

:selectUpdater
if !UChoiceN! equ 0 (set UChoiceS=＞　) else  (set UChoiceS=　＜) 
cls&echo;%nl%%nl%%nl%%nl%%nl%%nl%%nl%%nl%%nl%　　　┌─────────────────────────%nl%　　　│遊戲程式有新版本^(%NVer%^)，要下載並安裝嗎？%nl%　　　│　　　　　　　　　　　　　　　　目前版本：%CVer%%nl%　　　│　　　　　　　　　　　是的%UChoiceS:~,1%　　%UChoiceS:~1%不了%nl%　　　╘══════════════════════════
goto :eof

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
        if not defined para (start "操作視窗" %1 para2)
        set PDbti=1!time:~6,2!!time:~9,2!
)
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

:selectdiff
(%d-e:#=21%)
set n=10
for /l %%a in (0,1,3) do (
        set m=1
        for %%b in (!diff%%a!) do (
                set r!n!.!m!=%%b
                set/a m+=1
        )
        set/a n+=1
)
set diffn=1
set diffnaddc=0
>"%~s0temp.dat" echo 0
>"%~s0aswd.dat" echo;!test! 0
call :selectdiff2

:selectdiffloop
for /f "tokens=1,2 usebackq" %%a in ("%~s0aswd.dat") do (
         if %%b geq 10 (call :error %%b&exit /b)
         if "%%a" neq "!test!" (
                  set test=%%a
                  if "%%b" equ "1" (
                        if "!diffnaddc!" lss "10" set diffnaddc=0
                        if "!diffn!" gtr "0" (set/a diffn-=1)
                )
                  if "%%b" equ "2" (
                        if "!diffn!" lss "3" (
                                set/a diffn+=1
                        ) else (
                                if !diffnaddc! geq 10 (
                                        set diffn=4
                                ) else (
                                        set/a diffnaddc+=1
                                )
                        )
                )
                  if "%%b" equ "3" (
                        if "!diffnaddc!" lss "10" set diffnaddc=0
                        if "!diffn!" gtr "0" (set/a diffn-=1)
                )
                  if "%%b" equ "4" (
                        if "!diffn!" lss "3" (
                                set/a diffn+=1
                        ) else (
                                if !diffnaddc! geq 10 (
                                        set diffn=4
                                ) else (
                                        set/a diffnaddc+=1
                                )
                        )
                )
                  if "%%b" equ "6" (
                        call :error 6&exit /b
                )
                  if "%%b" equ "7" (
                        goto :gamestart
                )
                  if "%%b" equ "8" (
                        call :error 6&exit /b
                )
        call :selectdiff2
        )
)
call :ParaDetecter %~s0
goto :selectdiffloop

:selectdiff2
set hiscoren= !hiscoren%diffn%!
set hiscores=
for /l %%a in (0,1,13) do (if "!hiscoren:~-%%a!" equ "!hiscoren!" (set hiscores= !hiscores!))
set diffcult=!diff%diffn%: =!
set diffcultsp=
for /l %%a in (1,2,8) do (if "!diffcult:~-%%a!" equ "!diffcult!" (set diffcultsp=　!diffcultsp!))
if "!diffn!" equ "0" set diffcults=＞　　　　
if "!diffn!" equ "1" set diffcults=　＞　　　
if "!diffn!" equ "2" set diffcults=　　＞　　
if "!diffn!" equ "3" set diffcults=　　　＞　
if "!diffn!" equ "4" set diffcults=　　　　＞
set r10.0=!diffcults:~,1!
set r11.0=!diffcults:~1,1!
set r12.0=!diffcults:~2,1!
set r13.0=!diffcults:~3,1!
set r14.0=!diffcults:~4,1!
if !diffnaddc! geq 10 (
        set m=1
        for %%b in (!diff4!) do (
                set r14.!m!=%%b
                set/a m+=1
        )
) else (for /l %%a in (1,1,9) do set r14.%%a=　)
(%d-e:#=21%)
goto :eof

:gamestart
set/a guoguantc=guoguan%diffn%
set/a guoguan=guan*guoguantc
set tnchi=!tnchi%diffn%!
if !guoguan! geq !tchi%diffn%! (set guoguan=!tchi%diffn%!)
(%d-e:#=21%)

set k3=tnc-=tncrowd%diffn%,k-=2,k+=mx,k"%%"=mx,k+
set k7=tnc-=tncrowd%diffn%,k-=2,k+=mx,k"%%"=mx,k+
set k8=tnc-=tncrowd%diffn%,k"%%"=mx,k+
set k4=tnc+=tncrowu%diffn%,down=downs,t
set k1=tnc-=tncrowd%diffn%,m-
set k2=tnc-=tncrowd%diffn%,m+
set k5=tnc=0,hold
::按鍵定義

set ebu2=｜　　　　!diffcultsp!!diffcult!
set tcnn=!tcn!/!guoguan!
for /l %%a in (0,1,21) do (for /l %%b in (0,1,9) do set r%%a.%%b=　)
for /l %%a in (9,1,17) do (if "%%a" neq "13" (set ebu%%a=｜　　　　｜))
set holdt=
set ttr=
set _ttr=
set r10.1=~
set r10.2=Th
set r10.3=e  
set r10.4=俄
set r10.5=羅
set r10.6=斯
set r10.7=方
set r10.8=塊
(%d-e:#=21%)
>nul timeout /t 0 /nobreak
::初始化坐標空間20行，10列

:gameloading
>nul timeout /t 2 /nobreak
for /l %%a in (1,1,8) do set r10.%%a=　
>"%~s0temp.dat" echo 2
>"%~s0aswd.dat" echo;!test! 0

::遊戲中-------------------------------------------

:loop
set/a "m=4,t=2,n=0,bti=0"

set downs=!downs%diffn%!
if !guan! geq 6 (set/a "downs=((downs%diffn%*(9-guan))>>2)+((downs%diffn%hi*(guan-5))>>2)")
if !guan! geq 10 (set/a "downs=((downs%diffn%*(-2))>>2)+((downs%diffn%hi*4)>>2)")

set down=!down%diffn%!
if !guan! geq 6 (set/a "down=((down%diffn%*(9-guan))>>2)+((down%diffn%hi*(guan-5))>>2)")
if !guan! geq 10 (set/a "down=((down%diffn%*(-2))>>2)+((down%diffn%hi*4)>>2)")
if !diffn! equ 4 (if !guan! geq 2 (set down=!down4hi!))

set/a r=!random!%%nx+1
set err=

if "!hold!" equ "1" (
        if defined hstr (
                set temt=!ttr!
                set ttr=!holdt!
                set holdt=!temt!
        ) else (
                if "!ttr!""!_ttr!"=="!ran%r%!""!ran%r%!" goto :loop
                set holdt=!ttr!
                set ttr=!_ttr!
                set _ttr=!ran%r%!
        )
        set tnc=0
) else (
        if "!ttr!""!_ttr!"=="!ran%r%!""!ran%r%!" goto :loop
        set ttr=!_ttr!
        set _ttr=!ran%r%!
)
::方塊保留功能（Hold），必要時隨機取一種方塊
::e.g., ttr=sa4
if not defined ttr goto :loop

set mx=!_%ttr:~,2%!
set k=%ttr:~2%
set str=!%ttr%!
::e.g., mx=!_sa!, k=sa, str=!sa4! =0 4 5 8

set _str=!%_ttr%!
set hstr=!%holdt%!
::e.g., =!sa4! =0 4 5 8

setlocal enabledelayedexpansion
for %%a in (!_str!) do set/a one=0x%%a,x=one/4+9,y=one%%4&set kk!x!.!y!=■
for /l %%a in (9,1,12) do for /l %%b in (0,1,3) do (
        if defined kk%%a.%%b (set kk%%a=!kk%%a!!kk%%a.%%b!) else (set kk%%a=!kk%%a!　)
)
for %%a in (!hstr!) do set/a one=0x%%a,x=one/4+14,y=one%%4&set kk!x!.!y!=■
for /l %%a in (14,1,17) do for /l %%b in (0,1,3) do (
        if defined kk%%a.%%b (set kk%%a=!kk%%a!!kk%%a.%%b!) else (set kk%%a=!kk%%a!　)
)
endlocal&set ebu9=｜%kk9%｜&set ebu10=｜%kk10%｜&set ebu11=｜%kk11%｜&set ebu12=｜%kk12%｜&set ebu14=｜%kk14%｜&set ebu15=｜%kk15%｜&set ebu16=｜%kk16%｜&set ebu17=｜%kk17%｜
::對預備圖標的處理

::遊戲操作-------------------------------------

:cont
for /f "tokens=1,2 usebackq" %%a in ("%~s0aswd.dat") do (
        if %%b equ 6 (call :error %%b&exit /b)
        if %%b geq 10 (call :error %%b&exit /b)
        if %%a neq !test! (
                set test=%%a
                set bs=!str!&set/a bm=m,bk=k,btnc=tnc
                set/a !k%%b!=1
                if "%%b" equ "5" (if "%ebu13%" equ "├─hold★┤" (set ebu13=├─hold☆┤&goto loop))
                if "%%b" equ "3" (for %%c in ("!ttr:~,2!!k!") do set str=!%%~c!&if "!k!" equ "!bk!" (set/a tnc=btnc))
                if "%%b" equ "7" (for %%c in ("!ttr:~,2!!k!") do set str=!%%~c!&if "!k!" equ "!bk!" (set/a tnc=btnc))
                if "%%b" equ "8" (for %%c in ("!ttr:~,2!!k!") do set str=!%%~c!&if "!k!" equ "!bk!" (set/a tnc=btnc))
                setlocal enabledelayedexpansion
                (%d-v%)
                rem 調用函數把圖標點放置到總坐標空間
                if defined err (
                        endlocal
                        set/a m=bm,k=bk,tnc=btnc
                        set str=!bs!
                        if "%%b" equ "4" (goto :jmpout)
                ) else (
                        (%d-e:#=21%)
                        rem 調用顯示函數
                        endlocal
                )
        )
)

::計時
set ti=1!time:~6,2!!time:~9,2!
if !ti! lss !bti! (set/a tn=ti-bti+6000) else (set /a tn=ti-bti)
if !tn! gtr !down! (
        set/a bti=ti,n+=1,tnc+=1
        if !tnc! lss 0 (set tnc=0)

        set downs=!downs%diffn%!
        if !guan! geq 6 (set/a "downs=((downs%diffn%*(9-guan))>>2)+((downs%diffn%hi*(guan-5))>>2)")
        if !guan! geq 10 (set/a "downs=((downs%diffn%*(-2))>>2)+((downs%diffn%hi*4)>>2)")

        set down=!down%diffn%!
        if !guan! geq 6 (set/a "down=((down%diffn%*(9-guan))>>2)+((down%diffn%hi*(guan-5))>>2)")
        if !guan! geq 10 (set/a "down=((down%diffn%*(-2))>>2)+((down%diffn%hi*4)>>2)")
        if !diffn! equ 4 (if !guan! geq 2 (set down=!down4hi!))

        setlocal enabledelayedexpansion
        (%d-v%)
        if defined err (
                endlocal
                if !tnc! geq !tnchi! (set tnc=0&goto :jmpout)
                set/a n-=1
        ) else (
                (%d-e:#=21%)
                endlocal
                set tnc=0
        )
)

goto :cont

::消行、得分、放置方塊---------------------------

:jmpout
set hold=
set ebu13=├─hold★┤
set/a n-=1
(%d-v%)
(%d-e:#=21%)
set m=21

for /l %%a in (21,-1,2) do for %%b in ("!ebuf:@=%%a!") do if "%%~b" neq "■■■■■■■■■■" (set e!m!=%%~b&set/a m-=1)

if !m! neq 1 (
        set jmpout=1
        for /l %%a in (!m!,-1,2) do set "e%%a=　　　　　　　　　　"
        for /l %%a in (21,-1,2) do for %%b in ("!ebuf:@=%%a!") do if "%%~b" equ "■■■■■■■■■■" (
                for /l %%c in (0,1,9) do set "r%%a.%%c=█"
        )

        set/a "jiafen1=(m-1)*(cb+1)*jiafenm%diffn%"
        set/a "jiafen1h=!jiafen1:~,-2!0,jiafen1%%=100,jiafen1*=100"

        set/a "jiafen1t=2*jiafen1h*jiafen1,jiafen1h*=jiafen1h/10,jiafen1*=jiafen1"
        set jiafen1ht=!jiafen1t:~,-5!0
        set/a "jiafen1t%%=100000,jiafen1t*=1000,jiafen1+=jiafen1t,jiafen1h+=jiafen1ht"

        set/a "jiafen1h+=!jiafen1:~,-8!0,jiafen1%%=100000000"

        set/a "cb+=1,tc+=(m-1),tc-=1"
        if !cb! gtr 1 (set cbn=!cb! Ｃombo！)
) else (
        set/a cb=0
        set cbn=
)
::消行得分

set/a tc+=1,tcn=tc,guoguan=guan*guoguantc,nr=22-n
set/a "jiafen2=(cb+1)*tc"
if !nr! geq 16 (
        set jiafen2h=!jiafen2:~,-4!0
        set/a "jiafen2%%=10000,jiafen2*=10000"
        set/a "jiafen2h+=!jiafen2:~,-8!0,jiafen2%%=100000000"
) else (
        set jiafen2h=!jiafen2:~,-4!0
        set/a "jiafen2%%=10000"

        set/a "jiafen2h*=nr*62,jiafen2*=nr*62"
        set/a "jiafen2+=jiafen2h%%10000*1000,jiafen2h=!jiafen2h:~,-4!0"

        set/a "jiafen2h+=!jiafen2:~,-7!0,jiafen2%%=10000000,jiafen2*=10"
)
::放置得分

set/a guoguan=guan*guoguantc
if !tc! geq !guoguan! (
        set/a "jiafen3=guoguan*jiafenm%diffn%*jiafenm%diffn%,guan+=1"
        set jiafen3h=!jiafen3:~,-3!0
        set/a "jiafen3%%=1000,jiafen3*=100000,jiafen3h+=!jiafen3:~,-8!0,jiafen3%%=100000000"
)
set/a guoguan=guan*guoguantc
if !guoguan! geq !tchi%diffn%! (set guoguan=!tchi%diffn%!)
(%d-e:#=21%)
::過關得分

set/a "scoreh+=jiafen1h+jiafen2h+jiafen3h"
set/a "jiafen1h=0,jiafen2h=0,jiafen3h=0"
set/a "jiafen=jiafen1+jiafen2+jiafen3,score+=jiafen"
set/a "jiafen1=0,jiafen2=0,jiafen3=0"
set/a "scoreh+=!score:~,-8!0,score%%=100000000"
::加上分數


set scorez=
if !scoreh! neq 0 (for /l %%a in (1,1,7) do (if "!score:~-%%a!" equ "!score!" (set scorez=0!scorez!)))
set scorehn=!scoreh!
if !scoreh! lss 1000 set scorehn=0!scoreh!
if !scoreh! lss 100 set scorehn=00!scoreh!
if !scoreh! lss 10 set scorehn=000!scoreh!

set scoren=!scoreh:~,-1!!scorez!!score!

if !scoreh! geq 1000 (
set scorehn=A!scoreh:~2,-1!
if !scoreh! geq 1100 (set scorehn=B!scoreh:~2,-1!)
if !scoreh! geq 1200 (set scorehn=C!scoreh:~2,-1!)
if !scoreh! geq 1300 (set scorehn=D!scoreh:~2,-1!)
if !scoreh! geq 1400 (set scorehn=E!scoreh:~2,-1!)
if !scoreh! geq 1500 (set scorehn=F!scoreh:~2,-1!)
if !scoreh! geq 1600 (set scorehn=G!scoreh:~2,-1!)
if !scoreh! geq 1700 (set scorehn=H!scoreh:~2,-1!)
if !scoreh! geq 1800 (set scorehn=I!scoreh:~2,-1!)
if !scoreh! geq 1900 (set scorehn=J!scoreh:~2,-1!)
if !scoreh! geq 2000 (set scorehn=K!scoreh:~2,-1!)
if !scoreh! geq 2100 (set scorehn=L!scoreh:~2,-1!)
if !scoreh! geq 2200 (set scorehn=M!scoreh:~2,-1!)
if !scoreh! geq 2300 (set scorehn=N!scoreh:~2,-1!)
if !scoreh! geq 2400 (set scorehn=O!scoreh:~2,-1!)
if !scoreh! geq 2500 (set scorehn=P!scoreh:~2,-1!)
if !scoreh! geq 2600 (set scorehn=Q!scoreh:~2,-1!)
if !scoreh! geq 2700 (set scorehn=R!scoreh:~2,-1!)
if !scoreh! geq 2800 (set scorehn=S!scoreh:~2,-1!)
if !scoreh! geq 2900 (set scorehn=T!scoreh:~2,-1!)
if !scoreh! geq 3000 (set scorehn=U!scoreh:~2,-1!)
if !scoreh! geq 3100 (set scorehn=V!scoreh:~2,-1!)
if !scoreh! geq 3200 (set scorehn=W!scoreh:~2,-1!)
if !scoreh! geq 3300 (set scorehn=X!scoreh:~2,-1!)
if !scoreh! geq 3400 (set scorehn=Y!scoreh:~2,-1!)
if !scoreh! geq 3500 (set scorehn=Z!scoreh:~2,-1!)
set scoren=!scoreh:~,-1!!scorez!!score!
if !scoreh! geq 3600 (set scorehn=Ω M&set scoren=Ω Max Score^!^!)
)
if !score! lss 0 (set scorehn=Ω M&set scoren=Ω Max Score^!^!)

call:highscoring

if defined jmpout (
        set break=!break%diffn%!
        if !guan! geq 6 (set/a "break=(break%diffn%*(10-guan))/5")
        if !guan! geq 10 (set/a "break=0")
        if !diffn! equ 4 (if !guan! geq 2 (set/a "break=0"))
        set/a "breakH=break>>2"
        set/a "breakQ=break>>3"
        set jmpoutQ=1
        call :breakcont
)
if !n! leq 1 (
        set scores=
        for /l %%a in (0,1,13) do (if "!scoren:~-%%a!" equ "!scoren!" (set scores= !scores!))
        call :highscoring
        call :store
        set r11.2=您
        set r11.3=已
        set r11.4=經
        set r11.5=死
        set r11.6=了
        set r11.7=。
        (%d-e:#=21%)
        
        >nul timeout /t 2
        set contin=0
        goto :precontinue
)
::遊戲失敗

if !tc! geq !tchi%diffn%! (
        call :highscoring
        call :store
        set r11.1=Co
        set r11.2=ng
        set r11.3=ra
        set r11.4=tu
        set r11.5=la
        set r11.6=ti
        set r11.7=on
        set r11.8=s！
        set r11.9= 
        (%d-e:#=21%)
        
        >nul timeout /t 2
        set r11.1=　
        set r11.2=　
        set r11.3=　
        set r11.4=　
        set r11.5=　
        set r11.6=　
        set r11.7=　
        set r11.8=　
        set r11.9=　

        set r9.1=Ｙ
        set r9.2=ｏ
        set r9.3=ｕ
        set r9.4=　
        set r9.5=Ｗ
        set r9.6=ｉ
        set r9.7=ｎ
        set r9.8=！
        set r9.9=！
        (%d-e:#=21%)
        >nul timeout /t 1
        set scoren=0
        set scoret=0
        goto :restart
)
::遊戲成功

(%d-e:#=21%)
set jiafen=0
goto :loop

:breakcont
for /f "tokens=1,2 usebackq" %%a in ("%~s0aswd.dat") do (
        if %%b equ 6 (call :error %%b&exit /b)
        if %%b geq 10 (call :error %%b&exit /b)
        if %%a neq !test! set test=%%a
)

::計時
set ti=1!time:~6,2!!time:~9,2!
if !ti! lss !bti! (set/a tn=ti-bti+6000) else (set /a tn=ti-bti)
if defined jmpoutQ if !tn! gtr !breakQ! (
        for /l %%a in (21,-1,2) do for %%b in ("!ebuf:@=%%a!") do if "%%~b" equ "██████████" (
                for /l %%c in (0,1,9) do set "r%%a.%%c=　"
        )


        for /l %%a in (21,-1,2) do (
                for /l %%b in (0,1,9) do if "!r%%a.%%b!" equ "█" set "r%%a.%%b=　"
        )
        set jmpoutQ=
        (%d-e:#=21%)
)
if defined jmpout if !tn! gtr !breakH! (
        for /l %%a in (21,-1,2) do (
                for /l %%b in (0,1,9) do set r%%a.%%b=!e%%a:~%%b,1!
        )
        (%d-e:#=21%)
        set jmpout=
)
if !tn! gtr !break! goto :eof

goto :breakcont

:highscoring
set hiscoren=!hiscoren: =!
set hiscoreh=!hiscoren:~,-8!0
set hiscorehn=!hiscoreh!
if !hiscoreh! lss A00 set hiscorehn=0!hiscoreh!
if !hiscoreh! lss 100 set hiscorehn=00!hiscoreh!
if !hiscoreh! lss 10 set hiscorehn=000!hiscoreh!
set hiscore=!hiscoren:~-8!0
set/a hiscore/=10
if "!scorehn!" gtr "!hiscorehn!" (
        set hiscoren=!scoren!
        set hiscoren%diffn%=!scoren!
)
if !scorehn! equ !hiscorehn! (
        if !score! geq !hiscore! (
                set hiscoren=!scoren!
                set hiscoren%diffn%=!scoren!
        )
)
set scores=
for /l %%a in (0,1,13) do (if "!scoren:~-%%a!" equ "!scoren!" (set scores= !scores!))
set hiscores=
for /l %%a in (0,1,13) do (if "!hiscoren:~-%%a!" equ "!hiscoren!" (set hiscores= !hiscores!))
set tcnn=!tcn!/!guoguan!
set jiafenn=+!jiafen!
goto :eof

:precontinue
>nul timeout /t 0 /nobreak
(%d-e:#=21%)
        set r11.2=　
        set r11.3=　
        set r11.6=　
        set r11.7=　
        
        set r9.1=Ｃ
        set r9.2=ｏ
        set r9.3=ｎ
        set r9.4=ｔ
        set r9.5=ｉ
        set r9.6=ｎ
        set r9.7=ｕ
        set r9.8=ｅ
        set r9.9=？
        
        set r11.4=確
        set r11.5=定
        
        set r12.4=不
        set r12.5=了
>"%~s0temp.dat" echo 0
>"%~s0aswd.dat" echo;!test! 0
call :selectconti

:continue
for /f "tokens=1,2 usebackq" %%a in ("%~s0aswd.dat") do (
        if "%%a" neq "!test!" (
                set test=%%a
                if "%%b" equ "3" (
                        if "!contin!" gtr "0" (set/a contin-=1)
                )
                if "%%b" equ "4" (
                        if "!contin!" lss "1" (set/a contin+=1)
                )
                if "%%b" equ "6" (
                        set scoren=0
                        set scoret=0
                        goto :restart
                )
                if "%%b" equ "7" (
                        if "!contin!" equ "0" (
                                set/a scoret=score"%%"10
                                if !scoret! lss 9 (set/a scoret+=1)
                                set score=!scoret!
                                set scoren=!scoret!
                                goto :restart
                        ) else (
                                set scoren=0
                                set scoret=0
                                goto :restart
                        )
                )
        call :selectconti
        )
)
call :ParaDetecter %~s0
goto :continue

:selectconti
if "!contin!" equ "0" set contis=＞　
if "!contin!" equ "1" set contis=　＞
set r11.3=!contis:~,1!
set r12.3=!contis:~1,1!
(%d-e:#=21%)
goto :eof

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

::結束遊戲-----------------------------------------

:store
set hiscoren%diffn%=!hiscoren!
attrib -r "%~s0score.dat"
>"%~s0score.dat" echo;!hiscoren0! !hiscoren1! !hiscoren2! !hiscoren3! !hiscoren4!
set err=0
for /f "tokens=1-5 usebackq" %%a in ("%~s0score.dat") do (
        if %%a0 neq !hiscoren0!0 set/a err+=1
        if %%b0 neq !hiscoren1!0 set/a err+=1
        if %%c0 neq !hiscoren2!0 set/a err+=1
        if %%d0 neq !hiscoren3!0 set/a err+=1
        if %%e0 neq !hiscoren4!0 set/a err+=1
)
if "!err!" neq "0" (goto :store)
attrib +r -a "%~s0score.dat"
goto :eof

:error
if %10 equ 60 echo Thank you for playing！ GOoD ByE with you！
if %10 gtr 90 echo 發生了嚴重的錯誤，程式必須關閉。
2>&1 >nul del /f /q /a "%~s0aswd.dat"
2>&1 >nul del /f /q /a "%~s0temp.dat"
>>"%~dpn0log.txt" echo;---------------------------------------------------------- 
endlocal
>nul timeout /t 1