@echo off
>nul chcp 950
call:試管
if %err%==0 goto 正
exit /b

:試管
    set 取管="%temp%\getadmin.vbs"
    >nul 2>&1 at

    if '%errorlevel%' neq '0' (
        call:帳控
        set err=1
    ) else (
        if exist %取管% ( del %取管% )
        set err=0
    )
    goto :eof

:帳控
    echo Set UAC = CreateObject^("Shell.Application"^) > %取管%
    echo UAC.ShellExecute "%~s0", "正", "", "runas", 1 >> %取管%

    call %取管%
    goto :eof

:正
echo 為了能夠使用未簽署的驅動程式，請使用這個程式檔案。
>nul timeout /t 5
goto 選擇
:選擇
cls
set /p 模式=請輸入ON或OFF（ON:打開封印，OFF:封印）
if %模式%==ON goto 封印
if %模式%==OFF goto 封印
goto 選擇

:封印
cls
echo 處理即將進行。
>nul pause
BCDedit /set loadoptions DDISABLE_INTEGRITY_CHECKS
if %errorlevel%==0 (
BCDedit /set TESTSIGNING %模式%
if %errorlevel%==0 (
echo 即將重新啟動。
>nul pause
shutdown /r /t 1
exit
)
)
if not %errorlevel%==0 echo 發生錯誤。
exit