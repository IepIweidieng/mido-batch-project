@title �{�����J���K�K Now Loading�K&echo off&setlocal enableextensions&color 27
>nul chcp 950

:ValueInitializor
echo Microdoft "arring (initializing)"...
set i_Reset=
for /f "tokens=1 delims==" %%a in ('set') do (
        for %%b in (ALLUSERSPROFILE ANDROID_SDK_HOME APPDATA CommonProgramFiles CommonProgramFiles^(x86^) CommonProgramW6432 COMPUTERNAME ComSpec configsetroot FP_NO_HOST_CHECK HOMEDRIVE HOMEPATH LOCALAPPDATA LOGONSERVER NUMBER_OF_PROCESSORS OS Path PATHEXT PROCESSOR_ARCHITECTURE PROCESSOR_IDENTIFIER PROCESSOR_LEVEL PROCESSOR_REVISION ProgramData ProgramFiles ProgramFiles^(x86^) ProgramW6432 PROMPT PSModulePath PUBLIC SESSIONNAME SystemDrive SystemRoot TEMP TMP USERDOMAIN USERNAME USERPROFILE windir) do if "%%a"=="%%b" set i_Reset=1
        call:ValueInitializeReseter
)
goto :Logger

:ValueInitializeReseter
if defined i_Reset (set i_Reset=) else (set %%a=)
goto :eof

:Logger
set nl=^^^

^


if "%2" equ "para2" goto :para2

set CurrectVersion=0001g
if "%CurrectVersion:~,-3%"=="0%CurrectVersion:~1,-3%" (set CVer=%CurrectVersion:~1,-3%) else (set CVer=%CurrectVersion:~,-3%)
set CVer=%CVer%.%CurrectVersion:~2%

>"%~dpn0log.txt" echo;�L�G�ʧ@���� --------------------------------------------- 

cls&echo Microdoft "arring (setting)"...

::�]�w�Ѽ�--------------------------------------
:boast
set        "d-v=for %%A in (!str!) do set/a one=0x%%A,x=one/4+n,y=one%%4+m&(for %%B in ("r!x!.!y!") do if "!%%~B!" equ "�@" (set r!x!.!y!=��) else (set err=1))"
::���d-v�A��str�����ϼмƾڡA��m���`���ЪŶ����A�p�G���л\�A�herr=1�C�եΤ�k�G(%d-v%)
::�ܶq�ϥΡGone  x  y

set "d-e=set aec=!cr! �@�@�@�z�w�w�w�w�w�w�w�w�w�w�{�@�@!ebu1!!cr!&(for /l %%A in (2,1,#) do for %%B in ("�x!ebuf:@=%%A!!ebu%%A!!mark%%A!") do set aec=!aec!�@�@�@ %%~B!cr!)&set aec=!aec!�@�@�@ �|�w�w�w�w�w�w�w�w�w�w�}�@�@!ebu22!&cls&echo;!aec!"
::���d-e�A���`���ЪŶ���ܥX�ӡA�եΤ�k�G(%d-e:#=���%)
set ebu4=�U�@�@��iscore�@!hiscores!!hiscoren!
set ebu5=�U�@�@�@�@�@ !scores!!jiafenn!
set ebu6=�U�@�@��core�@�@!scores!!scoren!
set ebu8=�u�wnext�w��
set ebu13=�u�whold���t
set ebu18=�u�w�w�w�w��
set ebu19=�U�@!cbn!
set ebu20=�U�@!tcnn!
set mark8=�@�U����
set mark9=�@�����@�w��
set mark10=�@�U�U��@�x�@��
set mark11=�@�@�@���w�r�@�@
set mark12=�@�~��f�@�@���B
set mark13=�@�x���K
set mark14=�@���p�K Tension
set mark15=�@of�@�@�~�w��,
set mark16=�@�@�@�@�x�@�Q��
set mark17=�@�@���D���@�@�I��
set mark18=�@�@�{�F�� Tetris
set guan=1
set guoguan=0
set hiscoren=0
set scoren=0
set scoret=0
set tc=0
set tcn=0

if not exist "%~s0score.dat" (>"%~s0score.dat" echo 100000 200000 300000 400000 500000)
>"%~s0aswd.dat" echo 0 0
set/a err=0
for /f "tokens=1-5 usebackq" %%a in ("%~s0score.dat") do (
        if %%a0 lss 1000000 (set hiscoren0=100000) else (set hiscoren0=%%a)
        if %%b0 lss 2000000 (set hiscoren1=200000) else (set hiscoren1=%%b)
        if %%c0 lss 3000000 (set hiscoren2=300000) else (set hiscoren2=%%c)
        if %%d0 lss 4000000 (set hiscoren3=400000) else (set hiscoren3=%%d)
        if %%e0 lss 5000000 (set hiscoren4=500000) else (set hiscoren4=%%e)
)

set cr=�@^

::���צW�٩w�q
set diff0=�� �� �� �B
set diff1=�� �� �� �� �� ��
set diff2=�� �� �� ��
set diff3=�� �A �� �� �� �� �� ��
set diff4=�� �� �� �� �@ �� �� �� ��

::���שw�q
::easy
set down0=60
set down0hi=40
::�U���t��
set tncrowd0=2
::����T�w�ɶ������T��
set tncrowu0=1
::����T�w�ɶ��Y�u�T��
set tnchi0=2
::�T�w�ɶ�
set downs0=7
set downs0hi=5
::�[�t�ɤU���t��
set break0=100
::���檺�𮧮ɶ�

set guoguan0=30
::�C���d�����
set tchi0=300
::�C���`���
set jiafenm0=1
::����[������v

::normal
set down1=40
set down1hi=25
set tncrowd1=2
set tncrowu1=1
set tnchi1=2
set downs1=5
set downs1hi=3
set guoguan1=50
set tchi1=500
set jiafenm1=2
set break1=90

::hard
set down2=10
set down2hi=6
set tncrowd2=2
set tncrowu2=3
set tnchi2=8
set downs2=2
set downs2hi=1
set guoguan2=80
set tchi2=800
set jiafenm2=3
set break2=80

::exciting
set down3=2
set down3hi=1
set tncrowd3=1
set tncrowu1=9
set tnchi3=20
set downs3=0.5
set downs3hi=0.25
set guoguan3=100
set tchi3=999
set jiafenm3=4
set break3=70

::overwhelm
set down4=1
set down4hi=0.5
set tncrowd4=5
set tncrowu4=1
set tnchi4=24
set downs4=0.25
set guoguan4=100
set tchi4=200
set jiafenm4=9
set break4=80

mode con cols=80 lines=30
echo Microdoft "arring (setting)"...

set test=0
>"%~s0temp.dat" echo 0
start "�ާ@����" "%~f0" /i para2
::�_�ʱ���f

setlocal enabledelayedexpansion

call :MainDoubleDetecter
if defined DoubleDetect endlocal&goto :eof
title �{�����J���K�K Now Loading�K

2>&1 >nul ping /a /n 1 docs.google.com||goto :UpdateFinish
cls&echo Microdoft "arring (checking for newer Ver.)"...

call Update

:UpdateFinish
cls&echo Microdoft "arring (entering game)"...
>nul timeout /t 0 /nobreak
color 2f
goto :restart

:MainDoubleDetecter
set DoubleDetect=
title �{�����椤�K�K Now Running...
for /f "skip=2 tokens=*" %%a in ('tasklist /fi "imagename eq cmd.exe" /fi "windowtitle eq �Xù����� ver. %CVer%"') do (
        >nul timeout /t 1 /nobreak
        set MG=���~�G����P�ɱҰʨ�ӹC���{��
        >>"%~dpn0log.txt" echo;!MG!
        >"%temp%\%~n0temp.vbs" echo;a=msgbox^("�L�G�ʧ@���� --------------------------------------------- "^&vbcrlf^&"!MG:~3!"^&vbcrlf^&"---------------------------------------------------------- " ,16,"log"^)
        >"%temp%\%~n0tmp.vbs" echo;set b=createobject^("wscript.shell"^)
        >>"%temp%\%~n0tmp.vbs" echo;b.run """%temp%\%~n0temp.vbs""","0"
        >nul 2>&1 "%temp%\%~n0tmp.vbs"
        >nul 2>&1 del /f /q /a "%temp%\%~n0tmp.vbs"
        >nul timeout /t 0 /nobreak
        >nul 2>&1 del /f /q /a "%temp%\%~n0temp.vbs"
        set DoubleDetect=1
        >>"%~dpn0log.txt" echo;---------------------------------------------------------- 
        goto :eof
)
goto :eof

:ParaDetecter
set PDti=1!time:~6,2!!time:~9,2!
if !PDti! lss !PDbti! (set/a PDtn=PDti-PDbti+6000) else (set /a PDtn=PDti-PDbti)
if !PDtn! gtr 100 (
        set para=
        for /f "skip=2 tokens=*" %%a in ('tasklist /fi "imagename eq cmd.exe" /fi "windowtitle eq �ާ@����"') do (set para=1)
        for /f "skip=2 tokens=*" %%a in ('tasklist /fi "imagename eq cmd.exe" /fi "windowtitle eq �{�����椤�K�K Now Running..."') do (set para=1)
        if not defined para (start "�ާ@����" %1 /i para2)
        set PDbti=1!time:~6,2!!time:~9,2!
)
goto :eof

:snapshot
>"%~dpn0snapshot.txt" <nul set/p=""
for /f "tokens=* delims=" %%A in ("!aec!") do >>"%~dpn0snapshot.txt" echo;%%A
goto :eof

::�i�J�C��---------------------------------------

:restart
call :MainDoubleDetecter
if defined DoubleDetect endlocal&goto :eof
title �Xù����� ver. %CVer%
set tcnn=
set jiafenn=
set scoreh=0

set ebu2=�U
for /l %%a in (0,1,21) do (for /l %%b in (0,1,9) do set r%%a.%%b=�@)
for /l %%a in (9,1,17) do (if "%%a" neq "13" (set ebu%%a=�U�@�@�@�@�U))
set hiscores=
for /l %%a in (0,1,13) do (if "!hiscoren:~-%%a!" equ "!hiscoren!" (set hiscores= !hiscores!))
set scores=
for /l %%a in (0,1,13) do (if "!scoren:~-%%a!" equ "!scoren!" (set scores= !scores!))
if "!scoret!" neq "0" (goto :gamestart) else (
        set score=0
        set tc=0
        set tcn=0
        set guan=1
)

call Difficulty

:gamestart
set/a guoguantc=guoguan%diffn%
set/a guoguan=guan*guoguantc
set tnchi=!tnchi%diffn%!
if !guoguan! geq !tchi%diffn%! (set guoguan=!tchi%diffn%!)
(%d-e:#=21%)

call Tetris

::�ާ@����----------------------------------------

:para2
title �ާ@����
mode con: cols=40 lines=2
mode con: rate=62 delay=0
call :Para2DoubleDetecter
if defined DoubleDetect endlocal&exit
color 2f
set mode=0
set tn=0

:p_lp
set mode=
for /f "tokens=1 usebackq" %%a in ("%~s0temp.dat") do set mode=%%a
if not defined mode goto :paraexit
if %mode% equ 0 (echo �@�@W�W�� S�U�� Z�T�w X���� Q�h�X�@�@�@) else (echo A�� D�k W/Z�f�� X���� S�[�t C�O�d Q�h�X)
set/a n=n"%%"100+1
::�p�ɾ�
>nul choice /c adwscqzxp /n
0>&1 >nul >"%~s0aswd.dat" echo;%n% %errorlevel%
if %errorlevel% lss 10 if %errorlevel% neq 6 goto :p_lp
set Para2error=%errorlevel%
goto :paraexit

:paraexit
set/a n=n"%%"100+1
0>&1 >nul >"%~s0aswd.dat" echo;%n% %Para2error%
endlocal
title �R�O���ܦr��
exit

:Para2DoubleDetecter
set DoubleDetect=
title �{�����椤�K�K Now Running...
for /f "skip=2 tokens=*" %%a in ('tasklist /fi "imagename eq cmd.exe" /fi "windowtitle eq �ާ@����"') do (
        title �ާ@����
        set MG=���~�G����P�ɱҰʨ�Ӿާ@����
        setlocal enabledelayedexpansion
        >>"%~dpn0log.txt" echo;!MG!
        >"%temp%\%~n0Para2temp.vbs" echo;a=msgbox^("�L�G�ʧ@���� --------------------------------------------- "^&vbcrlf^&"!MG:~3!"^&vbcrlf^&"---------------------------------------------------------- " ,16,"log"^)
        >"%temp%\%~n0Para2tmp.vbs" echo;set b=createobject^("wscript.shell"^)
        >>"%temp%\%~n0Para2tmp.vbs" echo;b.run """%temp%\%~n0Para2temp.vbs""","0"
        >nul 2>&1 "%temp%\%~n0Para2tmp.vbs"
        >nul 2>&1 del /f /q /a "%temp%\%~n0Para2tmp.vbs"
        >nul timeout /t 0 /nobreak
        >nul timeout /t 0 /nobreak
        >nul 2>&1 del /f /q /a "%temp%\%~n0Para2temp.vbs"
        endlocal
        set DoubleDetect=1
        goto :eof
)
title �ާ@����
goto :eof

:store
call Quit