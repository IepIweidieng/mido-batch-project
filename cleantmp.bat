@echo off
>nul chcp 950
call:�պ�
if %err%==0 2>nul call:��
exit /b

:�պ�
    set ����="%temp%\getadmin.vbs"
    >nul 2>&1 at

    if '%errorlevel%' neq '0' (
        call:�b��
        set err=1
    ) else (
        if exist %����% ( del %����% )
        set err=0
    )
    goto :eof

:�b��
    echo Set UAC = CreateObject^("Shell.Application"^) > %����%
    echo UAC.ShellExecute "%~s0", "��", "", "runas", 1 >> %����%

    call %����%
    goto :eof

:��
echo �M���s�����Ȧs�ɤΨt�ΩU���ɮסA�ϥΫe�������Ҧ��B�椤�{���C
>nul timeout /t 1 /nobreak
echo �N�M��Internet Explorer�Ȧs�ɡA�����N��}�l�C
>nul timeout /t 50
taskkill.exe /F /IM iexplore.exe
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
rd /s /q %userprofile%\Local Settings\Temp
del /f /s /q "%userprofile%\recent\*.*"
echo �M�������C
>nul timeout /t 1 /nobreak

echo �N�M��Google Chrome�Ȧs�ɡA�����N��}�l�C
>nul timeout /t 50
taskkill.exe /F /IM chrome.exe
del /f /s /q "%userprofile%\Local Settings\Application Data\Chromium\User Data\Default\Cache\*.*"
del /f /s /q "%userprofile%\Local Settings\Application Data\Google\Chrome\User Data\Default\Cache\*.*"
del /f /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*.*"
echo �M�������C
>nul timeout /t 1 /nobreak

echo �N�M��Opera�Ȧs�ɡA�����N��}�l�C
>nul timeout /t 50
taskkill.exe /F /IM opera.exe
del /f /s /q "%userprofile%\AppData\Local\Opera Software\Opera Stable\Cache\*.*"
echo �M�������C
>nul timeout /t 1 /nobreak

echo �N�M���t�ΩU���ɮסA�����N��}�l�C
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
echo �M�������C
>nul timeout /t 1 /nobreak

echo �����N�䵲���C
>nul timeout /t 50
goto :eof