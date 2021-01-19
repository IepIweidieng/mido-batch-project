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
                if "%%b" equ "9" (
                        call :snapshot
                        )
                )
        call :selectconti
        )
)
call :ParaDetecter %~s0
goto :continue

:selectconti
if "!contin!" equ "0" set contis=¡Ö¡@
if "!contin!" equ "1" set contis=¡@¡Ö
set r11.3=!contis:~,1!
set r12.3=!contis:~1,1!
(%d-e:#=21%)
goto :eof
