@title 
@echo off
>nul chcp 950
echo ��������MD5�[�K��k�C
>nul timeout /t 5
cls
set /p X=��JX��
set /p Y=��JY��
set /p Z=��JZ��
set /a a=(X"&"Y)"|"(((X*-1)-1)"&"Z)
set /a b=(X"&"Z)"|"(Y"&"((Z*-1)-1))
set /a c=X"^"Y"^"Z
set /a d=Y"^"(X"&"((Z*-1)-1))
echo %a%%b%%c%%d%
>nul timeout /t 30
exit /b