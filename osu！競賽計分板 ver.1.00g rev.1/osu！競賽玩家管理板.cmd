:BAT start
@>nul chcp 950&echo off&setlocal enableextensions
if not "ANSI"=="%1" (
 cmd /a /c ""%~f0" ANSI "%~f1""
 color&endlocal&goto:eof
)
shift /1
title µ{¦¡¸ü¤J¤¤...... Now Loading...
echo;¡ª~¡ã¡É¡³¡¹·LÎG¤½¥q¥X«~¡¸¡»¡Ç¡ã~¡ª
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
  if not "%%a"=="·LÎG°Ê§@¬ö¿ý ~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã " set LogNew=1
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
if defined LogNew (>"%~dpn0log.txt" echo;·LÎG°Ê§@¬ö¿ý ~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã ) else (
 for /f "tokens=* usebackq" %%a in ("%~dpn0log.txt") do set "LogLast=%%a"
 if not "!LogLast!"=="~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~ " >>"%~dpn0log.txt" echo;~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~ 
)
call:DT
>>"%~dpn0log.txt" echo;%_DT%¡@±Ò°Ê¤FºÞ²zªOµ{¦¡
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
title µ{¦¡°õ¦æ¤¤¡K¡K Now Running...
set MG=¿ù»~¡G­p¤ÀªO°õ¦æ®É¤£¯à±Ò°ÊºÞ²zªO
call:DDer osu¡IÄvÁÉ­p¤ÀªO %CVer%
for /l %%a in (0,1,2) do (
 >nul timeout /t 0 /nobreak
)
set MG=¿ù»~¡G¤£¯à¦P®É±Ò°Ê¨â­ÓºÞ²zªO
call:DDer osu¡IÄvÁÉºÞ²zªO %CVer%
goto:eof

:DDer
for /f "skip=2 tokens=*" %%a in ('tasklist /fi "imagename eq cmd.exe" /fi "windowtitle eq %*"') do (
 call:DT
 >>"%~dpn0log.txt" echo;!_DT!¡@!MG!
 >"%temp%\%~n0temp.vbs" echo;a=msgbox^("·LÎG°Ê§@¬ö¿ý ~~~~~~~~~~~~~~~~~~~~~~~~~ "^&vbcrlf^&"!MG:~3!"^&vbcrlf^&"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  " ,16,"log"^)
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

:SelectSF0
color 2f&mode con cols=80 lines=30
set page=1
set tpg=¡H¡H
set TheSavedFile=µL

:SelectSF
%cls%
title ¿ï¾Ü¦sÀÉ¡@²Ä%page%¡þ%tpg%­¶¡@¥Ø«eÀÉ®×¡G%TheSavedFile%
set tm=0
set/a skip=(page-1)*10
if !skip!==0 (set skip=) else (set "skip=skip^=!skip!")
echo;§Ç¸¹¡@ÀÉ®×
for /f "%skip%tokens=* usebackq delims=" %%a in (`dir /b "%~dp0*.dat"`) do (
 set/a tm+=1
 set D!tm!=%%a
 echo;!tm!¡D¡@%%a
)
if !tm!==0 (
 echo;¨S¦³¦sÀÉ¡I
 call:DT
 >>"%~dpn0log.txt" echo;%_DT%¡@¿ù»~¡G¨S¦³¦sÀÉ
 set TheSavedFile=
 >nul pause&goto :eof
)
set/a tpg=(tm-tm%10)/10+1
title ¿ï¾Ü¦sÀÉ¡@²Ä%page%¡þ%tpg%­¶¡@¥Ø«eÀÉ®×¡G%TheSavedFile%
choice /n /c 123456789ad0 /m "¿é¤J§Ç¸¹¥H¿ï¾Ü¡]¢°¡ã¢¸¡^¡A«ö¢¯ªð¦^¡A¡uA¡v¤W¤@­¶¡A¡uD¡v¤U¤@­¶"
if %errorlevel%==12 (
 if not "!TheSavedFile!"=="µL" (
  if exist "%~dp0!TheSavedFile!" (
   echo;¿ï¾Ü¦sÀÉ¦¨¥\¡I&set TheSavedFile="%~dp0!TheSavedFile!"&goto:readsave
  ) else (
  echo;¨S¦³¥¿½T¿ï¾Ü¦sÀÉ¡I
  )
 ) else (
  echo;¨S¦³¥¿½T¿ï¾Ü¦sÀÉ¡I
 )
 >nul pause
) else if %errorlevel%==11 (
  if %page% geq %tpg% (
   set page=1
  ) else (
   set/a page+=1
  )
  goto:SelectSF
) else if %errorlevel%==10 (
  if %page% leq 1 (
   set page=%tpg%
  ) else (
   set/a page-=1
  )
  goto:SelectSF
) else if %errorlevel% leq 9 (
 set TheSavedFile=!D%errorlevel%!
 if "!TheSavedFile!"=="" set TheSavedFile=µL
)
goto:SelectSF

:readsave
mode con cols=44 lines=5
color&title µ{¦¡¸ü¤J¤¤...... Now Loading...
if defined %1 (echo;Microdoft "arring (reloading)"...) else (echo;Microdoft "arring (loading)"...)
if exist %TheSavedFile% (
 set i_Read=
 for /f "tokens=1* usebackq delims==" %%a in (%TheSavedFile%) do (
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
goto:DT

:storesave
if defined MenuType (call:%MenuType%&<nul set/p=¢Ü¢÷£@¡@¢Ú¢÷¢é¢ì¢ñ¢ö¢ï...) else (%cls%&color&echo;Microdoft "arring (saving)"...)
2>&1 >nul attrib -r -h %TheSavedFile%
>%TheSavedFile% <nul set/p=""
attrib +h %TheSavedFile%
set i_Store=
for /f "tokens=1 delims==" %%a in ('set') do (
 for %%b in (%VIValue%) do if "%%a"=="%%b" set i_Store=1
 if defined i_Store (set i_Store=) else (>>%TheSavedFile% echo;%%a=!%%a!)
)
attrib +r -a -h %TheSavedFile%
goto:eof

:DT
for /f "tokens=1-3 delims=/ " %%a in ("%date%") do set _DoDate=%%a/%%b/%%c 
for /f "tokens=1-4 delims=:. " %%e in ("%time%") do set _DoTime=%%e:%%f:%%g.%%h
set _DT=%_DoDate%%_DoTime%
goto:eof

:start
set "TheSavedFile="%~f1""
call:readsave
if not exist !TheSavedFile! call:SelectSF0
if not exist !TheSavedFile! goto:set00
>>"%~dpn0log.txt" echo;%_DT%¡@¶}©l¤FºÞ²zªOµ{¦¡
goto:ready

:restart
set "TheSavedFile="%~f1""
call:readsave 1
if not exist !TheSavedFile! call:SelectSF0 1
if not exist !TheSavedFile! goto:set00
>>"%~dpn0log.txt" echo;%_DT%¡@­«¶}¤FºÞ²zªOµ{¦¡
goto:ready

:ready
%cls%&color 2f&title osu¡IÄvÁÉºÞ²zªO %CVer%
set MG=µ{¦¡¿ï³æ
set NT=¢èÁä¡@¶i¤JºÞ²zªO¡F¢æÁä¡@µ²§ô
echo;¡@¡@¡@¡@¡@¡@¡@¡@¡Ð%MG%¡Ð%bellG%%nl%%nl%¡@¡@¡@¡@¡@%NT:~,8%
choice /n /c zxqr /m "¡@¡@¡@¡@¡@%NT:~-5%"
(
 call:DT
 if %errorlevel%==4 (
  >>"%~dpn0log.txt" echo;!_DT!¡@%MG% "%NT%" R
  set MenuType=
  goto:restart
 )
 if %errorlevel%==3 (
  >>"%~dpn0log.txt" echo;!_DT!¡@%MG% "%NT%" Q
  set MenuType=
  goto:set00
 )
 if %errorlevel%==2 (
  >>"%~dpn0log.txt" echo;!_DT!¡@%MG% "%NT%" X
  set MenuType=
  goto:set00
 )
 if %errorlevel%==1 (
  >>"%~dpn0log.txt" echo;!_DT!¡@%MG% "%NT%" Z
  <nul set/p=%bellG%
  call:DoubleDetecter
  if defined DoubleDetect endlocal&endlocal&goto:eof
  goto:setdefining
 )
)
goto:ready

:setdefining
mode con cols=80 lines=30
title osu¡IÄvÁÉºÞ²zªO %CVer%
if !UDTurn!==1 (set MGEx=¿ù»~¡GÂ½Âà¦^¦X¤£¥i¶i¦æª±®aºÞ²z&call:mgdiag&goto:set00)
if defined F03R%R% (set MGEx=¿ù»~¡G¦^¦X¤w¶i¦æ¡A¤£¥i¶i¦æª±®aºÞ²z&call:mgdiag&goto:set00)
set BMG=
set BHp=
set Hp=¬d¬Ý¡B­«·s©R¦W¡B§R°£¦sÀÉ¤¤ªºª±®a
set CEx=µ²§ôÄvÁÉª±®aºÞ²z
set CP=0
set C=1
set VCM=1
set ENP=-1
set ENPM=
for /f "tokens=1,2,* delims=_=" %%a in ('set') do (
 if "%%a"=="PlData" (
  set "ENPMt=%%b"
  set/a ENPMt*=1
  if !ENPMt! neq 0 if !ENPMt! gtr !ENPM! (set "ENPM=%%b")
 )
)
if not defined ENPM (
 set ENPM=-1
) else (
 set/a ENPMt=ENPM%%10,ENPM/=10
 if !ENPMt!==0 set/a ENPM-=1
)
call:set-1&goto:EnterNameMenu0

:set-1
set ownerOH=
for /l %%a in (1,1,16) do (
 if defined Pl%%a (
  set/a ownerOH+=1
  set "Pln%%a=!Pl%%a!"
 )
)
for /l %%a in (1,1,10) do (
 if defined PlData_%%a (
  set found=
  for /l %%b in (1,1,16) do (if "!Pl%%b!"==!PlData_%%a! set found=1)
  if not defined found set/a ownerOH+=1
  set "PlnData_%%a=!PlData_%%a:~1,-1!"
 )
)
for /l %%a in (1,1,%ENPM%) do (
 for /l %%b in (0,1,9) do (
  if defined PlData_%%a%%b (
   for /l %%c in (1,1,16) do (if "!Pl%%c!"==!PlData_%%a%%b! set found=1)
   if not defined found set/a ownerOH+=1
   set "PlnData_%%a%%b=!PlData_%%a%%b:~1,-1!"
  )
 )
)
call:PlsScore
goto:eof

:EnterNameMenu0
set ENPnstr=-1
set/a ENPn=ENP+2,ENPMn=ENPM+2,ENPt=ENP+1
for %%a in (¡Ð ¢¯ ¢° ¢± ¢² ¢³ ¢´ ¢µ ¢¶ ¢· ¢¸) do (
 call set ENPn=%%ENPn:!ENPnstr:~,1!=%%a%%
 call set ENPMn=%%ENPMn:!ENPnstr:~,1!=%%a%%
 set/a ENPnstr+=1
)
if %ENP%==-1 (
 for /l %%a in (1,1,16) do (
  set "CMs%%a=%%a"
  set "CM%%a=!Pl%%a!"
  set "CMSn%%a=!Pl%%aSn!"
  set "Ml%%a=!Pln%%a!"
  if defined CM%%a if not defined Ml%%a set "CMSn%%a=-!CMSn%%a!-"
 )
) else if %ENP%==0 (
 for /l %%a in (1,1,10) do (
  set "CMs%%a=Data_%%a"
  if defined PlData_%%a (set "CM%%a=!PlData_%%a:~1,-1!") else (set "CM%%a=")
  set "CMSn%%a=!PlData_%%aSn!"
  set "Ml%%a=!PlnData_%%a!"
  if defined CM%%a if not defined Ml%%a set "CMSn%%a=-!CMSn%%a!-"
 )
 for /l %%a in (11,1,16) do (
  set "CMs%%a="
  set "CM%%a="
  set "CMSn%%a="
  set "Ml%%a="
 )
) else (
 for /l %%a in (1,1,9) do (
  set "CMs%%a=Data_%ENP%%%a"
  if defined PlData_%ENP%%%a (set "CM%%a=!PlData_%ENP%%%a:~1,-1!") else (set "CM%%a=")
  set "CMSn%%a=!PlData_%ENP%%%aSn!"
  set "Ml%%a=!PlnData_%ENP%%%a!"
  if defined CM%%a if not defined Ml%%a set "CMSn%%a=-!CMSn%%a!-"
 )
 set "CMs10=Data_!ENPt!0"
 if defined PlData_%ENPt%0 (set "CMl0=!PlData_%ENPt%0:~1,-1!") else (set "CM10=")
 set "CMSn10=!PlData_%ENPt%0Sn!"
 set "Ml10=!PlnData_%ENPt%0!"
 if defined CM10 if not defined Ml10 set "CMSn10=-!CMSn10!-"
 for /l %%a in (11,1,16) do (
  set "CMs%%a="
  set "CM%%a="
  set "CMSn%%a="
  set "Ml%%a="
 )
)

:EnterNameMenu
if %VCM% gtr 0 if not defined CM%VCM% goto:EnterNameMenuS
set MG=¢÷¢û¢ý¡IÄvÁÉºÞ²zªO¡@²Ä%ENPn%¡þ%ENPMn%­¶
set MenuType=CheckMenu
set Hpdiag=
set Mopdiag=
for /l %%a in (-1,1,16) do set Sl%%a=¡@
set Sl%VCM%=¡n  
for /l %%a in (1,1,16) do (
 set CMl%%a=!Sl%%a!
  if defined CMs%%a (
   if defined Pln!CMs%%a! (call set Mop%%a=%%Pln!CMs%%a!%%) else (set Mop%%a=[µLª±®a])
  ) else (set Mop%%a=)
)
set CMl17=%Sl-1%&set CM17=­«³]&set Mop17=...
set CMl18=%Sl0%&set Mop18=...
set MLV=!CMs%VCM%!
if !VCM! neq !BVCM! (
 if %VCM% gtr 0 (
 ¡@set CMop=¢èÁä ¿é¤J
 ) else (set CMop=¢èÁä ½T©w)
 set BVCM=!VCM!
)
set NT=¤W/¤UÁä ¤W¤U¿ï¾Ü¡@¥ª/¥kÁä ­¶­±¤Á´«¡@!CMop!¡@¢æÁä Â÷¶}
call:CheckMenu
choice /n /c s2w8d6a4zxqr /m "%NT%"
if %errorlevel%==12 (
 call:DT
 >>"%~dpn0log.txt" echo;!_DT!¡@%MG% "%NT%" R
 set MenuType=
 goto:restart
)
if %errorlevel%==11 (
 call:DT
 >>"%~dpn0log.txt" echo;!_DT!¡@%MG% "%NT%" Q
 set MenuType=
 goto:set00
)
if %errorlevel%==10 (
 if %VCM%==0 (
 goto:diag
 ) else (
  set VCM=0
 )
) else if %errorlevel%==9 (
 if %VCM% gtr 0 (
  call:CheckMenu
  set/p Ml%VCM%="¤å¦rÁä ¿é¤J¡@¿é¤J¡Ï¢Ó¢ö¢ü¢í¢ú ­«©R¦W¡@¤@ªÅ®æ¡Ï¢Ó¢ö¢ü¢í¢ú §R°£¡@¢Ó¢ö¢ü¢í¢ú ¨ú®ø¡@"
  if defined Ml%VCM% (
   if "!Ml%VCM%!"==" " (
    set Ml%VCM%=
    if %ENP%==-1 (
     for /f "tokens=1,2,* delims=_=" %%a in ('set') do (if "%%a,%%c"=="PlnData,!Pln%VCM%!" set PlnData_%%b=)
    ) else (
     for /l %%a in (1,1,16) do (if "!Pln%%a!"=="!Pln%MLV%!" set Pln%%a=)
    )
    set Pln%MLV%=
   ) else (
    call set "Ml%VCM%=%%Ml%VCM%:"=¡¨%%"
    call set "Ml%VCM%=%%Ml%VCM%:^!=¡I%%"
    for /l %%a in (1,1,16) do (
     if not "%%a"=="%MLV%" if not !Pl%MLV%!=="!Pl%%a!" (
      if "!Ml%VCM%!"=="!Pln%%a!" set MGEx=¿ù»~¡G»P½s¸¹%%aªºª±®a¦WºÙ±N­«½Æ&call:mgdiag&goto:EnterNameMenu0
      if "!Ml%VCM%!"=="!Pl%%a!" set MGEx=¿ù»~¡G½s¸¹%%aªºª±®a¤w¨Ï¥Î¦¹¦WºÙ&call:mgdiag&goto:EnterNameMenu0
     )
    )
    for /f "tokens=1,2,* delims=_=" %%a in ('set') do (
     if not "Data_%%b"=="%MLV%" if not "!Pl%MLV%!"==!PlData_%%b! (
      if "%%a,%%c"=="PlnData,!Ml%VCM%!" set MGEx=¿ù»~¡G»P½s¸¹Data_%%bªºª±®a¦WºÙ±N­«½Æ&call:mgdiag&goto:EnterNameMenu0
      if "%%a,%%c"=="PlData,"!Ml%VCM%!"" set MGEx=¿ù»~¡G½s¸¹Data_%%bªºª±®a¤w¨Ï¥Î¦¹¦WºÙ&call:mgdiag&goto:EnterNameMenu0
     )
    )
    if %ENP%==-1 (
     for /f "tokens=1,2,* delims=_=" %%a in ('set') do (if "%%a,%%c"=="PlData,"!Pl%VCM%!"" set "PlnData_%%b=!Ml%VCM%!")
    ) else (
     for /l %%a in (1,1,16) do (if "!Pl%%a!"==!Pl%MLV%! set "Pln%%a=!Ml%VCM%!")
    )
    set "Pln%MLV%=!Ml%VCM%!"
   )
  )
  goto:EnterNameMenu0
 )
 goto:diag
) else if %errorlevel% lss 9 (
 if %errorlevel% geq 7 (
  if %ENP% leq -1 (set ENP=%ENPM%) else (set/a ENP-=1)
  goto:EnterNameMenu0
 ) else if %errorlevel% geq 5 (
  if %ENP% geq %ENPM% (set ENP=-1) else (set/a ENP+=1)
  goto:EnterNameMenu0
 ) else if %errorlevel% geq 3 (
  :EnterNameMenuW
  if !VCM! leq -1 (set VCM=16) else (set/a VCM-=1)
  if !VCM! gtr 0 if not defined CM!VCM! goto:EnterNameMenuW
  goto:EnterNameMenu
 ) else if %errorlevel% geq 1 (
  :EnterNameMenuS
  if !VCM! geq 16 (set VCM=-1) else (set/a VCM+=1)
  if !VCM! gtr 0 if not defined CM!VCM! goto:EnterNameMenuS
  goto:EnterNameMenu
 )
)
goto:EnterNameMenu

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
echo;%EMG%¡Ð%MG%¡Ð%nl%%ESp%%Hp%%nl%
for /l %%a in (1,1,16) do (
 if %%a==10 (
   echo;¡@!CMl%%a:~,1!!CMs%%a!!CMl%%a:~1,1!¡@!CM%%a!¡@!CMSn%%a!	!CMl%%a:~2!!Mop%%a! !EHpdiag!!Hpdiag!
 ) else if %%a==12 (
   echo;¡@!CMl%%a:~,1!!CMs%%a!!CMl%%a:~1,1!¡@!CM%%a!¡@!CMSn%%a!	!CMl%%a:~2!!Mop%%a! !EMopdiag!!Mopdiag!
 ) else (
   echo;¡@!CMl%%a:~,1!!CMs%%a!!CMl%%a:~1,1!¡@!CM%%a!¡@!CMSn%%a!	!CMl%%a:~2!!Mop%%a!
 )
)
echo;%nl%¡@%CMl17%¡@¡@¡@%CM17%¡@¡@%Mop17%%nl%¡@%CMl18%¡@¡@¡@Â÷¶}¡@¡@¡@¡@%Mop18%%nl%%nl%¡@¡@¡@¡@¦^¦X:%R%¡@¤ñ¼Æ%PlSn%%nl%¡@¡@«Å¥¬¥DÃD:!Pl%ownerB%!¡@©Ð¥D:!Pl%ownerA%!%nl%%nl%
goto:eof

:diag
set Vd=3
set BVd=
set BHpdiag=
set BMopdiag=
<nul set/p=%bellG%
goto:diagChoice

:diagChoice
if !Vd! neq !BVd! (
 for /l %%a in (1,1,3) do set VAr%%a=¡@&set VAl%%a=¡@
 set VAr%Vd%=¡Ö&set VAl%Vd%=¡Õ
 if !VCM!==-1 (
  set Hpdiag=¬O§_­n¶i¦æ­«³]¡H
  set Mopdiag=¬O¡A¥þ³¡!VAr1!¡@¡@!VAl2!¬O¡A¦ý¶È­­¦¹­¶­±!VAr2!¡@¡@!VAl3!¤£¤F
 ) else (
  set Hpdiag=¬O§_­n%CEx%¡H
  set Mopdiag=¬Oªº!VAr1!¡@¡@!VAl2!¤£¤F!VAr2!¡@¡@!VAl3!ÁÙ¤£­n
 )
 set NT=¥ª/¥kÁä ¥ª¥k¿ï¾Ü¡@¢èÁä ½T©w¡@¢æÁä Ãö³¬
 set BVd=!Vd!
)
call:%MenuType%
choice /n /c a4d6zx /m "%NT%"
if %errorlevel%==6 (
 goto:EnterNameMenu
)
if %errorlevel%==5 (
 if %Vd%==3 (goto:EnterNameMenu) 
 if !VCM!==-1 (
  if %Vd%==1 (
   call:set-1
   set MGEx=¥þ³¡ª±®a­«³]§¹¦¨
   call:mgdiag
  )
  if %Vd%==2 (
   if %ENP%==-1 (
    for /l %%a in (1,1,16) do set "Pln%%a=!Pl%%a!"
   ) else if %ENP%==0 (
    for /l %%a in (1,1,10) do if defined PlData_%%a set "PlnData_%%a=!PlData_%%a:~1,-1!"
   ) else (
    for /l %%a in (1,1,9) do if defined PlData_%ENP%%%a set "PlnData_%ENP%%%a=!PlData_%ENP%%%a:~1,-1!"
    if defined PlData_%ENPt%0 set "PlnData_%ENPt%0=!PlData_%ENPt%0:~1,-1!"
   )
   call:PlsScore
   set MGEx=¦¹­¶­±ª±®a­«³]§¹¦¨
   call:mgdiag
  )
  goto:EnterNameMenu
 )
 if !VCM!==0 goto:save01
 goto:EnterNameMenu
)
if %errorlevel% lss 5 (
 if %errorlevel% geq 3 (
  if %Vd% geq 3 (set Vd=3) else (set/a Vd+=1)
 ) else if %errorlevel% geq 1 (
  if %Vd% leq 1 (set Vd=1) else (set/a Vd-=1)
 )
)
goto:diagChoice

:mgdiag
set Hpdiag=!MGEx!%bellG%
call:DT&>>"%~dpn0log.txt" set/p="!_DT! "<nul 
if defined R >>"%~dpn0log.txt" set/p="¦^¦X%R% "<nul 
>>"%~dpn0log.txt" echo;¿ï¶µ%CP%%C%¡@!MGEx!
set Mopdiag=¡Ö½T©w
call:PlsScore
set NT=¢èÁä ½T©w¡@¢æÁä Ãö³¬
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
set PlSn=
for /l %%a in (1,1,16) do (
 if defined Pl%%a (
  set/a "Pl%%aSn=Pl%%aS-(Pl%%aC/3)*20,Pl%%aCn=Pl%%aC%%3"
  set PlSn=!PlSn!:!Pl%%aSn!
  for /l %%b in (1,1,!Pl%%aCn!) do set Pl%%aSn=!PlSn!X
 )
)
for /l %%a in (1,1,10) do (
 if defined PlData_%%a (
  set/a "PlData_%%aSn=PlData_%%aS-(PlData_%%aC/3)*20,PlData_%%aCn=PlData_%%aC%%3"
  for /l %%b in (1,1,!PlData_%%aCn!) do set PlData_%%aSn=!PlData_%%aSn!X
 )
)
for /l %%a in (1,1,%ENPM%) do for /l %%b in (0,1,9) do (
 if defined PlData_%%a%%b (
  set/a "PlData_%%a%%bSn=PlData_%%a%%bS-(PlData_%%a%%bC/3)*20,PlData_%%a%%bCn=PlData_%%a%%bC%%3"
  for /l %%c in (1,1,!PlData_%%a%%bCn!) do set PlData_%%a%%bSn=!PlData_%%a%%bSn!X
 )
)
goto:eof

:save01
if %Vd%==1 (
 set ownerL=
 set ownerLH=
 for /l %%a in (1,1,16) do (
  if defined Pln%%a (
   set/a ownerL+=1,ownerLH+=1
   set owner!ownerL!=%%a
  )
 )
 for /l %%a in (1,1,10) do (
  if defined PlnData_%%a (
   set found=
   for /l %%b in (1,1,16) do (if "!Pln%%b!"=="!PlnData_%%a!" set found=1)
   if not defined found set/a ownerLH+=1
  )
 )
 for /l %%a in (1,1,%ENPM%) do for /l %%b in (0,1,9) do (
  if defined PlnData_%%a%%b (
   set found=
   for /l %%c in (1,1,16) do (if "!Pln%%c!"=="!PlnData_%%a%%b!" set found=1)
   if not defined found set/a ownerLH+=1
  )
 )
 set/a ownerU=ownerOH-ownerLH
 if defined ownerL (
  if !ownerU! gtr 0 (set MGEx=§R°£¤F!ownerU!¦ìª±®a¡A²{¦³!ownerLH!¦ìª±®a) else (set MGEx=¨S¦³ª±®a³Q§R°£¡A¦@¦³!ownerLH!¦ìª±®a)
  call:mgdiag
 ) else (
  set MGEx=¿ù»~¡G¤°»ò¤H¤]¨S¦³
  call:mgdiag
  call:set-1&goto:EnterNameMenu0
 )
 for /l %%a in (1,1,16) do (
  if defined Pln%%a (
   set "Pl%%a=!Pln%%a!"
   set "Pln%%a="
  ) else (
   set "Pl%%a="
   set "Pl%%aS="
   set "Pl%%aC="
   for /l %%b in (0,1,%R%) do (
    for /l %%c in (0,1,5) do (
     for /l %%d in (1,1,9) do (
      set "Pl%%aS%%c%%dR%%b="
      set "Pl%%aC%%c%%dR%%b="
      set "Pl%%aM%%c%%dR%%b="
     )
    )
   )
   set "Pl%%aSn="
   set "Pl%%aCn="
  )
 )
 for /l %%a in (1,1,10) do (
  if defined PlnData_%%a (
   set "PlData_%%a="!PlnData_%%a!""
   set "PlnData_%%a="
  ) else (
   set "PlData_%%a="
   set "PlData_%%aS="
   set "PlData_%%aC="
   for /l %%e in (0,1,%R%) do (
    for /l %%c in (0,1,5) do (
     for /l %%d in (1,1,9) do (
      set "PlData_%%aS%%c%%dR%%e="
      set "PlData_%%aC%%c%%dR%%e="
      set "PlData_%%aM%%c%%dR%%e="
     )
    )
   )
   set "PlData_%%aSn="
   set "PlData_%%aCn="
  )
 )
 for /l %%a in (1,1,%ENPM%) do for /l %%b in (0,1,9) do (
  if defined PlnData_%%a%%b (
   set "PlData_%%a%%b="!PlnData_%%a%%b!""
   set "PlnData_%%a%%b="
  ) else (
   set "PlData_%%a%%b="
   set "PlData_%%a%%bS="
   set "PlData_%%a%%bC="
   for /l %%e in (0,1,%R%) do (
    for /l %%c in (0,1,5) do (
     for /l %%d in (1,1,9) do (
      set "PlData_%%a%%bS%%c%%dR%%e="
      set "PlData_%%a%%bC%%c%%dR%%e="
      set "PlData_%%a%%bM%%c%%dR%%e="
     )
    )
   )
   set "PlData_%%a%%bSn="
   set "PlData_%%a%%bCn="
  )
 )
)
set MGEx=
set MGExt1=
set MGExt2=
if defined R (
 if not defined Pl!ownerB! call:OwnerBCheck
 if not defined Pl!ownerA! call:OwnerACheck
 set "MGEx=!MGExt1!!MGExt2!"
 if defined MGExt1 if defined MGExt2 if !ownerA!==!ownerB! (call set "MGEx=%%Pl!ownerA!%%¦¨¬°¤F­ì©Ð¥D©M©Ð¥D¡A")
 if defined MGEx set "MGEx=!MGEx:~,-1!"&call:mgdiag
 for /l %%a in (1,1,%ownerL%) do (
  if !owner%%a!==!ownerA! set ownerAt=%%a
 )
)
call:storesave
goto:set00

:OwnerBCheck
set/a "ownerB+=14,ownerB%%=16,ownerB+=1"
if not defined Pl%ownerB% goto:OwnerBCheck
set "MGExt1=!Pl%ownerB%!¦¨¬°¤F­ì©Ð¥D¡A"
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
set "MGExt2=!Pl%ownerA%!¦¨¬°¤F©Ð¥D¡A"
goto:eof

:set00
color
call:DT
>>"%~dpn0log.txt" echo;%_DT%¡@µ²§ô¤FºÞ²zªOµ{¦¡
>>"%~dpn0log.txt" echo;~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~ 
endlocal&endlocal
title ©R¥O´£¥Ü¦r¤¸&cls
goto:eof