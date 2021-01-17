@title 
@echo off
chcp 950>nul
goto %2

:1
if %3==must if exist "%SystemDrive%\Microdoft" rd /s /q "%SystemDrive%\Microdoft"
findstr /b /e /offline /c:"0001a 814682 6724824831" "%SystemDrive%\Microdoft\Md1_0001a.ver">nul || (del /f /q "%SystemDrive%\Microdoft\log.txt")
robocopy "%~dp0\Your Tousei\Microdoft" "%SystemDrive%\Microdoft" /mir /w:1>nul & if %errorlevel% leq 1 echo 程式安裝成功>> "%~dp0\log.txt"
if not exist "%userprofile%\Desktop\Microdoft" mkdir "%userprofile%\Desktop\Microdoft" && echo 建立桌面資料夾成功>> "%~dp0\log.txt"
if not exist "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microdoft" mkdir "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microdoft" && echo 建立開始功能表捷徑資料夾成功>> "%~dp0\log.txt"
echo.>>"%SystemDrive%\Microdoft\log.txt"
cls

set target="%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microdoft\電腦損毀程式.lnk"
set source="%SystemDrive%\Microdoft\s.cmd"
set icon="%SystemDrive%\Microdoft\microdoft.ico"
set desc="This application can 毀損 your computer."
set hotkey=""

set window_nor=1
set window_max=3
set window_min=7
set window_style=%window_nor%

set script="%temp%\%random%.vbs"

echo set ows = wscript.createobject("wscript.shell") >> %script%
echo slinkfile = %target% >> %script%
echo set olink = ows.createshortcut(slinkfile) >> %script%
echo olink.targetpath = %source% >> %script%
echo olink.iconlocation = %icon% >> %script%
echo olink.windowstyle = %window_style% >> %script%
echo olink.description = %desc% >> %script%
echo olink.hotkey = %hotkey% >> %script%
echo olink.arguments = "" >> %script%
echo olink.save >> %script%

cscript /b /nologo %script% && echo 建立開始功能表捷徑成功>> "%~dp0\log.txt"
del %script%

set target="%userprofile%\Desktop\Microdoft\電腦損毀程式.lnk"

echo set ows = wscript.createobject("wscript.shell") >> %script%
echo slinkfile = %target% >> %script%
echo set olink = ows.createshortcut(slinkfile) >> %script%
echo olink.targetpath = %source% >> %script%
echo olink.iconlocation = %icon% >> %script%
echo olink.windowstyle = %window_style% >> %script%
echo olink.description = %desc% >> %script%
echo olink.hotkey = %hotkey% >> %script%
echo olink.arguments = "" >> %script%
echo olink.save >> %script%

cscript /b /nologo %script% && echo 建立桌面捷徑成功>> "%~dp0\log.txt"
del %script%

set target="%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microdoft\log.txt.lnk"
set source="%SystemDrive%\Microdoft\log.txt"
set icon="%SystemRoot%\system32\SHELL32.dll,70"
set desc="毀損一覽"

echo set ows = wscript.createobject("wscript.shell") >> %script%
echo slinkfile = %target% >> %script%
echo set olink = ows.createshortcut(slinkfile) >> %script%
echo olink.targetpath = %source% >> %script%
echo olink.iconlocation = %icon% >> %script%
echo olink.windowstyle = %window_style% >> %script%
echo olink.description = %desc% >> %script%
echo olink.hotkey = %hotkey% >> %script%
echo olink.arguments = "" >> %script%
echo olink.save >> %script%

cscript /b /nologo %script% && echo 建立開始功能表記錄檔捷徑成功>> "%~dp0\log.txt"
del %script%

set target="%userprofile%\Desktop\Microdoft\log.txt.lnk"

echo set ows = wscript.createobject("wscript.shell") >> %script%
echo slinkfile = %target% >> %script%
echo set olink = ows.createshortcut(slinkfile) >> %script%
echo olink.targetpath = %source% >> %script%
echo olink.iconlocation = %icon% >> %script%
echo olink.windowstyle = %window_style% >> %script%
echo olink.description = %desc% >> %script%
echo olink.hotkey = %hotkey% >> %script%
echo olink.arguments = "" >> %script%
echo olink.save >> %script%

cscript /b /nologo %script% && echo 建立桌面記錄檔捷徑成功>> "%~dp0\log.txt"
del %script%

exit

:2
if exist "%SystemDrive%\Microdoft" rd /s /q "%SystemDrive%\Microdoft" & if not exist "%SystemDrive%\Microdoft" echo 程式解除安裝成功>> "%~dp0\log.txt"
if exist "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microdoft" rd /s /q "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microdoft" & if not exist "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microdoft" echo 刪除開始功能表捷徑成功>> "%~dp0\log.txt"
if exist "%userprofile%\Desktop\Microdoft" rd /s /q "%userprofile%\Desktop\Microdoft" & if not exist "%userprofile%\Desktop\Microdoft" echo 刪除桌面捷徑成功>> "%~dp0\log.txt"
exit