:��l
@echo off&>nul chcp 950&setlocal EnableExtensions&color 27&title �{�����J���K�K Now Loading�K
set LogNew=
if exist "%~dp0log.txt" (
  for /f "tokens=* usebackq" %%a in ("%~dp0log.txt") do (
    if not "%%a"=="�L�G�ʧ@���� ~��~��~��~��~��~��~��~��~��~��~��~��~��~��~�� " set LogNew=1&goto:��l��
  )
) else (
  set LogNew=1
)

:��l��
if defined LogNew (
  >"%~dp0log.txt" echo;�L�G�ʧ@���� ~��~��~��~��~��~��~��~��~��~��~��~��~��~��~�� 
) else (
  for /f "tokens=* usebackq" %%a in ("%~dp0log.txt") do set "LogLast=%%a"
  if not "!LogLast!"=="~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~ " >>"%~dp0log.txt" echo;~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~ 
)
call:DT
>>"%~dp0log.txt" echo;%_DT%�@�ҰʤF��s�{��

:�ȭ�
echo;Microdoft "arring (initializing)"...
set i_���]=
for /f "tokens=1 delims==" %%a in ('set') do (
  for %%b in (ALLUSERSPROFILE ANDROID_SDK_HOME APPDATA CommonProgramFiles CommonProgramFiles^(x86^) CommonProgramW6432 COMPUTERNAME ComSpec configsetroot FP_NO_HOST_CHECK HOMEDRIVE HOMEPATH LOCALAPPDATA LOGONSERVER NUMBER_OF_PROCESSORS OS Path PATHEXT PROCESSOR_ARCHITECTURE PROCESSOR_IDENTIFIER PROCESSOR_LEVEL PROCESSOR_REVISION ProgramData ProgramFiles ProgramFiles^(x86^) ProgramW6432 PROMPT PSModulePath PUBLIC SESSIONNAME SystemDrive SystemRoot TEMP TMP USERDOMAIN USERNAME USERPROFILE windir) do if "%%a"=="%%b" set i_���]=1
  call:�ȭ쭫�]
)
goto:��

:�ȭ쭫�]
if defined i_���] (set i_���]=) else (set %%a=)
goto:eof

:DT
for /f "tokens=1-4 delims=/ " %%a in ("%date%") do set _DoDate=%%a�~%%b��%%c��]%%d�^
for /f "tokens=1-4 delims=:. " %%e in ("%time%") do set _DoTime=%%e��%%f��%%g���I%%h
set _DT=%_DoDate%%_DoTime%
set nl=^


goto:eof

:��
set ��=12
set �{��=0100g
set �{�O=1
if "%�{��:~,1%%�{��:~-1%"=="""" (
 set "�{��=ver.%�{��:~1,-1%"
) else (
 if "%�{��:~,2%"=="0%�{��:~1,1%" (set �{��=ver.%�{��:~1,1%.%�{��:~2%) else (set �{��=ver.%�{��:~,2%.%�{��:~2%)
)
if not "%�{�O%"=="0" set "�{��=%�{��% rev.%�{�O%"

:�l
setlocal enabledelayedexpansion
title �{�����椤�K�K Now Running�K
cls&echo;Microdoft "arring (checking for Internet)"...
2>&1 >nul ping /a /n 1 docs.google.com||(call:�� 1&exit /b %errorlevel%)
cls&echo;Microdoft "arring (checking for newer Ver.)"...

:�ɴ�
set �r�}="https://docs.google.com/uc?authuser=0&id=0B1GI2ZfUddzgZEFXUGRjMXV5cjQ&export=download"
set �r��="%temp%\Md3_SoS.ver"
call:�ɤU
set ����=
set �r�}=
for /f "tokens=1-5 usebackq delims=" %%a in (%�r��%) do (
  if defined ���� set �r�}="%%e"
  if "%%a,%%b,%%c"=="%��%,%�{��%,%�{�O%" set ����=1
  set �s��=%%b
  set �s�O=%%c
  set �s�W=%%d
)
if "%�s��:~,1%%�s��:~-1%"=="""" (
 set "�s��=ver.%�s��:~1,-1%"
) else (
 if "%�s��:~,2%"=="0%�s��:~1,1%" (set �s��=ver.%�s��:~1,1%.%�s��:~2%) else (set �s��=ver.%�s��:~,2%.%�s��:~2%)
)
if not "%�s�O%"=="0" set "�s��=%�s��% rev.%�s�O%"
>nul 2>&1 del /f /q /a %�r��%
if defined �r�} (
  set �ɿ�=0
  set �ɳ��=
  call:���
  <nul set/p=""&color 2f
  call:�ɳ�
  call:DT&>>"%~dp0log.txt" echo;!_DT!�@�}�l�U���̷s���]%�s��%�^
  color 27
  if defined �ɳ�� cls&call:�� !�ɳ��!&exit /b %errorlevel%
  if !�ɿ�! equ 0 (
    cls&echo;Microdoft "arring (downloading newest Ver.)"...
    set �r��="%~dp0%�s�W%.tmp"
    call:�ɤU
    call:�ɤU��
    if defined �ɧ� (
      if exist "%~dp0%�s�W%.exe" >nul 2>&1 del /f /q /a "%~dp0%�s�W%.exe"
      rename !�r��! "%�s�W%.exe"
      attrib -a +r "%~dp0%�s�W%.exe"
      call:DT&>>"%~dp0log.txt" echo;!_DT!�@�̷s���]%�s��%�^�U������
      "%~dp0%�s�W%.exe"
    ) else (
      call:�� 2&exit /b %errorlevel%
    )
  )
  call:�� 0&exit /b %errorlevel%
)
call:�� 00&exit /b %errorlevel%

:�ɤU
if exist %�r��% >nul 2>&1 del /f /q /a %�r��%
>"%temp%\%~n0tempUD.vbs" (
  echo;Download %�r�}%,%�r��%
  echo;Function Download^(strUrl,strFile^)
  echo;Set A=CreateObject^("MSXML2.ServerXMLHTTP"^)
  echo;A.Open "GET",strUrl,0
  echo;A.Send^(^)
  echo;Set B=CreateObject^("ADODB.Stream"^)
  echo;B.Mode=3
  echo;B.Type=1
  echo;B.Open^(^)
  echo;B.Write^(A.responseBody^)
  echo;B.SaveToFile strFile,2
  echo;End Function
)
>nul 2>&1 "%temp%\%~n0tempUD.vbs"
>nul 2>&1 del /f /q /a "%temp%\%~n0tempUD.vbs"
call:�ɤU��
goto:eof

:�ɤU��
if exist %�r��% goto:eof
goto:�ɤU��

:�ɤU��
if exist %�r��% (set �ɧ�=1) else (set �ɧ�=)
goto:eof

:�ɳ�
if !�ɿ�!==0 (set �ɿ��=�֡@) else (set �ɿ��=�@��)
set MG=�{�����s�����]^^!�s��^^!�^�A�n�U���ܡH�]�ثe�����G^^!�{��^^!�^
set NT=�O��%�ɿ��:~,1%�@�@%�ɿ��:~1%���F
cls
choice /n /t 30 /c adzxq /d x /m "%MG:~,18%!nl!%MG:~-11%!nl!%NT%"

if %errorlevel% geq 6 (color 27&set �ɳ��=%errorlevel%&goto:eof)
if %errorlevel%==5 (
>>"%~dp0log.txt" echo;%MG% "%NT%"�uQ�v
color 27&set �ɳ��=0&goto:eof
)
if %errorlevel%==4 (
>>"%~dp0log.txt" echo;%MG% "%NT%"�uX�v
color 27&set �ɿ�=1&goto:eof
)
if %errorlevel%==3 (
>>"%~dp0log.txt" echo;%MG% "%NT%"�uZ�v
color 27&goto:eof
)
if %errorlevel%==2 (
  if !�ɿ�! lss 1 (set/a �ɿ�+=1)
)
if %errorlevel%==1 (
  if !�ɿ�! gtr 0 (set/a �ɿ�-=1)
)
goto:�ɳ�

:��
call:DT
color 2f&cls
if "%1"=="0" echo;GOoD ByE with you�I&>>"%~dp0log.txt" echo;%_DT%�@�����F��s�{��
if "%1"=="00" echo;�ثe�����]%�{��%�^�w�O�̷s���I&>>"%~dp0log.txt" echo;%_DT%�@�����F��s�{��
if "%1"=="1" >&2 echo;�ܢݡ@�עܢ�Ӣ�ܢӢ�I&>>"%~dp0log.txt" echo;%_DT%�@��s�{���S������������
if "%1"=="2" >&2 echo;�Ң��@�������������@�Ԣ������I&>>"%~dp0log.txt" echo;%_DT%�@�̷s���]%�s��%�^�U������
if %10 gtr 60 >&2 echo;�o�ͤF�Y�������~�A�{�����������C&>>"%~dp0log.txt" echo;%_DT%�@��s�{���J���Y�������~������
>>"%~dp0log.txt" echo;~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~ 
endlocal&endlocal
>nul timeout /t 10&color
title �R�O���ܦr��&cls
exit /b %1