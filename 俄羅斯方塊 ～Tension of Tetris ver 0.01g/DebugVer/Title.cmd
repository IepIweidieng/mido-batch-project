:setdefining
for /l %%a in (0,1,4) do (for /l %%b in (0,1,9) do (set SN%%a%%b=))
set SN01=Game Start&set Ex01=�}�l�C��
set SN02=Replay&set Ex02=�[��replay
set SN03=Leader Broad&set Ex03=�d�ݱƦ�]
set SN04=Option&set Ex04=�i��C���]�w
set SN05=Manual&set Ex05=�d�ݹC������
set SN06=Quit&set Ex06=���}�C��
set SN07=&set Ex07=
set SN08=&set Ex08=
set SN09=&set Ex09=
set SN00=&set Ex00=
set SN11=&set Ex11=
set SN12=&set Ex12=
set SN13=&set Ex13=
set SN15=&set Ex15=
set SN10=&set Ex10=
set SN21=&set Ex21=
set SN23=&set Ex23=
set SN25=&set Ex25=
set SN20=&set Ex20=
set SN31=&set Ex31=
set SN30=&set Ex30=
set SN41=&set Ex41=
set SN42=&set Ex42=
set SN43=&set Ex43=
set SN40=&set Ex40=
set SN51=&set Ex51=
set SN52=&set Ex52=
set OP2L=2&set OP2V1=�}��&set OP2V2=����&set OP2DV=1
set SN53=&set Ex53=�վ��v�ɻ������@�����ʦ��
set OP3L=5&set OP3V1=1&set OP3V2=2&set OP3V3=3&set OP3V4=4&set OP3V5=5&set OP3DV=3
set SN59=&set Ex59=�N�Ҧ��]�w�٭쬰�w�]��
set SN50=&set Ex50=���}�]�w�P�������
goto:set-1

:set-1
mode con cols=80 lines=30
title osu�I�v�ɭp���O ver. %CVer%
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
set SN=!SN%CP%%C%!&set Ex=!Ex%CP%%C%!&set Sl%C%=�n 
for /l %%a in (1,1,9) do (
 set Ml%%a=!Sl%%a!&set M%%a=!SN%CP%%%a!
 if defined SN%CP%%%a (
  if !F%CP%%%aR0!==1 set Mop%%a=[����]
  if !F%CP%%%aR%R%!==0 set Mop%%a=[�p�ɰ���]
  if !F%CP%%%aR%R%!==1 set Mop%%a=[����]
  if !F%CP%%%aR%R%!==2 set Mop%%a=[�p�ɤ�...]
  if !F%CP%%%aR%R%!==3 set Mop%%a=[���f�P]
  if "%CP%""%EnUDTurn%"=="0""1"  set Mop7=[�i½��]
  if "%CP%""%UDTurn%"=="0""1"  set Mop7=[�w½��]
  if %CP%==0 if not defined Mop%%a set Mop%%a=...
 ) else (set Mop%%a=)
)
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
echo;%nl%�@�@�@�@�^�X:%R%�@���%PlSn%%nl%�@�@�ť��D�D:!Pl%ownerB%!�@�ХD:!Pl%ownerA%!%nl%%ESp%%Ex%%nl%
goto:eof