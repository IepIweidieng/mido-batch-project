
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
                ::調用函數把圖標點放置到總坐標空間
                if defined err (
                        endlocal
                        set/a m=bm,k=bk,tnc=btnc
                        set str=!bs!
                        if "%%b" equ "4" (goto :jmpout)
                ) else (
                        (%d-e:#=21%)
                        ::調用顯示函數
                        if "%%b" equ "9" (call :snapshot)
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
        if %%a neq !test! (
                set test=%%a
                if "%%b" equ "9" (call :snapshot)
        )
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