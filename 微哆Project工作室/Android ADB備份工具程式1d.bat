:BAT start
@echo off&>nul chcp 950&setlocal enableextensions enabledelayedexpansion
title �{�����J���K�K Now Loading�K
echo Microdoft "arring"
>nul adb start-server
goto start

:start
cls&color 2f
set page=1
set tpg=�H�H
set dev=�L
set err=0
call:op6
cls
title �ϢҢгƥ��P�٭�u��{�ǡ@Ver.1d
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
if "%MF:~0,5%"=="error" set/a err+=1
if "%MD:~0,5%"=="error" set/a err+=2
if "%RL:~0,5%"=="error" set/a err+=4
if not %err%==0 (
  echo.
  echo ADB�䤣��˸m�A���ˬd�O�_�w�s���A�T�{�X�ʬO�_�w���T�w�ˡA�ìd��USB�����Ҧ��O�_�w�}�ҡC
  >nul pause
  goto op7
) else (
  for /f "tokens=1 delims=." %%k in ('adb -s %dev% shell getprop ro.build.version.release') do (
   if %%k lss 4 (
    echo ��p�A�z���˸m�����ä��䴩ADB�ƥ��C
    >nul pause
    goto op7
   ) else (
    goto main
   )))
goto start

:main
cls&color 2f
title �ϢҢгƥ��P�٭�u��{�ǡ@Ver.1d
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
echo 5. �]�w���ε{���w�]�w�˦�m
echo 6. �s�u���ա���ܤ��
echo 7. ���}
echo.
echo.     
choice /n /c 1234567 /m "�п�J�N���]���㢶�^"
set op=%errorlevel%
if %op%==6 (
  set page=1
  set tpg=�H�H
  call:op6
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
set input=
set/p input="�Y�b�P�ؿ��A�u�ݿ�J�ɦW�]���ݿ�J�u.ab�v�^�C"
if not defined input goto op1
echo.
choice /n /c zx /m "�O�_�n�ƥ����ε{���H�]Z��X�^"
if %errorlevel%==1 (set apk=y) else (set apk=)
choice /n /c zx /m "�O�_�n�s�P�O�Хd�]�x�s�Ŷ��^��Ƥ@�_�ƥ��H�]Z��X�^"
if %errorlevel%==1 (set stor=y) else (set stor=)
color 27
if defined apk (
  if defined stor (
   adb -s %dev% backup -apk -shared -nosystem -all -f "%input%.ab"
  ) else (
   adb -s %dev% backup -apk -noshared -nosystem -all -f "%input%.ab"
  )
) else (
  if defined stor (
   adb -s %dev% backup -shared -nosystem -all -f "%input%.ab"
  ) else (
   adb -s %dev% backup -noshared -nosystem -all -f "%input%.ab"
  ))
echo �ƥ������C&>nul pause
goto main

:op2
cls&color c0
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
set input=
set/p input="�Y�b�P�ؿ��A�u�ݿ�J�ɦW�]���ݿ�J�u.ab�v�^ "
if not defined input goto op21
echo.
choice /n /c zx /m "�O�_�n�ƥ����ε{���H�]Z��X�^"
if %errorlevel%==1 (set apk=y) else (set apk=)
choice /n /c zx /m "�O�_�n�s�P�O�Хd�]�x�s�Ŷ��^��Ƥ@�_�ƥ��H�]Z��X�^"
if %errorlevel%==1 (set stor=y) else (set stor=)
color 27
if defined apk (
  if defined stor (
   adb -s %dev% backup -apk -shared -system -all -f "%input%.ab"
  ) else (
   adb -s %dev% backup -apk -noshared -system -all -f "%input%.ab"
  )
) else (
  if defined stor (
   adb -s %dev% backup -shared -system -all -f "%input%.ab"
  ) else (
   adb -s %dev% backup -noshared -system -all -f "%input%.ab"
  ))
echo �ƥ������C&>nul pause
goto main

:op3
cls
title �ƥ�������ε{��
echo �п�J�A�Q�n�ƥ������ε{�����O�W�١C
set name=
set/p name="�`�N�I�ëD���ε{���������W�١I "
if not defined name goto op3
echo.

:op31
echo �п�J�ƥ��ɦs����|�P�ɦW�C
set save=
set/p save="�Y�b�P�ؿ��A�u�ݿ�J�ɦW�]���ݿ�J�u.ab�v�^�C"
if not defined save goto op31
echo.
choice /n /c zx /m "�O�_�n�ƥ����ε{���H�]Z��X�^"
if %errorlevel%==1 (set apk=y) else (set apk=)
color 27
if defined apk (
  adb -s %dev% backup -apk %name% -f "%save%.ab"
) else (
  adb -s %dev% backup %name% -f "%save%.ab"
) 
echo �ƥ������C&>nul pause
goto main

:op4
cls
title �٭���
echo �п�J�ƥ��ɦs����|�P�ɦW�C
set input=
set/p input="�Y�b�P�ؿ��A�u�ݿ�J�ɦW�]���ݿ�J�u.ab�v�^�C"
if not defined input goto op4
color 27
adb -s %dev% restore "%input%.ab"
echo �٭짹���C&>nul pause
goto main

:op5
cls
title �]�w���ε{���w�]�w�˦�m
echo �п�J�ƥ��ɦs����|�P�ɦW�C
set appde=
choice /n /c 120 /m "�]0�G�Ѩt�ο�ܡA1�G�����x�s�Ŷ��A2�GSD�d�^�C"
if %errorlevel% gtr 3 goto op5
if %errorlevel% lss 1 goto op5
set/a "appde=%errorlevel%%%3"
color 27
adb -s %dev% shell pm set-install-location %appde%
echo �]�w����^(%appde%^)�C&>nul pause
goto main

:op6
cls
title �s�u���ա���ܤ���@��%page%��%tpg%���@�ثe�˸m�G%dev%
set tm=0
set/a skip=1+(page-1)*10
echo �Ǹ��@�˸m�@����
for /f "skip=%skip% tokens=1,2" %%A in ('adb devices') do (
  set/a tm+=1
  set D!tm!=%%A
  echo !tm!�D�@%%A�@%%B
)
if !tm!==0 echo �S���i�θ˸m�I&>nul pause&set err=8&goto :eof
set/a tpg=(tm-tm%10)/10+1
title �s�u���ա���ܤ���@��%page%��%tpg%���@�ثe�˸m�G%dev%
choice /n /c 123456789zx0 /m "��J�Ǹ��H��ܡ]���㢸�^�A������^�A�uZ�v�U�@���A�uX�v�W�@��"
if %errorlevel%==10 (
  if %page% geq %tpg% (
   set page=%tpg%
  ) else (
   set/a page+=1
  )
  goto op6
)
if %errorlevel%==11 (
  if %page% leq 1 (
   set page=1
  ) else (
   set/a page-=1
  )
  goto op6
)
if %errorlevel% leq 9 set dev=!D%errorlevel%!
if "!dev!"=="" set dev=�L
if not "!dev!"=="�L" (echo ��ܸ˸m���\�I&if %errorlevel%==12 goto :eof) else (
  echo �S�����T��ܸ˸m�I
)
>nul pause
goto op6

:op7
cls&color 27
2>&1 >nul adb kill-server
exit /b %err%