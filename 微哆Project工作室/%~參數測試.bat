@title 程式載入中…… Now Loading... & echo off
>nul chcp 950
goto start

:start
if 1:%1==1: (
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
) else (
echo %~1
echo %~f1
echo %~d1
echo %~p1
echo %~n1
echo %~x1
echo %~s1
echo %~a1
echo %~t1
echo %~z1
echo %~$path:1
echo %~dp1
echo %~nx1
echo %~dp$path:1
echo %~ftza1
)
>nul timeout /t 10
exit /b