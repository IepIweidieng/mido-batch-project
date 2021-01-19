@title 程式載入中…… Now Loading…&echo off&color 27
>nul chcp 950
::俄羅斯方塊遊戲，由netbenton編寫，在bathome首發，完成時間：2009年9月25日 ver 2.0
::由dom2112註解並修改，修改時間2015年7月7日 ver 0.01b
::加入Hold系統（「C」鍵）、最高分數系統、加分顯示系統、「Z」鍵與「X」鍵、難度系統、續關選單，改變計分方式，更改介面。(0.01a)
::完成關卡系統、改變旋轉方向(0.01b)
if "%1" equ "para2" goto :para2
echo Microdoft "arring"...

::初始化--------------------------------------

set        "d-v=for %%a in (!str!) do set/a one=0x%%a,x=one/4+n,y=one%%4+m&(for %%b in ("r!x!.!y!") do if "!%%~b!" equ "　" (set r!x!.!y!=■) else (set err=1))"
::函數d-v，把str中的圖標數據，放置到總坐標空間中，如果有覆蓋，則err=1。調用方法：(%d-v%)
::變量使用：one  x  y

set "d-e=set aec=!cr! 　　　┌──────────┐　　!ebu1!!cr!&(for /l %%a in (2,1,#) do for %%b in ("│!ebuf:@=%%a!│　　!ebu%%a!") do set aec=!aec!　　　 %%~b!cr!)&cls&echo;!aec!　　　 └──────────┘　　!ebu22!"
::函數d-e，把總坐標空間顯示出來，調用方法：(%d-e:#=行數%)
set ebu4= Ｈiscore　!hiscores!!hiscore!
set ebu5=　　　　　　 !jiafenn!
set ebu6= Ｓcore　　!scores!!score!
set ebu8=╭─next─╮
set ebu13=├─hold★┤
set ebu18=╰────╯
set ebu19=　　!cbn!
set ebu20=　　!tcnn!
set guan=1
set guoguan=0
set hiscore=0
set score=0
set scoret=0
set tc=0
set tcn=0
cls&echo Microdoft "arring"...取得最高成績......
if not exist "%~s0score.dat" (>"%~s0score.dat" echo 0 0 0 100000 200000 450000 1000000)
set/a err=0
for /f "tokens=1-7 usebackq" %%a in ("%~s0score.dat") do (
        set/a hiscore0=%%d||set/a err+=1
        set/a hiscore1=%%e||set/a err+=2
        set/a hiscore2=%%f||set/a err+=4
        set/a hiscore3=%%g||set/a err+=8
)
if %err% geq 8 (set hiscore3=1000000)
set/a err"%%"=8
if %err% geq 4 (set hiscore2=450000)
set/a err"%%"=4
if %err% geq 2 (set hiscore1=200000)
set/a err"%%"=2
if %err% geq 1 (set hiscore0=100000)
set err=
set cr=^


:難度名稱定義
set diff0=Ｅ ａ ｓ ｙ
set diff1=Ｎ ｏ ｒ ｍ ａ ｌ
set diff2=Ｈ ａ ｒ ｄ
set diff3=Ｅ ｘ ｃ ｉ ｔ ｉ ｎ ｇ

::難度定義
::easy
set down0=60
set down0hi=30
::下降速度
set tncrow0=4
::方塊固定時間改變幅度
set tnchi0=2
::固定時間
set downs0=8
set downs0hi=4
::加速時下降速度

set guoguan0=30
::每關卡方塊數
set tchi0=299
::遊戲總方塊
set jiafenm0=1
::消行加分乘方率

::normal
set down1=40
set down1hi=20
set tncrow1=3
set tnchi1=2
set downs1=5
set downs1hi=3
set guoguan1=50
set tchi1=499
set jiafenm1=2

::hard
set down2=10
set down2hi=8
set tncrow2=2
set tnchi2=8
set downs2=2
set downs2hi=1
set guoguan2=80
set tchi2=799
set jiafenm2=3

::exciting
set down3=2
set down3hi=1
set tncrow3=1
set tnchi3=40
set downs3=0
set downs3hi=0
set guoguan3=100
set tchi3=999
set jiafenm3=4

::各種圖標定義
set ga1=0 1 5 6
set ga2=1 4 5 8
::■■□□　　□■□□
::□■■□　　■■□□
::□□□□　　■□□□

set gb1=1 2 4 5
set gb2=0 4 5 9
::□■■□　　■□□□
::■■□□　　■■□□
::□□□□　　□■□□

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
set qb3=0 1 5 9
set qb4=6 8 9 a
::■□□□　　■■■□　　■■□□　　□□□□
::■□□□　　■□□□　　□■□□　　□□■□
::■■□□　　□□□□　　□■□□　　■■■□

set ta1=0 1 4 5
::■■□□
::■■□□


set sa1=4 5 6 9
set sa2=1 4 5 9
set sa3=1 4 5 6
set sa4=1 5 6 9
::□□□□　　□■□□　　□■□□　　□■□□
::■■■□　　■■□□　　■■■□　　□■■□
::□■□□　　□■□□　　□□□□　　□■□□

set tw1=0 1
set tw2=0 4
::■■□□　　■□□□
::□□□□　　■□□□


set on1=0
set on2=0
::■□□□



set sh1=1 4 5 6 9
set sh2=1 4 5 6 9
::□■□□　　□■□□
::■■■□　　■■■□
::□■□□　　□■□□

set ao1=0 1 2 4 6
set ao2=0 1 4 8 9
set ao3=0 4 5 6 2
set ao4=0 1 5 8 9
::■■■□　　■■□□　　■□■□　　■■□□
::■□■□　　■□□□　　■■■□　　□■□□
::□□□□　　■■□□　　□□□□　　■■□□

set tt1=0 1 2 5 9
set tt2=0 4 8 5 6
set tt3=1 5 8 9 a
set tt4=2 4 5 6 a
::■■■□　　■□□□　　□■□□　　□□■□
::□■□□　　■■■□　　□■□□　　■■■□
::□■□□　　■□□□　　■■■□　　□□■□

::cdef
::89ab
::4567
::0123
::□□□□　　□□□□　　□□□□　　■■■■
::□□□□　　□□□□　　■■■■　　□□□□
::□□□□　　■■■■　　□□□□　　□□□□
::■■■■　　□□□□　　□□□□　　□□□□

setlocal enabledelayedexpansion
set test=0
call :store 0
start "aswd" %0 para2
::起動控制窗口

cls&echo Microdoft "arring"...等待操作視窗中......

:aswdloop
for /f "tokens=4-7 usebackq" %%a in ("%~s0score.dat") do (goto :aswdloop)
::等待操作視窗開始作用

cls&echo Microdoft "arring"...

for /l %%a in (0,1,9) do (set "ebuf=!ebuf!^!r@.%%a^!")
for %%a in (sa_4 ta_1 qb_4 qa_4 za_4 ga_2 gb_2) do (
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

>nul timeout /t 0 /nobreak
cls
color 2f
mode con: cols=66 lines=25

::進入遊戲---------------------------------------

:restart
title 俄羅斯方塊 ver. 0.01b
for /l %%a in (0,1,21) do (for /l %%b in (0,1,9) do set r%%a.%%b=　)
for /l %%a in (9,1,17) do (if "%%a" neq "13" (set ebu%%a=│　　　　│))
set hiscores=
for /l %%a in (0,1,13) do (if "!hiscore:~-%%a!" equ "!hiscore!" (set hiscores= !hiscores!))
set scores=
for /l %%a in (0,1,13) do (if "!score:~-%%a!" equ "!score!" (set scores= !scores!))
if "!scoret!" neq "0" (goto :gamestart)

:selectdiff
set r21.2=Pr
set r21.3=es
set r21.4=s 
set r21.5=an
set r21.6=y 
set r21.7=ke
set r21.8=y.
set r21.9=..
(%d-e:#=21%)
for /f "tokens=1 usebackq" %%a in ("%~s0score.dat") do (>"%~s0score.dat" echo %%a 0 1)
>nul ping /n 1 127.0.0.1
for /f "tokens=3 usebackq" %%a in ("%~s0score.dat") do (if "%%a" neq "0" goto :selectdiff)
for /l %%a in (2,1,9) do set r21.%%a=　
set n=10
for /l %%a in (0,1,3) do (
        set m=2
        for %%b in (!diff%%a!) do (
                set r!n!.!m!=%%b
                set/a m+=1
        )
        set/a n+=1
)
set diffn=1
call :selectdiff2

:selectdiffloop
for /f "tokens=1,2 usebackq" %%a in ("%~s0score.dat") do (
         if "%%b" geq "9" (call :error %%b&exit /b)
         if "%%a" neq "!test!" (
                  set test=%%a
                  if "%%b" equ "1" (
                        if "!diffn!" gtr "0" (set/a diffn-=1)
                )
                  if "%%b" equ "2" (
                        if "!diffn!" lss "3" (set/a diffn+=1)
                )
                  if "%%b" equ "3" (
                        if "!diffn!" gtr "0" (set/a diffn-=1)
                )
                  if "%%b" equ "4" (
                        if "!diffn!" lss "3" (set/a diffn+=1)
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

goto :selectdiffloop

:selectdiff2
set hiscore= !hiscore%diffn%!
set hiscores=
for /l %%a in (0,1,13) do (if "!hiscore:~-%%a!" equ "!hiscore!" (set hiscores= !hiscores!))
set diffcult=!diff%diffn%: =!
set diffcultsp=
for /l %%a in (1,2,7) do (if "!diffcult:~-%%a!" equ "!diffcult!" (set diffcultsp=　!diffcultsp!))
if "!diffn!" equ "0" set diffcults=＞　　　
if "!diffn!" equ "1" set diffcults=　＞　　
if "!diffn!" equ "2" set diffcults=　　＞　
if "!diffn!" equ "3" set diffcults=　　　＞
set r10.1=!diffcults:~,1!
set r11.1=!diffcults:~1,1!
set r12.1=!diffcults:~2,1!
set r13.1=!diffcults:~3,1!
(%d-e:#=21%)
goto :eof

:gamestart
set guoguantc=!guoguan%diffn%!
set/a guoguan=guan*guoguantc
if !guan! geq 10 (set guoguan=!tchi%diffn%!)
set tnchi=!tnchi%diffn%!

set downs=!downs%diffn%!
if !guan! geq 6 (set/a "downs=((downs%diffn%*(9-guan))>>2)+((downs%diffn%hi*(guan-5))>>2)")

set down=!down%diffn%!
if !guan! geq 6 (set/a "down=((down%diffn%*(9-guan))>>2)+((down%diffn%hi*(guan-5))>>2)")
if !guan! equ 10 (set down=!downs%diffn%!)

set k3=tnc-=tncrow%diffn%,k-=2,k+=mx,k"%%"=mx,k+
set k7=tnc-=tncrow%diffn%,k-=2,k+=mx,k"%%"=mx,k+
set k8=tnc-=tncrow%diffn%,k"%%"=mx,k+
set k4=tnc+=tncrow%diffn%,down=downs,t
set k1=tnc-=tncrow%diffn%,m-
set k2=tnc-=tncrow%diffn%,m+
set k5=hold
::按鍵定義

set ebu2=　　!diffcultsp!!diffcult!
set tcnn=!tcn!/!guoguan!
for /l %%a in (0,1,21) do (for /l %%b in (0,1,9) do set r%%a.%%b=　)
for /l %%a in (9,1,17) do (if "%%a" neq "13" (set ebu%%a=│　　　　│))
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
set r21.2=Pr
set r21.3=es
set r21.4=s 
set r21.5=an
set r21.6=y 
set r21.7=ke
set r21.8=y.
set r21.9=..
(%d-e:#=21%)
::初始化坐標空間20行，10列

:gameloading
for /f "tokens=1 usebackq" %%a in ("%~s0score.dat") do (>"%~s0score.dat" echo %%a 0 1)
>nul ping /n 1 127.0.0.1
for /f "tokens=3 usebackq" %%a in ("%~s0score.dat") do (if "%%a" neq "2" goto :gameloading)
for /l %%a in (2,1,9) do set r21.%%a=　
(%d-e:#=21%)
>nul timeout /t 2 /nobreak
for /l %%a in (1,1,8) do set r10.%%a=　


::遊戲中-------------------------------------------

:loop
set/a "m=4,t=2,n=0,bti=0"

set downs=!downs%diffn%!
if !guan! geq 6 (set/a "downs=((downs%diffn%*(9-guan))>>2)+((downs%diffn%hi*(guan-5))>>2)")

set down=!down%diffn%!
if !guan! geq 6 (set/a "down=((down%diffn%*(9-guan))>>2)+((down%diffn%hi*(guan-5))>>2)")
if !guan! equ 10 (set down=!downs%diffn%!)

set/a r=!random!%%nx+1
set err=

if "!hold!" equ "1" (
        if defined hstr (
                set temt=!ttr!
                set ttr=!holdt!
                set holdt=!temt!
        ) else (
                set holdt=!ttr!
                set ttr=!_ttr!
                set _ttr=!ran%r%!
        )
) else (
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
endlocal&set ebu9=│%kk9%│&set ebu10=│%kk10%│&set ebu11=│%kk11%│&set ebu12=│%kk12%│&set ebu14=│%kk14%│&set ebu15=│%kk15%│&set ebu16=│%kk16%│&set ebu17=│%kk17%│
::對預備圖標的處理

::遊戲操作-------------------------------------

:cont
for /f "tokens=1,2 usebackq" %%a in ("%~s0score.dat") do (
        if %%b equ 6 (call :error %%b&exit /b)
        if %%b geq 9 (call :error %%b&exit /b)
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

        set down=!down%diffn%!
        if !guan! geq 6 (set/a "down=((down%diffn%*(9-guan))>>2)+((down%diffn%hi*(guan-5))>>2)")
        if !guan! equ 10 (set down=!downs%diffn%!)

        setlocal enabledelayedexpansion
        (%d-v%)
        if defined err (
                endlocal
                if !tnc! geq !tnchi! (set tnc=0&goto :jmpout)
                set/a n-=1
        ) else (
                (%d-e:#=21%)
                endlocal
        )
)

goto :cont

::消行、得分、放置方塊---------------------------

:jmpout
set bscore=!score!
set hold=
set ebu13=├─hold★┤
set/a n-=1
(%d-v%)
(%d-e:#=21%)
set m=21

for /l %%a in (21,-1,2) do for %%b in ("!ebuf:@=%%a!") do if "%%~b" neq "■■■■■■■■■■" (set e!m!=%%~b&set/a m-=1)

if !m! neq 1 (
        for /l %%a in (!m!,-1,2) do set "e%%a=　　　　　　　　　　"
        for /l %%a in (21,-1,2) do (
                for /l %%b in (0,1,9) do set r%%a.%%b=!e%%a:~%%b,1!
        )
        set/a "jiafen+=((m-1)<<jiafenm%diffn%)*((m-1)<<jiafenm%diffn%)*((cb+1)<<jiafenm%diffn%)*((cb+1)<<jiafenm%diffn%)*10,cb+=1,tc+=(m-1)*10,tc-=1"
        if !cb! gtr 1 (set cbn=!cb! Ｃombo！)
) else (
        set/a cb=0
        set cbn=
)

set/a tc+=1,tcn=tc,guoguan=guan*guoguantc,tct=tc+guoguantc-guoguan,jiafen+=10*(22-n)*(cb+1)*tct*guan*guan
if !guan! geq 10 (set guoguan=!tchi%diffn%!)
if !tc! geq !guoguan! (set/a jiafen+=guan*guoguan*100000,guan+=1)
set/a score+=jiafen
call :highscoring
(%d-e:#=21%)
set jiafen=0

if !n! leq 1 (
        set score=!bscore!
        set scores=
        for /l %%a in (0,1,13) do (if "!score:~-%%a!" equ "!score!" (set scores= !scores!))
        set jiafenn=
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

if !tc! geq !tchi%diffn%! (
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
        call :error 6&exit /b
)

goto :loop

:highscoring
set scores=
for /l %%a in (0,1,13) do (if "!score:~-%%a!" equ "!score!" (set scores= !scores!))
set hiscores=
for /l %%a in (0,1,13) do (if "!hiscore:~-%%a!" equ "!hiscore!" (set hiscores= !hiscores!))
if !score! geq !hiscore! (
        set hiscore=!score!
)
endlocal
set hiscore%diffn%=!hiscore!
set tcnn=!tcn!/!guoguan!
set jiafenn=+!jiafen!
setlocal enabledelayedexpansion
goto :eof

:precontinue
>nul timeout /t 0 /nobreak
set r21.2=Pr
set r21.3=es
set r21.4=s 
set r21.5=an
set r21.6=y 
set r21.7=ke
set r21.8=y.
set r21.9=..
(%d-e:#=21%)
for /f "tokens=1 usebackq" %%a in ("%~s0score.dat") do (>"%~s0score.dat" echo %%a 0 1)
>nul ping /n 1 127.0.0.1
for /f "tokens=3 usebackq" %%a in ("%~s0score.dat") do (if "%%a" neq "0" goto :precontinue)
for /l %%a in (2,1,9) do set r21.%%a=　
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
call :selectconti

:continue
for /f "tokens=1,2 usebackq" %%a in ("%~s0score.dat") do (
        if "%%a" neq "!test!" (
                set test=%%a
                if "%%b" equ "3" (
                        if "!contin!" gtr "0" (set/a contin-=1)
                )
                if "%%b" equ "4" (
                        if "!contin!" lss "1" (set/a contin+=1)
                )
                if "%%b" equ "6" (
                        call :error 6&exit /b
                )
                if "%%b" equ "7" (
                        if "!contin!" equ "0" (
                                set/a scoret=score"%%"10
                                if !scoret! lss 9 (set/a scoret+=1)
                                set score=!scoret!
                                goto :restart
                        ) else (
                                call :error 6&exit /b
                        )
                )
        call :selectconti
        )
)
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
mode con: cols=40 lines=2
mode con: rate=62 delay=0
title 操作視窗
color 2f

:para2loop
set m=0
for /f "tokens=4-7 usebackq" %%a in ("%~s0score.dat") do (
        0>&1 >nul >"%~s0score.dat" echo;0 0 0
        set m=1
)
if %m% equ 0 goto :para2loop
set mode=0
set tn=0
::回應主視窗

:p_lp
for /f "tokens=1-3 usebackq" %%a in ("%~s0score.dat") do (if %%c equ 1 (set/a m=%%a,tn=0,mode+=2,mode"%%"=4)
if %%b equ 6 goto :paraexit
if %%b geq 9 goto :paraexit
)
if %mode% equ 0 (echo 　　W上移 S下移 Z確定 X取消 Q退出　　　) else (echo A左 D右 W/Z逆轉 X順轉 S加速 C保留 Q退出)
for /f "tokens=4-7 usebackq" %%a in ("%~s0score.dat") do (goto :paraexit)
set/a n=n"%%"100+1
::計時器
if %m% neq 1 (>nul choice /c adwscqzx /n) else (>nul ping /n 1 127.0.0.1&if %tn% gtr 4 (set m=%mode%) else (set/a tn+=1))
>nul >"%~s0score.dat" echo;%n% %errorlevel% %mode%
if %errorlevel% equ 6 goto :paraexit
if %errorlevel% geq 9 goto :paraexit
goto :p_lp

:paraexit
for /f "tokens=3 usebackq" %%a in ("%~s0score.dat") do (if %%a equ 1 (set/a mode+=2,mode"%%"=4))
set/a n=n"%%"100+1
>nul >"%~s0score.dat" echo;%n% 6 %mode%
>nul ping /n 1 127.0.0.1
for /f "tokens=4-7 usebackq" %%a in ("%~s0score.dat") do (>nul >"%~s0score.dat" echo;%n% 6 %mode% %%a %%b %%c %%d &exit)
goto :errorstore
::等待主視窗儲存分數

::結束遊戲-----------------------------------------

:error
if "%1" equ "6" echo Thank you for playing！ GOoD ByE with you！
if "%1" gtr "8" echo 發生了嚴重的錯誤，程式必須關閉。

:errorstore
call :store %1
>nul ping /n 1 127.0.0.1
for /f "tokens=4-7 usebackq" %%a in ("%~s0score.dat") do (
call :store %1
echo 分數已儲存。
>nul timeout /t 0 /nobreak
>nul timeout /t 1
goto :eof
)
goto :errorstore
::儲存分數並等待操作視窗關閉

:store
0>&1 >nul >"%~s0score.dat" echo;!test! %1 0 !hiscore0! !hiscore1! !hiscore2! !hiscore3!
set err=0
for /f "tokens=4-7 usebackq" %%a in ("%~s0score.dat") do (
        if "%%a" neq "!hiscore0!" set/a err+=1
        if "%%b" neq "!hiscore1!" set/a err+=1
        if "%%c" neq "!hiscore2!" set/a err+=1
        if "%%d" neq "!hiscore3!" set/a err+=1
)
if "!err!" neq "0" (goto :store)
goto :eof