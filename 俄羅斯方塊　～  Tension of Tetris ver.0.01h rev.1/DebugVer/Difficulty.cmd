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
                if "%%b" equ "9" (
                        call :snapshot
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
for /l %%a in (1,2,8) do (if "!diffcult:~-%%a!" equ "!diffcult!" (set diffcultsp=¡@!diffcultsp!))
if "!diffn!" equ "0" set diffcults=¡Ö¡@¡@¡@¡@
if "!diffn!" equ "1" set diffcults=¡@¡Ö¡@¡@¡@
if "!diffn!" equ "2" set diffcults=¡@¡@¡Ö¡@¡@
if "!diffn!" equ "3" set diffcults=¡@¡@¡@¡Ö¡@
if "!diffn!" equ "4" set diffcults=¡@¡@¡@¡@¡Ö
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
) else (for /l %%a in (1,1,9) do set r14.%%a=¡@)
(%d-e:#=21%)
goto :eof

:gamestart
goto :eof