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
goto :eof

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
                if "%%b" equ "9" (call :snapshot)
        call :selectUpdater
        )
)
call :ParaDetecter %~s0

goto :UpdaterMenu

:selectUpdater
if !UChoiceN! equ 0 (set UChoiceS=＞　) else (set UChoiceS=　＜)
set aec=!cr!!cr!!cr!!cr!!cr!!cr!!cr!!cr!!cr!　　　┌─────────────────────────!cr!　　　│遊戲程式有新版本^(%NVer%^)，要下載並安裝嗎？!cr!　　　│　　　　　　　　　　　　　　　　目前版本：%CVer%%nl%　　　│　　　　　　　　　　　是的%UChoiceS:~,1%　　%UChoiceS:~1%不了%nl%　　　╘══════════════════════════
cls&echo;!aec!
goto :eof