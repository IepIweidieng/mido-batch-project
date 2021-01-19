@echo off
>nul chcp 950
call:試管
if %err%==0 2>nul call:正
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
echo 清除瀏覽器暫存檔及系統垃圾檔案，使用前請關閉所有運行中程式。
>nul timeout /t 1 /nobreak
echo 將清除Internet Explorer暫存檔，按任意鍵開始。
>nul timeout /t 50
taskkill.exe /F /IM iexplore.exe
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
rd /s /q %userprofile%\Local Settings\Temp
del /f /s /q "%userprofile%\recent\*.*"
echo 清除完畢。
>nul timeout /t 1 /nobreak

echo 將清除Google Chrome暫存檔，按任意鍵開始。
>nul timeout /t 50
taskkill.exe /F /IM chrome.exe
del /f /s /q "%userprofile%\Local Settings\Application Data\Chromium\User Data\Default\Cache\*.*"
del /f /s /q "%userprofile%\Local Settings\Application Data\Google\Chrome\User Data\Default\Cache\*.*"
del /f /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*.*"
echo 清除完畢。
>nul timeout /t 1 /nobreak

echo 將清除Opera暫存檔，按任意鍵開始。
>nul timeout /t 50
taskkill.exe /F /IM opera.exe
del /f /s /q "%userprofile%\AppData\Local\Opera Software\Opera Stable\Cache\*.*"
echo 清除完畢。
>nul timeout /t 1 /nobreak

echo 將清除系統垃圾檔案，按任意鍵開始。
>nul timeout /t 50
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\*.err 
del /f /s /q %systemdrive%\*.wbk
del /f /s /q %systemdrive%\*.xlk
del /f /s /q %systemdrive%\*.diz
del /f /s /q %systemdrive%\*.dmp 
del /f /s /q %systemdrive%\*.ftg
del /f /s /q %systemdrive%\*.fts 
del /f /s /q %windir%\*.bak
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
net user aspnet /delete
echo 清除完畢。
>nul timeout /t 1 /nobreak

echo 按任意鍵結束。
>nul timeout /t 50
goto :eof