@title 程式載入中…… Now Loading... & echo off
>nul chcp 950
goto start

:start
echo %~0
echo %~f0
echo %~d0
echo %~p0
echo %~n0
echo %~x0
echo %~s0
echo %~a0
echo %~t0
echo %~z0
echo %~$path:0
echo %~dp0
echo %~nx0
echo %~dp$path:0
echo %~ftza0
>nul timeout /t 10
exit /b