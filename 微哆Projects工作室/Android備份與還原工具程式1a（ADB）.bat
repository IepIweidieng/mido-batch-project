:BAT start
@title �{�����J���K�K Now Loading�K & echo off & setlocal enableextensions & setlocal enabledelayedexpansion
>nul chcp 950
echo Microdoft "arring"
>nul adb start-server
goto start

:start
cls & color 2f
set page=1
set tpg=�H�H
set dev=�L
set err=0
call:op5
cls
title �ϢҢгƥ��P�٭�u��{�ǡ@Ver.1a
echo ********************************************
echo *                                          *
echo *         �ϢҢгƥ��P�٭�u��{��         *
echo *                                          *
echo ********************************************
echo.
for /f "tokens=1" %%i in ('adb -s %dev% shell getprop ro.product.manufacturer') do (
set MF=%%i
)
for /f "delims=/" %%a in ('adb -s %dev% shell getprop ro.product.model') do (
set MD=%%a
)
for /f "tokens=1" %%x in ('adb -s %dev% shell getprop ro.build.version.release') do (
set RL=%%x
)
if "%MF:~0,5%"=="error" set /a err+=1
if "%MD:~0,5%"=="error" set /a err+=2
if "%RL:~0,5%"=="error" set /a err+=4
if not %err%==0 (
echo.
echo ADB�䤣��˸m�A���ˬd�O�_�w�s���A�T�{�X�ʬO�_�w���T�w�ˡA�ìd��USB�����Ҧ��O�_�w�}�ҡC
>nul pause
goto op6
) else (
for /f "tokens=1 delims=." %%k in ('adb -s %dev% shell getprop ro.build.version.release') do (
if %%k lss 4 (
echo ��p�A�z���˸m�����ä��䴩ADB�ƥ��C
>nul pause
goto op6
) else (
goto main
)))
goto start

:main
cls
title �ϢҢгƥ��P�٭�u��{�ǡ@Ver.1a
echo ********************************************
echo *                                          *
echo *         �ϢҢгƥ��P�٭�u��{��         *
echo *                                          *
echo ********************************************
echo.
echo.
echo 1. �ƥ�����{���θ�ơ]���t�t�Ρ^
echo 2. �ƥ������ �]�]�t�t�����ε{���A���ԷV�ϥΡI�^
echo 3. �ƥ�������ε{��
echo 4. �٭���
echo 5. �s�u���ա���ܤ��
echo 6. ���}
echo.
echo.     
choice /n /c 123456 /m "�п�J�N���]���㢵�^"
set op=%errorlevel%
if %op%==5 (
set page=1
set tpg=�H�H
call:op5
) else (
set apk=
set stor=
goto op%op%
)
goto main

:op1
cls
title �ƥ�����{���θ��
echo �Ы��w�s�ɸ��|�P�ɦW�C
set /p input="�Y�b�P�ؿ��A�u�ݿ�J�ɦW�]���ݿ�J�u.ab�v�^�C"
echo.
choice /n /c zx /m "�O�_�n�ƥ����ε{���H�]Z��X�^"
if %errorlevel%==1 set apk=y
choice /n /c zx /m "�O�_�n�s�P�O�Хd�]�x�s�Ŷ��^��Ƥ@�_�ƥ��H�]Z��X�^"
if %errorlevel%==1 set stor=y
color 27
if %apk% ==y (
if %stor%==y (
adb -s %dev% backup -apk -shared -nosystem -all -f "%input%.ab"
) else (
adb -s %dev% backup -apk -noshared -nosystem -all -f "%input%.ab"
)) else (
if %stor%==y (
adb -s %dev% backup -shared -nosystem -all -f "%input%.ab"
) else (
adb -s %dev% backup -noshared -nosystem -all -f "%input%.ab"
))
goto main

:op2
cls & color c0
title �ƥ������
echo ĵ�i�I�I�I
echo �ƥ��t���t�γn�骺�ɮ׮ɡA���M�|�@�ֳƥ������t�γ]�w�M�p���H����T�A���b�٭�ɦ��@�w�����I�C
echo �ӳƥ��ɤ��o�ϥΦb���P�n�骩���W�A�󤣱o�ϥΦb���P����W�A
echo �_�h�i��|�o�ͨt�γn��L�k����άO����ܿj�����p�C
echo.
echo �t�~�A�礣�O�ҨϥΦb�ۦP�n�骩�����ۦP����W�N���|�X���D�C
echo.
choice /n /c zx /m "�z�T�w�n�~�����ܡH�]Z��X�^"
if %errorlevel%==1 (
goto op21
) else (
cls
goto main
)
goto op2

:op21
cls
echo �Ы��w�s�ɸ��|�P�ɦW�C
set /p input="�Y�b�P�ؿ��A�u�ݿ�J�ɦW�]���ݿ�J�u.ab�v�^ "
echo.
choice /n /c zx /m "�O�_�n�ƥ����ε{���H�]Z��X�^"
if %errorlevel%==1 set apk=y
choice /n /c zx /m "�O�_�n�s�P�O�Хd�]�x�s�Ŷ��^��Ƥ@�_�ƥ��H�]Z��X�^"
if %errorlevel%==1 set stor=y
color 27
if %apk% ==y (
if %stor%==y (
adb -s %dev% backup -apk -shared -system -all -f "%input%.ab"
 ) else (
adb -s %dev% backup -apk -noshared -system -all -f "%input%.ab"
)) else (
if %stor%==y (
adb -s %dev% backup -shared -system -all -f "%input%.ab"
) else (
adb -s %dev% backup -noshared -system -all -f "%input%.ab"
)) 
goto main

:op3
cls
title �ƥ�������ε{��
echo �п�J�A�Q�n�ƥ������ε{�����O�W�١C
set /p name="�`�N�I�ëD���ε{���������W�١I "
echo.
echo �п�J�ƥ��ɦs����|�P�ɦW�C
set /p save="�Y�b�P�ؿ��A�u�ݿ�J�ɦW�]���ݿ�J�u.ab�v�^�C"
echo.
choice /n /c zx /m "�O�_�n�ƥ����ε{���H�]Z��X�^"
if %errorlevel%==1 set apk=y
color 27
if %apk% ==y (
adb -s %dev% backup -apk %name% -f "%save%.ab"
) else (
adb -s %dev% backup %name% -f "%save%.ab"
) 
>nul pause
goto main

:op4
cls
title �٭���
echo �п�J�ƥ��ɦs����|�P�ɦW�C
set /p input="�Y�b�P�ؿ��A�u�ݿ�J�ɦW�]���ݿ�J�u.ab�v�^�C"
color 27
adb -s %dev% restore "%input%.ab"
goto main

:op5
cls
title �s�u���ա���ܤ���@��%page%��%tpg%���@�ثe�˸m�G%dev%
set tm=0
set /a skip=1+(page-1)*10
echo �Ǹ��@�˸m�@����
for /f "skip=%skip% tokens=1,2" %%A in ('adb devices') do (
set /a tm+=1
set D!tm!=%%A
echo !tm!�D�@%%A�@%%B
)
if !tm!==0 echo �S���i�θ˸m�I & >nul pause & set err=8 & goto eof:
set /a tpg=(tm-tm%10)/10+1
title �s�u���ա���ܤ���@��%page%��%tpg%���@�ثe�˸m�G%dev%
choice /n /c 0123456789zx /m "��J�Ǹ��H��ܡ]���㢸�^�A������^�A�uZ�v�U�@���A�uX�v�W�@��"
if %errorlevel%==11 (
if %page% geq %tpg% (
set page=%tpg%
) else (
set /a page+=1
)
goto op5
)
if %errorlevel%==12 (
if %page% leq 1 (
set page=1
) else (
set /a page-=1
)
goto op5
)
if %errorlevel%==2 set dev=%D1%
if %errorlevel%==3 set dev=%D2%
if %errorlevel%==4 set dev=%D3%
if %errorlevel%==5 set dev=%D4%
if %errorlevel%==6 set dev=%D5%
if %errorlevel%==7 set dev=%D6%
if %errorlevel%==8 set dev=%D7%
if %errorlevel%==9 set dev=%D8%
if %errorlevel%==10 set dev=%D9%
if "!dev!"=="" set dev=�L
if not "!dev!"=="�L" (echo ��ܸ˸m���\�I & if %errorlevel%==1 goto :eof) else (
echo �S�����T��ܸ˸m�I
)
>nul pause
goto op5

:op6
cls & color 27
2>&1 >nul adb kill-server
exit /b %err%