:BAT start
@title �{�����J���K�K Now Loading�K&echo off&setlocal enableextensions&if not "%1"=="" goto %1
>nul chcp 950
if exist "%~dpn0log.txt" (
 for /f "tokens=* usebackq" %%a in ("%~dpn0log.txt") do (
  if "%%a"=="�L�G�ʧ@���� --------------------------------------------- " (
   >>"%~dpn0log.txt" echo;---------------------------------------------------------- 
   goto BAT start continue
  ) else (
   >"%~dpn0log.txt" echo;�L�G�ʧ@���� --------------------------------------------- 
  )
 )
) else (
 >"%~dpn0log.txt" echo;�L�G�ʧ@���� --------------------------------------------- 
)
goto BAT start continue

:BAT start continue
call:DT
>>"%~dpn0log.txt" echo;%_DT%�@�ҰʤF�O���O�{��
echo;Microdoft "arring"
setlocal enabledelayedexpansion
goto start

:readsave
if exist "%~dpn0�s��.dat" for /f "tokens=* usebackq" %%a in ("%~dpn0�s��.dat") do %%a
set prompt=$G
set cls=cls
if not defined OP2V set bellG=
if "%OP2V%"=="2" (set bellG=) else (set bellG=)
call:osu�I�v�O.dat
goto :eof

:storesave
if defined MenuType (
 call:%MenuType%
 set/p="�ܢ��@�@�ڢ��������..."<nul
)
>nul 2>&1 del /f /q /a "%~dpn0�s��temp.dat"
for /f "tokens=1 delims==" %%a in ('set') do (>>"%~dpn0�s��temp.dat" echo;set %%a=!%%a!)
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
call:readsave
mode con cols=38 lines=5
title �{���}�l���K�K Now Loading...
echo;Microdoft "arring"...
call:DT
>>"%~dpn0log.txt" echo;%_DT%�@�}�l�F�O���O�{��
>nul timeout /t 1 /nobreak
goto ready

:restart
call:storesave&call:readsave
mode con cols=38 lines=5
color&title �{�����s�}�l���K�K Now Loading...
echo;Microdoft "arring"...
call:DT
>>"%~dpn0log.txt" echo;%_DT%�@���}�F�O���O�{��
>nul timeout /t 1 /nobreak
goto ready

:ready
%cls%&color 2f
title osu�I�v�ɰO���O
set MG=�Ы��U�ﶵ
echo;�@�@�@�@�@�@�@%MG%%bellG%
echo.
set NT=����@�i�J�O���O�F����@����
echo;�@�@%NT:~,8%
choice /n /c zxqr /m "�@�@%NT:~-5%"
call:DT
if %errorlevel%==4 (
 >>"%~dpn0log.txt" echo;%_DT%�@%MG% "%NT%" R
 set MenuType=
 goto restart
)
if %errorlevel%==3 (
 >>"%~dpn0log.txt" echo;%_DT%�@%MG% "%NT%" Q
 set MenuType=
 call:storesave
 goto set00
)
if %errorlevel%==2 (
 >>"%~dpn0log.txt" echo;%_DT%�@%MG% "%NT%" X
 set MenuType=
 goto set00
)
if %errorlevel%==1 (
 >>"%~dpn0log.txt" echo;%_DT%�@%MG% "%NT%" Z
 set CP=0
 set C=1
 set/p="%bellG%"<nul&goto setdefining
)
goto ready

:setdefining
for /l %%a in (0,1,4) do (
 for /l %%b in (0,1,9) do (
  set SN%%a%%b=
 )
)
set SN01=���a�n��&set Ex01=�i�檱�a���v�ɵn��
set SN02=�ۧڤ���&set Ex02=�i�J�ۧڤ����ˮ֪�
set SN03=�ť��D�D&set Ex03=�i�J�q���D�D���ˮ֪�
set SN04=��ܺq��&set Ex04=�i�J��ܺq�����ˮ֪�
set SN05=�}�l�^�X&set Ex05=�i�J�p�ɫǡA�ö}�l�o�Ӻq���^�X
set SN06=�U�@�^�X&set Ex06=�i�J�U�@�^�X
set SN07=½��^�X&set Ex07=�i�J½��^�X
set SN08=�����g�@&set Ex08=�}�ү����g�@���
set SN09=�]�w�P����&set Ex09=�i�J�]�w�M�������
set SN00=�h�X&set Ex00=�h�X�O���O�{��

set SN11=�D�D����j�M&set Ex11o=@�ť��F�S���A��j�M����r���D�D����ХD#�B�@
set SN12=�D�D�L�h&set Ex12o=@�ť��F�@�ӥH�W�D�D����ХD#�B�@
set SN13=�D�D���q���W&set Ex13o=@�H�q���W�٧@���D�D����ХD#�B�@
set SN15=�����ХD���&set Ex15o=@�N�ХD��浹�����a����ХD#�B�@
set SN10=���}&set Ex10=���}�D�D�ť��ˮ֪�

set SN21=�q�������g�@&set Ex21o=@��ܤF�v�ɤ��w�Q��L���q�����ХD#�B�@
set SN23=�����׫ŧi&set Ex23=�����ХD���ܩҿ�q���N�޵o�����צ^�X�����p
set SN25=��q����&set Ex25=�i���ХD�ҿ諸�q���O�_�ŦX�D�D����M
set SN20=���}&set Ex20=���}�q������ˮ֪�

set SN31=�����^�X&set Ex31=����p�ɡA�i�J���a�Ʀ�n����
set SN30=���}&set Ex30=���}�q������ˮ֪�

set SN41=���N������m&set Ex41=�g�@���N������m�����a
set SN42=�ϥβʸ�&set Ex42=�g�@�ϥβʸܪ����a
set SN43=�쩵�v�ɶi��&set Ex43=�g�@�쩵�v�ɶi�ת����a
set SN40=���}&set Ex40=���}�����g�@���

set SN51=�v�ɻ���&set Ex51=����v�ɻ���
set SN52=�ާ@�n��&set Ex52=�����i��ާ@�ɭ��Ī����L
set OP2L=2&set OP2V1=�}��&set OP2V2=����&set OP2DV=1
set SN53=�@�����ʦ��&set Ex53=�վ�@�������v�ɻ��������
set OP3L=5&set OP3V1=1&set OP3V2=2&set OP3V3=3&set OP3V4=4&set OP3V5=5&set OP3DV=3
set SN59=���]�]�w&set Ex50=�N�Ҧ��]�w�٭쬰�w�]��
set SN50=���}&set Ex50=���}�]�w�P�������
goto set-1

:set-1
mode con cols=80 lines=30
title osu�I�v�ɰO���O ver. 1.00b
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
set SN=!SN%CP%%C%!&set Ex=!Ex%CP%%C%!&set Sl%C%=�n 
for /l %%a in (1,1,9) do (
 set Ml%%a=!Sl%%a!&set M%%a=!SN%CP%%%a!
 if "!F%CP%%%aR0!"=="1" set Mop%%a=[�w����]
 if "!F%CP%%%aR%R%!"=="0" set Mop%%a=[�p�ɰ���]
 if "!F%CP%%%aR%R%!"=="1" set Mop%%a=[�w����]
 if "!F%CP%%%aR%R%!"=="2" set Mop%%a=[�p�ɤ�......]
 if "!F%CP%%%aR%R%!"=="3" set Mop%%a=[�|���벼]
 if "%CP%""%EnUDTurn%"=="0""1"  set Mop7=[�i�i�J½��^�X]
 if "%CP%""%UDTurn%"=="0""1"  set Mop7=[�w�i�J½��^�X]
 if %CP%==0 if defined SN%CP%%%a (if not defined Mop%%a set Mop%%a=......) else (set Mop%%a=)
)
set Ml10=%Sl0%&set M10=!SN%CP%0!&set Mop10=......
if not %CP%==3 call:PlsScore
call:Menu
if %CP%==4 (
 set NT=�W/�U�� �W�U��ܡ@���� �T�w�@���� ���}
) else (
 set NT=�W/�U�� �W�U��ܡ@���� �T�w�@���� ���}�@���� �����g�@
)
if "%CP%""!F05R%R%!"=="3""2" (choice /n /c s2w8zxqrcp0 /t 1 /d 0 /m "%NT%") else (choice /n /c s2w8zxqrcp /m "%NT%")
if %errorlevel%==11 (call:set05Timer&goto ScoreMenu)
if %errorlevel%==10 (
 if defined PlSn echo;%PlSn:~1%|clip
 goto ScoreMenu
)
if %errorlevel%==9 (
 if not %CP%==4 call:set08Menu
 goto ScoreMenu
)
if %errorlevel%==8 (
 call:DT& >>"%~dpn0log.txt" echo;!_DT!�@%MG% "%NT%"�@%SN%�uR�v
 goto restart
)
if %errorlevel%==7 (
 call:DT& >>"%~dpn0log.txt" echo;!_DT!�@%MG% "%NT%"�@%SN%�uQ�v
 call:storesave
 goto set00
)
if %errorlevel%==6 (
 if %C%==0 (
 set Vd=2&set/p="%bellG%"<nul&goto setdiag
 ) else (
  set C=0&goto ScoreMenu
 )
)
if %errorlevel%==5 (
 if "%CP%""!F05R%R%!"=="3""2" call:set05Timer
 set Vd=2&set/p="%bellG%"<nul&goto setdiag
)
if %errorlevel% geq 3 (
 :ScoreMenuW
 if !C! leq 0 (set C=10) else (set/a C-=1)
 if not defined SN!CP!!C! goto ScoreMenuW
 goto ScoreMenu
)
if %errorlevel% geq 1 (
 :ScoreMenuS
 if !C! geq 10 (set C=0) else (set/a C+=1)
 if not defined SN!CP!!C! goto ScoreMenuS
 goto ScoreMenu
)
goto ScoreMenu

:OptionMenu
set MenuType=Menu
set Hpdiag=
set Mopdiag=
if not defined SN%CP%%C% goto OptionMenuS
for /l %%a in (0,1,9) do set Sl%%a= 
set SN=!SN%CP%%C%!&set Ex=!Ex%CP%%C%!&set Sl%C%=�n 
for /l %%a in (1,1,9) do (
 set Ml%%a=!Sl%%a!&set M%%a=!SN%CP%%%a!
 set Mop%%a=
 if defined SN%CP%%%a (
  if not defined OP%%aV set OP%%aV=!OP%%aDV!
  for /l %%b in (1,1,!OP%%aL!) do if %%b==!OP%%aV! (set OP%%aSl%%b=[]) else (set OP%%aSl%%b=  )
  for /l %%b in (!OP%%aL!,-1,1) do set Mop%%a=!OP%%aSl%%b:~,1!!OP%%aV%%b!!OP%%aSl%%b:~1! !Mop%%a!
  if not defined OP%%aL set Mop%%a=......
 )
)
set Ml10=%Sl0%&set M10=!SN%CP%0!&set Mop10=......
if "%OP2V%"=="1" (set bellG=) else (set bellG=)
call:Menu
set NT=�W/�U�� �W�U��ܡ@��/�k�� �վ�]�w�@���� �T�w�@���� ���}�@���� �����g�@
choice /n /c a4d6s2w8zxqrcp /m "%NT%"
if %errorlevel%==14 (
 if defined PlSn echo;%PlSn:~1%|clip
 goto OptionMenu
)
if %errorlevel%==13 (call:set08Menu&goto OptionMenu)
if %errorlevel%==12 (
 call:DT& >>"%~dpn0log.txt" echo;!_DT!�@%MG% "%NT%"�@%SN%�uR�v
 goto restart
)
if %errorlevel%==11 (
 call:DT& >>"%~dpn0log.txt" echo;!_DT!�@%MG% "%NT%"�@%SN%�uQ�v
 call:storesave
 goto set00
)
if %errorlevel%==10 (
 set Vd=2&set/p="%bellG%"<nul&goto set50
)
if %errorlevel%==9 (
 if not defined OP%C%L set/p="%bellG%"<nul&goto set%CP%%C%
 goto OptionMenu
)
if %errorlevel% geq 7 (
 :OptionMenuW
 if !C! leq 0 (set C=10) else (set/a C-=1)
 if not defined SN!CP!!C! goto OptionMenuW
 goto OptionMenu
)
if %errorlevel% geq 5 (
 :OptionMenuS
 if !C! geq 10 (set C=0) else (set/a C+=1)
 if not defined SN!CP!!C! goto OptionMenuS
 goto OptionMenu
)
if %errorlevel% geq 3 (
 if defined OP%C%L if !OP%C%V! geq !OP%C%L! (set OP%C%V=!OP%C%L!) else (set/a OP%C%V+=1)
 goto OptionMenu
)
if %errorlevel% geq 1 (
 if defined OP%C%L if !OP%C%V! leq 1 (set OP%C%V=1) else (set/a OP%C%V-=1)
 goto OptionMenu
)
goto OptionMenu

:CheckScoreMenu
if "%CP%%C%"=="25" set Mop%ownerA%=-�ХD�L�k�벼-
set MenuType=CheckMenu
set Hpdiag=
set Mopdiag=
if %VCM% gtr 0 if not defined Pl%VCM% goto CheckScoreMenuS
if !Mop%VCM%!==-�ХD�L�k�벼- goto CheckScoreMenuS
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
set NT=�W/�U�� �W�U��ܡ@��/�k�� �s��аO^(0-!CMop!^)�@���� �аO�@���� ���}�@���� �����g�@
choice /n /c a4d6s2w8zxcp /m "%NT%"
if %errorlevel%==12 (
 if defined PlSn echo;%PlSn:~1%|clip
 goto CheckScoreMenu
)
if %errorlevel%==11 (
 if not %CP%==4 call:set08Menu
 goto CheckScoreMenu
)
if %errorlevel%==10 (
 if %VCM%==0 (
 set Vd=3&set/p="%bellG%"<nul&goto savediag
 ) else (
  set VCM=0
 )
 goto CheckScoreMenu
)
if %errorlevel%==9 (
 if %VCM% gtr 0 (
  if defined Mop%VCM% (
   set Mop%VCM%=
  ) else (
   set Mop%VCM%=!CMop!
  )
  goto CheckScoreMenu
 )
 set Vd=3&set/p="%bellG%"<nul&goto savediag
 goto CheckScoreMenu
)
if %errorlevel% geq 7 (
 :CheckScoreMenuW
 if !VCM! leq -1 (set VCM=16) else (set/a VCM-=1)
 if !VCM! gtr 0 if not defined Pl!VCM! goto CheckScoreMenuW
 if !Mop%VCM%!==-�ХD�L�k�벼- goto CheckScoreMenuW
 goto CheckScoreMenu
)
if %errorlevel% geq 5 (
 :CheckScoreMenuS
 if !VCM! geq 16 (set VCM=-1) else (set/a VCM+=1)
 if !VCM! gtr 0 if not defined Pl!VCM! goto CheckScoreMenuS
 if !Mop%VCM%!==-�ХD�L�k�벼- goto CheckScoreMenuS
 goto CheckScoreMenu
)
if %errorlevel% geq 3 (
 if !Mop%VCM%! lss 16 set/a Mop%VCM%+=1
 goto CheckScoreMenu
)
if %errorlevel% geq 1 (
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
 if defined PMop%%a (set Mop%%a=!Pl%%aM%CP%%C%R0!��!PMop%%a!) else (set Mop%%a=!Pl%%aM%CP%%C%R0!)
)
set CMl17=%Sl-1%&set Mop17=......
set CMl18=%Sl0%&set Mop18=......
set CM17=�M���аO
call:CheckMenu
if %CP%==4 (
 set NT=�W/�U�� �W�U��ܡ@��/�k�� �s��аO^(1-16^)�@���� �аO�@���� ���}
) else (
 set NT=�W/�U�� �W�U��ܡ@��/�k�� �s��аO^(1-16^)�@���� �аO�@���� ���}�@���� �����g�@
)
choice /n /c a4d6s2w8zxcp /m "%NT%"
if %errorlevel%==12 (
 if defined PlSn echo;%PlSn:~1%|clip
 goto PunishScoreMenu
)
if %errorlevel%==11 (
 if not %CP%==4 call:set08Menu
 goto PunishScoreMenu
)
if %errorlevel%==10 (
 if %VCM%==0 (
 set Vd=3&set/p="%bellG%"<nul&goto savediag
 ) else (
  set VCM=0
 )
 goto PunishScoreMenu
)
if %errorlevel%==9 (
 if %VCM% gtr 0 (
  if defined PMop%VCM% (
   set PMop%VCM%=
  ) else (
   set PMop%VCM%=1
  )
  goto PunishScoreMenu
 )
 set Vd=3&set/p="%bellG%"<nul&goto savediag
 goto PunishScoreMenu
)
if %errorlevel% geq 7 (
 :PunishScoreMenuW
 if !VCM! leq -1 (set VCM=16) else (set/a VCM-=1)
 if !VCM! gtr 0 if not defined Pl!VCM! goto PunishScoreMenuW
 goto PunishScoreMenu
)
if %errorlevel% geq 5 (
 :PunishScoreMenuS
 if !VCM! geq 16 (set VCM=-1) else (set/a VCM+=1)
 if !VCM! gtr 0 if not defined Pl!VCM! goto PunishScoreMenuS
 goto PunishScoreMenu
)
if %errorlevel% geq 3 (
 if !PMop%VCM%! lss 16 set/a PMop%VCM%+=1
 goto PunishScoreMenu
)
if %errorlevel% geq 1 (
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
 if defined Pln%%a (set Mop%%a=��!Pln%%a!) else (set Mop%%a=[�L���a])
)
set CMl17=%Sl-1%&set Mop17=......
set CMl18=%Sl0%&set Mop18=......
set CM17=���]�@�@
call:CheckMenu
set NT=�W/�U�� �W�U��ܡ@���� ��J�@���� ���}
choice /n /c s2w8zx /m "%NT%"
if %errorlevel%==6 (
 if %VCM%==0 (
 set Vd=3&set/p="%bellG%"<nul&goto savediag
 ) else (
  set VCM=0
 )
 goto EnterNameMenu
)
if %errorlevel%==5 (
 if %VCM% gtr 0 (
  call:CheckMenu
  set/p Pln%VCM%="��r�� ��J�@��J�ϢӢ������ �����@��@�Ů�ϢӢ������ �R���@�Ӣ������ �����@"
  if "!Pln%VCM%!"==" " set Pln%VCM%=
  for /l %%a in (1,1,16) do (
   if not %%a==%VCM% if defined Pln%VCM% (
    if "!Pln%%a!"=="!Pln%VCM%!" set Pln%%a=
   )
  )
  goto EnterNameMenu
 )
 set Vd=3&set/p="%bellG%"<nul&goto savediag
 goto EnterNameMenu
)
if %errorlevel% geq 3 (
 if %VCM% leq -1 (set VCM=16) else (set/a VCM-=1)
 goto EnterNameMenu
)
if %errorlevel% geq 1 (
 if %VCM% geq 16 (set VCM=-1) else (set/a VCM+=1)
 goto EnterNameMenu
)
goto EnterNameMenu

:ManualMenu
set MenuType=Manual
set Hpdiag=
set Mopdiag=
call:Manual
set NT=�W/�U�� �W�U���ʡ@���� ���}�@���� �����g�@
choice /n /c s2w8xcp /m "%NT%"
if %errorlevel%==7 (
 if defined PlSn echo;%PlSn:~1%|clip
 goto ManualMenu
)
if %errorlevel%==6 (call:set08Menu&goto ManualMenu)
if %errorlevel%==5 (set/p="%bellG%"<nul&goto set09)
if %errorlevel% geq 3 (
 set ManualMenu=0
 :ManualMenuW
 if %VCM% leq 0 (set VCM=0) else (set/a VCM-=1)
 set/a ManualMenu+=1
 if !ManualMenu! lss !OP3V! goto ManualMenuW
 goto ManualMenu
)
if %errorlevel% geq 1 (
 set ManualMenu=0
 :ManualMenuS
 set/a ManualSkip=VCM+20
 call:readmanual
 if not defined readerr set/a VCM+=1
 set/a ManualMenu+=1
 if !ManualMenu! lss !OP3V! goto ManualMenuS
 goto ManualMenu
)
goto ManualMenu

:Menu
set EMG=
for /l %%a in (0,1,37) do if "!MG:~,%%a!"=="!MG!" set EMG= !EMG!
%cls%&color 2f
if %CP%==3 (echo;%EMG%��%MG%�� !Set05Timeta!:!Set05Timetb!:!Set05Timetc!.!Set05Time!) else (echo;%EMG%��%MG%��)
echo.
set EHpdiag=
set EMopdiag=                
for /l %%a in (1,1,6) do if "!M6:~,%%a!"=="!M6!" set EHpdiag=�@!EHpdiag!
if not defined M6 set EHpdiag=�@�@�@�@�@�@�@!EHpdiag!
for /l %%a in (4,4,28) do if "!Hpdiag:~,%%a!"=="!Hpdiag!" set EHpdiag= !EHpdiag!
for /l %%a in (1,1,32) do if not "!Hpdiag:~,%%a!"=="!Hpdiag!" set EMopdiag= !EMopdiag!
for /l %%a in (1,1,6) do if "!M7:~,%%a!"=="!M7!" set EMopdiag=�@!EMopdiag!
if not defined M7 set EMopdiag=�@�@�@�@�@�@�@!EMopdiag!
for /l %%a in (1,1,32) do if not "!Mopdiag:~,%%a!"=="!Mopdiag!" set EMopdiag=!EMopdiag:~,-1!
for /l %%a in (1,1,10) do (
 if %%a==6 (echo;�@!Ml%%a:~,1!�@�@!M%%a! !EHpdiag!!Hpdiag!) else (
  if %%a==7 (echo;�@!Ml%%a:~,1!�@�@!M%%a! !EMopdiag!!Mopdiag!) else (echo;�@!Ml%%a:~,1!�@�@!M%%a!)
 )
 echo;�@!Ml%%a:~1!�@�@�@�@�@�@�@�@!Mop%%a!
)
echo.
echo;�@�@�@�@�^�X:%R%�@���%PlSn%
echo;�@�@�ť��D�D:!Pl%ownerB%!�@�ХD:!Pl%ownerA%!
set ESp=
for /l %%a in (0,1,38) do if "!Ex:~,%%a!"=="!Ex!" set ESp=�@!ESp!
echo;%ESp%%Ex%
echo.
goto :eof

:CheckMenu
set EMG=
for /l %%a in (0,1,37) do if "!MG:~,%%a!"=="!MG!" set EMG= !EMG!
%cls%&color 2f
echo;%EMG%��%MG%��
set ESp=
for /l %%a in (0,1,39) do if "!Hp:~,%%a!"=="!Hp!" set ESp= !ESp!
echo;%ESp%%Hp%
echo.
set EHpdiag=
set EMopdiag=                
for /l %%a in (3,3,18) do if "!Pl10:~,%%a!"=="!Pl10!" set EHpdiag= !EHpdiag!
if not defined Pl10 set EHpdiag=       !EHpdiag!
for /l %%a in (3,3,6) do if "!Mop10:~,%%a!"=="!Mop10!" set EHpdiag= !EHpdiag!
if not defined Mop10 set EHpdiag=     !EHpdiag!
for /l %%a in (4,4,28) do if not "!Hpdiag:~,%%a!"=="!Hpdiag!" set EMopdiag= !EMopdiag!
for /l %%a in (3,3,18) do if "!Pl12:~,%%a!"=="!Pl12!" set EMopdiag=  !EMopdiag!
if not defined Pl12 set EMopdiag=       !EMopdiag!
for /l %%a in (3,3,6) do if "!Mop12:~,%%a!"=="!Mop12!" set EMopdiag= !EMopdiag!
if not defined Mop12 set EMopdiag=   !EMopdiag!
for /l %%a in (1,1,28) do if not "!Mopdiag:~,%%a!"=="!Mopdiag!" set EMopdiag=!EMopdiag:~,-1!
for /l %%a in (1,1,16) do (
 if %%a==10 (echo;�@!CMl%%a!�@�@�@!Pl%%a!�@�@!Mop%%a! !EHpdiag!!Hpdiag!) else (
  if %%a==12 (echo;�@!CMl%%a!�@�@�@!Pl%%a!�@�@!Mop%%a! !EMopdiag!!Mopdiag!) else (echo;�@!CMl%%a!�@�@�@!Pl%%a!�@�@!Mop%%a!)
 )
)
echo.
echo;�@%CMl17%�@�@�@%CM17%�@�@%Mop17%
echo;�@%CMl18%�@�@�@���}�@�@�@�@%Mop18%
echo.
echo;�@�@�@�@�^�X:%R%�@���%PlSn%
echo;�@�@�ť��D�D:!Pl%ownerB%!�@�ХD:!Pl%ownerA%!
echo.
echo.
goto :eof

:Manual
set/a "ManualPage=VCM/(eoManual/19),eoManualn=eoManual+1,ePoManual=eoManual-19"
if %VCM% gtr 0 (set ManualRoll=W) else (set ManualRoll= )
for /l %%a in (0,1,18) do (
 if %ManualPage%==%%a (
  set ManualRoll=!ManualRoll!####
 ) else (
 set ManualRoll=!ManualRoll! 
 )
)
if %VCM% lss %ePoManual% (set ManualRoll=!ManualRoll:~,-3!S) else (set ManualRoll=!ManualRoll:~,-3! )
set EMG=
for /l %%a in (0,1,37) do if "!MG:~,%%a!"=="!MG!" set EMG= !EMG!
%cls%&color 2f
echo;%EMG%��%MG%��
echo.
echo; 0�~------------------------------------------------------------------------��!ManualRoll:~,1!
for /l %%a in (1,1,19) do (
 set/a ManualSkip=VCM+%%a
 call:readmanual
 if !ManualSkip! lss 10 set ManualSkip= !ManualSkip!
 echo;!ManualSkip!^|!ManualLine!^|!ManualRoll:~%%a,1!
)
echo;%eoManualn%��------------------------------------------------------------------------��!ManualRoll:~-1!
set EMopdiag=                
for /l %%a in (4,4,28) do if not "!Hpdiag:~,%%a!"=="!Hpdiag!" set EMopdiag= !EMopdiag!
echo;�@�@�@�@�^�X:%R%�@���%PlSn%
echo;�@�@�ť��D�D:!Pl%ownerB%!�@�ХD:!Pl%ownerA%!
echo;�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@!EMopdiag!!Mopdiag!
echo.
goto :eof

:readmanual
set ManualLine=!Manual%ManualSkip%!
if defined ManualLine (
 set readerr=
 goto :eof
) else (
 set readerr=1
 goto :eof
)

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
set NT=��/�k�� ���k��ܡ@���� �T�w�@���� ����
choice /n /c a4d6zx /m "%NT%"
if %errorlevel%==6 (
 if "%MenuType%"=="Menu" (
  goto ScoreMenu
 ) else (
  if %CP%%C%==01 (goto EnterNameMenu)
  if %CP%%C%==02 (goto PunishScoreMenu)
  if %CP%==04 (goto PunishScoreMenu)
  goto CheckScoreMenu
 )
)
if %errorlevel%==5 (
 if %Vd%==3 (
  set/p="%bellG%"<nul&if %CP%%C%==01 (goto EnterNameMenu)
  if %CP%%C%==02 (goto PunishScoreMenu)
  if %CP%==04 (goto PunishScoreMenu)
  goto CheckScoreMenu
 ) else (
  if "%MenuType%"=="Menu" (
   if %Vd%==1 (
    set Ex=
    set VCM=1
    call:storesave
    goto set%CP%%C%
   )
   set/p="%bellG%"<nul&goto ScoreMenu
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
    set Ex=
    if %Vd%==1 call:storesave
    goto save%CP%%C%
   )
  )
 )
)
if %errorlevel% geq 3 (
 if "%MenuType%"=="Menu" (
  if %Vd% geq 2 (set Vd=2) else (set/a Vd+=1)
 ) else (
  if "%VCM%"=="-1" (
   if %Vd% geq 2 (set Vd=2) else (set/a Vd+=1)
  ) else (
   if %Vd% geq 3 (set Vd=3) else (set/a Vd+=1)
  )
 )
 goto savediag
)
if %errorlevel% geq 1 (
 if %Vd% leq 1 (set Vd=1) else (set/a Vd-=1)
 goto savediag
)
goto savediag

:mgdiag
set Hpdiag=%MGEx%%bellG%
call:DT&>>"%~dpn0log.txt" set/p="!_DT! "<nul 
if defined R >>"%~dpn0log.txt" set/p="�^�X%R% "<nul
>>"%~dpn0log.txt" echo;�ﶵ%CP%%C%�@%MGEx%
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
if "!UDTurn!"=="1" (set MGEx=���~�G½��^�X���i�n�����a&call:mgdiag&goto ScoreMenu)
if defined F03R%R% (set MGEx=���~�G���^�X�w�i��&call:mgdiag&goto ScoreMenu)
set MG=�n�����a
set Hp=�̷Ӫ��a�b�h�H�C���Ф�����m�n�����a�W��
set CEx=�����n�����a
for /l %%a in (1,1,16) do set Pln%%a=!Pl%%a!
goto EnterNameMenu

:save01
if %Vd%==1 (
 for /l %%a in (1,1,16) do (
  if defined Pl%%a set PlData_!Pl%%a!=!Pl%%a!
  for /l %%b in (0,1,%R%) do (
   for /l %%c in (0,1,5) do (
    for /l %%d in (1,1,9) do (
     if defined Pl%%aS set PlData_!Pl%%a!S=!Pl%%aS!
     set Pl%%aS=
     if defined Pl%%aS%%c%%dR%%b set PlData_!Pl%%a!S%%c%%dR%%b=!Pl%%aS%%c%%dR%%b!
     set Pl%%aS%%c%%dR%%b=
     if defined Pl%%aC set PlData_!Pl%%a!C=!Pl%%aC!
     set Pl%%aC=
     if defined Pl%%aC%%c%%dR%%b set PlData_!Pl%%a!C%%c%%dR%%b=!Pl%%aC%%c%%dR%%b!
     set Pl%%aC%%c%%dR%%b=
     if defined Pl%%aM%%c%%dR%%b set PlData_!Pl%%a!M%%c%%dR%%b=!Pl%%aM%%c%%dR%%b!
     set Pl%%aM%%c%%dR%%b=
    )
   )
  )
  set Pl%%a=
 )
 for /l %%a in (1,1,16) do (
  set Pl%%a=!Pln%%a!
 )
 set ownerO=
 for /l %%a in (1,1,16) do (
  if defined PlData_!Pl%%a! (
   set/a ownerO+=1
   for /l %%b in (0,1,%R%) do (
    for /l %%c in (0,1,5) do (
     for /l %%d in (1,1,9) do (
      call:save01Loader %%a %%b %%c %%d
     )
    )
   )
  )
 )
 set ownerL=
 for /l %%a in (1,1,16) do (
  if defined Pl%%a (
   set/a ownerL+=1
   set owner!ownerL!=%%a
  )
 )
 set/a ownerN=ownerL-ownerO
 if defined ownerL (
  if !ownerN! gtr 0 (set MGEx=�����n��!ownerN!��s���a�A�ثe�@��!ownerL!�쪱�a) else (set MGEx=�S���n���s���a�A�ثe�@��!ownerL!�쪱�a)
  call:mgdiag
  set F01R0=1
  set C=2
 ) else (
  set MGEx=���~�G���र��H���S��
  call:mgdiag
  goto set01
 )
) else (
 set C=1
)
if defined R (
 if not defined Pl!ownerB! call:OwnerBCheck
 if not defined Pl!ownerA! call:OwnerACheck
 for /l %%a in (1,1,%ownerL%) do (
  if !owner%%a!==!ownerA! set ownerAt=%%a
 )
)
goto set-1

:save01Loader
set PlName=!Pl%1!
if defined PlData_%PlName%S set Pl%1S=!PlData_%PlName%S!
if defined PlData_%PlName%S%3%4R%2 set Pl%1S%3%4R%2=!PlData_%PlName%S%3%4R%2!
if defined PlData_%PlName%C set Pl%1C=!PlData_%PlName%C!
if defined PlData_%PlName%C%3%4R%2 set Pl%1C%3%4R%2=!PlData_%PlName%C%3%4R%2!
if defined PlData_%PlName%M%3%4R%2 set Pl%1M%3%4R%2=!PlData_%PlName%M%3%4R%2!
goto :eof

:OwnerBCheck
set/a "ownerB+=14,ownerB%%=16,ownerB+=1"
if not defined Pl%ownerB% goto OwnerBCheck
set MGEx=!Pl%ownerB%!�����F��ХD
call:mgdiag
goto :eof

:OwnerACheck
set/a "ownerAt-=1,ownerAt%%=ownerL,ownerAt+=1"
if !ownerAt! geq !ownerL! (set EnUDTurn=1) else (set EnUDTurn=)
if defined Pl!owner%ownerAt%!Skip (
 set Pl!owner%ownerAt%!Skip=
 set/a "ownerAt+=1"
 goto OwnerACheck
)
set ownerA=!owner%ownerAt%!
set MGEx=!Pl%ownerA%!�����F�ХD
call:mgdiag
goto :eof

:set02
if "!UDTurn!"=="1" (set MGEx=���~�G½��^�X���i�i��ۧڤ���&call:mgdiag&goto ScoreMenu)
if defined F03R%R% (set MGEx=���~�G���^�X�w�i��&call:mgdiag&goto ScoreMenu)
if not defined F01R0 (set MGEx=���~�G�٥��i�檱�a�n��&call:mgdiag&goto ScoreMenu) else (
 set MG=�ۧڤ����ˮ֪�
 set Hp=�аO�����ۧڤ��Ъ����a�A�Ʀr�j�p����N�q
 set CEx=�B�@���i��ۧڤ��Ъ����a
 for /l %%a in (1,1,16) do set PMop%%a=!Pl%%aM02R0!
 goto PunishScoreMenu
)

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
 if defined oC2 (set C=%oC2%&set oC2=) else (set C=1)
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
set MG=���t���f�P����
set Hp=�N�{�����q���P�D�D���������a�аO�u0�v�A�{�������������a�аO�䥦�Ʀr
set CEx=������M
for /l %%a in (1,1,16) do set Mop%%a=!Pl%%aM25R%R%!
goto CheckScoreMenu

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
   set MGEx=���q���P�D�D�Y���L���A�w��ХD!Pl%ownerA%!�i���g�@
   call:mgdiag
 ) else (
  if !ForRP! geq !RPt! (
   set Pl%ownerA%S25R%R%=5
   set Pl%ownerA%C25R%R%=
   set MGEx=���q���P�D�D�����A�ХD!Pl%ownerA%!��o�F5��
   call:mgdiag
  ) else (
   set MGEx=���q���P�D�D�L���A�ХD!Pl%ownerA%!�S����o����
   call:mgdiag
  )
 )
 set F25R%R%=1
 set oC2=0
) else (
 set oC2=5
)
goto set04

:set20
if !F25R%R%!==1 (set F04R%R%=1) else (set F04R%R%=3)
set C=5
goto set-1

:set05
if not defined F03R%R% (set MGEx=���~�G�٥��i��D�D�ť��ˮ�&call:mgdiag&goto ScoreMenu) else (
 if not defined F04R%R% (set MGEx=���~�G�٥��i��q������ˮ�&call:mgdiag&goto ScoreMenu) else (
  set MG=���ݡI�p�ɫ�
  set Hp=
  set CP=3
  set C=1
  for /l %%a in (1,1,16) do set Mop%%a=
  call:set05Timer
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
  for %%a in (eta etb etc e) do (set Set05Tim%%a=0)
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
goto :eof

:set31
set MG=�^�X����
set Hp=�L�����е��ƦW�A���Ѫ��Т��A���������СF���Z�u���ɥi�N�Ҧ��������a�æC�Ĥ@
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
 set MGEx=�^�X�ɶ��G!Set05Timeta!:!Set05Timetb!:!Set05Timetc!.!Set05Time!
 call:mgdiag
 set PlShigh=%Pl!owner1!S%
 for /l %%a in (2,1,16) do (if defined Pl%%a if !Pl%%aS! gtr !PlShigh! set PlShigh=!Pl%%aS!)
 for /l %%a in (1,1,16) do (
  set high%%a=
  if defined Pl%%aS if !Pl%%aS!==!PlShigh! set high%%a=1
 )
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
  set MGEx=�ХD!Pl%ownerA%!½�ॢ�ѡA�n���D�Ĥ@�W���䥦���a��o�F�������^�X�o��
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
if not "!F04R%R%!!F05R%R%!"=="11" (set MGEx=���~�G�٥������Ӧ^�X&call:mgdiag&goto ScoreMenu)
if "!UDTurn!"=="1" (set MGEx=���~�G½��^�X�w�����A���i�i�J�U�@�^�X�F�v�ɵ���&call:mgdiag&goto ScoreMenu)
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
set ownerA=!owner%ownerAt%!
call:storesave
set MGEx=!Pl%ownerB%!�����F��ХD�A!Pl%ownerA%!�����F�ХD
call:mgdiag
set MGEx=�w�i�J�U�@�^�X
call:mgdiag
for /l %%a in (1,1,16) do set Mop%%a=
goto ScoreMenu

:set07
if not "!F04R%R%!!F05R%R%!"=="11" (set MGEx=���~�G�٥������Ӧ^�X&call:mgdiag&goto ScoreMenu)
if not defined EnUDTurn (set MGEx=���~�G�٥������ӽ�&call:mgdiag&goto ScoreMenu)
if "!UDTurn!"=="1" (set MGEx=���~�G½��^�X�w�����A���i�i�J�U�@�^�X�F�v�ɵ���&call:mgdiag&goto ScoreMenu)
set UDTurn=1
set PlSless=!Pl%owner1%S!
for /l %%a in (2,1,16) do (if defined Pl%%a if !Pl%%aS! lss !PlSless! set PlSless=!Pl%%aS!)
set LessFound=
set LessSkipFound=
for /l %%a in (1,1,%ownerL%) do (
 call:set07Lesser %%a
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
set MGEx=!Pl%ownerB%!�����F��ХD�A!Pl%ownerA%!�����F�ХD
call:mgdiag
set MGEx=�w�i�J½��^�X
call:mgdiag
for /l %%a in (1,1,16) do set Mop%%a=
goto ScoreMenu

:set07Lesser
set PlSlesst=!owner%1!
set PlSlesst=!Pl%PlSlesst%S!
goto :eof

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
if %C%==1 set PN=���N����&set Hp=�N��䦸��
if %C%==2 set PN=�ϥβʸ�&set Hp=�N���r��
if %C%==3 set PN=�쩵�v�ɶi��&set Hp=����N�q
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

:set09
set MG=�]�w�P����
set Hp=
set CP=5
set C=1
goto OptionMenu

:set51
set MG=�v�ɳW�h
set VCM=0
goto ManualMenu

:set59
for /l %%a in (1,1,10) do set OP%%aV=
goto OptionMenu

:set50
set C=9
goto set-1

:set00
color&title �O������
call:DT
>>"%~dpn0log.txt" echo;%_DT%�@�����F�O���O�{��
>nul timeout /t 1
endlocal
goto :eof

:osu�I�v�O.dat
set Manual1=�@�@�@�@�ĥ|��osu�I�v�ɳW�h�����@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@ 
set Manual2=�@�����v�ɱĿn����A�̲ױo���̰������a��ӡA�ϥΰO���O�{���p���C�@�@�@�@�@
set Manual3=�@�ϥ΢�ѻy���A�åB���{���v�C�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual4=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual5=�@�@���W�h�����@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual6=�@�v�ɶ}�l�e�A�Ҧ����a�ҭn�ϥ�osu�I��ѥ\��i��ۧڤ��СC�@�@�@�@�@�@�@�@ 
set Manual7=�@�@���L�ۧڤ����g�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual8=�L���С@�������B���P�@�i�]�Т��AX�Ϣ��^�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@ 
set Manual9=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual10=�@�ۧڤ��Ч�����A���ɦh�H�C���Ф����̤W�쪱�a���Ĥ@��ХD�A���n�ť��@�ӥD
set Manual11=�D�A��P�D�D�������q�C�䥦���a�i��^�X�����e��q���P�D�D�O�_�����i���M�C
set Manual12=�@�@����q�o���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual13=�P�D�D�����]�@�b��M���a�{�������^�@�ХD�@�o�����@�@�@�@�@�]�Ϣ��^�@�@�@�@
set Manual14=�P�D�D�L���]�L�b��M���a�{���L���^�@�ХD�@�L�o���@�@�@�@�@�]�Ϣ��^�@�@�@�@
set Manual15=�P�D�D�Y���L���]�S�����a�{�������^�@�ХD�@�������B���P�@�i�]�Т��AX�Ϣ��^ 
set Manual16=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual17=�@�q����ܧ����A���a�ǳƧ�����A�Y�i�}�l�@�Ӻq���^�X�C�@�@�@�@�@�@�@�@�@�@
set Manual18=�@�@���^�X�o���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual19=�L���@�@�@�@�o�����@�]�Ϣ��^�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual20=���ѡ@�@�@�@�L�o���@�]�Ϣ��^�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual21=�������q���@�������@�]�Т��^�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual22=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual23=�@�@���^�X���y�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual24=�Ĥ@�W�@�@�@�h�o�|���]�Ϣ��^�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual25=�@�p�G���a�Ҫ�{�u���A���^�X���Ĥ@�W�i�H��ܱN�������a�æC���Ĥ@�W�C�@�@�@
set Manual26=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual27=�@�p�G���׹L���A�@�b�H�W���a���ѡA�h�������צ^�X�A�L�������a�i�H�o����y�C
set Manual28=�@�@�������׼��y�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual29=�L���@�@�@�@�@�@�@�h�o�|���@�@�@�@�@�@�@�@�@�@�@�@�]�Ϣ��^�@�@�@�@�@�@�@�@
set Manual30=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual31=�@�p�G�ХD�S�����ܦ��q���i��޵o�����צ^�X�A�άO�s��o�Ͱ����צ^�X�A�h���V
set Manual32=�ɰ����סA�ХD�n�����g�@�C�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual33=�@�@���V�ɰ������g�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual34=�V�ɰ����ס@�ХD�@�������B�����׼��y�L�ġB���P�@�i�]�Т��A�а����׼��y�AX 
set Manual35=�Ϣ��^�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual36=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual37=�@�p�G�Э����׶W�L�������b�A�ХD�n�����N���C�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual38=�@�@���Э��L���N���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual39=�Э��L���@�@�ХD�@�U�@�����o��q�B���P�@�i�]��q���ơТ��AX�Ϣ��^�@�@�@�@ 
set Manual40=�@�p�G�Y���a���o��q�A���N�ХD��浹�P�U�@�쪱�a�A�o�ɦ����a�w�g�Q���L�C�@
set Manual41=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual42=�@�^�X������A���ɪ��ХD���n�ť��U�@�ӥD�D�A�ñN�ХD��浹�P�h�H�C���Ф���
set Manual43=�F�񪺤U�@�쪱�a�A�ѷs�ХD��ܻP���D�D�������q�C�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual44=�@�D�D�u�঳�@�ӡA�̦n�O���H�Ҫ����A�קK�L������A�Ҧp�ϥάY�ʵe���Y����W
set Manual45=�@���D�D�O����ĳ���C�p�G����bosu�I���j�M�h�i�H�A�Ҧp�Y�ʵe�W��ù�������C 
set Manual46=�@���ઽ���H�q���W�@���D�D�C�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual47=�@�D�D�]�i�H�O��H���A���n�O�e���z�ѡB�B�i�bosu�I���j�M���C�@�@�@�@�@�@�@ 
set Manual48=�@�@���D�D����j�M�g�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual49=�D�D����j�M�@��ХD�@�������B���P�@�i�]�Т��AX�Ϣ��^�@�@�@�@�@�@�@�@�@�@ 
set Manual50=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual51=�@�@���D�D�L�h�g�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual52=�D�D�L�h�@�@�@��ХD�@�������B���P�@�i�]�Т��AX�Ϣ��^�@�@�@�@�@�@�@�@�@�@ 
set Manual53=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual54=�@�@���H�q���W�@���D�D�g�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual55=�D�D���q���W�@��ХD�@�������B���P�@�i�]�Т��AX�Ϣ��^�@�@�@�@�@�@�@�@�@�@ 
set Manual56=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual57=�@�N�ХD��浹���]���g�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual58=�@�@���ХD��浹���g�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual59=�����ХD���@��ХD�@�������B���P�@�i�]�Т��AX�Ϣ��^�@�@�@�@�@�@�@�@�@�@ 
set Manual60=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual61=�@��q�ɡA���o����v�ɤ��w�Q��L���q���C�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual62=�@�@���q�������g�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual63=�q�����ơ@�@�ХD�@�������B���P�@�i�@�@�@�@�@�]�Т��AX�Ϣ��^�@�@�@�@�@�@�@ 
set Manual64=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual65=�@�p�G�ХD�Ǩ�F�̤U�쪱�a�A�åB�����a�����F�L���^�X�A�h�����@���A���ť��U
set Manual66=�@�ӥD�D�A�ñN�ХD��浹�P�h�H�C���Ф����Ĥ@�쪱�a�A�~��U�@���C�@�@�@�@�@
set Manual67=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual68=�@�p�G�b�h�H�C���Ф����N������m�ɥ��g�P�N�άO�w�i�J½��^�X�A�N�|�g�@�C�@
set Manual69=�@�@�����N�����g�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual70=���N������m�@�@���������B���P�@�i�]�Т���������m����m�e���ơAX�Ϣ��^ 
set Manual71=�@�p�G�ť��D�D�e�A��ХD�g�L�P�N�󴫤F��m�A���N��ХD������P���m���W�@
set Manual72=�쪱�a�F�ХD�g�L�P�N�󴫦�m�A�ХD���ǵ��U�@�ХD�A���P�i�J�U�@�^�X�C�@�@
set Manual73=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual74=�@�p�G�Y�쪱�a����F�T�i���P�A�h���j�g�@�A�åB���p���P�ƶq�C�@�@�@�@�@�@�@
set Manual75=�@�@�����P�g�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual76=�T�i���P�@�@�@���G�Q���@�@�@�@�@�@�]�Т����AX�Т��^�@�@�@�@�@�@�@�@�@�@�@ 
set Manual77=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual78=�@�p�G�����@���ɡA�v�ɧY�N��F�����ɶ��A�h�N�ХD��浹�P��ɿn���̧C�����a
set Manual79=���@�A�öi�J½��^�X�C�p�G�n���̧C�����a�P�ɥ]�A�U�@���Q�T���q�M���Q�T��
set Manual80=�����a�A�h�u�N�ХD��浹�P���Q�T����a���@�C�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual81=�@½��^�X���ХD�A�p�GĹ�o���^�X���Ĥ@�W�A�h�i�H�o��½����y�A�_�h���F�n��
set Manual82=�Ĥ@�W�~����L���a��o���y�C�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual83=�@�@��½����y�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual84=½�ন�\�@½��^�X�ХD�@�@�@�@�@�@�^�X�o�������]�^�X�o�������^�@�@�@�@�@�@
set Manual85=½�ॢ�ѡ@�n���D�Ĥ@�W����L���a�@�^�X�o�������]�^�X�o�������^�@�@�@�@�@�@
set Manual86=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual87=�@�^�X�o���]�]�A�������q���ɪ��������C�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual88=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual89=�@�t�~�A�v�ɤ����ѫǨϥβʸܡA�N�|�g�@�C�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual90=�@�@���ʸ��g�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual91=�ϥβʸܡ@�@�r���G���B�@�����P�@�i�]�Т����r�ơAX�Ϣ��^�@�@�@�@�@�@�@�@�@ 
set Manual92=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual93=�@�p�G�W�N��C�v�ɶi�סA�]�|�g�@�C�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual94=�@�@���쩵�g�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual95=��C�v�ɶi�ס@�@���������B���P�@�i�]�Т��AX�Ϣ��^�@�@�@�@�@�@�@�@�@�@�@�@ 
set Manual96=�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set Manual97=�@�@�����������@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
set eoManual=97