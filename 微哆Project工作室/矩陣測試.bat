@echo off&>nul chcp 950&setlocal EnableExtensions EnableDelayedExpansion
for /f %%a in ('copy "%~f0" nul /z') do set "cr=%%a"
if not "%1"=="" goto:restart
set LogNew=
if exist "%~dp0�x�}����.txt" (
 for /f "tokens=* usebackq" %%a in ("%~dp0�x�}����.txt") do (
  if not "%%a"=="�L�G�ʧ@���� ~��~��~��~��~��~��~��~��~��~��~��~��~��~��~�� " set LogNew=1
  goto:BAT start continue
 )
) else (
 set LogNew=1
)
goto:BAT start continue

:BAT start continue
if defined LogNew (>"%~dp0�x�}����.txt" echo;�L�G�ʧ@���� ~��~��~��~��~��~��~��~��~��~��~��~��~��~��~�� ) else (
 for /f "tokens=* usebackq" %%a in ("%~dp0�x�}����.txt") do set "LogLast=%%a"
 if not "!LogLast!"=="~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~ " >>"%~dp0�x�}����.txt" echo;~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~ 
)

:restart
set p=
for /f "tokens=1 delims==" %%a in ('"2>nul" set n[') do set "%%a="

:start
set n=
if "%1"=="" (title �{�����椤�K�K Now Running...&color 2f&cls&echo;�O���ƦC%Bign%%Silentn%%Trackn%&set/p n="��J��ơϢӢ�������@��ܼƦC���������ƭȡF��J�Ӣ�������@�����{���@") else (set n=%1)
if not defined n exit/b
if "%n%"=="B" set "Big=B"&set "Bign=�@BIG NUMBER^(i.e.,�Un�U^>500^) MODE ON"&goto:start
if "%n%"=="F" set "Big="&set "Bign="&goto:start
if "%n%"=="S" set "Silent=S"&set "Silentn=�@SILENT MODE ON"&goto:start
if "%n%"=="L" set "Silent="&set "Silentn="&goto:start
if "%n%"=="T" set "Track=T"&set "Trackn=�@TRACK MODE ON"&goto:start
if "%n%"=="I" set "Track="&set "Trackn="&goto:start
if "%n%"=="R" goto:restart
set/a s=0,n*=1
if %n% lss 0 (set ps=-&set/a "s=(n-1)%%2,n*=-1") else (set ps=)
2>nul >nul set n[%n%][&&goto:finish%Big%%Silent%
if not defined p goto:F
if !n! lss !p! goto:F
if !n! gtr !p! goto:G%Big%%Silent%

:finish
:finishB
<nul set/p="%ps%%n%/%ps%%p%!cr!"
echo;

:finishBS
:finishS
>>"%~dp0�x�}����.txt" <nul set/p="�O���ƦC��%ps%%n%�� "
<nul set/p="%s:~,-1%"&>>"%~dp0�x�}����.txt" <nul set/p="%s:~,-1%"
set/a mn=0
for /f "tokens=3 delims=[]" %%a in ('"2>nul" set n[%n%][') do (
 if %%a gtr !mn! set mn=%%a
)
for /l %%a in (%mn%,-1,1) do (
 if %mn% gtr %%a (
  for /l %%b in (1,1,7) do (
   if "!n[%n%][%%a]:~%%b!"=="" <nul set/p="0"&>>"%~dp0�x�}����.txt" <nul set/p="0"
  )
 )
 <nul set/p="!n[%n%][%%a]!"&>>"%~dp0�x�}����.txt" <nul set/p="!n[%n%][%%a]!"
)
echo;&>>"%~dp0�x�}����.txt" echo;
if "%1"=="" >nul timeout /t 1024&goto:start
exit/b

:F
set n[0][1]=0
set n[1][1]=1
set/a p=1,pl=p-1,po=p-2
goto:G%Big%%Silent%

:G
<nul set/p="%ps%%p%/%ps%%n%!cr!"
goto:GS

:GB
<nul set/p="%ps%%p%/%ps%%n%!cr!"

:GBS
for /f "tokens=1 delims==" %%a in ('"2>nul" set n[%po%][') do set %%a=

:GS
set/a p+=1,pl+=1,po+=1,m=1,ml=0
for /f "tokens=1 delims==" %%a in ('"2>nul" set n[%p%][') do set %%a=

:plus
set/a n[%p%][%m%]+=n[%pl%][%m%]+n[%po%][%m%]
set/a m+=1,ml+=1
set/a "n[%p%][%m%]+=n[%p%][%ml%]/100000000,n[%p%][%ml%]%%=100000000"
if not defined n[%pl%][%m%] if not defined n[%po%][%m%] (
 if !n[%p%][%m%]!==0 set n[%p%][%m%]=&set/a m-=1
 if defined Track (
  >>"%~dp0�x�}����.txt" <nul set/p="�O���ƦC��%ps%%p%�� %s:~,-1%"
  for /l %%a in (!m!,-1,1) do (
   if !m! gtr %%a (
    for /l %%b in (1,1,7) do (
     if "!n[%p%][%%a]:~%%b!"=="" >>"%~dp0�x�}����.txt" <nul set/p="0"
    )
   )
   >>"%~dp0�x�}����.txt" <nul set/p="!n[%p%][%%a]!"
  )
  >>"%~dp0�x�}����.txt" echo;
 )
 if !p! lss !n! goto:G%Big%%Silent%
 goto:finish%Big%%Silent%
)
goto:plus