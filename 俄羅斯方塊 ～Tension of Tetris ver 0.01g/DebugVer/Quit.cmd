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
title 命令提示字元