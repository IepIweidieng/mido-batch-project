:BAT start
@title �{�����J���K�K Now Loading�K&echo off&setlocal enableextensions&if not "%1"=="" goto %1
>nul chcp 950&call:DT
if exist "%~dpn0log.txt" (
 for /f "tokens=* delims= usebackq" %%a in ("%~dpn0log.txt") do (
  if "%%a"=="�L�G�ʧ@���� --------------------------------------------- " (
   >>"%~dpn0log.txt" echo ---------------------------------------------------------- 
  ) else (
   >"%~dpn0log.txt" echo �L�G�ʧ@���� --------------------------------------------- 
  )
 )
) else (
 >"%~dpn0log.txt" echo �L�G�ʧ@���� --------------------------------------------- 
)
>>"%~dpn0log.txt" echo %_DT%�@�ҰʤF�O���O�{��
echo Microdoft "arring"...
setlocal enabledelayedexpansion
call:readsave
goto start

:readsave
for /f "tokens=1 delims=| usebackq" %%a in ("%~dpn0�s��.dat") do %%a
set cls=cls
goto :eof

:storesave
call:%MenuType%
echo �ܢ��@�@�ڢ��������......
>nul 2>&1 del /f /q /a "%~dpn0�s��temp.dat"
for /f "tokens=1 delims==" %%a in ('set') do (>>"%~dpn0�s��temp.dat" echo set %%a=!%%a!)
>nul 2>&1 del /f /q /a "%~dpn0�s��.dat"
>nul 2>&1 copy /y "%~dpn0�s��temp.dat" "%~dpn0�s��.dat"
>nul 2>&1 del /f /q /a "%~dpn0�s��temp.dat"
attrib +r -a "%~dpn0�s��.dat"
goto :eof

:DT
for /f "tokens=1-4 delims=/ " %%a in ("%date%") do set _DoDate=%%a�~%%b��%%c��]%%d�^
for /f "tokens=1-4 delims=:. " %%e in ("%time%") do set _DoTime=%%e��%%f��%%g���I%%h
set _DT=%_DoDate%%_DoTime%
goto :eof

:start
%cls%&title �{���}�l���K�K Now Loading...
%cls%&echo Microdoft "arring"
call:DT
>>"%~dpn0log.txt" echo %_DT%�@�}�l�F�O���O�{��
>nul timeout /t 1 /nobreak
color 27&goto ready

:restart
%cls%&color
title �{�����s�}�l���K�K Now Loading...
echo Microdoft re"arring"
call:DT
>>"%~dpn0log.txt" echo %_DT%�@���}�F�O���O�{��
>nul timeout /t 1 /nobreak
color 27&goto ready

:ready
%cls%&color 2f
title �O���O
set MG=�Ы��U�ﶵ
echo;�@�@%MG%�C
echo.
set NT=����@�i�J�O���O�F����@����
echo �@%NT:~,8%
choice /n /c zxqr /m "�@%NT:~-5%"
call:DT
if %errorlevel%==4 (
 >>"%~dpn0log.txt" echo %_DT%�@%MG% "%NT%" R
 color 27&goto restart
)
if %errorlevel%==3 (
 >>"%~dpn0log.txt" echo %_DT%�@%MG% "%NT%" Q
 color 27&goto set00
)
if %errorlevel%==2 (
 >>"%~dpn0log.txt" echo %_DT%�@%MG% "%NT%" X
 color 27&goto set00
)
if %errorlevel%==1 (
 >>"%~dpn0log.txt" echo %_DT%�@%MG% "%NT%" Z
 set CP=0
 set C=1
 color 27&echo;&goto setdefining
)
goto ready

:setdefining
for /l %%a in (0,1,4) do (
 for /l %%b in (0,1,9) do (
  set SN%%a%%b=
 )
)
set SN01=���a�n���@�@&set Ex01=�i�檱�a���v�ɵn��&set ESp01=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set SN02=�ۧڤ��С@�@&set Ex02=�i�J�ۧڤ����ˮ֪�&set ESp02=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set SN03=�ť��D�D�@�@&set Ex03=�i�J�q���D�D���ˮ֪�&set ESp03=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set SN04=��ܺq���@�@&set Ex04=�i�J��ܺq�����ˮ֪�&set ESp04=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set SN05=�}�l�^�X�@�@&set Ex05=�i�J�p�ɫǡA�ö}�l�o�Ӻq���^�X&set ESp05=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set SN06=�U�@�^�X�@�@&set Ex06=�i�J�U�@�^�X&set ESp06=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set SN07=½��^�X�@�@&set Ex07=�i�J½��^�X&set ESp07=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set SN08=�����g�@�@�@&set Ex08=�}�ү����g�@���&set ESp08=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set SN00=�h�X�@�@�@�@&set Ex00=�h�X�O���O�{��&set ESp00=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@

set SN11=�D�D����j�M&set Ex11o=@�ť��F�S���A��j�M����r���D�D����ХD#�B�@&set ESp11=�@�@�@�@�@�@�@�@�@�@�@�@�@
set SN12=�D�D�L�h�@�@&set Ex12o=@�ť��F�@�ӥH�W�D�D����ХD#�B�@&set ESp12=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set SN13=�D�D���q���W&set Ex13o=@�H�q���W�٧@���D�D����ХD#�B�@&set ESp13=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set SN15=�����ХD���&set Ex15o=@�N�ХD��浹�����a����ХD#�B�@&set ESp15=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set SN10=���}�@�@�@�@&set Ex10=���}�D�D�ť��ˮ֪�&set ESp10=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@

set SN21=�q�������g�@&set Ex21o=@��ܤF�v�ɤ��w�Q��L���q�����ХD#�B�@&set ESp21=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set SN23=�����׫ŧi�@&set Ex23=�����ХD���ܩҿ�q���N�޵o�����צ^�X�����p&set ESp23=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set SN25=��q�����@�@&set Ex25=�i���ХD�ҿ諸�q���O�_�ŦX�D�D����M&set ESp25=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set SN20=���}�@�@�@�@&set Ex20=���}�q������ˮ֪�&set ESp20=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@

set SN31=�����^�X�@�@&set Ex31=����p�ɡA�i�J���a�Ʀ�n����&set ESp31=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set SN30=���}�@�@�@�@&set Ex30=���}�q������ˮ֪�&set ESp30=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@

set SN41=���N������m&set Ex41=�g�@���N������m�����a&set ESp41=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set SN42=�ϥβʸܡ@�@&set Ex42=�g�@�ϥβʸܪ����a&set ESp42=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set SN43=�쩵�v�ɶi��&set Ex43=�g�@�쩵�v�ɶi�ת����a&set ESp43=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set SN40=���}�@�@�@�@&set Ex40=���}�����g�@���&set ESp40=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
goto set-1

:set-1
title �O���O���
set MG=��ܰO���O����
set Hp=
set CP=0
for /l %%a in (1,1,16) do set Mop%%a=
goto ScoreMenu

:ScoreMenu
set MenuType=Menu
set Hpdiag=
set Mopdiag=
if not defined SN%CP%%C% goto ScoreMenuS
for /l %%a in (0,1,9) do set Sl%%a= 
set SN=!SN%CP%%C%!&set Ex=!Ex%CP%%C%!&set ESp=!ESp%CP%%C%!&set Sl%C%=�n 
for /l %%a in (1,1,9) do (
 set Ml%%a=!Sl%%a!&set M%%a=!SN%CP%%%a!
 if "!F%CP%%%aR0!"=="1" set Mop%%a=[�w����]
 if "!F%CP%%%aR%R%!"=="0" set Mop%%a=[�p�ɰ���]
 if "!F%CP%%%aR%R%!"=="1" set Mop%%a=[�w����]
 if "!F%CP%%%aR%R%!"=="2" set Mop%%a=[�p�ɤ�......]
 if "!F%CP%%%aR%R%!"=="3" set Mop%%a=[�|���벼]
 if "%CP%""%UDTurn%"=="0""1"  set Mop7=[�w�i�J½��^�X]
 if %CP%==0 if defined SN%CP%%%a (if not defined Mop%%a set Mop%%a=......) else (set Mop%%a=)
)
set Ml10=%Sl0%&set M10=!SN%CP%0!&set Mop10=......
if not %CP%==3 call:PlsScore
call:Menu
if %CP%==4 (
 set NT=��/���� �W�U��ܡ@���� �T�w�@���� ���}
) else (
 set NT=��/���� �W�U��ܡ@���� �T�w�@���� ���}�@���� �����g�@���
)
if "%CP%""!F05R%R%!"=="3""2" (choice /n /c swzxqrc0 /t 1 /d 0 /m "%NT%") else (choice /n /c swzxqrc /m "%NT%")
if %errorlevel%==8 (call:set05Timer&goto ScoreMenu)
if %errorlevel%==7 (if not %CP%==4 call:set08Menu&goto ScoreMenu)
if %errorlevel%==6 (
 call:DT& >>"%~dpn0log.txt" echo !_DT!�@%MG% "%NT%"�@%SN%�uR�v
 color 27&goto restart
)
if %errorlevel%==5 (
 call:DT& >>"%~dpn0log.txt" echo !_DT!�@%MG% "%NT%"�@%SN%�uQ�v
 color 27&goto set00
)
if %errorlevel%==4 (
 if %C%==0 (
 set Vd=2&echo;&goto setdiag
 ) else (
  set C=0&goto ScoreMenu
 )
)
if %errorlevel%==3 (
 if "%CP%""!F05R%R%!"=="3""2" call:set05Timer
 set Vd=2&echo;&goto setdiag
)
if %errorlevel%==2 (
 :ScoreMenuW
 if %C% leq 0 (set C=10) else (set /a C-=1)
 if not defined SN!CP!!C! goto ScoreMenuW
 goto ScoreMenu
)
if %errorlevel%==1 (
 :ScoreMenuS
 if %C% geq 10 (set C=0) else (set /a C+=1)
 if not defined SN!CP!!C! goto ScoreMenuS
 goto ScoreMenu
)
goto ScoreMenu

:CheckScoreMenu
set MenuType=CheckMenu
set Hpdiag=
set Mopdiag=
if %VCM% gtr 0 if not defined Pl%VCM% goto CheckScoreMenuS
for /l %%a in (-1,1,16) do set Sl%%a= 
set Sl%VCM%=�n
for /l %%a in (1,1,16) do set CMl%%a=!Sl%%a!
set CMl17=%Sl-1%&set Mop17=......
set CMl18=%Sl0%&set Mop18=......
set MopNo=1
for /l %%a in (1,1,16) do (
 set found=
 for /l %%b in (1,1,16) do (
  if !Mop%%b!==%%a set/a "Mop%%b=MopNo,found+=1"
 )
 if defined found set/a MopNo+=1
)
set/a CMop=%MopNo%+1
set CM17=�M���аO
call:CheckMenu
set NT=��/���� �W�U��ܡ@��/���� �s��аO^(0-!CMop!^)�@���� �аO�@���� ���}�@���� �����g�@���
choice /n /c adswzxc /m "%NT%"
if %errorlevel%==7 (if not %CP%==4 call:set08Menu&goto CheckScoreMenu)
if %errorlevel%==6 (
 if %VCM%==0 (
 set Vd=3&echo;&goto savediag
 ) else (
  set VCM=0
 )
 goto CheckScoreMenu
)
if %errorlevel%==5 (
 if %VCM% gtr 0 (
  if defined Mop%VCM% (
   set Mop%VCM%=
  ) else (
   set Mop%VCM%=!CMop!
  )
  goto CheckScoreMenu
 )
 set Vd=3&echo;&goto savediag
 goto CheckScoreMenu
)
if %errorlevel%==4 (
 :CheckScoreMenuW
 if !VCM! leq -1 (set VCM=16) else (set /a VCM-=1)
 if !VCM! gtr 0 if not defined Pl!VCM! goto CheckScoreMenuW
 goto CheckScoreMenu
)
if %errorlevel%==3 (
 :CheckScoreMenuS
 if !VCM! geq 16 (set VCM=-1) else (set /a VCM+=1)
 if !VCM! gtr 0 if not defined Pl!VCM! goto CheckScoreMenuS
 goto CheckScoreMenu
)
if %errorlevel%==2 (
 if !Mop%VCM%! lss 16 set/a Mop%VCM%+=1
 goto CheckScoreMenu
)
if %errorlevel%==1 (
 if !Mop%VCM%! gtr 0 set/a Mop%VCM%-=1
 goto CheckScoreMenu
)
goto CheckScoreMenu

:PunishScoreMenu
set MenuType=CheckMenu
set Hpdiag=
set Mopdiag=
if %VCM% gtr 0 if not defined Pl%VCM% goto PunishScoreMenuS
for /l %%a in (-1,1,16) do set Sl%%a= 
set Sl%VCM%=�n
for /l %%a in (1,1,16) do (
 set CMl%%a=!Sl%%a!
 if defined PMop%%a (set Mop%%a=!Pl%%aM%CP%%C%R0!���@!PMop%%a!) else (set Mop%%a=!Pl%%aM%CP%%C%R0!)
)
set CMl17=%Sl-1%&set Mop17=......
set CMl18=%Sl0%&set Mop18=......
set CM17=�M���аO
call:CheckMenu
if %CP%==4 (
 set NT=��/���� �W�U��ܡ@��/���� �s��аO^(1-16^)�@���� �аO�@���� ���}
) else (
 set NT=��/���� �W�U��ܡ@��/���� �s��аO^(1-16^)�@���� �аO�@���� ���}�@���� �����g�@���
)
choice /n /c adswzxc /m "%NT%"
if %errorlevel%==7 (if not %CP%==4 call:set08Menu&goto PunishScoreMenu)
if %errorlevel%==6 (
 if %VCM%==0 (
 set Vd=3&echo;&goto savediag
 ) else (
  set VCM=0
 )
 goto PunishScoreMenu
)
if %errorlevel%==5 (
 if %VCM% gtr 0 (
  if defined PMop%VCM% (
   set PMop%VCM%=
  ) else (
   set PMop%VCM%=1
  )
  goto PunishScoreMenu
 )
 set Vd=3&echo;&goto savediag
 goto PunishScoreMenu
)
if %errorlevel%==4 (
 :PunishScoreMenuW
 if !VCM! leq -1 (set VCM=16) else (set /a VCM-=1)
 if !VCM! gtr 0 if not defined Pl!VCM! goto PunishScoreMenuW
 goto PunishScoreMenu
)
if %errorlevel%==3 (
 :PunishScoreMenuS
 if !VCM! geq 16 (set VCM=-1) else (set /a VCM+=1)
 if !VCM! gtr 0 if not defined Pl!VCM! goto PunishScoreMenuS
 goto PunishScoreMenu
)
if %errorlevel%==2 (
 if !PMop%VCM%! lss 16 set/a PMop%VCM%+=1
 goto PunishScoreMenu
)
if %errorlevel%==1 (
 if !PMop%VCM%! gtr 1 set/a PMop%VCM%-=1
 goto PunishScoreMenu
)
goto PunishScoreMenu

:EnterNameMenu
set MenuType=CheckMenu
set Hpdiag=
set Mopdiag=
for /l %%a in (-1,1,16) do set Sl%%a= 
set Sl%VCM%=�n
for /l %%a in (1,1,16) do (
 set CMl%%a=!Sl%%a!
 if defined Pln%%a (set Mop%%a=���@!Pln%%a!) else (set Mop%%a=[�L���a])
)
set CMl17=%Sl-1%&set Mop17=......
set CMl18=%Sl0%&set Mop18=......
set CM17=���]�@�@
call:CheckMenu
set NT=��/���� �W�U��ܡ@���� ��J�@���� ���}
choice /n /c swzx /m "%NT%"
if %errorlevel%==4 (
 if %VCM%==0 (
 set Vd=3&echo;&goto savediag
 ) else (
  set VCM=0
 )
 goto EnterNameMenu
)
if %errorlevel%==3 (
 if %VCM% gtr 0 (
  call:CheckMenu
  set/p Pln%VCM%=��J���a�W�٨ë��U�Ӣ�������@
  if "!Pln%VCM%!"==" " set Pln%VCM%=
  for /l %%a in (1,1,16) do (
   if not %%a==%VCM% if defined Pln%VCM% (
    if "!Pln%%a!"=="!Pln%VCM%!" set Pln%%a=
   )
  )
  goto EnterNameMenu
 )
 set Vd=3&echo;&goto savediag
 goto EnterNameMenu
)
if %errorlevel%==2 (
 if %VCM% leq -1 (set VCM=16) else (set /a VCM-=1)
 goto EnterNameMenu
)
if %errorlevel%==1 (
 if %VCM% geq 16 (set VCM=-1) else (set /a VCM+=1)
 goto EnterNameMenu
)
goto EnterNameMenu

:Menu
%cls%&color 2f
echo;�@�@�@�@�@�@�@�@�@�@�@�@�@��%MG%��
echo.
for /l %%a in (1,1,10) do (
 if %%a==6 (echo;�@!Ml%%a:~,1!�@�@�@!M%%a!�@�@�@�@!Hpdiag!) else (
  if %%a==7 (echo;�@!Ml%%a:~,1!�@�@�@!M%%a!�@�@�@�@�@�@�@�@!Mopdiag!) else (echo;�@!Ml%%a:~,1!�@�@�@!M%%a!)
 )
 echo;�@!Ml%%a:~1!�@�@�@�@�@�@�@�@�@!Mop%%a!
)
echo.
echo;�@�@�^�X:%R% %PlSn:~1%
echo;�@�@�ХD:!Pl%ownerA%! �ť��D�D:!Pl%ownerB%!
echo;�@�@%ESp%%Ex%
echo.
goto :eof

:CheckMenu
%cls%&color 2f
echo;�@�@�@�@�@�@�@�@�@�@�@�@�@��%MG%��
echo.�@�@%Hp%
echo.
for /l %%a in (1,1,16) do (
 if %%a==10 (echo;�@!CMl%%a!�@�@�@!Pl%%a!�@�@!Mop%%a!�@�@�@�@!Hpdiag!) else (
  if %%a==12 (echo;�@!CMl%%a!�@�@�@!Pl%%a!�@�@!Mop%%a!�@�@�@�@�@�@�@�@!Mopdiag!) else (echo;�@!CMl%%a!�@�@�@!Pl%%a!�@�@!Mop%%a!)
 )
)
echo.
echo;�@%CMl17%�@�@�@%CM17%�@�@%Mop17%
echo;�@%CMl18%�@�@�@���}�@�@�@�@%Mop18%
echo.
echo;�@�@�^�X:%R% %PlSn:~1%
echo;�@�@�ХD:!Pl%ownerA%! �ť��D�D:!Pl%ownerB%!
echo.
echo.
goto :eof

:setdiag
:savediag
if "%VCM%"=="-1" if %Vd% gtr 2 set Vd=2
if %Vd% geq 3 set VAr1=�@&set VAl1=�@&set VAr2=�@&set VAl2=��
if %Vd%==2 set VAr1=�@&set VAl1=��&set VAr2=��&set VAl2=�@
if %Vd% leq 1 set VAr1=��&set VAl1=�@&set VAr2=�@&set VAl2=�@
if "%MenuType%"=="Menu" (
 set Hpdiag=�O�_�n%Ex%�H
 set Mopdiag=�O��%VAr1%�@�@%VAl1%���F
) else (
 if "%VCM%"=="-1" (
  if %CP%%C%==01 (set Hpdiag=�O�_�n�i�歫�]�H) else (set Hpdiag=�O�_�n�M���аO�H)
  set Mopdiag=�O��%VAr1%�@�@%VAl1%���F
 ) else (
  set Hpdiag=�O�_�n%CEx%�H
  set Mopdiag=�O��%VAr1%�@�@%VAl1%���F%VAr2%�@�@%VAl2%�٤��n
 )
)
call:PlsScore
call:%MenuType%
set NT=��/���� ���k��ܡ@���� �T�w�@���� ����
choice /n /c adzx /m "%NT%"
if %errorlevel%==4 (
 if "%MenuType%"=="Menu" (
  goto ScoreMenu
 ) else (
  if %CP%%C%==01 (goto EnterNameMenu)
  if %CP%%C%==02 (goto PunishScoreMenu)
  if %CP%==04 (goto PunishScoreMenu)
  goto CheckScoreMenu
 )
)
if %errorlevel%==3 (
 if %Vd%==3 (
  echo;&if %CP%%C%==01 (goto EnterNameMenu)
  if %CP%%C%==02 (goto PunishScoreMenu)
  if %CP%==04 (goto PunishScoreMenu)
  goto CheckScoreMenu
 ) else (
  if "%MenuType%"=="Menu" (
   if %Vd%==1 (
    set ESp=
    set Ex=
    set VCM=1
    call:storesave
    goto set%CP%%C%
   )
   echo;&goto ScoreMenu
  ) else (
   if "%VCM%"=="-1" (
    if %CP%%C%==01 (
     if %Vd%==1 (
      for /l %%a in (1,1,16) do set Pln%%a=!Pl%%a!
      set MGEx=���a�n���W�٤w���]
      call:mgdiag
     )
     goto EnterNameMenu
    ) else (
     if %Vd%==1 (
      set CMop=0&for /l %%a in (1,1,16) do (set Mop%%a=&set PMop%%a=)
      set MGEx=�аO�w���]
      call:mgdiag
     )
    if %CP%%C%==02 (goto PunishScoreMenu)
    if %CP%==4 (goto PunishScoreMenu)
    goto CheckScoreMenu
    )
   ) else (
    set ESp=
    set Ex=
    if %Vd%==1 call:storesave
    goto save%CP%%C%
   )
  )
 )
)
if %errorlevel%==2 (
 if "%MenuType%"=="Menu" (
  if %Vd% geq 2 (set Vd=2) else (set /a Vd+=1)
 ) else (
  if "%VCM%"=="-1" (
   if %Vd% geq 2 (set Vd=2) else (set /a Vd+=1)
  ) else (
   if %Vd% geq 3 (set Vd=3) else (set /a Vd+=1)
  )
 )
 goto savediag
)
if %errorlevel%==1 (
 if %Vd% leq 1 (set Vd=1) else (set /a Vd-=1)
 goto savediag
)
goto savediag

:mgdiag
set Hpdiag=%MGEx%
call:DT&>>"%~dpn0log.txt" echo !_DT!�@%MGEx%
set Mopdiag=�ֽT�w
call:%MenuType%
set NT=���� �T�w�@���� ����
choice /n /c zx /m "%NT%"
if %errorlevel%==2 (
 goto :eof
)
if %errorlevel%==1 (
 goto :eof
)
goto mgdiag

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
  set/a "Pl%%aS-=(!Pl%%aC!/3)*20,Pl%%aC%%=3"
  set PlSn=!PlSn!:!Pl%%aS!
  for /l %%b in (1,1,!Pl%%aC!) do set PlSn=!PlSn!X
 )
)
goto :eof

:set01
set MG=�n�����a
set Hp=�̷Ӫ��a�b�h�H�C���Ф�����m�n�����a�W�١A��J��@�Ů���i�R�����a
set CEx=�����n�����a
for /l %%a in (1,1,16) do set Pln%%a=!Pl%%a!
goto EnterNameMenu

:save01
if %Vd%==1 (
 for /l %%a in (1,1,16) do (
  set Pl%%a=!Pln%%a!
 )
 set ownerL=
 for /l %%a in (1,1,16) do (
  if defined Pl%%a (
   set/a ownerL+=1
   set owner!ownerL!=%%a
  )
 )
 if defined ownerL (
  set MGEx=�n�����a�����A�@�n��!ownerL!�쪱�a
  call:mgdiag
  set F01R0=1
  set C=2
 ) else (
  set MGEx=���~�G�S�����a�Q�n��
  call:mgdiag
  goto set01
 )
) else (
 set C=1
)
goto set-1

:set02
if not defined F01R0 (set MGEx=���~�G�٥��i�檱�a�n��&call:mgdiag&goto ScoreMenu) else (
 set MG=�ۧڤ����ˮ֪�
 set Hp=�аO�����ۧڤ��Ъ����a�A�Ʀr�j�p����N�q�C
 set CEx=�B�@���i��ۧڤ��Ъ����a
 for /l %%a in (1,1,16) do set PMop%%a=!Pl%%aM02R0!
 goto PunishScoreMenu
)

:save02
if %Vd%==1 (
 set MGExt=
 for /l %%a in (1,1,16) do (
  if defined Pl%%a (
   if defined Mop%%a (
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
 if defined MGExt (set MGEx=�w�B�@!MGExt!�쥼�i��ۧڤ��Ъ����a) else (set MGEx=�S�����i��ۧڤ��Ъ����a)
 call:mgdiag
) else (
 set C=2
)
goto set-1

:set03
if not defined F02R0 (set MGEx=���~�G�٥��i��ۧڤ����ˮ�&call:mgdiag&goto ScoreMenu) else (
 set MG=�ť��D�D�ˮ֪�
 set Hp=
 set CP=1
 set C=1
 for /l %%a in (1,1,16) do set Mop%%a=
 for /l %%a in (1,1,8) do (
  if defined Pl%ownerB%C1%%aR%R% (
   set Ex1%%a=!Ex1%%ao:@=�M��!
   set Ex1%%a=!Ex1%%a:#=��!
   set Mop%%a=[�w�B�@]
  ) else (
   set Ex1%%a=!Ex1%%ao:@=��!
   set Ex1%%a=!Ex1%%a:#=�i��!
  )
 )
 goto ScoreMenu
)

:set11
:set12
:set13
:set15
if defined Pl%ownerB%C1%C%R%R% (
 set Pl%ownerB%S1%C%R%R%=
 set Pl%ownerB%C1%C%R%R%=
 set Ex1%C%=!Ex1%C%o:@=��!
 set Ex1%C%=!Ex1%C%:#=�i��!
 set Mop%C%=
 set MGEx=�w�M����ХD!Pl%ownerB%!��%SN%�B�@
 call:mgdiag
) else (
 set/a "Pl%ownerB%S1%C%R%R%=-5,Pl%ownerB%C1%C%R%R%=1"
 set Ex1%C%=!Ex1%C%o:@=�M��!
 set Ex1%C%=!Ex1%C%:#=��!
 set Mop%C%=[�w�B�@]
 set MGEx=�w���ХD!Pl%ownerB%!�i��%SN%�B�@
 call:mgdiag
)
goto ScoreMenu

:set10
set F03R%R%=1
set C=4
goto set-1

:set04
if not defined F03R%R% (set MGEx=���~�G�٥��i��D�D�ť��ˮ�&call:mgdiag&goto ScoreMenu) else (
 set MG=�q������ˮ֪�
 set Hp=
 set CP=2
 if defined oC (set C=%oC%) else (set C=1)
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
 goto ScoreMenu
)

:set21
if defined Pl%ownerA%C2%C%R%R% (
 set Pl%ownerA%S2%C%R%R%=
 set Pl%ownerA%C2%C%R%R%=
 set Ex2%C%=!Ex2%C%o:@=��!
 set Ex2%C%=!Ex2%C%:#=�i��!
 set Mop%C%=
 set MGEx=�w�M���ХD!Pl%ownerA%!��%SN%�B�@
 call:mgdiag
) else (
 set/a "Pl%ownerA%S2%C%R%R%=-5,Pl%ownerA%C2%C%R%R%=1"
 set Ex2%C%=!Ex2%C%o:@=�M��!
 set Ex2%C%=!Ex2%C%:#=��!
 set Mop%C%=[�w�B�@]
 set MGEx=�w��ХD!Pl%ownerA%!�i��%SN%�B�@
 call:mgdiag
)
goto ScoreMenu

:set23
if defined HardMap23R%R% (
 set HardMap23R%R%=
 if defined HardMapR%R% (
  set/a "Pl%ownerA%S23R%R%=-5-Pl%ownerA%S32R%R%"
  set Pl%ownerA%C23R%R%=1
  set Mop%C%=[���ŧi�D�w�B�@]
  set MGEx=�ХD!Pl%ownerA%!�������צ^�X�ŧi���A�w�]�����ŧi
  call:mgdiag
  set MGEx=�w��ХD!Pl%ownerA%!�i��V�ɰ������g�@
  call:mgdiag
 ) else (
  set Mop%C%=[���ŧi]
  set MGEx=�ХD!Pl%ownerA%!�������צ^�X�ŧi���A�w�]�����ŧi
  call:mgdiag
 )
) else (
 set Mop%C%=[�w�ŧi]
 set MGEx=�ХD!Pl%ownerA%!�������צ^�X�ŧi���A�w�]���w�ŧi
 call:mgdiag
 set HardMap23R%R%=1
 if not defined HardMapR%RB% (
  set Pl%ownerA%S23R%R%=
  set Pl%ownerA%C23R%R%=
  if defined HardMapR%R% (
   set MGEx=�w�M���ХD!Pl%ownerA%!���V�ɰ������g�@
   call:mgdiag
  )
 )
)
goto ScoreMenu

:set25
set MG=���t���V�f����
set Hp=�N�{�����q���P�D�D���������a�аO�u0�v�A�{�������������a�аO�䥦�Ʀr
set CEx=������M
for /l %%a in (1,1,16) do set Mop%%a=!Pl%%aM25R%R%!
goto CheckScoreMenu

:save25
if %Vd%==1 (
 set/a "RP=0,ForRP=0"
 for /l %%a in (1,1,16) do (
  if defined Mop%%a (
   set/a RP+=1
   if "!Mop%%a!"=="0" set/a ForRP+=1
  )
  set Pl%%aM25R%R%=!Mop%%a!
 )
 set/a "RPt=RP>>1,RPtm=RPt*2"
 if !RPtm! lss !RP! set/a RPt+=1
 set Pl%ownerA%S25R%R%=
 set Pl%ownerA%C25R%R%=
 if !ForRP! geq !RPt! (
  set Pl%ownerA%S25R%R%=5
  set Pl%ownerA%C25R%R%=
  set MGEx=���q���P�D�D�����A�ХD!Pl%ownerA%!��o�F5��
  call:mgdiag
 ) else (
  if !ForRP!==0 (
   set Pl%ownerA%S25R%R%=-5
   set Pl%ownerA%C25R%R%=1
   set MGEx=���q���P�D�D�Y���L���A�w��ХD!Pl%ownerA%!�i���g�@
   call:mgdiag
  ) else (
   set MGEx=���q���P�D�D�L���A�ХD!Pl%ownerA%!�S����o����
   call:mgdiag
  )
 )
 set F25R%R%=1
 set oC=0
) else (
 set oC=5
)
goto set04

:set20
if !F25R%R%!==1 (set F04R%R%=1) else (set F04R%R%=3)
set C=5
goto set-1

:set05
if not defined F03R%R% (set MGEx=���~�G�٥��i��D�D�ť��ˮ�&call:mgdiag&goto ScoreMenu) else (
 if not defined F04R%R% (set MGEx=���~�G�٥��i��q������ˮ�&call:mgdiag&goto ScoreMenu) else (
  if not defined F05R%R% for %%a in (eta etb etc e) do (set Set05Tim%%a=0)
  set MG=���ݡI�p�ɫǡ@!Set05Timeta!:!Set05Timetb!:!Set05Timetc!.!Set05Time!
  set Hp=
  set CP=3
  set C=1
  for /l %%a in (1,1,16) do set Mop%%a=
  if defined F05R%R% goto ScoreMenu
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
  goto ScoreMenu
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
set MG=���ݡI�p�ɫǡ@!Set05Timeta!:!Set05Timetb!:!Set05Timetc!.!Set05Time!
goto :eof

:set31
set MG=�^�X����
set Hp=�L�����е��ƦW�A���Ѫ��Т��A���������СC���Z�u���ɥi�N�Ҧ��������a�æC�Ĥ@
set CEx=�����^�X�ƦW�n�O�A�óB�@�������q�������a
for /l %%a in (1,1,16) do set Mop%%a=!Pl%%aM31R%R%!
if !F05R%R%!==2 (
 set F05R%R%=0
 set MGEx=�p�ɤw����
 call:mgdiag
)
goto CheckScoreMenu

:save31
if %Vd%==1 (
 set/a "RP=0,FailedRP=0,QuitRP=0"
 for /l %%a in (1,1,16) do (
  if defined Pl%%a (
   if defined Mop%%a (
    set/a RP+=1
    if "!Mop%%a!"=="0" (set/a "FailedRP+=1,Pl%%aS31R%R%=0") else (set Pl%%aS31R%R%=5)
   ) else (
    set/a "QuitRP+=1,Pl%%aS31R%R%=-5"
   )
   if defined UDTurn if "!Mop%ownerA%!"=="1" (
    if %%a==%ownerA% set Pl%%aS31R%R%*=5
   ) else (
    if not %%a==%ownerA% set Pl%%aS31R%R%*=5
   )
   if "!Mop%%a!"=="1" (
    set/a Pl%%aS31R%R%+=4
    set MGEx=���a!Pl%%a!���o�Ĥ@�W�A��o�F4�����^�X���y
    call:mgdiag
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
    set MGEx=�s�����צ^�X�A�w��ХD!Pl%ownerA%!�i��V�ɰ������g�@
    call:mgdiag
   )
  ) else (
   set/a "Pl%ownerA%S23R%R%=-5-Pl%ownerA%S32R%R%"
   set Pl%ownerA%C23R%R%=1
   set MGEx=���ŧi�����צ^�X�A�w��ХD!Pl%ownerA%!�i��V�ɰ������g�@
   call:mgdiag
  )
 )
 set Pl%ownerA%C31R%R%=
 set Pl%ownerA%Skip=
 if !Set05TimeR! gtr 39000 (
  set Pl%ownerA%C31R%R%=1
  set Pl%ownerA%Skip=1
  set MGEx=�Э��W�L�������b�A�ХD!Pl%ownerA%!�ݥI�X�Э��L���N��
  call:mgdiag
 )
 set F31R%R%=1
 set F05R%R%=1
 if !F25R%R%!==1 (set C=6) else (set C=4)
 set/a MGExt=RP-FailedRP
 if defined HardMapR%R% (
  if !MGExt! gtr 0 (
   set MGEx=!MGExt!�쪱�a���\�L���A��o�F5�����o���M4���������׼��y
  ) else (
   set MGEx=���x�ШS
  )
 ) else (
  if !MGExt! gtr 0 (
   set MGEx=!MGExt!�쪱�a�L���A��o�F5��
  ) else (
   set MGEx=�S�����a�L��
  )
 )
 call:mgdiag
 if !FailedRP! gtr 0 (set MGEx=!FailedRP!�쪱�a���ѡA�S����o����) else (set MGEx=�S�����a����)
 call:mgdiag
 if !QuitRP! gtr 0 (set MGEx=!QuitRP!�쪱�a�S�������q���A����F���h5�����g�@) else (set MGEx=�Ҧ����a�ҧ����q��)
 call:mgdiag
 if defined UDTurn if "!Mop%ownerA%!"=="1" (
  set MGEx=�ХD!Pl%ownerA%!½�ন�\�A����o�F�������^�X�o��
  call:mgdiag
 ) else (
  set MGEx=�ХD!Pl%ownerA%!½�ॢ�ѡA�䥦���a��o�F�������^�X�o��
  call:mgdiag
 )
) else (
 set C=5
)
goto set-1

:set30
set C=5
goto set-1

:set06
if not "!F04R%R%!!F05R%R%!"=="11" (set MGEx=���~�G�٥������Ӧ^�X&call:mgdiag&goto ScoreMenu) else (
 if "!UDTurn!"=="1" (set MGEx=���~�G½��^�X�w�����A���i�i�J�U�@�^�X�F�v�ɵ���&call:mgdiag&goto ScoreMenu) else (
  set/a "ownerAt%%=ownerL,ownerAt+=1"
  if !ownerAt!==!ownerL! (set EnUDTurn=1) else (set EnUDTurn=)
  if defined Pl!owner%ownerAt%!Skip (
   set Pl!owner%ownerAt%!Skip=
   goto set06
  )
  set ownerB=%ownerA%
  set RB=%R%
  set/a R+=1
  set CP=0
  set C=3
 )
)
set ownerA=!owner%ownerAt%!
set MGEx=�w�i�J�U�@�^�X
call:mgdiag
for /l %%a in (1,1,16) do set Mop%%a=
goto ScoreMenu

:set07
if not "!F04R%R%!!F05R%R%!"=="11" (set MGEx=���~�G�٥������Ӧ^�X&call:mgdiag&goto ScoreMenu) else (
 if not defined EnUDTurn (set MGEx=���~�G�٥������ӽ�&call:mgdiag&goto ScoreMenu) else (
  if "!UDTurn!"=="1" (set MGEx=���~�G½��^�X�w�����A���i�i�J�U�@�^�X�F�v�ɵ���&call:mgdiag&goto ScoreMenu) else (
   set UDTurn=1
   set ownerB=%ownerA%
   set PlSless=%Pl1S%
   set ownerAt=1
   for /l %%a in (2,1,16) do (
    if !Pl%%aS! lss !PlSless! (
     set PlSless=!Pl%%aS!
     set ownerAt=%%a
    )
   )

   set RB=%R%
   set/a R+=1
   set CP=0
   set C=3
  )
 )
)
set ownerA=!owner%ownerAt%!
set MGEx=�w�i�J½��^�X
call:mgdiag
for /l %%a in (1,1,16) do set Mop%%a=
goto ScoreMenu

:set08
call:set08Menu
goto ScoreMenu

:set08Menu
if not defined F01R0 (set MGEx=���~�G�٥��i�檱�a�n��&call:mgdiag&goto :eof) else (
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
 goto ScoreMenu
)

:set41
:set42
:set43
if %C%==1 set PN=���N����&set Hp=�N��䦸�ơC
if %C%==2 set PN=�ϥβʸ�&set Hp=�N���r�ơC
if %C%==3 set PN=�쩵�v�ɶi��&set Hp=����N�q�C
set MG=%PN%�g�@��
set Hp=�аO!PN!�����a�A�Ʀr�j�p%Hp%
set CEx=�B�@%PN%�����a�]�`�N�G���B�@���i�M���^
for /l %%a in (1,1,16) do set PMop%%a=
goto PunishScoreMenu

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
 if defined MGExt (set MGEx=�w�B�@!MGExt!��%PN%�����a) else (set MGEx=�S��%PN%�����a)
 call:mgdiag
)
set MG=�����g�@���
set Hp=
for /l %%a in (1,1,16) do (set Mop%%a=)
goto ScoreMenu

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
goto :eof

:set00
title �O������
call:storesave&call:DT
>>"%~dpn0log.txt" echo %_DT%�@�����F�O���O�{��
>>"%~dpn0log.txt" echo ---------------------------------------------------------- 
>nul timeout /t 1
endlocal