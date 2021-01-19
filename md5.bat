@title 
@echo off
>nul chcp 950
echo 不完全的MD5加密算法。
>nul timeout /t 5
cls
set /p X=輸入X值
set /p Y=輸入Y值
set /p Z=輸入Z值
set /a a=(X"&"Y)"|"(((X*-1)-1)"&"Z)
set /a b=(X"&"Z)"|"(Y"&"((Z*-1)-1))
set /a c=X"^"Y"^"Z
set /a d=Y"^"(X"&"((Z*-1)-1))
echo %a%%b%%c%%d%
>nul timeout /t 30
exit /b