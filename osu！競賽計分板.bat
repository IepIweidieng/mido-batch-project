:BAT start
@>nul chcp 950&echo off&setlocal enableextensions
if not "%1"=="ANSI" (cmd /a /c "%~f0" ANSI&color&endlocal&goto:eof)
title �{�����J��...... Now Loading...
echo;��~��ɡ����L�G���q�X�~�����ǡ�~��
>nul timeout /t 1
set VIValue=VIValue ALLUSERSPROFILE ANDROID_SDK_HOME APPDATA CommonProgramFiles CommonProgramFiles^^^(x86^^^) CommonProgramW6432 COMPUTERNAME ComSpec configsetroot FP_NO_HOST_CHECK HOMEDRIVE HOMEPATH LOCALAPPDATA LOGONSERVER NUMBER_OF_PROCESSORS OS Path PATHEXT PROCESSOR_ARCHITECTURE PROCESSOR_IDENTIFIER PROCESSOR_LEVEL PROCESSOR_REVISION ProgramData ProgramFiles ProgramFiles^^^(x86^^^) ProgramW6432 PROMPT PSModulePath PUBLIC SESSIONNAME SystemDrive SystemRoot TEMP TMP USERDOMAIN USERNAME USERPROFILE windir
setlocal enabledelayedexpansion
goto:ValueReseter

:ValueReseter
cls&echo;Microdoft "arring (initializing)"...
set i_Reset=
for /f "tokens=1 delims==" %%a in ('set') do (
 for %%b in (%VIValue%) do if "%%a"=="%%b" set i_Reset=1
 if defined i_Reset (set i_Reset=) else (set %%a=)
)
goto:Logger

:Logger
cls&echo;Microdoft "arring (checking the logfile)"...
set LogNew=
if exist "%~dpn0log.txt" (
 for /f "tokens=* usebackq" %%a in ("%~dpn0log.txt") do (
  if not "%%a"=="�L�G�ʧ@���� ~��~��~��~��~��~��~��~��~��~��~��~��~��~��~�� " set LogNew=1
  goto:BAT start continue
 )
) else (
 set LogNew=1
)
goto:BAT start continue

:BAT start continue
call:CVerSetter
call:DoubleDetecter
if defined DoubleDetect endlocal&endlocal&goto:eof 
if defined LogNew (>"%~dpn0log.txt" echo;�L�G�ʧ@���� ~��~��~��~��~��~��~��~��~��~��~��~��~��~��~�� ) else (
 for /f "tokens=* usebackq" %%a in ("%~dpn0log.txt") do set "LogLast=%%a"
 if not "!LogLast!"=="~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~ " >>"%~dpn0log.txt" echo;~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~ 
)
call:DT
>>"%~dpn0log.txt" echo;%_DT%�@�ҰʤF�p���O�{��
goto:start

:CVerSetter
set CurrectVersion=0100g
set CurrectReversion=1
if "%CurrectVersion:~,1%%CurrectVersion:~-1%"=="""" (
 set "CVer=%CurrectVersion:~1,-1%"
) else (
 if "%CurrectVersion:~,2%"=="0%CurrectVersion:~1,1%" (set CVer=%CurrectVersion:~1,1%) else (set CVer=%CurrectVersion:~,2%)
 set CVer=!CVer!.%CurrectVersion:~2%
)
if not "%CurrectReversion%"=="0" set "CVer=ver. %CVer% rev.%CurrectReversion%"
goto:eof

:DoubleDetecter
set DoubleDetect=
title �{�����椤�K�K Now Running...
for /l %%a in (0,1,2) do (
 >nul timeout /t 0 /nobreak
)
for /f "skip=2 tokens=*" %%a in ('tasklist /fi "imagename eq cmd.exe" /fi "windowtitle eq osu�I�v�ɭp���O %CVer%"') do (
 set MG=���~�G����P�ɱҰʨ�ӭp���O
 call:DT
 >>"%~dpn0log.txt" echo;!_DT!�@!MG!
 >"%temp%\%~n0temp.vbs" echo;a=msgbox^("�L�G�ʧ@���� ~~~~~~~~~~~~~~~~~~~~~~~~~ "^&vbcrlf^&"!MG:~3!"^&vbcrlf^&"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  " ,16,"log"^)
 >"%temp%\%~n0tmp.vbs" echo;set b=createobject^("wscript.shell"^)
 >>"%temp%\%~n0tmp.vbs" echo;b.run """%temp%\%~n0temp.vbs""","0"
 >nul 2>&1 "%temp%\%~n0tmp.vbs"
 >nul 2>&1 del /f /q /a "%temp%\%~n0tmp.vbs"
 >nul timeout /t 0 /nobreak
 >nul 2>&1 del /f /q /a "%temp%\%~n0temp.vbs"
 set DoubleDetect=1
 goto:eof
)
goto:eof

:readsave
mode con cols=44 lines=5
color&title �{�����J��...... Now Loading...
if defined %1 (echo;Microdoft "arring (reloading)"...) else (echo;Microdoft "arring (loading)"...)
if exist "%~dpn0�s��.dat" (
 set i_Read=
 for /f "tokens=1* usebackq delims==" %%a in ("%~dpn0�s��.dat") do (
  for %%c in (%VIValue%) do if "%%a"=="%%c" set i_Read=1
  if defined i_Read (set i_Read=) else (set "%%a=%%b")
 )
)
set prompt=$G
set cls=cls
if !OP2V!==2 (set bellG=) else (set bellG=)
set nl=^^^

^


call:CVerSetter
call:osu�I�v�O.dat
goto:DT

:storesave
if defined MenuType (call:%MenuType%&<nul set/p=�ܢ��@�@�ڢ��������...) else (%cls%&color&echo;Microdoft "arring (saving)"...)
call:PlsScore
2>&1 >nul attrib -r -h "%~dpn0�s��.dat"
>"%~dpn0�s��.dat" <nul set/p=""
attrib +h "%~dpn0�s��.dat"
set i_Store=
for /f "tokens=1 delims==" %%a in ('set') do (
 for %%b in (%VIValue%) do if "%%a"=="%%b" set i_Store=1
 if defined i_Store (set i_Store=) else (>>"%~dpn0�s��.dat" echo;%%a=!%%a!)
)
attrib +r -a -h "%~dpn0�s��.dat"
goto:eof

:DT
for /f "tokens=1-3 delims=/ " %%a in ("%date%") do set _DoDate=%%a/%%b/%%c 
for /f "tokens=1-4 delims=:. " %%e in ("%time%") do set _DoTime=%%e:%%f:%%g.%%h
set _DT=%_DoDate%%_DoTime%
goto:eof

:start
call:readsave
>>"%~dpn0log.txt" echo;%_DT%�@�}�l�F�p���O�{��
goto:ready

:restart
call:storesave&call:readsave 1
>>"%~dpn0log.txt" echo;%_DT%�@���}�F�p���O�{��
goto:ready

:ready
%cls%&color 2f&title osu�I�v�ɭp���O %CVer%
set MG=�{�����
set NT=����@�i�J�p���O�F����@����
echo;�@�@�@�@�@�@�@�@��%MG%��%bellG%%nl%%nl%�@�@�@�@�@%NT:~,8%
choice /n /c zxqr /m "�@�@�@�@�@%NT:~-5%"
(
 call:DT
 if %errorlevel%==4 (
  >>"%~dpn0log.txt" echo;!_DT!�@%MG% "%NT%" R
  set MenuType=
  goto:restart
 )
 if %errorlevel%==3 (
  >>"%~dpn0log.txt" echo;!_DT!�@%MG% "%NT%" Q
  set MenuType=
  call:storesave
  goto:set00
 )
 if %errorlevel%==2 (
  >>"%~dpn0log.txt" echo;!_DT!�@%MG% "%NT%" X
  set MenuType=
  goto:set00
 )
 if %errorlevel%==1 (
  >>"%~dpn0log.txt" echo;!_DT!�@%MG% "%NT%" Z
  set CP=0
  set C=1
  <nul set/p=%bellG%
  call:DoubleDetecter
  if defined DoubleDetect endlocal&endlocal&goto:eof
  goto:setdefining
 )
)
goto:ready

:setdefining
for /l %%a in (0,1,4) do (for /l %%b in (0,1,9) do (set SN%%a%%b=))
set SN01=�����n�O&set Ex01=�i�檱�a���v�ɵn��
set SN02=�}���D�]&set Ex02=�i�J�ۧڤ����ˮ֪�
set SN031=���a�X�D�D&set Ex031=�i�J�q���D�D���ˮ֪�
set SN032=��q�v�ಾ&set Ex032=�i�J�ХD�汵���ˮ֪�
set SN04=���a��q&set Ex04=�i�J��ܺq�����ˮ֪�
set SN05=�p�ɫ�&set Ex05=�i�J�p�ɫǡA�ö}�l�o�Ӻq���^�X
set SN06=�U�@�^�X&set Ex06=�i�J�U�@�^�X
set SN07=�ԳN½��&set Ex07=�i�J½��^�X
set SN08=�v�o���a&set Ex08=�}�ү����g�@���
set SN09=�]�w�P����&set Ex09=�i�J�]�w�M�������
set SN00=�h�X&set Ex00=�h�X�p���O�{��
set SN111=�D�D����&set Ex111o=@�ť��F�S���A��j�M����r���D�D����ХD#�B�@
set SN121=�ܦh�D�D&set Ex121o=@�ť��F�@�ӥH�W�D�D����ХD#�B�@
set SN131=���G�q���W��&set Ex131o=@�H�q���W�٧@���D�D����ХD#�B�@
set SN15=�����ХD&set Ex15o=@�N�ХD��浹�����a����ХD#�B�@
set SN10=���}&set Ex10=���}�D�D�ť��ˮ֪�
set SN21=�q������&set Ex21o=@��ܤF�v�ɤ��w�Q��L���q�����ХD#�B�@
set SN23=�L�Pĵ�i&set Ex23=�����ثe�ХD���L���ܹL�������p
set SN251=�鈴�f�P&set Ex251=�i���ХD�ҿ諸�q���O�_�ŦX�D�D����M
set SN20=���}&set Ex20=���}�q������ˮ֪�
set SN31=�����^�X&set Ex31=����p�ɡA�i��^�X���b
set SN30=���}&set Ex30=���}�q������ˮ֪�
set SN41=�H�k����&set Ex41=�g�@���N������m�����a
set SN42=����&set Ex42=�g�@�ϥβʸܪ����a
set SN43=�쩵����&set Ex43=�g�@�쩵�v�ɶi�ת����a
set SN40=���}&set Ex40=���}�����g�@���
set SN51=�v�ɻ���&set Ex51=�\Ū�v�ɻ���
set SN52=�ާ@����&set Ex52=�}���ާ@�ɪ�����
set OP2L=2&set OP2V1=�}��&set OP2V2=����&set OP2DV=1
set SN53=���ʦ��&set Ex53=�վ��v�ɻ������@�����ʦ��
set OP3L=5&set OP3V1=1&set OP3V2=2&set OP3V3=3&set OP3V4=4&set OP3V5=5&set OP3DV=3
set SN54=�D�D�Ҧ�&set Ex54=�}���v�ɪ��ť��D�D�����W�h
set OP4L=2&set OP4V1=�}��&set OP4V2=����&set OP4DV=1
if not defined OP4V (set OP4V=%OP4DV%)
set SN59=���v��&set Ex59=�N�Ҧ��]�w�٭쬰�w�]��
set SN50=���}&set Ex50=���}�]�w�P�������
goto:set-1

:set-1
mode con cols=80 lines=30
title osu�I�v�ɭp���O %CVer%
set BMG=
set MG=�������I�v�ɭp���O
set BHp=
set Hp=
set CP=0
for /l %%a in (1,1,16) do set Mop%%a=
goto:ScoreMenu

:ScoreMenu
set MenuType=Menu
set Hpdiag=
set Mopdiag=
if not defined SN%CP%%C% goto:ScoreMenuS
for /l %%a in (0,1,9) do set Sl%%a= 
set Sl%C%=�n 
for /l %%a in (1,1,9) do (
 set ScoreMenuOP4V=0
 if not "%CP%,%%a"=="0,3" if not "%CP%,%%a"=="1,1" if not "%CP%,%%a"=="1,2" if not "%CP%,%%a"=="1,3" if not "%CP%,%%a"=="2,5" set ScoreMenuOP4V=
 if defined ScoreMenuOP4V if defined SN%CP%%%a%OP4V% (
  set SN%CP%%%a=!SN%CP%%%a%OP4V%!
  set Ex%CP%%%a=!Ex%CP%%%a%OP4V%!
 ) else (
  set SN%CP%%%a=
  set Ex%CP%%%a=
 )
 set Ml%%a=!Sl%%a!&set M%%a=!SN%CP%%%a!
 if defined SN%CP%%%a (
  if !F%CP%%%aR0!==1 set Mop%%a=[����]
  if !F%CP%%%aR%R%!==0 set Mop%%a=[�p�ɰ���]
  if !F%CP%%%aR%R%!==1 set Mop%%a=[����]
  if !F%CP%%%aR%R%!==2 set Mop%%a=[�p�ɤ�...]
  if !F%CP%%%aR%R%!==3 set Mop%%a=[���f�P]
  if "%CP%""%EnUDTurn%"=="0""1" set Mop7=[�i½��]
  if "%CP%""%UDTurn%"=="0""1" set Mop7=[�w½��]
  if %CP%==0 if not defined Mop%%a set Mop%%a=...
 ) else (set Mop%%a=)
)
set SN=!SN%CP%%C%!&set Ex=!Ex%CP%%C%!
set Ml10=%Sl0%&set M10=!SN%CP%0!&set Mop10=...
if %CP%==4 (
 set NT=�W/�U�� �W�U��ܡ@���� �T�w�@���� ���}
) else (
 set NT=�W/�U�� �W�U��ܡ@���� �T�w�@���� ���}�@���� �i��v�o
)
call:Menu
if "%CP%""!F05R%R%!"=="3""2" (choice /n /c s2w8zxqrcp0 /t 1 /d 0 /m "%NT%") else (choice /n /c s2w8zxqrcp /m "%NT%")
if %errorlevel%==11 (call:set05Timer&goto:ScoreMenu)
if %errorlevel%==10 (
 if defined PlSn <nul set/p="%PlSn:~1%"|clip
 goto:ScoreMenu
)
if %errorlevel%==9 (
 if not %CP%==4 call:set08Menu
 goto:ScoreMenu
)
if %errorlevel%==8 (
 call:DT& >>"%~dpn0log.txt" echo;!_DT!�@%MG% "%NT%"�@%SN%�uR�v
 goto:restart
)
if %errorlevel%==7 (
 call:DT& >>"%~dpn0log.txt" echo;!_DT!�@%MG% "%NT%"�@%SN%�uQ�v
 call:storesave
 goto:set00
)
if %errorlevel%==6 (
 if %C%==0 (
 goto:diag
 ) else (
  set C=0&goto:ScoreMenu
 )
)
if %errorlevel%==5 (
 if "%CP%""!F05R%R%!"=="3""2" call:set05Timer
 goto:diag
)
if %errorlevel% geq 3 (
 :ScoreMenuW
 if !C! leq 0 (set C=10) else (set/a C-=1)
 if not defined SN!CP!!C! goto:ScoreMenuW
 goto:ScoreMenu
)
if %errorlevel% geq 1 (
 :ScoreMenuS
 if !C! geq 10 (set C=0) else (set/a C+=1)
 if not defined SN!CP!!C! goto:ScoreMenuS
 goto:ScoreMenu
)
goto:ScoreMenu

:OptionMenu
set MenuType=Menu
set Hpdiag=
set Mopdiag=
if not defined SN%CP%%C% goto:OptionMenuS
for /l %%a in (0,1,9) do set Sl%%a= 
set SN=!SN%CP%%C%!&set Ex=!Ex%CP%%C%!&set Sl%C%=�n 
for /l %%a in (1,1,9) do (
 set Ml%%a=!Sl%%a!&set M%%a=!SN%CP%%%a!&set Mop%%a=
 if defined SN%CP%%%a (
  if defined OP%%aL (
   set Mop%%a=
   if not defined OP%%aV set OP%%aV=!OP%%aDV!
   for /l %%b in (!OP%%aL!,-1,1) do (
    if %%b==!OP%%aV! (set OP%%aSl%%b=[]) else (set OP%%aSl%%b=  )
    set Mop%%a=!OP%%aSl%%b:~,1!!OP%%aV%%b!!OP%%aSl%%b:~1! !Mop%%a!
   )
   if %%a==4 if defined F03R%R% set Mop%%a=!Mop%%a! ^<�w��w^>
  ) else (set Mop%%a=...)
 )
)
set Ml10=%Sl0%&set M10=!SN%CP%0!&set Mop10=...
if !OP2V!==1 (set bellG=) else (set bellG=)
if defined OP%C%L (set CMop=��/�k�� �վ�]�w) else (set CMop=���� �T�w)
set NT=�W/�U�� �W�U��ܡ@!CMop!�@���� ���}�@���� �i��v�o
call:Menu
choice /n /c a4d6s2w8zxqrcp /m "%NT%"
if %errorlevel%==14 (
 if defined PlSn <nul set/p="%PlSn:~1%"|clip
 goto:OptionMenu
)
if %errorlevel%==13 (call:set08Menu&goto:OptionMenu)
if %errorlevel%==12 (
 call:DT& >>"%~dpn0log.txt" echo;!_DT!�@%MG% "%NT%"�@%SN%�uR�v
 goto:restart
)
if %errorlevel%==11 (
 call:DT& >>"%~dpn0log.txt" echo;!_DT!�@%MG% "%NT%"�@%SN%�uQ�v
 call:storesave
 goto:set00
)
if %errorlevel%==10 (
 <nul set/p=%bellG%&goto:set50
)
if %errorlevel%==9 (
 if not defined OP%C%L <nul set/p=%bellG%&goto:set%CP%%C%
 goto:OptionMenu
)
if %errorlevel% geq 7 (
 :OptionMenuW
 if !C! leq 0 (set C=10) else (set/a C-=1)
 if not defined SN!CP!!C! goto:OptionMenuW
 goto:OptionMenu
)
if %errorlevel% geq 5 (
 :OptionMenuS
 if !C! geq 10 (set C=0) else (set/a C+=1)
 if not defined SN!CP!!C! goto:OptionMenuS
 goto:OptionMenu
)
if %errorlevel% geq 3 (
 if %C%==4 if defined F03R%R% goto:OptionMenu
 if defined OP%C%L if !OP%C%V! geq !OP%C%L! (set OP%C%V=!OP%C%L!) else (set/a OP%C%V+=1)
 goto:OptionMenu
)
if %errorlevel% geq 1 (
 if %C%==4 if defined F03R%R% goto:OptionMenu
 if defined OP%C%L if !OP%C%V! leq 1 (set OP%C%V=1) else (set/a OP%C%V-=1)
 goto:OptionMenu
)
goto:OptionMenu

:CheckScoreMenu
if "%CP%%C%"=="25" (set ban25=%ownerA%&set Mop%ownerA%=-�T��벼-) else (set ban25=17)
set MenuType=CheckMenu
set Hpdiag=
set Mopdiag=
if %VCM% gtr 0 if not defined Pl%VCM% goto:CheckScoreMenuS
if %VCM%==%ban25% goto:CheckScoreMenuS
for /l %%a in (-1,1,16) do set Sl%%a= 
set Sl%VCM%= �n
for /l %%a in (1,1,16) do set CMl%%a=!Sl%%a!
set CMl17=%Sl-1%&set CM17=�M���аO&set Mop17=...
set CMl18=%Sl0%&set Mop18=...
set found=
for /l %%a in (1,1,16) do (
 if !Mop%%a! neq !BMop%%a! set BMop%%a=!Mop%%a!&set found=1
)
if defined found (
 set/a MopNo=1
 for /l %%a in (1,1,16) do (
  if !Mop%%a!==0 set/a BMop%%a=0
 )
 for /l %%a in (1,1,16) do (
  set found=
  for /l %%b in (1,1,16) do (
   if !Mop%%b!==%%a set/a "Mop%%b=MopNo,BMop%%b=MopNo,found+=1"
  )
  if defined found set/a MopNo+=1
 )
)
if !VCM! neq !BVCM! (
 if %VCM% gtr 0 (
  set/a CMop=1
  for /l %%a in (1,1,16) do (
   set found=
   for /l %%b in (1,1,16) do (if %%b neq !VCM! if !Mop%%b!==%%a set/a found+=1)
   if defined found set/a CMop+=1
  )
  set CMop=��/�k�� �s��аO^(0-!CMop!^)�@���� �аO
 ) else (set CMop=���� �T�w)
 set BVCM=!VCM!
)
set NT=�W/�U�� �W�U��ܡ@!CMop!�@���� ���}�@���� �i��v�o
call:CheckMenu
choice /n /c a4d6s2w8zxcp /m "%NT%"
if %errorlevel%==12 (
 if defined PlSn <nul set/p="%PlSn:~1%"|clip
 goto:CheckScoreMenu
)
if %errorlevel%==11 (
 if not %CP%==4 call:set08Menu
 goto:CheckScoreMenu
)
if %errorlevel%==10 (
 if %VCM%==0 (
 goto:diag
 ) else (
  set VCM=0
 )
 goto:CheckScoreMenu
)
if %errorlevel%==9 (
 if %VCM% gtr 0 (
  if defined Mop%VCM% (
   set Mop%VCM%=
  ) else (
   set Mop%VCM%=!MopNo!
  )
  goto:CheckScoreMenu
 )
 goto:diag
)
if %errorlevel% geq 7 (
 :CheckScoreMenuW
 if !VCM! leq -1 (set VCM=16) else (set/a VCM-=1)
 if !VCM! gtr 0 if not defined Pl!VCM! goto:CheckScoreMenuW
 if !VCM!==%ban25% goto:CheckScoreMenuW
 goto:CheckScoreMenu
)
if %errorlevel% geq 5 (
 :CheckScoreMenuS
 if !VCM! geq 16 (set VCM=-1) else (set/a VCM+=1)
 if !VCM! gtr 0 if not defined Pl!VCM! goto:CheckScoreMenuS
 if !VCM!==%ban25% goto:CheckScoreMenuS
 goto:CheckScoreMenu
)
if %errorlevel% geq 3 (
 if !Mop%VCM%! lss 16 set/a Mop%VCM%+=1
 goto:CheckScoreMenu
)
if %errorlevel% geq 1 (
 if not defined Mop%VCM% set Mop%VCM%=1
 if !Mop%VCM%! gtr 0 (set/a Mop%VCM%-=1) else (set Mop%VCM%=)
 goto:CheckScoreMenu
)
goto:CheckScoreMenu

:PunishScoreMenu
set MenuType=CheckMenu
set Hpdiag=
set Mopdiag=
if %VCM% gtr 0 if not defined Pl%VCM% goto:PunishScoreMenuS
for /l %%a in (-1,1,16) do set Sl%%a= 
set Sl%VCM%= �n
for /l %%a in (1,1,16) do (
 set CMl%%a=!Sl%%a!
 if defined PMop%%a (set Mop%%a=!Pl%%aM%CP%%C%R0! !PMop%%a!) else (set Mop%%a=!Pl%%aM%CP%%C%R0!)
)
set CMl17=%Sl-1%&set CM17=�M���аO&set Mop17=...
set CMl18=%Sl0%&set Mop18=...
if !VCM! neq !BVCM! (
 if %VCM% gtr 0 (
 �@set CMop=��/�k�� �s��аO^(1-16^)�@���� �аO
 ) else (set CMop=���� �T�w)
 set BVCM=!VCM!
)
if %CP%==4 (
 set NT=�W/�U�� �W�U��ܡ@!CMop!�@���� ���}
) else (
 set NT=�W/�U�� �W�U��ܡ@!CMop!�@���� ���}�@���� �i��v�o
)
call:CheckMenu
choice /n /c a4d6s2w8zxcp /m "%NT%"
if %errorlevel%==12 (
 if defined PlSn <nul set/p="%PlSn:~1%"|clip
 goto:PunishScoreMenu
)
if %errorlevel%==11 (
 if not %CP%==4 call:set08Menu
 goto:PunishScoreMenu
)
if %errorlevel%==10 (
 if %VCM%==0 (
 goto:diag
 ) else (
  set VCM=0
 )
 goto:PunishScoreMenu
)
if %errorlevel%==9 (
 if %VCM% gtr 0 (
  if defined PMop%VCM% (
   set PMop%VCM%=
  ) else (
   set PMop%VCM%=1
  )
  goto:PunishScoreMenu
 )
 goto:diag
)
if %errorlevel% geq 7 (
 :PunishScoreMenuW
 if !VCM! leq -1 (set VCM=16) else (set/a VCM-=1)
 if !VCM! gtr 0 if not defined Pl!VCM! goto:PunishScoreMenuW
 goto:PunishScoreMenu
)
if %errorlevel% geq 5 (
 :PunishScoreMenuS
 if !VCM! geq 16 (set VCM=-1) else (set/a VCM+=1)
 if !VCM! gtr 0 if not defined Pl!VCM! goto:PunishScoreMenuS
 goto:PunishScoreMenu
)
if %errorlevel% geq 3 (
 if !PMop%VCM%! lss 16 set/a PMop%VCM%+=1
 goto:PunishScoreMenu
)
if %errorlevel% geq 1 (
 if !PMop%VCM%! gtr 1 (set/a PMop%VCM%-=1) else (set PMop%VCM%=)
 goto:PunishScoreMenu
)
goto:PunishScoreMenu

:EnterNameMenu
set MenuType=CheckMenu
set Hpdiag=
set Mopdiag=
for /l %%a in (-1,1,16) do set Sl%%a= 
set Sl%VCM%= �n
for /l %%a in (1,1,16) do (
 set CMl%%a=!Sl%%a!
 if defined Pln%%a (set Mop%%a=!Pln%%a!) else (set Mop%%a=[�L���a])
)
set CMl17=%Sl-1%&set CM17=���]&set Mop17=...
set CMl18=%Sl0%&set Mop18=...
if !VCM! neq !BVCM! (
 if %VCM% gtr 0 (
 �@set CMop=���� ��J
 ) else (set CMop=���� �T�w)
 set BVCM=!VCM!
)
set NT=�W/�U�� �W�U��ܡ@!CMop!�@���� ���}
call:CheckMenu
choice /n /c s2w8zx /m "%NT%"
if %errorlevel%==6 (
 if %VCM%==0 (
 goto:diag
 ) else (
  set VCM=0
 )
 goto:EnterNameMenu
)
if %errorlevel%==5 (
 if %VCM% gtr 0 (
  call:CheckMenu
  set/p Pln%VCM%="��r�� ��J�@��J�ϢӢ������ �����@��@�Ů�ϢӢ������ �R���@�Ӣ������ �����@"
  if defined Pln%VCM% (
   if "!Pln%VCM%!"==" " (set Pln%VCM%=) else (
    call set "Pln%VCM%=%%Pln%VCM%:"=��%%"
    call set "Pln%VCM%=%%Pln%VCM%:^!=�I%%"
   )
   for /l %%a in (1,1,16) do (
    if %%a neq %VCM% if "!Pln%%a!"=="!Pln%VCM%!" set "Pln%%a="
   )
  )
  goto:EnterNameMenu
 )
 goto:diag
)
if %errorlevel% geq 3 (
 if %VCM% leq -1 (set VCM=16) else (set/a VCM-=1)
 goto:EnterNameMenu
)
if %errorlevel% geq 1 (
 if %VCM% geq 16 (set VCM=-1) else (set/a VCM+=1)
 goto:EnterNameMenu
)
goto:EnterNameMenu

:ManualMenu
set MenuType=Manual
set Hpdiag=
set Mopdiag=
set NT=�W/�U�� �W�U���ʡ@���� ���}�@���� �i��v�o
call:Manual
choice /n /c s2w8xcp /m "%NT%"
if %errorlevel%==7 (
 if defined PlSn <nul set/p="%PlSn:~1%"|clip
 goto:ManualMenu
)
if %errorlevel%==6 (call:set08Menu&goto:ManualMenu)
if %errorlevel%==5 (<nul set/p=%bellG%&goto:set09)
if %errorlevel% geq 3 (
 set ManualMenu=0
 :ManualMenuW
 if %VCM% leq 0 (set VCM=0) else (set/a VCM-=1)
 set/a ManualMenu+=1
 if !ManualMenu! lss !OP3V! goto:ManualMenuW
 goto:ManualMenu
)
if %errorlevel% geq 1 (
 set ManualMenu=0
 :ManualMenuS
 set/a ManualSkip=VCM+20
 if !ManualSkip! leq !eoManual! set/a VCM+=1
 set/a ManualMenu+=1
 if !ManualMenu! lss !OP3V! goto:ManualMenuS
 goto:ManualMenu
)
goto:ManualMenu

:Menu
if !MG! neq !BMG! (
 set EMG=
 for /l %%a in (0,1,37) do if "!MG:~,%%a!"=="!MG!" set EMG= !EMG!
 set BMG=!MG!
)
if "!Hpdiag!" neq !BHpdiag! (
 set EHpdiag=
 for /l %%a in (1,1,5) do if "!M6:~,%%a!"=="!M6!" set EHpdiag=�@!EHpdiag!
 if not defined M6 set EHpdiag=�@�@�@�@�@�@!EHpdiag!
 for /l %%a in (4,4,28) do if "!Hpdiag:~,%%a!"=="!Hpdiag!" set EHpdiag= !EHpdiag!
 set BHpdiag="!Hpdiag!"
)
if !Mopdiag! neq !BMopdiag! (
 set EMopdiag=                
 for /l %%a in (1,1,32) do if not "!Hpdiag:~,%%a!"=="!Hpdiag!" set EMopdiag= !EMopdiag!
 for /l %%a in (1,1,5) do if "!M7:~,%%a!"=="!M7!" set EMopdiag=�@!EMopdiag!
 if not defined M7 set EMopdiag=�@�@�@�@�@�@!EMopdiag!
 for /l %%a in (1,1,32) do if not "!Mopdiag:~,%%a!"=="!Mopdiag!" set EMopdiag=!EMopdiag:~,-1!
 set BMopdiag=!Mopdiag!
)
if !Ex! neq !BEx! (
 set ESp=
 for /l %%a in (0,1,38) do if "!Ex:~,%%a!"=="!Ex!" set ESp=�@!ESp!
 set BEx=!Ex!
)
%cls%&color 2f
if %CP%==3 (echo;%EMG%��%MG%�� !Set05Timeta!:!Set05Timetb!:!Set05Timetc!.!Set05Time!%nl%) else (echo;%EMG%��%MG%��%nl%)
for /l %%a in (1,1,10) do (
 if %%a==6 (echo;�@!Ml%%a:~,1!�@�@!M%%a!	!EHpdiag!!Hpdiag!) else (
  if %%a==7 (echo;�@!Ml%%a:~,1!�@�@!M%%a!	!EMopdiag!!Mopdiag!) else (echo;�@!Ml%%a:~,1!�@�@!M%%a!)
 )
 echo;�@!Ml%%a:~1!�@�@�@�@�@�@�@�@!Mop%%a!
)
if %OP4V%==1 (
 echo;%nl%�@�@�@�@�^�X:%R%�@���%PlSn%%nl%�@�@�ť��D�D:!Pl%ownerB%!�@�ХD:!Pl%ownerA%!%nl%%ESp%%Ex%%nl%
) else (
 echo;%nl%�@�@�@�@�^�X:%R%�@���%PlSn%%nl%�@�@��ХD:!Pl%ownerB%!�@�ХD:!Pl%ownerA%!%nl%%ESp%%Ex%%nl%
)
goto:eof

:CheckMenu
if !MG! neq !BMG! (
 set EMG=
 for /l %%a in (0,1,37) do if "!MG:~,%%a!"=="!MG!" set EMG= !EMG!
 set BMG=!MG!
)
if !Hp! neq !BHp! (
 set ESp=
 for /l %%a in (0,1,39) do if "!Hp:~,%%a!"=="!Hp!" set ESp= !ESp!
 set BHp=!Hp!
)
if !Hpdiag! neq !BHpdiag! (
 set EHpdiag=
 for /l %%a in (2,2,18) do if "!Pl10:~,%%a!"=="!Pl10!" set EHpdiag= !EHpdiag!
 if not defined Pl10 set EHpdiag=          !EHpdiag!
 for /l %%a in (2,2,6) do if "!Mop10:~,%%a!"=="!Mop10!" set EHpdiag= !EHpdiag!
 if not defined Mop10 set EHpdiag=    !EHpdiag!
 for /l %%a in (3,3,27) do if not "!Hpdiag:~,%%a!"=="!Hpdiag!" if defined EHpdiag set EHpdiag=!EHpdiag:~,-1!
 set BHpdiag=!Hpdiag!
)
if !Mopdiag! neq !BMopdiag! (
 set EMopdiag=                
 for /l %%a in (3,3,27) do if not "!Hpdiag:~,%%a!"=="!Hpdiag!" set EMopdiag= !EMopdiag!
 for /l %%a in (2,2,18) do if "!Pl12:~,%%a!"=="!Pl12!" set EMopdiag=  !EMopdiag!
 if not defined Pl12 set EMopdiag=          !EMopdiag!
 for /l %%a in (2,2,6) do if "!Mop12:~,%%a!"=="!Mop12!" set EMopdiag= !EMopdiag!
 if not defined Mop12 set EMopdiag=    !EMopdiag!
 for /l %%a in (1,1,28) do if not "!Mopdiag:~,%%a!"=="!Mopdiag!" if defined EHpdiag set EMopdiag=!EMopdiag:~,-1!
 set BMopdiag=!Mopdiag!
)
%cls%&color 2f
echo;%EMG%��%MG%��%nl%%ESp%%Hp%%nl%
for /l %%a in (1,1,16) do (
 if %%a==10 (echo;�@!CMl%%a:~1!�@�@!Pl%%a!�@	!CMl%%a:~,-1!!Mop%%a! !EHpdiag!!Hpdiag!) else (
  if %%a==12 (echo;�@!CMl%%a:~1!�@�@!Pl%%a!�@	!CMl%%a:~,-1!!Mop%%a! !EMopdiag!!Mopdiag!) else (echo;�@!CMl%%a:~1!�@�@!Pl%%a!�@	!CMl%%a:~,-1!!Mop%%a!)
 )
)
echo;%nl%�@%CMl17:~1%�@�@�@%CM17%�@�@%Mop17%%nl%�@%CMl18:~1%�@�@�@���}�@�@�@�@%Mop18%%nl%%nl%�@�@�@�@�^�X:%R%�@���%PlSn%%nl%�@�@�ť��D�D:!Pl%ownerB%!�@�ХD:!Pl%ownerA%!%nl%%nl%
goto:eof

:Manual
if !VCM! neq !BVCM! (
 set/a "ManualPage=VCM*ePageoManual/ePoManual"
 if %VCM% gtr 0 (set ManualRollU=) else (set ManualRollU=��)
 set ManualRoll= 
 for /l %%a in (0,1,%ePageoManual%) do (
  if %%a==!ManualPage! (
   set ManualRoll=!ManualRoll!%ManualRNSs%
  ) else (
   set ManualRoll=!ManualRoll! 
  )
 )
 if !ManualPage! geq %ePageoManual% set ManualRoll=!ManualRoll:~-20!
 if %VCM% lss %ePoManual% (set ManualRollD=) else (set ManualRollD=��)
 set BVCM=!VCM!
)
if !MG! neq !BMG! (
 set EMG=
 for /l %%a in (0,1,37) do if "!MG:~,%%a!"=="!MG!" set EMG= !EMG!
 set BMG=!MG!
)
if !Mopdiag! neq !BMopdiag! (
 set EMopdiag=                
 for /l %%a in (4,4,28) do if not "!Hpdiag:~,%%a!"=="!Hpdiag!" set EMopdiag= !EMopdiag!
 set BMopdiag=!Mopdiag!
)
%cls%&color 2f
echo;!EMG!��!MG!��%nl%%nl%�@ 0�~-------------------------------------------------------------------!ManualRollU!
for /l %%a in (1,1,19) do (
 set/a ManualSkip=VCM+%%a
 call set "ManualLine=%%Manual!ManualSkip!%%"
 if !ManualSkip! lss 10 set ManualSkip= !ManualSkip!
 echo;�@!ManualSkip!^|!ManualLine!!ManualRoll:~%%a,1!^|
)
echo;�@%eoManualn%��-------------------------------------------------------------------!ManualRollD!%nl%�@�@�@�@�^�X:%R%�@���%PlSn%�@�@�@�@�@!Hpdiag!%nl%�@�@�ť��D�D:!Pl%ownerB%!�@�ХD:!Pl%ownerA%!%nl%�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@!EMopdiag!!Mopdiag!%nl%
goto:eof

:diag
if !MenuType!==Menu (set Vd=2) else (if !VCM!==-1 (set Vd=2) else (set Vd=3))
set BVd=
set BHpdiag=
set BMopdiag=
<nul set/p=%bellG%
goto:diagChoice

:diagChoice
if !Vd! neq !BVd! (
 for /l %%a in (1,1,3) do set VAr%%a=�@&set VAl%%a=�@
 set VAr%Vd%=��&set VAl%Vd%=��
 set Mopdiag=�O��!VAr1!�@�@!VAl2!���F
 if !MenuType!==Menu (
  set Hpdiag=�O�_�n%Ex%�H
 ) else (
  if !VCM!==-1 (
   if %CP%%C%==01 (set Hpdiag=�O�_�n�i�歫�]�H) else (set Hpdiag=�O�_�n�M���аO�H)
  ) else (
   set Hpdiag=�O�_�n%CEx%�H
   set Mopdiag=!Mopdiag!!VAr2!�@�@!VAl3!�٤��n
  )
 )
 set NT=��/�k�� ���k��ܡ@���� �T�w�@���� ����
 set BVd=!Vd!
)
call:%MenuType%
choice /n /c a4d6zx /m "%NT%"
if %errorlevel%==6 (
 if !MenuType!==Menu (
  goto:ScoreMenu
 ) else (
  if %CP%%C%==01 (goto:EnterNameMenu)
  if %CP%%C%==02 (goto:PunishScoreMenu)
  if %CP%==4 (goto:PunishScoreMenu)
  goto:CheckScoreMenu
 )
)
if %errorlevel%==5 (
 if %Vd%==3 (
  if %CP%%C%==01 (goto:EnterNameMenu)
  if %CP%%C%==02 (goto:PunishScoreMenu)
  if %CP%==4 (goto:PunishScoreMenu)
  goto:CheckScoreMenu
 ) else (
  if !MenuType!==Menu (
   if %Vd%==1 (
    set BEx=
    set Ex=
    set BVCM=
    set VCM=1
    call:storesave
    goto:set%CP%%C%
   )
   goto:ScoreMenu
  ) else (
   if !VCM!==-1 (
    if %CP%%C%==01 (
     if %Vd%==1 (
      for /l %%a in (1,1,16) do set "Pln%%a=!Pl%%a!"
      set MGEx=���a�W�ٵn�����]����
      call:mgdiag
     )
     goto:EnterNameMenu
    ) else (
     if %Vd%==1 (
      set CMop=0&for /l %%a in (1,1,16) do (
       set Mop%%a=
       if %CP%%C%==02 (set Mop%%a=!Pl%%aM%CP%%C%R0!)
       if %CP%==4 (set Mop%%a=!Pl%%aM%CP%%C%R0!)
       set PMop%%a=
      )
      if %CP%%C%==25 set Mop%ownerA%=-�T��벼-
      set MGEx=�аO���]����
      call:mgdiag
     )
    if %CP%%C%==02 (goto:PunishScoreMenu)
    if %CP%==4 (goto:PunishScoreMenu)
    goto:CheckScoreMenu
    )
   ) else (
    set Ex=
    if %Vd%==1 call:storesave
    goto:save%CP%%C%
   )
  )
 )
)
if %errorlevel% geq 3 (
 if !MenuType!==Menu (
  if %Vd% geq 2 (set Vd=2) else (set/a Vd+=1)
 ) else (
  if !VCM!==-1 (
   if %Vd% geq 2 (set Vd=2) else (set/a Vd+=1)
  ) else (
   if %Vd% geq 3 (set Vd=3) else (set/a Vd+=1)
  )
 )
 goto:diagChoice
)
if %errorlevel% geq 1 (
 if %Vd% leq 1 (set Vd=1) else (set/a Vd-=1)
 goto:diagChoice
)
goto:diagChoice

:mgdiag
set Hpdiag=!MGEx!%bellG%
call:DT&>>"%~dpn0log.txt" set/p="!_DT! "<nul 
if defined R >>"%~dpn0log.txt" set/p="�^�X%R% "<nul 
>>"%~dpn0log.txt" echo;�ﶵ%CP%%C%�@!MGEx!
set Mopdiag=�ֽT�w
call:PlsScore
set NT=���� �T�w�@���� ����
goto:mgdiagChoice

:mgdiagChoice
call:%MenuType%
choice /n /c zxp /m "%NT%"
if %errorlevel%==3 (
 <nul set/p="!MGEx!"|clip
 goto:mgdiagChoice
)
if %errorlevel%==2 (
 goto:eof
)
if %errorlevel%==1 (
 goto:eof
)
goto:mgdiagChoice

:PlsScore
for /l %%a in (1,1,16) do (
 set Pl%%aS=
 set Pl%%aC=
 if defined Pl%%a (
  for /l %%b in (0,1,%R%) do (
   for /l %%c in (0,1,5) do (
    for /l %%d in (1,1,9) do (
     set/a Pl%%aS+=Pl%%aS%%c%%dR%%b
     set/a Pl%%aC+=Pl%%aC%%c%%dR%%b
    )
   )
  )
 )
)
set PlSn=
for /l %%a in (1,1,16) do (
 if defined Pl%%a (
  set/a "Pl%%aSn=Pl%%aS-(!Pl%%aC!/3)*20,Pl%%aCn=Pl%%aC%%3"
  set PlSn=!PlSn!:!Pl%%aSn!
  for /l %%b in (1,1,!Pl%%aCn!) do set PlSn=!PlSn!X
 )
)
goto:eof

:set01
if !UDTurn!==1 (set MGEx=���~�G½��^�X���i�n�����a&call:mgdiag&goto:ScoreMenu)
if defined F03R%R% (set MGEx=���~�G���^�X�w�i��&call:mgdiag&goto:ScoreMenu)
set MG=�v�ɵn��
set Hp=�̷Ӫ��a�b�h�H�C���Ф�����m�n�����a�W��
set CEx=�����v�ɵn��
for /l %%a in (1,1,16) do set "Pln%%a=!Pl%%a!"
goto:EnterNameMenu

:save01
if %Vd%==1 (
 for /l %%a in (1,1,16) do (
  if defined Pl%%a (
   set PlDataFN=
   set PlDataN=
   for /f "tokens=1,2,* delims=_=" %%b in ('set') do (
    if "%%b"=="PlData" (
     set "PlDataFNt=%%c"
     set/a PlDataFNt*=1
     if !PlDataFNt! neq 0 if !PlDataFNt! gtr !PlDataFN! (set "PlDataFN=%%c")
     if %%d=="!Pl%%a!" set PlDataN=%%c
    )
   )
   if not defined PlDataN set/a "PlDataN=PlDataFN+1"
   set "PlData_!PlDataN!="!Pl%%a!""
   set "PlData_!PlDataN!S=!Pl%%aS!"&set "Pl%%aS="
   set "PlData_!PlDataN!C=!Pl%%aC!"&set "Pl%%aC="
   for /l %%b in (0,1,%R%) do (
    for /l %%c in (0,1,5) do (
     for /l %%d in (1,1,9) do (
      set "PlData_!PlDataN!S%%c%%dR%%b=!Pl%%aS%%c%%dR%%b!"&set "Pl%%aS%%c%%dR%%b="
      set "PlData_!PlDataN!C%%c%%dR%%b=!Pl%%aC%%c%%dR%%b!"&set "Pl%%aC%%c%%dR%%b="
      set "PlData_!PlDataN!M%%c%%dR%%b=!Pl%%aM%%c%%dR%%b!"&set "Pl%%aM%%c%%dR%%b="
     )
    )
   )
   set "Pl%%a="
  )
 )
 set ownerL=
 set ownerO=
 for /l %%a in (1,1,16) do (
  if defined Pln%%a (
   set "Pl%%a=!Pln%%a!"
   set/a ownerL+=1
   set owner!ownerL!=%%a
   set found=
   for /f "tokens=1,2 delims=_=" %%b in ('set') do (if "%%b"=="PlData" if !%%b_%%c!=="!Pl%%a!" set "found=%%c")
   if defined found (
    set/a ownerO+=1
    call set "Pl%%aS=%%PlData_!found!S%%"
    call set "Pl%%aC=%%PlData_!found!C%%"
    for /l %%b in (0,1,%R%) do (
     for /l %%c in (0,1,5) do (
      for /l %%d in (1,1,9) do (
       call set "Pl%%aS%%c%%dR%%b=%%PlData_!found!S%%c%%dR%%b%%"
       call set "Pl%%aC%%c%%dR%%b=%%PlData_!found!C%%c%%dR%%b%%"
       call set "Pl%%aM%%c%%dR%%b=%%PlData_!found!M%%c%%dR%%b%%"
      )
     )
    )
   )
  )
 )
 set/a ownerN=ownerL-ownerO
 if defined ownerL (
  if !ownerN! gtr 0 (set MGEx=�n���F!ownerN!��s���a�A�w��!ownerL!�쪱�a) else (set MGEx=�S���s���a�A�@��!ownerL!�쪱�a)
  call:mgdiag
  set F01R0=1
  set C=2
 ) else (
  set MGEx=���~�G����H�]�S��
  call:mgdiag
  goto:set01
 )
) else (
 set C=1
)
set MGEx=
set MGExt1=
set MGExt2=
if defined R (
 if not defined Pl!ownerB! call:OwnerBCheck
 if not defined Pl!ownerA! call:OwnerACheck
 set "MGEx=!MGExt1!!MGExt2!"
 if defined MGExt1 if defined MGExt2 if !ownerA!==!ownerB! (call set "MGEx=%%Pl!ownerA!%%�����F��ХD�M�ХD�A")
 if defined MGEx set "MGEx=!MGEx:~,-1!"&call:mgdiag
 for /l %%a in (1,1,%ownerL%) do (
  if !owner%%a!==!ownerA! set ownerAt=%%a
 )
)
goto:set-1

:OwnerBCheck
set/a "ownerB+=14,ownerB%%=16,ownerB+=1"
if not defined Pl%ownerB% goto:OwnerBCheck
set "MGExt1=!Pl%ownerB%!�����F��ХD�A"
goto:eof

:OwnerACheck
set/a "ownerAt-=1,ownerAt%%=ownerL,ownerAt+=1"
if !ownerAt! geq !ownerL! (set EnUDTurn=1) else (set EnUDTurn=)
if defined Pl!owner%ownerAt%!Skip (
 set Pl!owner%ownerAt%!Skip=
 set/a "ownerAt+=1"
 goto:OwnerACheck
)
set ownerA=!owner%ownerAt%!
set "MGExt2=!Pl%ownerA%!�����F�ХD�A"
goto:eof

:set02
if !UDTurn!==1 (set MGEx=���~�G½��^�X���i�D�]&call:mgdiag&goto:ScoreMenu)
if defined F03R%R% (set MGEx=���~�G�^�X�w�i��&call:mgdiag&goto:ScoreMenu)
if not defined F01R0 (set MGEx=���~�G�S�����a&call:mgdiag&goto:ScoreMenu)
set MG=�ۧڤ����ˮ֪�
set Hp=�аO�����}���D�]�����a�A�Ʀr�j�p����N�q
set CEx=�B�@�S���}���D�]�����a
for /l %%a in (1,1,16) do set PMop%%a=!Pl%%aM02R0!
goto:PunishScoreMenu

:save02
if %Vd%==1 (
 set MGExt=
 for /l %%a in (1,1,16) do (
  if defined Pl%%a (
   if defined PMop%%a (
    set Pl%%aS02R0=
    set Pl%%aC02R0=
   ) else (
    set/a "Pl%%aS02R0=-5,Pl%%aC02R0=1,MGExt+=1"
   )
   set Pl%%aM02R0=!PMop%%a!
  )
 )
 if not defined R (
  set ownerB=%owner1%
  set ownerA=%owner1%
  set ownerAt=1
  set RB=0
  set/a R+=1
 )
 set F02R0=1
 set C=3
 if defined MGExt (set MGEx=�w�B�@!MGExt!��S���}���D�]�����a) else (set MGEx=�������a���w�}���D�])
 call:mgdiag
) else (
 set C=2
)
goto:set-1

:set03
if not defined F02R0 (set MGEx=���~�G�|���}���D�]&call:mgdiag&goto:ScoreMenu)
set MG=�ť��D�D�ˮ֪�
set Hp=
set CP=1
set C=1
for /l %%a in (1,1,16) do set Mop%%a=
for /l %%a in (1,1,8) do (
 if defined Pl%ownerB%C1%%aR%R% (
  if defined Ex1%%a%OP4V%o (
   set Ex1%%a%OP4V%=!Ex1%%a%OP4V%o:@=�M��!
   set Ex1%%a%OP4V%=!Ex1%%a%OP4V%:#=��!
  ) else (
   set Ex1%%a=!Ex1%%ao:@=�M��!
   set Ex1%%a=!Ex1%%a:#=��!
  )
  set Mop%%a=[�w�B�@]
 ) else (
  if defined Ex1%%a%OP4V%o (
   set Ex1%%a%OP4V%=!Ex1%%a%OP4V%o:@=��!
   set Ex1%%a%OP4V%=!Ex1%%a%OP4V%:#=�i��!
  ) else (
   set Ex1%%a=!Ex1%%ao:@=��!
   set Ex1%%a=!Ex1%%a:#=�i��!
  )
 )
)
goto:ScoreMenu

:set11
:set12
:set13
:set15
if defined Pl%ownerB%C1%C%R%R% (
 set Pl%ownerB%S1%C%R%R%=
 set Pl%ownerB%C1%C%R%R%=
 if defined Ex1%%a%OP4V%o (
  set Ex1%C%%OP4V%=!Ex1%C%%OP4V%o:@=��!
  set Ex1%C%%OP4V%=!Ex1%C%%OP4V%:#=�i��!
 ) else (
  set Ex1%C%=!Ex1%C%o:@=��!
  set Ex1%C%=!Ex1%C%:#=�i��!
 )
 set Mop%C%=
 set "MGEx=�w�M����ХD!Pl%ownerB%!��%SN%�B�@"
 call:mgdiag
) else (
 set/a "Pl%ownerB%S1%C%R%R%=-5,Pl%ownerB%C1%C%R%R%=1"
 if defined Ex1%%a%OP4V%o (
  set Ex1%C%%OP4V%=!Ex1%C%%OP4V%o:@=�M��!
  set Ex1%C%%OP4V%=!Ex1%C%%OP4V%:#=��!
 ) else (
  set Ex1%C%=!Ex1%C%o:@=�M��!
  set Ex1%C%=!Ex1%C%:#=��!
 )
 set Mop%C%=[�w�B�@]
 set "MGEx=��ХD!Pl%ownerB%!����%SN%�B�@"
 call:mgdiag
)
goto:ScoreMenu

:set10
set F03R%R%=1
set C=4
goto:set-1

:set04
if not defined F03R%R% (set MGEx=���~�G�٥��i��D�D�ˮ�&call:mgdiag&goto:ScoreMenu) else (
 set BMG=
 set MG=�q������ˮ֪�
 set BEx=
 set Hp=
 set CP=2
 if defined oC2 (set C=%oC2%&set oC2=) else (
  if !F04R%R%!==3 (set C=5) else (set C=1)
 )
 for /l %%a in (1,1,16) do set Mop%%a=
 for /l %%a in (1,1,2) do (
  if defined Pl%ownerA%C2%%aR%R% (
   set Ex2%%a=!Ex2%%ao:@=�M��!
   set Ex2%%a=!Ex2%%a:#=��!
   set Mop%%a=[�w�B�@]
  ) else (
   set Ex2%%a=!Ex2%%ao:@=��!
   set Ex2%%a=!Ex2%%a:#=�i��!
  )
 )
 if defined HardMap23R%R% (
  set Mop3=[�w�ŧi]
 ) else (
  if defined Pl%ownerA%C23R%R% (
   set Mop3=[���ŧi�D�w�B�@]
  ) else (
   set Mop3=[���ŧi]
  )
 )
 goto:ScoreMenu
)

:set21
if defined Pl%ownerA%C2%C%R%R% (
 set Pl%ownerA%S2%C%R%R%=
 set Pl%ownerA%C2%C%R%R%=
 set Ex2%C%=!Ex2%C%o:@=��!
 set Ex2%C%=!Ex2%C%:#=�i��!
 set Mop%C%=
 set "MGEx=�w�M���ХD!Pl%ownerA%!��%SN%�B�@"
 call:mgdiag
) else (
 set/a "Pl%ownerA%S2%C%R%R%=-5,Pl%ownerA%C2%C%R%R%=1"
 set Ex2%C%=!Ex2%C%o:@=�M��!
 set Ex2%C%=!Ex2%C%:#=��!
 set Mop%C%=[�w�B�@]
 set "MGEx=�ХD!Pl%ownerA%!����F%SN%�B�@"
 call:mgdiag
)
goto:ScoreMenu

:set23
if defined HardMap23R%R% (
 set Mop%C%=[���ŧi]
 set "MGEx=�ХD!Pl%ownerA%!�S�����ܹL��"
 call:mgdiag
 set HardMap23R%R%=
 if defined HardMapR%R% (
  set/a "Pl%ownerA%S23R%R%=-5-Pl%ownerA%S32R%R%"
  set Pl%ownerA%C23R%R%=1
  set Mop%C%=[���ŧi�D�w�B�@]
  set "MGEx=�ХD!Pl%ownerA%!����F�H�W�������g�@"
  call:mgdiag
 ) else (
  if defined HardMapR%RB% (
   set Pl%ownerA%S23R%R%=
   set Pl%ownerA%C23R%R%=
   set "MGEx=�w�M���ХD!Pl%ownerA%!���H�W�������g�@"
   call:mgdiag
  )
 )
) else (
 set Mop%C%=[�w�ŧi]
 set "MGEx=�ХD!Pl%ownerA%!�w���ܹL��"
 call:mgdiag
 set HardMap23R%R%=1
 if not defined HardMapR%RB% (
  set Pl%ownerA%S23R%R%=
  set Pl%ownerA%C23R%R%=
  if defined HardMapR%R% (
   set "MGEx=�w�M���ХD!Pl%ownerA%!���H�W�������g�@"
   call:mgdiag
  )
 ) else (
  set/a "Pl%ownerA%S23R%R%=-5-Pl%ownerA%S32R%R%"
  set Pl%ownerA%C23R%R%=1
  set Mop%C%=[�w�ŧi�D�w�B�@]
  set "MGEx=�ХD!Pl%ownerA%!����F�H�W�������g�@"
  call:mgdiag
 )
)
goto:ScoreMenu

:set25
set MG=���t���f�P����
set Hp=�N�{�����q���P�D�D���������a�аO�u0�v�A�{�������������a�аO�䥦�Ʀr
set CEx=������M
for /l %%a in (1,1,16) do set Mop%%a=!Pl%%aM25R%R%!
goto:CheckScoreMenu

:save25
if %Vd%==1 (
 set/a "RP=0,ForRP=0"
 for /l %%a in (1,1,16) do (
  if not %%a==%ownerA% (
   if defined Mop%%a (
    set/a RP+=1
    if "!Mop%%a!"=="0" set/a ForRP+=1
   )
   set Pl%%aM25R%R%=!Mop%%a!
  )
 )
 set/a "RPt=RP>>1,RPtm=RPt*2"
 if !RPtm! lss !RP! set/a RPt+=1
 set Pl%ownerA%S25R%R%=
 set Pl%ownerA%C25R%R%=
  if !ForRP!==0 (
   set Pl%ownerA%S25R%R%=-5
   set Pl%ownerA%C25R%R%=1
   set "MGEx=�q���P�D�D�����L���A�ХD!Pl%ownerA%!����F�g�@"
   call:mgdiag
 ) else (
  if !ForRP! geq !RPt! (
   set Pl%ownerA%S25R%R%=5
   set Pl%ownerA%C25R%R%=
   set "MGEx=�q���P�D�D�����A�ХD!Pl%ownerA%!�Ϣ�"
   call:mgdiag
  ) else (
   set "MGEx=�q���P�D�D�L���A�ХD!Pl%ownerA%!�Ϣ�"
   call:mgdiag
  )
 )
 set F25R%R%=1
 set oC2=0
) else (
 set oC2=5
)
goto:set04

:set20
if %OP4V%==1 (
 if !F25R%R%!==1 (set F04R%R%=1) else (set F04R%R%=3)
) else (
 set F04R%R%=1
)
if "!F04R%R%!,!F05R%R%!"=="1,1" (
 set C=6
) else (
 if !F05R%R%!==1 (set C=4) else (set C=5)
)
goto:set-1

:set05
if not defined F03R%R% (set MGEx=���~�G�٥��i��D�D�ˮ�&call:mgdiag&goto:ScoreMenu) else (
 if not defined F04R%R% (set MGEx=���~�G�٥��i��q���ˮ�&call:mgdiag&goto:ScoreMenu) else (
  set MG=�y�y�C�C���p�ɫ�
  set Hp=
  set CP=3
  set C=1
  for /l %%a in (1,1,16) do set Mop%%a=
  if !F05R%R%!==2 call:set05Timer
  if defined F05R%R% goto:ScoreMenu
  for /f "tokens=1-3 delims=/ " %%a in ("%date%") do set/a Set05DateStart=%%a%%b%%c
  for /f "tokens=1-4 delims=:. " %%a in ("%time%") do (
   set Set05Timeta=%%a
   set Set05Timetb=%%b
   set Set05Timetc=%%c
   set Set05Timetd=%%d
  )
  for %%a in (a b c d) do (
   if "0!Set05Timet%%a:~1!"=="!Set05Timet%%a!" set Set05Timet%%a=!Set05Timet%%a:~1!
  )
  set F05R%R%=2
  set/a "Set05TimeStart=((Set05Timeta*60+Set05Timetb)*60+Set05Timetc)*100+Set05Timetd"
  for %%a in (eta etb etc e) do (set Set05Tim%%a=0)
  goto:ScoreMenu
 )
)

:set05Timer
for /f "tokens=1-3 delims=/ " %%a in ("%date%") do set/a Set05DateEnd=%%a%%b%%c
for /f "tokens=1-4 delims=:. " %%a in ("%time%") do (
 set Set05Timeta=%%a
 set Set05Timetb=%%b
 set Set05Timetc=%%c
 set Set05Timetd=%%d
)
for %%a in (a b c d) do (
 if "0!Set05Timet%%a:~1!"=="!Set05Timet%%a!" set Set05Timet%%a=!Set05Timet%%a:~1!
)
set/a Set05TimeEnd=((Set05Timeta*60+Set05Timetb)*60+Set05Timetc)*100+Set05Timetd
if not "!Set05DateEnd!"=="!Set05DateStart!" (set/a Set05TimeEnd+=8640000)
if !Set05TimeEnd! lss !Set05TimeStart! (set/a Set05TimeEnd+=4320000)
set/a "Set05Time=Set05TimeEnd-Set05TimeStart,Set05TimeR=Set05Time,Set05Timeta=Set05Time/360000,Set05Time%%=360000,Set05Timetb=Set05Time/6000,Set05Time%%=6000,Set05Timetc=Set05Time/100,Set05Time%%=100"
goto:eof

:set31
if !F05R%R%!==2 (
 set F05R%R%=0
 set MGEx=�p�ɤw����
 call:mgdiag
)
set MG=�^�X���b
set Hp=�L�����е��ƦW�A���Ѫ��Т��A�������СF���u���ɥi�N���������Т�
set CEx=�����n�O�^�X�ƦW�A�óB�@���������a
for /l %%a in (1,1,16) do set Mop%%a=!Pl%%aM31R%R%!
goto:CheckScoreMenu

:save31
if %Vd%==1 (
 for /l %%a in (1,1,16) do set Pl%%aS31R%R%=
 call:PlsScore
 set MGEx=�^�X�ɶ��G!Set05Timeta!:!Set05Timetb!:!Set05Timetc!.!Set05Time!
 call:mgdiag
 set PlShigh=!Pl%owner1%S!
 set/a "RPlarge=Mop%owner1%"
 for /l %%a in (2,1,16) do (
  if defined Pl%%a (
   if !Pl%%aS! gtr !PlShigh! set PlShigh=!Pl%%aS!
   if !Mop%%a! gtr !RPlarge! set RPlarge=!Mop%%a!
  )
 )
 for /l %%a in (1,1,16) do (
  set high%%a=
  if defined Pl%%aS if !Pl%%aS!==!PlShigh! set high%%a=1
 )
 set/a "RP=0,FailedRP=0,QuitRP=0,RPt=RPlarge>>1,RPtm=RPt*2"
 if !RPtm! lss !RPlarge! set/a RPt+=1
 for /l %%a in (1,1,16) do (
  if defined Pl%%a (
   if defined Mop%%a (
    set/a RP+=1
    if "!Mop%%a!"=="0" (set/a "FailedRP+=1,Pl%%aS31R%R%=0") else (set Pl%%aS31R%R%=5)
   ) else (
    set/a "QuitRP+=1,Pl%%aS31R%R%=-5"
   )
   if !Mop%%a! neq 0 if !RPt! gtr 0 (
    set/a "RPtm=4*(RPt-Mop%%a+1)/RPt"
    if !RPtm! gtr 0 (
     set/a Pl%%aS31R%R%+=RPtm
     set "MGEx=���a!Pl%%a!���o��!Mop%%a!�W�A�^�X�o����!RPtm!"
     call:mgdiag
    )
   )
   if defined UDTurn if !Mop%ownerA%!==1 (
    if %%a==%ownerA% set/a Pl%%aS31R%R%*=3
   ) else (
    if not %%a==%ownerA% if not !high%%a!==1 set/a Pl%%aS31R%R%*=3
   )
   set Pl%%aM31R%R%=!Mop%%a!
  )
 )
 set/a "RPt=RP>>1"
 set HardMapR%R%=
 for /l %%a in (1,1,16) do (set Pl%%aS32R%R%=)
 set Pl%ownerA%S23R%R%=
 set Pl%ownerA%C23R%R%=
 if !FailedRP! gtr !RPt! (
  for /l %%a in (1,1,16) do (
   if not "!Mop%%a!"=="0" (
    set Pl%%aS32R%R%=4
   )
  )
  set HardMapR%R%=1
  if defined HardMap23R%R% (
   if defined HardMapR%RB% (
    set/a "Pl%ownerA%S23R%R%=-5-Pl%ownerA%S32R%R%"
    set Pl%ownerA%C23R%R%=1
    set "MGEx=�s�����סA�ХD!Pl%ownerA%!����F�H�W�������g�@"
    call:mgdiag
   )
  ) else (
   set/a "Pl%ownerA%S23R%R%=-5-Pl%ownerA%S32R%R%"
   set Pl%ownerA%C23R%R%=1
   set "MGEx=�S���ܹL���A�ХD!Pl%ownerA%!����F�H�W�������g�@"
   call:mgdiag
  )
 )
 set Pl%ownerA%C31R%R%=
 set Pl%ownerA%Skip=
 if !Set05TimeR! gtr 39000 (
  set Pl%ownerA%C31R%R%=1
  set Pl%ownerA%Skip=1
  set "MGEx=�q���L���A�ХD!Pl%ownerA%!�i�J�ίv"
  call:mgdiag
 )
 set/a MGExt=RP-FailedRP
 if !MGExt! gtr 0 (
  if defined HardMapR%R% (
   set MGEx=!MGExt!�쪱�a���\�L���A�Ϣ��A�����׼��y�Ϣ�
  ) else (
   if !MGExt! equ !RP! (set MGEx=�������a�L���A�Ϣ�) else (set MGEx=!MGExt!�쪱�a�L���A�Ϣ�)
  )
  call:mgdiag
 )
 if !RP! equ 0 (set MGEx=���Ƨ뭰) else (
  if !FailedRP! gtr 0 (
   if !FailedRP! equ !RP! (set MGEx=���x�ШS) else (set MGEx=!FailedRP!�쪱�a���ѡA�Ϣ�)
   call:mgdiag
  )
  if !QuitRP! gtr 0 (set MGEx=!QuitRP!�쪱�a�{�}��k�A����F�Т����g�@) else (set MGEx=�S����k�����a)
 )
 call:mgdiag
 if defined UDTurn (
  if "!Mop%ownerA%!"=="1" (
   set "MGEx=�ХD!Pl%ownerA%!½�ন�\�A�^�X�o���A�������H"
  ) else (
   set "MGEx=�ХD!Pl%ownerA%!½�ॢ�ѡA���ХD�M���ƲĤ@�~���^�X�o���A�������H"
  )
  call:mgdiag
 )
 set F31R%R%=1
 set F05R%R%=1
 if %OP4V%==1 (
  if !F25R%R%!==1 (set C=6) else (set C=4)
 ) else (
  set C=6
 )
) else (
 set C=5
)
goto:set-1

:set30
if "!F04R%R%!,!F05R%R%!"=="1,1" (
 set C=6
) else (
 if !F05R%R%!==1 (set C=4) else (set C=5)
)
goto:set-1

:set06
if not "!F04R%R%!,!F05R%R%!"=="1,1" (set MGEx=���~�G�^�X�|������&call:mgdiag&goto:ScoreMenu)
if "!UDTurn!"=="1" (set MGEx=���~�G½��^�X�w�����F�v�ɵ���&call:mgdiag&goto:ScoreMenu)
set/a "ownerAt%%=ownerL,ownerAt+=1"
if !ownerAt!==!ownerL! (set EnUDTurn=1) else (set EnUDTurn=)
if defined Pl!owner%ownerAt%!Skip (
 set Pl!owner%ownerAt%!Skip=
 set Pl!owner%ownerAt%!SkipB=1
 goto:set06
)
set ownerB=%ownerA%
set RB=%R%
set/a R+=1
set CP=0
set C=3
set ownerA=!owner%ownerAt%!
call:storesave
if defined Pl%ownerA%SkipB (
 set Pl%ownerA%SkipB=
 if !ownerA!==!ownerB! (set "MGEx=!Pl%ownerA%!��_�M���A�æ����F��ХD�M�ХD") else (set "MGEx=!Pl%ownerB%!�����F��ХD�A!Pl%ownerA%!��_�M���A�æ����F�ХD")
) else (
 if !ownerA!==!ownerB! (set "MGEx=!Pl%ownerA%!�����F��ХD�M�ХD") else (set "MGEx=!Pl%ownerB%!�����F��ХD�A!Pl%ownerA%!�����F�ХD")
)
call:mgdiag
set MGEx=�w�i�J�U�@�^�X
call:mgdiag
for /l %%a in (1,1,16) do set Mop%%a=
goto:ScoreMenu

:set07
if not "!F04R%R%!,!F05R%R%!"=="1,1" (set MGEx=���~�G�^�X�|������&call:mgdiag&goto:ScoreMenu)
if not defined EnUDTurn (set MGEx=���~�G�����|������&call:mgdiag&goto:ScoreMenu)
if "!UDTurn!"=="1" (set MGEx=���~�G½��^�X�w�����F�v�ɵ���&call:mgdiag&goto:ScoreMenu)
set UDTurn=1
set PlSless=!Pl%owner1%S!
for /l %%a in (2,1,16) do (if defined Pl%%a if !Pl%%aS! lss !PlSless! set PlSless=!Pl%%aS!)
set LessFound=
set LessSkipFound=
for /l %%a in (1,1,%ownerL%) do (
 call set PlSlesst=%%Pl!owner%%a!S%%
 if !PlSlesst!==!PlSless! (
  if not defined Pl!owner%%a!Skip (
   set/a LessFound+=1
   set LessOwner!LessFound!=!owner%%a!
  ) else (
   set/a LessSkipFound+=1
   set LessSkipOwner!LessSkipFound!=!owner%%a!
  )
 )
)
if defined LessFound (
 set/a ownerAlesst=%random%%%LessFound,ownerAlesst+=1
) else (
 set/a ownerAlesst=%random%%%LessSkipFound,ownerAlesst+=1
)
if defined LessFound (
 set ownerAless=!LessOwner%ownerAlesst%!
) else (
 set ownerAless=!LessSkipOwner%ownerAlesst%!
)
set ownerB=%ownerA%
set RB=%R%
set/a R+=1
set CP=0
set C=3
set ownerA=%ownerAless%
call:storesave
if defined LessFound (
 if !ownerA!==!ownerB! (set "MGEx=!Pl%ownerA%!�����F��ХD�M�ХD") else (set "MGEx=!Pl%ownerB%!�����F��ХD�A!Pl%ownerA%!�����F�ХD")
) else (
 set Pl%ownerA%Skip=
 if !ownerA!==!ownerB! (set "MGEx=!Pl%ownerA%!��_�M���A�æ����F��ХD�M�ХD") else (set "MGEx=!Pl%ownerB%!�����F��ХD�A!Pl%ownerA%!��_�M���A�æ����F�ХD")
)
call:mgdiag
set MGEx=�w�i�J½��^�X
call:mgdiag
for /l %%a in (1,1,16) do set Mop%%a=
goto:ScoreMenu

:set08
call:set08Menu
goto:ScoreMenu

:set08Menu
if not defined F01R0 (set MGEx=���~�G�S�����a&call:mgdiag&goto:eof) else (
 set oMG=%MG%
 set MG=�����g�@���
 set oHp=%Hp%
 set Hp=
 set oCEx=%CEx%
 set oCP=%CP%
 set CP=4
 set oC=%C%
 set C=1
 set oVCM=%VCM%
 for /l %%a in (1,1,16) do (
  set oMop%%a=!Mop%%a!
  set Mop%%a=
  set oPMop%%a=!PMop%%a!
 )
 goto:ScoreMenu
)

:set41
:set42
:set43
if %C%==1 set PN=���N����&set Hp=�N��䦸��
if %C%==2 set PN=�ϥβʸ�&set Hp=�N���r��
if %C%==3 set PN=�쩵�v�ɶi��&set Hp=����N�q
set BMG=
set MG=%SN%�v�o���a
set BHp=
set Hp=�аO!PN!�����a�A�Ʀr�j�p%Hp%
set CEx=�B�@%PN%�����a�]�`�N�G���B�@���i�M���^
for /l %%a in (1,1,16) do set PMop%%a=
goto:PunishScoreMenu

:save41
:save42
:save43
if %Vd%==1 (
 set MGExt=
 for /l %%a in (1,1,16) do (
  if defined PMop%%a (
   if %C%==1 set/a "Pl%%aS4%C%R0-=5*PMop%%a,Pl%%aC4%C%R0+=1,MGExt+=1"
   if %C%==2 set/a "Pl%%aS4%C%R0-=2*PMop%%a,Pl%%aC4%C%R0+=1,MGExt+=1"
   if %C%==3 set/a "Pl%%aS4%C%R0-=5,Pl%%aC4%C%R0+=1,MGExt+=1"
   set Pl%%aS4%C%R0n=!Pl%%aS4%C%R0!
   for /l %%b in (1,1,!Pl%%aC4%C%R0!) do set Pl%%aS4%C%R0n=!Pl%%aS4%C%R0n!X
   set Pl%%aM4%C%R0=!Pl%%aS4%C%R0n!
  )
 )
 if defined MGExt (set MGEx=!MGExt!��%PN%�����a����F�B�@) else (set MGEx=���ƲM��)
 call:mgdiag
)
set MG=�����g�@���
set Hp=
for /l %%a in (1,1,16) do (set Mop%%a=)
goto:ScoreMenu

:set40
set MG=%oMG%
set Hp=%oHp%
set CEx=%oCEx%
set CP=%oCP%
set C=%oC%
set VCM=%oVCM%
for /l %%a in (1,1,16) do (
 set Mop%%a=!oMop%%a!
 set PMop%%a=!oPMop%%a!
)
goto:eof

:set09
set BMG=
set MG=�]�w�P����
set BHp=
set Hp=
set CP=5
set C=1
goto:OptionMenu

:set51
set MG=�v�ɳW�h
set VCM=0
set BVCM=-1
goto:ManualMenu

:set59
for /l %%a in (1,1,10) do (
 if %%a==4 (
  if not defined F03R%R% set OP%%aV=
 ) else (
 set OP%%aV=
 )
)
goto:OptionMenu

:set50
set C=9
goto:set-1

:set00
color
call:DT
>>"%~dpn0log.txt" echo;%_DT%�@�����F�p���O�{��
>>"%~dpn0log.txt" echo;~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~��~ 
endlocal&endlocal
title �R�O���ܦr��&cls
goto:eof

:osu�I�v�O.dat
set Manual1=�@�@�@�@ �Ĥ���C^&T�R�κ[�ͽ��p�Xosu^^!�j���v�ɳW�h�@�@�@�@�@�@�@�@�@�@
set Manual2=�@�έp���O�{���A�̰�������ӡ@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual3=�@��ѡB���v�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual4=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual5=�@�@���W�h�����@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual6=�@���}���D�]�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual7=�L���С@�Т��϶��@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual8=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual9=�@�����a�X�D�D�]���D�D�ɡ^�@and�@��q�v�ಾ �@�@�@�@�@�@�@�@�@�@�@�@
set Manual10=�@�@�D�D�D���ġ@or�@�ܦh�D�D�@or�@���G�q���W�١@or�@�����ХD�@�@�@�@
set Manual11=��ХD�@�Т��϶��@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual12=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual13=�@�����a��q�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual14=�@�@�D�q�����ơ@�@�@�@�@�@�@�@�@�@�@�@�D�{�P���a�]���D�D�ɡ^�@�@�@�@
set Manual15=�ХD�@�Т��϶��@�@�@�@�@�@�@�@�@�@�@�b�@�@�ץD�D�����@�Ϣ��@�@�@�@�@
set Manual16=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@����@�b�׵y�L�L���@�Ϣ��@�@�@�@�@
set Manual17=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�S���@�@�ק����L���@�Т��϶��@�@�@
set Manual18=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual19=�@���^�X�o���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual20=�@�@�D�o���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual21=�q�������@�Ϣ��@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual22=�Աѡ@�@�@�Ϣ��@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual23=�����@�@�@�Т��@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual24=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual25=�@�@�D�[���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual26=���ƤH�L���@�Ϣ�*[^(�L���H��/2^)-�^�X�ƦW+1]/^(�L���H��/2^) �@�@�˥h�p��
set Manual27=�_�ƤH�L���@�Ϣ�*[^(�L���H��+1^)/2-�^�X�ƦW+1]/[^(�L���H��+1^)/2] �����
set Manual28=���u���@���@�Ϣ��@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual29=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual30=�W�L�@�b���װ����ס@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual31=�@�@�D���y�@�@�@�@�@�@�@�@�@�@�@�@�@�@�D�s�����ס@or�@�S���ܹL���@
set Manual32=�����@�Ϣ��@�@�@�@�@�@�@�@�@�@�@�@�ХD�@�Т��ϵL���y�϶��@�@�@�@�@�@
set Manual33=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual34=�@�@�D�q���ܪ�^(6^:30^)�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual35=�ХD�@�ίv�@�^�X����q�϶��@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual36=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual37=�@������m�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual38=�@�@�D��ХD�@�@�@�@�@�@�@�@�@�@�@�@�@�D�ХD�@�@�@�@�@�@�@�@�@�@�@�@
set Manual39=��ХD���W�@���a�A��@�i�U�^�X�@�@�ХD���U�@���a�A��@�i�U�^�X�@�@�@
set Manual40=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual41=�̫�@���ԳN½��@�ХD��ӡ׼��y�@���M�ר�L�H���y�@�@�@�@�@�@�@�@�@
set Manual42=�@���ԳN½��@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual43=�@�@�D���Ƴ̫᪺�����ίv�@�@�@�@�@�@�@�D�S�������@�@�@�@�@�@�@�@�@�@
set Manual44=�ХD�����Ƴ̫᪺���@�@�@�@�@�@�@�@�ХD�����Ƴ̫�S�M�������@�@�@�@�@
set Manual45=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual46=�@�@�D�ХD��ӡ@�@�@�@�@�@�@�@�@�@�@�@�D���M�@�@�@�@�@�@�@�@�@�@�@�@
set Manual47=�ХD�@�o���A�������H�@�@�@�@�@�@�@���ХD�M���ƲĤ@�~�@�o���A�������H
set Manual48=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual49=���ƦW�[���Υ������]�A�������H�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual50=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual51=�@���g�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual52=�@�@�D�ô���m�@or�@���a�X�F�D�D�@�@�@�D�F�ܡ@�@�@�@�@�@�@�@�@�@�@�@
set Manual53=���@���@�Т��@�@�@�@�@�@�@�@�@�@�@�@�Ӧr�@�Т��@�@�@�@�@�@�@�@�@�@�@
set Manual54=�w���^�@�϶��@�@�@�@�@�@�@�@�@�@�@�@�y�@�@�϶��@�@�@�@�@�@�@�@�@�@�@
set Manual55=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual56=�@�@�D�쩵���ɡ@�@�@�@�@�@�@�@�@�@�@�@�D���P�@�@�@�@�@�@�@�@�@�@�@�@
set Manual57=�@���Т��϶��@�@�@�@�@�@�@�@�@�@�@���A���סТ����@�����@�@�@�@�@�@�@
set Manual58=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual59=�@�@�����������@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set/a "eoManual=59,ePoManual=eoManual-19,eoManualn=eoManual+1,ManualRs=19*190/59,ManualRst=ManualRs%%10"
if !ManualRst! neq 0 set/a ManualRs+=10
set/a "ManualRs/=10,ePageoManual=20-ManualRs"
set ManualRNSs=
for /l %%a in (1,1,!ManualRs!) do (set ManualRNSs=#!ManualRNSs!)