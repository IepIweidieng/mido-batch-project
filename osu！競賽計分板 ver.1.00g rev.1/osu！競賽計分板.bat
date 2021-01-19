:BAT start
@>nul chcp 950&echo off&setlocal enableextensions
if not "%1"=="ANSI" (cmd /a /c "%~f0" ANSI&color&endlocal&goto:eof)
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
>>"%~dpn0log.txt" echo;%_DT%¡@±Ò°Ê¤F­p¤ÀªOµ{¦¡
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
for /l %%a in (0,1,2) do (
 >nul timeout /t 0 /nobreak
)
for /f "skip=2 tokens=*" %%a in ('tasklist /fi "imagename eq cmd.exe" /fi "windowtitle eq osu¡IÄvÁÉ­p¤ÀªO %CVer%"') do (
 set MG=¿ù»~¡G¤£¯à¦P®É±Ò°Ê¨â­Ó­p¤ÀªO
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

:readsave
mode con cols=44 lines=5
color&title µ{¦¡¸ü¤J¤¤...... Now Loading...
if defined %1 (echo;Microdoft "arring (reloading)"...) else (echo;Microdoft "arring (loading)"...)
if exist "%~dpn0¦sÀÉ.dat" (
 set i_Read=
 for /f "tokens=1* usebackq delims==" %%a in ("%~dpn0¦sÀÉ.dat") do (
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
call:osu¡IÄv°O.dat
goto:DT

:storesave
if defined MenuType (call:%MenuType%&<nul set/p=¢Ü¢÷£@¡@¢Ú¢÷¢é¢ì¢ñ¢ö¢ï...) else (%cls%&color&echo;Microdoft "arring (saving)"...)
call:PlsScore
2>&1 >nul attrib -r -h "%~dpn0¦sÀÉ.dat"
>"%~dpn0¦sÀÉ.dat" <nul set/p=""
attrib +h "%~dpn0¦sÀÉ.dat"
set i_Store=
for /f "tokens=1 delims==" %%a in ('set') do (
 for %%b in (%VIValue%) do if "%%a"=="%%b" set i_Store=1
 if defined i_Store (set i_Store=) else (>>"%~dpn0¦sÀÉ.dat" echo;%%a=!%%a!)
)
attrib +r -a -h "%~dpn0¦sÀÉ.dat"
goto:eof

:DT
for /f "tokens=1-3 delims=/ " %%a in ("%date%") do set _DoDate=%%a/%%b/%%c 
for /f "tokens=1-4 delims=:. " %%e in ("%time%") do set _DoTime=%%e:%%f:%%g.%%h
set _DT=%_DoDate%%_DoTime%
goto:eof

:start
call:readsave
>>"%~dpn0log.txt" echo;%_DT%¡@¶}©l¤F­p¤ÀªOµ{¦¡
goto:ready

:restart
call:storesave&call:readsave 1
>>"%~dpn0log.txt" echo;%_DT%¡@­«¶}¤F­p¤ÀªOµ{¦¡
goto:ready

:ready
%cls%&color 2f&title osu¡IÄvÁÉ­p¤ÀªO %CVer%
set MG=µ{¦¡¿ï³æ
set NT=¢èÁä¡@¶i¤J­p¤ÀªO¡F¢æÁä¡@µ²§ô
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
  call:storesave
  goto:set00
 )
 if %errorlevel%==2 (
  >>"%~dpn0log.txt" echo;!_DT!¡@%MG% "%NT%" X
  set MenuType=
  goto:set00
 )
 if %errorlevel%==1 (
  >>"%~dpn0log.txt" echo;!_DT!¡@%MG% "%NT%" Z
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
set SN01=¦¨­ûµn°O&set Ex01=¶i¦æª±®aªºÄvÁÉµn¿ý
set SN02=¶}³õ¬DÆ]&set Ex02=¶i¤J¦Û§Ú¤¶²ÐÀË®Öªí
set SN031=ª±®a¥X¥DÃD&set Ex031=¶i¤Jºq¦±¥DÃDªºÀË®Öªí
set SN032=¿ïºqÅvÂà²¾&set Ex032=¶i¤J©Ð¥D¥æ±µªºÀË®Öªí
set SN04=ª±®a¿ïºq&set Ex04=¶i¤J¿ï¾Üºq¦±ªºÀË®Öªí
set SN05=­p®É«Ç&set Ex05=¶i¤J­p®É«Ç¡A¨Ã¶}©l³o­Óºq¦±¦^¦X
set SN06=¤U¤@¦^¦X&set Ex06=¶i¤J¤U¤@¦^¦X
set SN07=§Ô³NÂ½Âà&set Ex07=¶i¤JÂ½Âà¦^¦X
set SN08=ªv¸o¤§¦a&set Ex08=¶}±Ò¯´§ÇÃg»@¿ï³æ
set SN09=³]©w»P»¡©ú&set Ex09=¶i¤J³]©w©M»¡©ú¿ï³æ
set SN00=°h¥X&set Ex00=°h¥X­p¤ÀªOµ{¦¡
set SN111=¥DÃD¥¢®Ä&set Ex111o=@«Å¥¬¤F¨S¦³¾A·í·j´MÃöÁä¦rªº¥DÃDªº­ì©Ð¥D#³B»@
set SN121=¢Ü¦h¥DÃD&set Ex121o=@«Å¥¬¤F¤@­Ó¥H¤W¥DÃDªº­ì©Ð¥D#³B»@
set SN131=¤½§Gºq¦±¦WºÙ&set Ex131o=@¥Hºq¦±¦WºÙ§@¬°¥DÃDªº­ì©Ð¥D#³B»@
set SN15=µ¹¿ù©Ð¥D&set Ex15o=@±N©Ð¥D¸ê®æµ¹¿ùª±®aªº­ì©Ð¥D#³B»@
set SN10=Â÷¶}&set Ex10=Â÷¶}¥DÃD«Å¥¬ÀË®Öªí
set SN21=ºq¦±­«½Æ&set Ex21o=@¿ï¾Ü¤FÄvÁÉ¤¤¤w³Q¿ï¹Lªººq¦±ªº©Ð¥D#³B»@
set SN23=¹L¯PÄµ§i&set Ex23=¤Á´«¥Ø«e©Ð¥D¦³µL´£¥Ü¹LÃøªºª¬ªp
set SN251=¿ï¦±¼f§P&set Ex251=¶i¦æ¹ï©Ð¥D©Ò¿ïªººq¦±¬O§_²Å¦X¥DÃDªºªí¨M
set SN20=Â÷¶}&set Ex20=Â÷¶}ºq¦±¿ï¾ÜÀË®Öªí
set SN31=µ²§ô¦^¦X&set Ex31=°±¤î­p®É¡A¶i¦æ¦^¦Xµ²±b
set SN30=Â÷¶}&set Ex30=Â÷¶}ºq¦±¿ï¾ÜÀË®Öªí
set SN41=¹Hªk´«¦ì&set Ex41=Ãg»@¥ô·N¤Á´«¦ì¸mªºª±®a
set SN42=¡¼¸Ü&set Ex42=Ãg»@¨Ï¥Î²Ê¸Üªºª±®a
set SN43=©ì©µ¤ñÁÉ&set Ex43=Ãg»@©ì©µÄvÁÉ¶i«×ªºª±®a
set SN40=Â÷¶}&set Ex40=Â÷¶}¯´§ÇÃg»@¿ï³æ
set SN51=ÄvÁÉ»¡©ú&set Ex51=¾\ÅªÄvÁÉ»¡©ú
set SN52=¾Þ§@­µ®Ä&set Ex52=¶}Ãö¾Þ§@®Éªº­µ®Ä
set OP2L=2&set OP2V1=¶}±Ò&set OP2V2=Ãö³¬&set OP2DV=1
set SN53=±²°Ê¦æ¼Æ&set Ex53=½Õ¾ãÄvÁÉ»¡©úªº¤@¦¸±²°Ê¦æ¼Æ
set OP3L=5&set OP3V1=1&set OP3V2=2&set OP3V3=3&set OP3V4=4&set OP3V5=5&set OP3DV=3
set SN54=¥DÃD¼Ò¦¡&set Ex54=¶}ÃöÄvÁÉªº«Å¥¬¥DÃD¬ÛÃö³W«h
set OP4L=2&set OP4V1=¶}±Ò&set OP4V2=Ãö³¬&set OP4DV=1
if not defined OP4V (set OP4V=%OP4DV%)
set SN59=©ñ±óªvÀø&set Ex59=±N©Ò¦³³]©wÁÙ­ì¬°¹w³]­È
set SN50=Â÷¶}&set Ex50=Â÷¶}³]©w»P»¡©ú¿ï³æ
goto:set-1

:set-1
mode con cols=80 lines=30
title osu¡IÄvÁÉ­p¤ÀªO %CVer%
set BMG=
set MG=¢÷¢û¢ý¡IÄvÁÉ­p¤ÀªO
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
set Sl%C%=¡n 
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
  if !F%CP%%%aR0!==1 set Mop%%a=[§¹¦¨]
  if !F%CP%%%aR%R%!==0 set Mop%%a=[­p®É°±¤î]
  if !F%CP%%%aR%R%!==1 set Mop%%a=[§¹¦¨]
  if !F%CP%%%aR%R%!==2 set Mop%%a=[­p®É¤¤...]
  if !F%CP%%%aR%R%!==3 set Mop%%a=[¥¼¼f§P]
  if "%CP%""%EnUDTurn%"=="0""1" set Mop7=[¥iÂ½Âà]
  if "%CP%""%UDTurn%"=="0""1" set Mop7=[¤wÂ½Âà]
  if %CP%==0 if not defined Mop%%a set Mop%%a=...
 ) else (set Mop%%a=)
)
set SN=!SN%CP%%C%!&set Ex=!Ex%CP%%C%!
set Ml10=%Sl0%&set M10=!SN%CP%0!&set Mop10=...
if %CP%==4 (
 set NT=¤W/¤UÁä ¤W¤U¿ï¾Ü¡@¢èÁä ½T©w¡@¢æÁä Â÷¶}
) else (
 set NT=¤W/¤UÁä ¤W¤U¿ï¾Ü¡@¢èÁä ½T©w¡@¢æÁä Â÷¶}¡@¢ÑÁä ¶i¦æªv¸o
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
 call:DT& >>"%~dpn0log.txt" echo;!_DT!¡@%MG% "%NT%"¡@%SN%¡uR¡v
 goto:restart
)
if %errorlevel%==7 (
 call:DT& >>"%~dpn0log.txt" echo;!_DT!¡@%MG% "%NT%"¡@%SN%¡uQ¡v
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
set SN=!SN%CP%%C%!&set Ex=!Ex%CP%%C%!&set Sl%C%=¡n 
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
   if %%a==4 if defined F03R%R% set Mop%%a=!Mop%%a! ^<¤wÂê©w^>
  ) else (set Mop%%a=...)
 )
)
set Ml10=%Sl0%&set M10=!SN%CP%0!&set Mop10=...
if !OP2V!==1 (set bellG=) else (set bellG=)
if defined OP%C%L (set CMop=¥ª/¥kÁä ½Õ¾ã³]©w) else (set CMop=¢èÁä ½T©w)
set NT=¤W/¤UÁä ¤W¤U¿ï¾Ü¡@!CMop!¡@¢æÁä Â÷¶}¡@¢ÑÁä ¶i¦æªv¸o
call:Menu
choice /n /c a4d6s2w8zxqrcp /m "%NT%"
if %errorlevel%==14 (
 if defined PlSn <nul set/p="%PlSn:~1%"|clip
 goto:OptionMenu
)
if %errorlevel%==13 (call:set08Menu&goto:OptionMenu)
if %errorlevel%==12 (
 call:DT& >>"%~dpn0log.txt" echo;!_DT!¡@%MG% "%NT%"¡@%SN%¡uR¡v
 goto:restart
)
if %errorlevel%==11 (
 call:DT& >>"%~dpn0log.txt" echo;!_DT!¡@%MG% "%NT%"¡@%SN%¡uQ¡v
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
if "%CP%%C%"=="25" (set ban25=%ownerA%&set Mop%ownerA%=-¸T¤î§ë²¼-) else (set ban25=17)
set MenuType=CheckMenu
set Hpdiag=
set Mopdiag=
if %VCM% gtr 0 if not defined Pl%VCM% goto:CheckScoreMenuS
if %VCM%==%ban25% goto:CheckScoreMenuS
for /l %%a in (-1,1,16) do set Sl%%a= 
set Sl%VCM%= ¡n
for /l %%a in (1,1,16) do set CMl%%a=!Sl%%a!
set CMl17=%Sl-1%&set CM17=²M°£¼Ð°O&set Mop17=...
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
  set CMop=¥ª/¥kÁä ½s¿è¼Ð°O^(0-!CMop!^)¡@¢èÁä ¼Ð°O
 ) else (set CMop=¢èÁä ½T©w)
 set BVCM=!VCM!
)
set NT=¤W/¤UÁä ¤W¤U¿ï¾Ü¡@!CMop!¡@¢æÁä Â÷¶}¡@¢ÑÁä ¶i¦æªv¸o
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
set Sl%VCM%= ¡n
for /l %%a in (1,1,16) do (
 set CMl%%a=!Sl%%a!
 if defined PMop%%a (set Mop%%a=!Pl%%aM%CP%%C%R0! !PMop%%a!) else (set Mop%%a=!Pl%%aM%CP%%C%R0!)
)
set CMl17=%Sl-1%&set CM17=²M°£¼Ð°O&set Mop17=...
set CMl18=%Sl0%&set Mop18=...
if !VCM! neq !BVCM! (
 if %VCM% gtr 0 (
 ¡@set CMop=¥ª/¥kÁä ½s¿è¼Ð°O^(1-16^)¡@¢èÁä ¼Ð°O
 ) else (set CMop=¢èÁä ½T©w)
 set BVCM=!VCM!
)
if %CP%==4 (
 set NT=¤W/¤UÁä ¤W¤U¿ï¾Ü¡@!CMop!¡@¢æÁä Â÷¶}
) else (
 set NT=¤W/¤UÁä ¤W¤U¿ï¾Ü¡@!CMop!¡@¢æÁä Â÷¶}¡@¢ÑÁä ¶i¦æªv¸o
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
set Sl%VCM%= ¡n
for /l %%a in (1,1,16) do (
 set CMl%%a=!Sl%%a!
 if defined Pln%%a (set Mop%%a=!Pln%%a!) else (set Mop%%a=[µLª±®a])
)
set CMl17=%Sl-1%&set CM17=­«³]&set Mop17=...
set CMl18=%Sl0%&set Mop18=...
if !VCM! neq !BVCM! (
 if %VCM% gtr 0 (
 ¡@set CMop=¢èÁä ¿é¤J
 ) else (set CMop=¢èÁä ½T©w)
 set BVCM=!VCM!
)
set NT=¤W/¤UÁä ¤W¤U¿ï¾Ü¡@!CMop!¡@¢æÁä Â÷¶}
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
  set/p Pln%VCM%="¤å¦rÁä ¿é¤J¡@¿é¤J¡Ï¢Ó¢ö¢ü¢í¢ú §¹¦¨¡@³æ¤@ªÅ®æ¡Ï¢Ó¢ö¢ü¢í¢ú §R°£¡@¢Ó¢ö¢ü¢í¢ú ¨ú®ø¡@"
  if defined Pln%VCM% (
   if "!Pln%VCM%!"==" " (set Pln%VCM%=) else (
    call set "Pln%VCM%=%%Pln%VCM%:"=¡¨%%"
    call set "Pln%VCM%=%%Pln%VCM%:^!=¡I%%"
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
set NT=¤W/¤UÁä ¤W¤U±²°Ê¡@¢æÁä Â÷¶}¡@¢ÑÁä ¶i¦æªv¸o
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
 for /l %%a in (1,1,5) do if "!M6:~,%%a!"=="!M6!" set EHpdiag=¡@!EHpdiag!
 if not defined M6 set EHpdiag=¡@¡@¡@¡@¡@¡@!EHpdiag!
 for /l %%a in (4,4,28) do if "!Hpdiag:~,%%a!"=="!Hpdiag!" set EHpdiag= !EHpdiag!
 set BHpdiag="!Hpdiag!"
)
if !Mopdiag! neq !BMopdiag! (
 set EMopdiag=                
 for /l %%a in (1,1,32) do if not "!Hpdiag:~,%%a!"=="!Hpdiag!" set EMopdiag= !EMopdiag!
 for /l %%a in (1,1,5) do if "!M7:~,%%a!"=="!M7!" set EMopdiag=¡@!EMopdiag!
 if not defined M7 set EMopdiag=¡@¡@¡@¡@¡@¡@!EMopdiag!
 for /l %%a in (1,1,32) do if not "!Mopdiag:~,%%a!"=="!Mopdiag!" set EMopdiag=!EMopdiag:~,-1!
 set BMopdiag=!Mopdiag!
)
if !Ex! neq !BEx! (
 set ESp=
 for /l %%a in (0,1,38) do if "!Ex:~,%%a!"=="!Ex!" set ESp=¡@!ESp!
 set BEx=!Ex!
)
%cls%&color 2f
if %CP%==3 (echo;%EMG%¡Ð%MG%¡Ð !Set05Timeta!:!Set05Timetb!:!Set05Timetc!.!Set05Time!%nl%) else (echo;%EMG%¡Ð%MG%¡Ð%nl%)
for /l %%a in (1,1,10) do (
 if %%a==6 (echo;¡@!Ml%%a:~,1!¡@¡@!M%%a!	!EHpdiag!!Hpdiag!) else (
  if %%a==7 (echo;¡@!Ml%%a:~,1!¡@¡@!M%%a!	!EMopdiag!!Mopdiag!) else (echo;¡@!Ml%%a:~,1!¡@¡@!M%%a!)
 )
 echo;¡@!Ml%%a:~1!¡@¡@¡@¡@¡@¡@¡@¡@!Mop%%a!
)
if %OP4V%==1 (
 echo;%nl%¡@¡@¡@¡@¦^¦X:%R%¡@¤ñ¼Æ%PlSn%%nl%¡@¡@«Å¥¬¥DÃD:!Pl%ownerB%!¡@©Ð¥D:!Pl%ownerA%!%nl%%ESp%%Ex%%nl%
) else (
 echo;%nl%¡@¡@¡@¡@¦^¦X:%R%¡@¤ñ¼Æ%PlSn%%nl%¡@¡@­ì©Ð¥D:!Pl%ownerB%!¡@©Ð¥D:!Pl%ownerA%!%nl%%ESp%%Ex%%nl%
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
echo;%EMG%¡Ð%MG%¡Ð%nl%%ESp%%Hp%%nl%
for /l %%a in (1,1,16) do (
 if %%a==10 (echo;¡@!CMl%%a:~1!¡@¡@!Pl%%a!¡@	!CMl%%a:~,-1!!Mop%%a! !EHpdiag!!Hpdiag!) else (
  if %%a==12 (echo;¡@!CMl%%a:~1!¡@¡@!Pl%%a!¡@	!CMl%%a:~,-1!!Mop%%a! !EMopdiag!!Mopdiag!) else (echo;¡@!CMl%%a:~1!¡@¡@!Pl%%a!¡@	!CMl%%a:~,-1!!Mop%%a!)
 )
)
echo;%nl%¡@%CMl17:~1%¡@¡@¡@%CM17%¡@¡@%Mop17%%nl%¡@%CMl18:~1%¡@¡@¡@Â÷¶}¡@¡@¡@¡@%Mop18%%nl%%nl%¡@¡@¡@¡@¦^¦X:%R%¡@¤ñ¼Æ%PlSn%%nl%¡@¡@«Å¥¬¥DÃD:!Pl%ownerB%!¡@©Ð¥D:!Pl%ownerA%!%nl%%nl%
goto:eof

:Manual
if !VCM! neq !BVCM! (
 set/a "ManualPage=VCM*ePageoManual/ePoManual"
 if %VCM% gtr 0 (set ManualRollU=) else (set ManualRollU=¢¡)
 set ManualRoll= 
 for /l %%a in (0,1,%ePageoManual%) do (
  if %%a==!ManualPage! (
   set ManualRoll=!ManualRoll!%ManualRNSs%
  ) else (
   set ManualRoll=!ManualRoll! 
  )
 )
 if !ManualPage! geq %ePageoManual% set ManualRoll=!ManualRoll:~-20!
 if %VCM% lss %ePoManual% (set ManualRollD=) else (set ManualRollD=¢£)
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
echo;!EMG!¡Ð!MG!¡Ð%nl%%nl%¡@ 0¢~-------------------------------------------------------------------!ManualRollU!
for /l %%a in (1,1,19) do (
 set/a ManualSkip=VCM+%%a
 call set "ManualLine=%%Manual!ManualSkip!%%"
 if !ManualSkip! lss 10 set ManualSkip= !ManualSkip!
 echo;¡@!ManualSkip!^|!ManualLine!!ManualRoll:~%%a,1!^|
)
echo;¡@%eoManualn%¢¢-------------------------------------------------------------------!ManualRollD!%nl%¡@¡@¡@¡@¦^¦X:%R%¡@¤ñ¼Æ%PlSn%¡@¡@¡@¡@¡@!Hpdiag!%nl%¡@¡@«Å¥¬¥DÃD:!Pl%ownerB%!¡@©Ð¥D:!Pl%ownerA%!%nl%¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@!EMopdiag!!Mopdiag!%nl%
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
 for /l %%a in (1,1,3) do set VAr%%a=¡@&set VAl%%a=¡@
 set VAr%Vd%=¡Ö&set VAl%Vd%=¡Õ
 set Mopdiag=¬Oªº!VAr1!¡@¡@!VAl2!¤£¤F
 if !MenuType!==Menu (
  set Hpdiag=¬O§_­n%Ex%¡H
 ) else (
  if !VCM!==-1 (
   if %CP%%C%==01 (set Hpdiag=¬O§_­n¶i¦æ­«³]¡H) else (set Hpdiag=¬O§_­n²M°£¼Ð°O¡H)
  ) else (
   set Hpdiag=¬O§_­n%CEx%¡H
   set Mopdiag=!Mopdiag!!VAr2!¡@¡@!VAl3!ÁÙ¤£­n
  )
 )
 set NT=¥ª/¥kÁä ¥ª¥k¿ï¾Ü¡@¢èÁä ½T©w¡@¢æÁä Ãö³¬
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
      set MGEx=ª±®a¦WºÙµn¿ý­«³]§¹¦¨
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
      if %CP%%C%==25 set Mop%ownerA%=-¸T¤î§ë²¼-
      set MGEx=¼Ð°O­«³]§¹¦¨
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
if !UDTurn!==1 (set MGEx=¿ù»~¡GÂ½Âà¦^¦X¤£¥iµn¿ýª±®a&call:mgdiag&goto:ScoreMenu)
if defined F03R%R% (set MGEx=¿ù»~¡G¦¹¦^¦X¤w¶i¦æ&call:mgdiag&goto:ScoreMenu)
set MG=ÄvÁÉµn¿ý
set Hp=¨Ì·Óª±®a¦b¦h¤H¹CÀ¸©Ð¤¤ªº¦ì¸mµn¿ýª±®a¦WºÙ
set CEx=§¹¦¨ÄvÁÉµn¿ý
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
  if !ownerN! gtr 0 (set MGEx=µn¿ý¤F!ownerN!¦ì·sª±®a¡A¤w¦³!ownerL!¦ìª±®a) else (set MGEx=¨S¦³·sª±®a¡A¦@¦³!ownerL!¦ìª±®a)
  call:mgdiag
  set F01R0=1
  set C=2
 ) else (
  set MGEx=¿ù»~¡G¤°»ò¤H¤]¨S¦³
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
 if defined MGExt1 if defined MGExt2 if !ownerA!==!ownerB! (call set "MGEx=%%Pl!ownerA!%%¦¨¬°¤F­ì©Ð¥D©M©Ð¥D¡A")
 if defined MGEx set "MGEx=!MGEx:~,-1!"&call:mgdiag
 for /l %%a in (1,1,%ownerL%) do (
  if !owner%%a!==!ownerA! set ownerAt=%%a
 )
)
goto:set-1

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

:set02
if !UDTurn!==1 (set MGEx=¿ù»~¡GÂ½Âà¦^¦X¤£¥i¬DÆ]&call:mgdiag&goto:ScoreMenu)
if defined F03R%R% (set MGEx=¿ù»~¡G¦^¦X¤w¶i¦æ&call:mgdiag&goto:ScoreMenu)
if not defined F01R0 (set MGEx=¿ù»~¡G¨S¦³ª±®a&call:mgdiag&goto:ScoreMenu)
set MG=¦Û§Ú¤¶²ÐÀË®Öªí
set Hp=¼Ð°O§¹¦¨¶}³õ¬DÆ]ªºª±®a¡A¼Æ¦r¤j¤p¤£¨ã·N¸q
set CEx=³B»@¨S¦³¶}³õ¬DÆ]ªºª±®a
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
 if defined MGExt (set MGEx=¤w³B»@!MGExt!¦ì¨S¦³¶}³õ¬DÆ]ªºª±®a) else (set MGEx=¥þ³¡ª±®a³£¤w¶}³õ¬DÆ])
 call:mgdiag
) else (
 set C=2
)
goto:set-1

:set03
if not defined F02R0 (set MGEx=¿ù»~¡G©|¥¼¶}³õ¬DÆ]&call:mgdiag&goto:ScoreMenu)
set MG=«Å¥¬¥DÃDÀË®Öªí
set Hp=
set CP=1
set C=1
for /l %%a in (1,1,16) do set Mop%%a=
for /l %%a in (1,1,8) do (
 if defined Pl%ownerB%C1%%aR%R% (
  if defined Ex1%%a%OP4V%o (
   set Ex1%%a%OP4V%=!Ex1%%a%OP4V%o:@=ºM°£!
   set Ex1%%a%OP4V%=!Ex1%%a%OP4V%:#=ªº!
  ) else (
   set Ex1%%a=!Ex1%%ao:@=ºM°£!
   set Ex1%%a=!Ex1%%a:#=ªº!
  )
  set Mop%%a=[¤w³B»@]
 ) else (
  if defined Ex1%%a%OP4V%o (
   set Ex1%%a%OP4V%=!Ex1%%a%OP4V%o:@=¹ï!
   set Ex1%%a%OP4V%=!Ex1%%a%OP4V%:#=¶i¦æ!
  ) else (
   set Ex1%%a=!Ex1%%ao:@=¹ï!
   set Ex1%%a=!Ex1%%a:#=¶i¦æ!
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
  set Ex1%C%%OP4V%=!Ex1%C%%OP4V%o:@=¹ï!
  set Ex1%C%%OP4V%=!Ex1%C%%OP4V%:#=¶i¦æ!
 ) else (
  set Ex1%C%=!Ex1%C%o:@=¹ï!
  set Ex1%C%=!Ex1%C%:#=¶i¦æ!
 )
 set Mop%C%=
 set "MGEx=¤wºM°£­ì©Ð¥D!Pl%ownerB%!ªº%SN%³B»@"
 call:mgdiag
) else (
 set/a "Pl%ownerB%S1%C%R%R%=-5,Pl%ownerB%C1%C%R%R%=1"
 if defined Ex1%%a%OP4V%o (
  set Ex1%C%%OP4V%=!Ex1%C%%OP4V%o:@=ºM°£!
  set Ex1%C%%OP4V%=!Ex1%C%%OP4V%:#=ªº!
 ) else (
  set Ex1%C%=!Ex1%C%o:@=ºM°£!
  set Ex1%C%=!Ex1%C%:#=ªº!
 )
 set Mop%C%=[¤w³B»@]
 set "MGEx=­ì©Ð¥D!Pl%ownerB%!¨ü¨ì%SN%³B»@"
 call:mgdiag
)
goto:ScoreMenu

:set10
set F03R%R%=1
set C=4
goto:set-1

:set04
if not defined F03R%R% (set MGEx=¿ù»~¡GÁÙ¥¼¶i¦æ¥DÃDÀË®Ö&call:mgdiag&goto:ScoreMenu) else (
 set BMG=
 set MG=ºq¦±¿ï¾ÜÀË®Öªí
 set BEx=
 set Hp=
 set CP=2
 if defined oC2 (set C=%oC2%&set oC2=) else (
  if !F04R%R%!==3 (set C=5) else (set C=1)
 )
 for /l %%a in (1,1,16) do set Mop%%a=
 for /l %%a in (1,1,2) do (
  if defined Pl%ownerA%C2%%aR%R% (
   set Ex2%%a=!Ex2%%ao:@=ºM°£!
   set Ex2%%a=!Ex2%%a:#=ªº!
   set Mop%%a=[¤w³B»@]
  ) else (
   set Ex2%%a=!Ex2%%ao:@=¹ï!
   set Ex2%%a=!Ex2%%a:#=¶i¦æ!
  )
 )
 if defined HardMap23R%R% (
  set Mop3=[¤w«Å§i]
 ) else (
  if defined Pl%ownerA%C23R%R% (
   set Mop3=[¥¼«Å§i¡D¤w³B»@]
  ) else (
   set Mop3=[¥¼«Å§i]
  )
 )
 goto:ScoreMenu
)

:set21
if defined Pl%ownerA%C2%C%R%R% (
 set Pl%ownerA%S2%C%R%R%=
 set Pl%ownerA%C2%C%R%R%=
 set Ex2%C%=!Ex2%C%o:@=¹ï!
 set Ex2%C%=!Ex2%C%:#=¶i¦æ!
 set Mop%C%=
 set "MGEx=¤wºM°£©Ð¥D!Pl%ownerA%!ªº%SN%³B»@"
 call:mgdiag
) else (
 set/a "Pl%ownerA%S2%C%R%R%=-5,Pl%ownerA%C2%C%R%R%=1"
 set Ex2%C%=!Ex2%C%o:@=ºM°£!
 set Ex2%C%=!Ex2%C%:#=ªº!
 set Mop%C%=[¤w³B»@]
 set "MGEx=©Ð¥D!Pl%ownerA%!¨ü¨ì¤F%SN%³B»@"
 call:mgdiag
)
goto:ScoreMenu

:set23
if defined HardMap23R%R% (
 set Mop%C%=[¥¼«Å§i]
 set "MGEx=©Ð¥D!Pl%ownerA%!¨S¦³´£¥Ü¹LÃø"
 call:mgdiag
 set HardMap23R%R%=
 if defined HardMapR%R% (
  set/a "Pl%ownerA%S23R%R%=-5-Pl%ownerA%S32R%R%"
  set Pl%ownerA%C23R%R%=1
  set Mop%C%=[¥¼«Å§i¡D¤w³B»@]
  set "MGEx=©Ð¥D!Pl%ownerA%!¨ü¨ì¤F¹H³W°ªÃø«×Ãg»@"
  call:mgdiag
 ) else (
  if defined HardMapR%RB% (
   set Pl%ownerA%S23R%R%=
   set Pl%ownerA%C23R%R%=
   set "MGEx=¤wºM°£©Ð¥D!Pl%ownerA%!ªº¹H³W°ªÃø«×Ãg»@"
   call:mgdiag
  )
 )
) else (
 set Mop%C%=[¤w«Å§i]
 set "MGEx=©Ð¥D!Pl%ownerA%!¤w´£¥Ü¹LÃø"
 call:mgdiag
 set HardMap23R%R%=1
 if not defined HardMapR%RB% (
  set Pl%ownerA%S23R%R%=
  set Pl%ownerA%C23R%R%=
  if defined HardMapR%R% (
   set "MGEx=¤wºM°£©Ð¥D!Pl%ownerA%!ªº¹H³W°ªÃø«×Ãg»@"
   call:mgdiag
  )
 ) else (
  set/a "Pl%ownerA%S23R%R%=-5-Pl%ownerA%S32R%R%"
  set Pl%ownerA%C23R%R%=1
  set Mop%C%=[¤w«Å§i¡D¤w³B»@]
  set "MGEx=©Ð¥D!Pl%ownerA%!¨ü¨ì¤F¹H³W°ªÃø«×Ãg»@"
  call:mgdiag
 )
)
goto:ScoreMenu

:set25
set MG=¯«¸tªº¼f§P¤§©Ò
set Hp=±N»{¬°¦¹ºq¦±»P¥DÃD¬ÛÃöªºª±®a¼Ð°O¡u0¡v¡A»{¬°¤£¬ÛÃöªºª±®a¼Ð°O¨ä¥¦¼Æ¦r
set CEx=§¹¦¨ªí¨M
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
   set "MGEx=ºq¦±»P¥DÃD§¹¥þµLÃö¡A©Ð¥D!Pl%ownerA%!¨ü¨ì¤FÃg»@"
   call:mgdiag
 ) else (
  if !ForRP! geq !RPt! (
   set Pl%ownerA%S25R%R%=5
   set Pl%ownerA%C25R%R%=
   set "MGEx=ºq¦±»P¥DÃD¬ÛÃö¡A©Ð¥D!Pl%ownerA%!¡Ï¢´"
   call:mgdiag
  ) else (
   set "MGEx=ºq¦±»P¥DÃDµLÃö¡A©Ð¥D!Pl%ownerA%!¡Ï¢¯"
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
if not defined F03R%R% (set MGEx=¿ù»~¡GÁÙ¥¼¶i¦æ¥DÃDÀË®Ö&call:mgdiag&goto:ScoreMenu) else (
 if not defined F04R%R% (set MGEx=¿ù»~¡GÁÙ¥¼¶i¦æºq¦±ÀË®Ö&call:mgdiag&goto:ScoreMenu) else (
  set MG=µyµyºCºCªº­p®É«Ç
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
 set MGEx=­p®É¤w°±¤î
 call:mgdiag
)
set MG=¦^¦Xµ²±b
set Hp=¹LÃöªº¼Ðµù±Æ¦W¡A¥¢±Ñªº¼Ð¢¯¡A¤¤Â÷¤£¼Ð¡F¥þÀu²§®É¥i±N§¹¦¨ªº³£¼Ð¢°
set CEx=§¹¦¨µn°O¦^¦X±Æ¦W¡A¨Ã³B»@¤¤Â÷ªºª±®a
for /l %%a in (1,1,16) do set Mop%%a=!Pl%%aM31R%R%!
goto:CheckScoreMenu

:save31
if %Vd%==1 (
 for /l %%a in (1,1,16) do set Pl%%aS31R%R%=
 call:PlsScore
 set MGEx=¦^¦X®É¶¡¡G!Set05Timeta!:!Set05Timetb!:!Set05Timetc!.!Set05Time!
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
     set "MGEx=ª±®a!Pl%%a!¨ú±o²Ä!Mop%%a!¦W¡A¦^¦X±o¤À¡Ï!RPtm!"
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
    set "MGEx=³sÄò°ªÃø«×¡A©Ð¥D!Pl%ownerA%!¨ü¨ì¤F¹H³W°ªÃø«×Ãg»@"
    call:mgdiag
   )
  ) else (
   set/a "Pl%ownerA%S23R%R%=-5-Pl%ownerA%S32R%R%"
   set Pl%ownerA%C23R%R%=1
   set "MGEx=¨S´£¥Ü¹LÃø¡A©Ð¥D!Pl%ownerA%!¨ü¨ì¤F¹H³W°ªÃø«×Ãg»@"
   call:mgdiag
  )
 )
 set Pl%ownerA%C31R%R%=
 set Pl%ownerA%Skip=
 if !Set05TimeR! gtr 39000 (
  set Pl%ownerA%C31R%R%=1
  set Pl%ownerA%Skip=1
  set "MGEx=ºq¦±¹Lªø¡A©Ð¥D!Pl%ownerA%!¶i¤JºÎ¯v"
  call:mgdiag
 )
 set/a MGExt=RP-FailedRP
 if !MGExt! gtr 0 (
  if defined HardMapR%R% (
   set MGEx=!MGExt!¦ìª±®a¦¨¥\¹LÃö¡A¡Ï¢´¡A°ªÃø«×¼úÀy¡Ï¢³
  ) else (
   if !MGExt! equ !RP! (set MGEx=¥þ³¡ª±®a¹LÃö¡A¡Ï¢´) else (set MGEx=!MGExt!¦ìª±®a¹LÃö¡A¡Ï¢´)
  )
  call:mgdiag
 )
 if !RP! equ 0 (set MGEx=¥þ¼Æ§ë­°) else (
  if !FailedRP! gtr 0 (
   if !FailedRP! equ !RP! (set MGEx=¥þ­xÂÐ¨S) else (set MGEx=!FailedRP!¦ìª±®a¥¢±Ñ¡A¡Ï¢¯)
   call:mgdiag
  )
  if !QuitRP! gtr 0 (set MGEx=!QuitRP!¦ìª±®aÁ{°}²æ°k¡A¨ü¨ì¤F¡Ð¢´ªºÃg»@) else (set MGEx=¨S¦³²æ°kªºª±®a)
 )
 call:mgdiag
 if defined UDTurn (
  if "!Mop%ownerA%!"=="1" (
   set "MGEx=©Ð¥D!Pl%ownerA%!Â½Âà¦¨¥\¡A¦^¦X±o¤À£A¢²¢¯¢¯¢H"
  ) else (
   set "MGEx=©Ð¥D!Pl%ownerA%!Â½Âà¥¢±Ñ¡A°£©Ð¥D©M¤À¼Æ²Ä¤@¥~ªº¦^¦X±o¤À£A¢²¢¯¢¯¢H"
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
if not "!F04R%R%!,!F05R%R%!"=="1,1" (set MGEx=¿ù»~¡G¦^¦X©|¥¼§¹¦¨&call:mgdiag&goto:ScoreMenu)
if "!UDTurn!"=="1" (set MGEx=¿ù»~¡GÂ½Âà¦^¦X¤wµ²§ô¡FÄvÁÉµ²§ô&call:mgdiag&goto:ScoreMenu)
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
 if !ownerA!==!ownerB! (set "MGEx=!Pl%ownerA%!«ì´_²M¿ô¡A¨Ã¦¨¬°¤F­ì©Ð¥D©M©Ð¥D") else (set "MGEx=!Pl%ownerB%!¦¨¬°¤F­ì©Ð¥D¡A!Pl%ownerA%!«ì´_²M¿ô¡A¨Ã¦¨¬°¤F©Ð¥D")
) else (
 if !ownerA!==!ownerB! (set "MGEx=!Pl%ownerA%!¦¨¬°¤F­ì©Ð¥D©M©Ð¥D") else (set "MGEx=!Pl%ownerB%!¦¨¬°¤F­ì©Ð¥D¡A!Pl%ownerA%!¦¨¬°¤F©Ð¥D")
)
call:mgdiag
set MGEx=¤w¶i¤J¤U¤@¦^¦X
call:mgdiag
for /l %%a in (1,1,16) do set Mop%%a=
goto:ScoreMenu

:set07
if not "!F04R%R%!,!F05R%R%!"=="1,1" (set MGEx=¿ù»~¡G¦^¦X©|¥¼§¹¦¨&call:mgdiag&goto:ScoreMenu)
if not defined EnUDTurn (set MGEx=¿ù»~¡G¦¹½ü©|¥¼§¹µ²&call:mgdiag&goto:ScoreMenu)
if "!UDTurn!"=="1" (set MGEx=¿ù»~¡GÂ½Âà¦^¦X¤wµ²§ô¡FÄvÁÉµ²§ô&call:mgdiag&goto:ScoreMenu)
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
 if !ownerA!==!ownerB! (set "MGEx=!Pl%ownerA%!¦¨¬°¤F­ì©Ð¥D©M©Ð¥D") else (set "MGEx=!Pl%ownerB%!¦¨¬°¤F­ì©Ð¥D¡A!Pl%ownerA%!¦¨¬°¤F©Ð¥D")
) else (
 set Pl%ownerA%Skip=
 if !ownerA!==!ownerB! (set "MGEx=!Pl%ownerA%!«ì´_²M¿ô¡A¨Ã¦¨¬°¤F­ì©Ð¥D©M©Ð¥D") else (set "MGEx=!Pl%ownerB%!¦¨¬°¤F­ì©Ð¥D¡A!Pl%ownerA%!«ì´_²M¿ô¡A¨Ã¦¨¬°¤F©Ð¥D")
)
call:mgdiag
set MGEx=¤w¶i¤JÂ½Âà¦^¦X
call:mgdiag
for /l %%a in (1,1,16) do set Mop%%a=
goto:ScoreMenu

:set08
call:set08Menu
goto:ScoreMenu

:set08Menu
if not defined F01R0 (set MGEx=¿ù»~¡G¨S¦³ª±®a&call:mgdiag&goto:eof) else (
 set oMG=%MG%
 set MG=¯´§ÇÃg»@¿ï³æ
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
if %C%==1 set PN=¥ô·N¤Á´«&set Hp=¥Nªí¨ä¦¸¼Æ
if %C%==2 set PN=¨Ï¥Î²Ê¸Ü&set Hp=¥Nªí¨ä¦r¼Æ
if %C%==3 set PN=©ì©µÄvÁÉ¶i«×&set Hp=¤£¨ã·N¸q
set BMG=
set MG=%SN%ªv¸o¤§¦a
set BHp=
set Hp=¼Ð°O!PN!ªºª±®a¡A¼Æ¦r¤j¤p%Hp%
set CEx=³B»@%PN%ªºª±®a¡]ª`·N¡G¦¹³B»@¤£¥iºM°£¡^
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
 if defined MGExt (set MGEx=!MGExt!¦ì%PN%ªºª±®a¨ü¨ì¤F³B»@) else (set MGEx=¥þ¼Æ²M¥Õ)
 call:mgdiag
)
set MG=¯´§ÇÃg»@¿ï³æ
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
set MG=³]©w»P»¡©ú
set BHp=
set Hp=
set CP=5
set C=1
goto:OptionMenu

:set51
set MG=ÄvÁÉ³W«h
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
>>"%~dpn0log.txt" echo;%_DT%¡@µ²§ô¤F­p¤ÀªOµ{¦¡
>>"%~dpn0log.txt" echo;~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~¡ã~ 
endlocal&endlocal
title ©R¥O´£¥Ü¦r¤¸&cls
goto:eof

:osu¡IÄv°O.dat
set Manual1=¡@¡@¡@¡@ ²Ä¤­¦¸C^&T»R¹Îº[¤Í½ËÁp¦Xosu^^!¤jÁÉÄvÁÉ³W«h¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual2=¡@¥Î­p¤ÀªOµ{¦¡¡A³Ì°ª¤À¡×Àò³Ó¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual3=¡@¢à¢Ñ¡B¿ý¼v¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual4=¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual5=¡@¡@¡­³W«h»¡©ú¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual6=¡@¡³¶}³õ¬DÆ]¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual7=µL¤¶²Ð¡@¡Ð¢´¡Ï¶À¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual8=¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual9=¡@¡³ª±®a¥X¥DÃD¡]¦³¥DÃD®É¡^¡@and¡@¿ïºqÅvÂà²¾ ¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual10=¡@¡@¡D¥DÃD¥¢®Ä¡@or¡@¢Ü¦h¥DÃD¡@or¡@¤½§Gºq¦±¦WºÙ¡@or¡@µ¹¿ù©Ð¥D¡@¡@¡@¡@
set Manual11=­ì©Ð¥D¡@¡Ð¢´¡Ï¶À¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual12=¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual13=¡@¡³ª±®a¿ïºq¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual14=¡@¡@¡Dºq¦±­«½Æ¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡D»{¦Pª±®a¡]¦³¥DÃD®É¡^¡@¡@¡@¡@
set Manual15=©Ð¥D¡@¡Ð¢´¡Ï¶À¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¤@¥b¡@¡@¡×¥DÃD¬ÛÃö¡@¡Ï¢´¡@¡@¡@¡@¡@
set Manual16=¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¤£¨ì¤@¥b¡×µy·LµLÃö¡@¡Ï¢¯¡@¡@¡@¡@¡@
set Manual17=¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¨S¦³¡@¡@¡×§¹¥þµLÃö¡@¡Ð¢´¡Ï¶À¡@¡@¡@
set Manual18=¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual19=¡@¡³¦^¦X±o¤À¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual20=¡@¡@¡D±o¤À¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual21=ºq¦±§¹¦¨¡@¡Ï¢´¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual22=¾Ô±Ñ¡@¡@¡@¡Ï¢¯¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual23=¤¤Â÷¡@¡@¡@¡Ð¢´¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual24=¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual25=¡@¡@¡D¥[¤À¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual26=°¸¼Æ¤H¹LÃö¡@¡Ï¢³*[^(¹LÃö¤H¼Æ/2^)-¦^¦X±Æ¦W+1]/^(¹LÃö¤H¼Æ/2^) ¡@¡@±Ë¥h¤p¼Æ
set Manual27=©_¼Æ¤H¹LÃö¡@¡Ï¢³*[^(¹LÃö¤H¼Æ+1^)/2-¦^¦X±Æ¦W+1]/[^(¹LÃö¤H¼Æ+1^)/2] ¨ú¾ã¼Æ
set Manual28=¥þÀu²§¡@¥þ¡@¡Ï¢³¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual29=¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual30=¶W¹L¤@¥b±¾¡×°ªÃø«×¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual31=¡@¡@¡D¼úÀy¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡D³sÄò°ªÃø«×¡@or¡@¨S´£¥Ü¹LÃø¡@
set Manual32=§¹¦¨¡@¡Ï¢³¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@©Ð¥D¡@¡Ð¢´¡ÏµL¼úÀy¡Ï¶À¡@¡@¡@¡@¡@¡@
set Manual33=¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual34=¡@¡@¡Dºq¦±«Üªø^(6^:30^)¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual35=©Ð¥D¡@ºÎ¯v¤@¦^¦X¤£¿ïºq¡Ï¶À¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual36=¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual37=¡@¡³´«¦ì¸m¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual38=¡@¡@¡D­ì©Ð¥D¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡D©Ð¥D¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual39=­ì©Ð¥Dµ¹¤W¤@ª±®a¡A·í§@¶i¤U¦^¦X¡@¡@©Ð¥Dµ¹¤U¤@ª±®a¡A·í§@¶i¤U¦^¦X¡@¡@¡@
set Manual40=¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual41=³Ì«á¤@³õ§Ô³NÂ½Âà¡@©Ð¥DÀò³Ó¡×¼úÀy¡@¤£µM¡×¨ä¥L¤H¼úÀy¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual42=¡@¡³§Ô³NÂ½Âà¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual43=¡@¡@¡D¤À¼Æ³Ì«áªº¥þ³¡ºÎ¯v¡@¡@¡@¡@¡@¡@¡@¡D¨S¦³¥þ³¡¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual44=©Ð¥Dµ¹¤À¼Æ³Ì«áªº¤§¤@¡@¡@¡@¡@¡@¡@¡@©Ð¥Dµ¹¤À¼Æ³Ì«á¤S²M¿ôªº¤§¤@¡@¡@¡@¡@
set Manual45=¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual46=¡@¡@¡D©Ð¥DÀò³Ó¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡D¤£µM¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual47=©Ð¥D¡@±o¤À£A¢²¢¯¢¯¢H¡@¡@¡@¡@¡@¡@¡@°£©Ð¥D©M¤À¼Æ²Ä¤@¥~¡@±o¤À£A¢²¢¯¢¯¢H
set Manual48=¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual49=¡°±Æ¦W¥[¤À©Î¥¼§¹¦¨¤]£A¢²¢¯¢¯¢H¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual50=¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual51=¡@¡³Ãg»@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual52=¡@¡@¡D¶Ã´«¦ì¸m¡@or¡@ª±®a¥X¤F¥DÃD¡@¡@¡@¡D·F¸Ü¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual53=²¾¤@¦¸¡@¡Ð¢´¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¤@­Ó¦r¡@¡Ð¢±¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual54=¤w²¾¦^¡@¡Ï¶À¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¤@¥y¡@¡@¡Ï¶À¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual55=¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual56=¡@¡@¡D©ì©µ¤ñÁÉ¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡D¶ÀµP¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual57=¤@¦¸¡Ð¢´¡Ï¶À¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¶À£A¢²¡×¡Ð¢±¢¯¡@Ãþ±À¡@¡@¡@¡@¡@¡@¡@
set Manual58=¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set Manual59=¡@¡@¡­»¡©ú§¹²¦¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@¡@
set/a "eoManual=59,ePoManual=eoManual-19,eoManualn=eoManual+1,ManualRs=19*190/59,ManualRst=ManualRs%%10"
if !ManualRst! neq 0 set/a ManualRs+=10
set/a "ManualRs/=10,ePageoManual=20-ManualRs"
set ManualRNSs=
for /l %%a in (1,1,!ManualRs!) do (set ManualRNSs=#!ManualRNSs!)