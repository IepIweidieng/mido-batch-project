@echo off
>nul chcp 950
call:�պ�
if %err%==0 goto ��
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
echo ���F����ϥΥ�ñ�p���X�ʵ{���A�Шϥγo�ӵ{���ɮסC
>nul timeout /t 5
goto ���
:���
cls
set /p �Ҧ�=�п�JON��OFF�]ON:���}�ʦL�AOFF:�ʦL�^
if %�Ҧ�%==ON goto �ʦL
if %�Ҧ�%==OFF goto �ʦL
goto ���

:�ʦL
cls
echo �B�z�Y�N�i��C
>nul pause
BCDedit /set loadoptions DDISABLE_INTEGRITY_CHECKS
if %errorlevel%==0 (
BCDedit /set TESTSIGNING %�Ҧ�%
if %errorlevel%==0 (
echo �Y�N���s�ҰʡC
>nul pause
shutdown /r /t 1
exit
)
)
if not %errorlevel%==0 echo �o�Ϳ��~�C
exit