:BAT start
@title 程式載入中…… Now Loading…&echo off&setlocal enableextensions&if not "%1"=="" goto %1
>nul chcp 950
if exist "%~dpn0log.txt" (
 for /f "tokens=* usebackq" %%a in ("%~dpn0log.txt") do (
  if "%%a"=="微哆動作紀錄 --------------------------------------------- " (
   >>"%~dpn0log.txt" echo;---------------------------------------------------------- 
   goto BAT start continue
  ) else (
   >"%~dpn0log.txt" echo;微哆動作紀錄 --------------------------------------------- 
  )
 )
) else (
 >"%~dpn0log.txt" echo;微哆動作紀錄 --------------------------------------------- 
)
goto BAT start continue

:BAT start continue
call:DT
>>"%~dpn0log.txt" echo;%_DT%　啟動了記分板程式
echo;Microdoft "arring"
setlocal enabledelayedexpansion
goto start

:readsave
if exist "%~dpn0存檔.dat" for /f "tokens=* usebackq" %%a in ("%~dpn0存檔.dat") do %%a
set prompt=$G
set cls=cls
if not defined OP2V set bellG=
if "%OP2V%"=="2" (set bellG=) else (set bellG=)
call:osu！競記.dat
goto :eof

:storesave
if defined MenuType (
 call:%MenuType%
 set/p="Ｎｏｗ　Ｌｏａｄｉｎｇ..."<nul
)
>nul 2>&1 del /f /q /a "%~dpn0存檔temp.dat"
for /f "tokens=1 delims==" %%a in ('set') do (>>"%~dpn0存檔temp.dat" echo;set %%a=!%%a!)
>nul 2>&1 del /f /q /a "%~dpn0存檔.dat"
>nul 2>&1 copy /y "%~dpn0存檔temp.dat" "%~dpn0存檔.dat"
>nul 2>&1 del /f /q /a "%~dpn0存檔temp.dat"
attrib +r -a "%~dpn0存檔.dat"
goto :eof

:DT
for /f "tokens=1-4 delims=/ " %%a in ("%date%") do set _DoDate=%%a年%%b月%%c日（%%d）
for /f "tokens=1-4 delims=:. " %%e in ("%time%") do set _DoTime=%%e時%%f分%%g秒點%%h
set _DT=%_DoDate%%_DoTime%
goto :eof

:start
call:readsave
mode con cols=38 lines=5
title 程式開始中…… Now Loading...
echo;Microdoft "arring"...
call:DT
>>"%~dpn0log.txt" echo;%_DT%　開始了記分板程式
>nul timeout /t 1 /nobreak
goto ready

:restart
call:storesave&call:readsave
mode con cols=38 lines=5
color&title 程式重新開始中…… Now Loading...
echo;Microdoft "arring"...
call:DT
>>"%~dpn0log.txt" echo;%_DT%　重開了記分板程式
>nul timeout /t 1 /nobreak
goto ready

:ready
%cls%&color 2f
title osu！競賽記分板
set MG=請按下選項
echo;　　　　　　　%MG%%bellG%
echo.
set NT=Ｚ鍵　進入記分板；Ｘ鍵　結束
echo;　　%NT:~,8%
choice /n /c zxqr /m "　　%NT:~-5%"
call:DT
if %errorlevel%==4 (
 >>"%~dpn0log.txt" echo;%_DT%　%MG% "%NT%" R
 set MenuType=
 goto restart
)
if %errorlevel%==3 (
 >>"%~dpn0log.txt" echo;%_DT%　%MG% "%NT%" Q
 set MenuType=
 call:storesave
 goto set00
)
if %errorlevel%==2 (
 >>"%~dpn0log.txt" echo;%_DT%　%MG% "%NT%" X
 set MenuType=
 goto set00
)
if %errorlevel%==1 (
 >>"%~dpn0log.txt" echo;%_DT%　%MG% "%NT%" Z
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
set SN01=玩家登錄&set Ex01=進行玩家的競賽登錄
set SN02=自我介紹&set Ex02=進入自我介紹檢核表
set SN03=宣布主題&set Ex03=進入歌曲主題的檢核表
set SN04=選擇歌曲&set Ex04=進入選擇歌曲的檢核表
set SN05=開始回合&set Ex05=進入計時室，並開始這個歌曲回合
set SN06=下一回合&set Ex06=進入下一回合
set SN07=翻轉回合&set Ex07=進入翻轉回合
set SN08=秩序懲罰&set Ex08=開啟秩序懲罰選單
set SN09=設定與說明&set Ex09=進入設定和說明選單
set SN00=退出&set Ex00=退出記分板程式

set SN11=主題不能搜尋&set Ex11o=@宣布了沒有適當搜尋關鍵字的主題的原房主#處罰
set SN12=主題過多&set Ex12o=@宣布了一個以上主題的原房主#處罰
set SN13=主題為歌曲名&set Ex13o=@以歌曲名稱作為主題的原房主#處罰
set SN15=給錯房主資格&set Ex15o=@將房主資格給錯玩家的原房主#處罰
set SN10=離開&set Ex10=離開主題宣布檢核表

set SN21=歌曲重複懲罰&set Ex21o=@選擇了競賽中已被選過的歌曲的房主#處罰
set SN23=高難度宣告&set Ex23=切換房主提示所選歌曲將引發高難度回合的狀況
set SN25=選歌評價&set Ex25=進行對房主所選的歌曲是否符合主題的表決
set SN20=離開&set Ex20=離開歌曲選擇檢核表

set SN31=結束回合&set Ex31=停止計時，進入玩家排行登錄表
set SN30=離開&set Ex30=離開歌曲選擇檢核表

set SN41=任意切換位置&set Ex41=懲罰任意切換位置的玩家
set SN42=使用粗話&set Ex42=懲罰使用粗話的玩家
set SN43=拖延競賽進度&set Ex43=懲罰拖延競賽進度的玩家
set SN40=離開&set Ex40=離開秩序懲罰選單

set SN51=競賽說明&set Ex51=顯示競賽說明
set SN52=操作聲音&set Ex52=切換進行操作時音效的有無
set OP2L=2&set OP2V1=開啟&set OP2V2=關閉&set OP2DV=1
set SN53=一次捲動行數&set Ex53=調整一次捲動競賽說明的行數
set OP3L=5&set OP3V1=1&set OP3V2=2&set OP3V3=3&set OP3V4=4&set OP3V5=5&set OP3DV=3
set SN59=重設設定&set Ex50=將所有設定還原為預設值
set SN50=離開&set Ex50=離開設定與說明選單
goto set-1

:set-1
mode con cols=80 lines=30
title osu！競賽記分板 ver. 1.00b
set MG=選擇記分板項目
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
set SN=!SN%CP%%C%!&set Ex=!Ex%CP%%C%!&set Sl%C%=》 
for /l %%a in (1,1,9) do (
 set Ml%%a=!Sl%%a!&set M%%a=!SN%CP%%%a!
 if "!F%CP%%%aR0!"=="1" set Mop%%a=[已完成]
 if "!F%CP%%%aR%R%!"=="0" set Mop%%a=[計時停止]
 if "!F%CP%%%aR%R%!"=="1" set Mop%%a=[已完成]
 if "!F%CP%%%aR%R%!"=="2" set Mop%%a=[計時中......]
 if "!F%CP%%%aR%R%!"=="3" set Mop%%a=[尚未投票]
 if "%CP%""%EnUDTurn%"=="0""1"  set Mop7=[可進入翻轉回合]
 if "%CP%""%UDTurn%"=="0""1"  set Mop7=[已進入翻轉回合]
 if %CP%==0 if defined SN%CP%%%a (if not defined Mop%%a set Mop%%a=......) else (set Mop%%a=)
)
set Ml10=%Sl0%&set M10=!SN%CP%0!&set Mop10=......
if not %CP%==3 call:PlsScore
call:Menu
if %CP%==4 (
 set NT=上/下鍵 上下選擇　Ｚ鍵 確定　Ｘ鍵 離開
) else (
 set NT=上/下鍵 上下選擇　Ｚ鍵 確定　Ｘ鍵 離開　Ｃ鍵 秩序懲罰
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
 call:DT& >>"%~dpn0log.txt" echo;!_DT!　%MG% "%NT%"　%SN%「R」
 goto restart
)
if %errorlevel%==7 (
 call:DT& >>"%~dpn0log.txt" echo;!_DT!　%MG% "%NT%"　%SN%「Q」
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
set SN=!SN%CP%%C%!&set Ex=!Ex%CP%%C%!&set Sl%C%=》 
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
set NT=上/下鍵 上下選擇　左/右鍵 調整設定　Ｚ鍵 確定　Ｘ鍵 離開　Ｃ鍵 秩序懲罰
choice /n /c a4d6s2w8zxqrcp /m "%NT%"
if %errorlevel%==14 (
 if defined PlSn echo;%PlSn:~1%|clip
 goto OptionMenu
)
if %errorlevel%==13 (call:set08Menu&goto OptionMenu)
if %errorlevel%==12 (
 call:DT& >>"%~dpn0log.txt" echo;!_DT!　%MG% "%NT%"　%SN%「R」
 goto restart
)
if %errorlevel%==11 (
 call:DT& >>"%~dpn0log.txt" echo;!_DT!　%MG% "%NT%"　%SN%「Q」
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
if "%CP%%C%"=="25" set Mop%ownerA%=-房主無法投票-
set MenuType=CheckMenu
set Hpdiag=
set Mopdiag=
if %VCM% gtr 0 if not defined Pl%VCM% goto CheckScoreMenuS
if !Mop%VCM%!==-房主無法投票- goto CheckScoreMenuS
for /l %%a in (-1,1,16) do set Sl%%a= 
set Sl%VCM%=》
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
set CM17=清除標記
call:CheckMenu
set NT=上/下鍵 上下選擇　左/右鍵 編輯標記^(0-!CMop!^)　Ｚ鍵 標記　Ｘ鍵 離開　Ｃ鍵 秩序懲罰
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
 if !Mop%VCM%!==-房主無法投票- goto CheckScoreMenuW
 goto CheckScoreMenu
)
if %errorlevel% geq 5 (
 :CheckScoreMenuS
 if !VCM! geq 16 (set VCM=-1) else (set/a VCM+=1)
 if !VCM! gtr 0 if not defined Pl!VCM! goto CheckScoreMenuS
 if !Mop%VCM%!==-房主無法投票- goto CheckScoreMenuS
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
set Sl%VCM%=》
for /l %%a in (1,1,16) do (
 set CMl%%a=!Sl%%a!
 if defined PMop%%a (set Mop%%a=!Pl%%aM%CP%%C%R0!←!PMop%%a!) else (set Mop%%a=!Pl%%aM%CP%%C%R0!)
)
set CMl17=%Sl-1%&set Mop17=......
set CMl18=%Sl0%&set Mop18=......
set CM17=清除標記
call:CheckMenu
if %CP%==4 (
 set NT=上/下鍵 上下選擇　左/右鍵 編輯標記^(1-16^)　Ｚ鍵 標記　Ｘ鍵 離開
) else (
 set NT=上/下鍵 上下選擇　左/右鍵 編輯標記^(1-16^)　Ｚ鍵 標記　Ｘ鍵 離開　Ｃ鍵 秩序懲罰
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
set Sl%VCM%=》
for /l %%a in (1,1,16) do (
 set CMl%%a=!Sl%%a!
 if defined Pln%%a (set Mop%%a=←!Pln%%a!) else (set Mop%%a=[無玩家])
)
set CMl17=%Sl-1%&set Mop17=......
set CMl18=%Sl0%&set Mop18=......
set CM17=重設　　
call:CheckMenu
set NT=上/下鍵 上下選擇　Ｚ鍵 輸入　Ｘ鍵 離開
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
  set/p Pln%VCM%="文字鍵 輸入　輸入＋Ｅｎｔｅｒ 完成　單一空格＋Ｅｎｔｅｒ 刪除　Ｅｎｔｅｒ 取消　"
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
set NT=上/下鍵 上下捲動　Ｘ鍵 離開　Ｃ鍵 秩序懲罰
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
if %CP%==3 (echo;%EMG%－%MG%－ !Set05Timeta!:!Set05Timetb!:!Set05Timetc!.!Set05Time!) else (echo;%EMG%－%MG%－)
echo.
set EHpdiag=
set EMopdiag=                
for /l %%a in (1,1,6) do if "!M6:~,%%a!"=="!M6!" set EHpdiag=　!EHpdiag!
if not defined M6 set EHpdiag=　　　　　　　!EHpdiag!
for /l %%a in (4,4,28) do if "!Hpdiag:~,%%a!"=="!Hpdiag!" set EHpdiag= !EHpdiag!
for /l %%a in (1,1,32) do if not "!Hpdiag:~,%%a!"=="!Hpdiag!" set EMopdiag= !EMopdiag!
for /l %%a in (1,1,6) do if "!M7:~,%%a!"=="!M7!" set EMopdiag=　!EMopdiag!
if not defined M7 set EMopdiag=　　　　　　　!EMopdiag!
for /l %%a in (1,1,32) do if not "!Mopdiag:~,%%a!"=="!Mopdiag!" set EMopdiag=!EMopdiag:~,-1!
for /l %%a in (1,1,10) do (
 if %%a==6 (echo;　!Ml%%a:~,1!　　!M%%a! !EHpdiag!!Hpdiag!) else (
  if %%a==7 (echo;　!Ml%%a:~,1!　　!M%%a! !EMopdiag!!Mopdiag!) else (echo;　!Ml%%a:~,1!　　!M%%a!)
 )
 echo;　!Ml%%a:~1!　　　　　　　　!Mop%%a!
)
echo.
echo;　　　　回合:%R%　比數%PlSn%
echo;　　宣布主題:!Pl%ownerB%!　房主:!Pl%ownerA%!
set ESp=
for /l %%a in (0,1,38) do if "!Ex:~,%%a!"=="!Ex!" set ESp=　!ESp!
echo;%ESp%%Ex%
echo.
goto :eof

:CheckMenu
set EMG=
for /l %%a in (0,1,37) do if "!MG:~,%%a!"=="!MG!" set EMG= !EMG!
%cls%&color 2f
echo;%EMG%－%MG%－
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
 if %%a==10 (echo;　!CMl%%a!　　　!Pl%%a!　　!Mop%%a! !EHpdiag!!Hpdiag!) else (
  if %%a==12 (echo;　!CMl%%a!　　　!Pl%%a!　　!Mop%%a! !EMopdiag!!Mopdiag!) else (echo;　!CMl%%a!　　　!Pl%%a!　　!Mop%%a!)
 )
)
echo.
echo;　%CMl17%　　　%CM17%　　%Mop17%
echo;　%CMl18%　　　離開　　　　%Mop18%
echo.
echo;　　　　回合:%R%　比數%PlSn%
echo;　　宣布主題:!Pl%ownerB%!　房主:!Pl%ownerA%!
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
echo;%EMG%－%MG%－
echo.
echo; 0╭------------------------------------------------------------------------╮!ManualRoll:~,1!
for /l %%a in (1,1,19) do (
 set/a ManualSkip=VCM+%%a
 call:readmanual
 if !ManualSkip! lss 10 set ManualSkip= !ManualSkip!
 echo;!ManualSkip!^|!ManualLine!^|!ManualRoll:~%%a,1!
)
echo;%eoManualn%╰------------------------------------------------------------------------╯!ManualRoll:~-1!
set EMopdiag=                
for /l %%a in (4,4,28) do if not "!Hpdiag:~,%%a!"=="!Hpdiag!" set EMopdiag= !EMopdiag!
echo;　　　　回合:%R%　比數%PlSn%
echo;　　宣布主題:!Pl%ownerB%!　房主:!Pl%ownerA%!
echo;　　　　　　　　　　　　　　　!EMopdiag!!Mopdiag!
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
if %Vd% geq 3 set VAr1=　&set VAl1=　&set VAr2=　&set VAl2=＜
if %Vd%==2 set VAr1=　&set VAl1=＜&set VAr2=＞&set VAl2=　
if %Vd% leq 1 set VAr1=＞&set VAl1=　&set VAr2=　&set VAl2=　
if "%MenuType%"=="Menu" (
 set Hpdiag=是否要%Ex%？
 set Mopdiag=是的%VAr1%　　%VAl1%不了
) else (
 if "%VCM%"=="-1" (
  if %CP%%C%==01 (set Hpdiag=是否要進行重設？) else (set Hpdiag=是否要清除標記？)
  set Mopdiag=是的%VAr1%　　%VAl1%不了
 ) else (
  set Hpdiag=是否要%CEx%？
  set Mopdiag=是的%VAr1%　　%VAl1%不了%VAr2%　　%VAl2%還不要
 )
)
call:PlsScore
call:%MenuType%
set NT=左/右鍵 左右選擇　Ｚ鍵 確定　Ｘ鍵 關閉
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
      set MGEx=玩家登錄名稱已重設
      call:mgdiag
     )
     goto EnterNameMenu
    ) else (
     if %Vd%==1 (
      set CMop=0&for /l %%a in (1,1,16) do (set Mop%%a=&set PMop%%a=)
      set MGEx=標記已重設
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
if defined R >>"%~dpn0log.txt" set/p="回合%R% "<nul
>>"%~dpn0log.txt" echo;選項%CP%%C%　%MGEx%
set Mopdiag=＞確定
call:%MenuType%
set NT=Ｚ鍵 確定　Ｘ鍵 關閉
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
if "!UDTurn!"=="1" (set MGEx=錯誤：翻轉回合不可登錄玩家&call:mgdiag&goto ScoreMenu)
if defined F03R%R% (set MGEx=錯誤：此回合已進行&call:mgdiag&goto ScoreMenu)
set MG=登錄玩家
set Hp=依照玩家在多人遊戲房中的位置登錄玩家名稱
set CEx=完成登錄玩家
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
  if !ownerN! gtr 0 (set MGEx=完成登錄!ownerN!位新玩家，目前共有!ownerL!位玩家) else (set MGEx=沒有登錄新玩家，目前共有!ownerL!位玩家)
  call:mgdiag
  set F01R0=1
  set C=2
 ) else (
  set MGEx=錯誤：不能什麼人都沒有
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
set MGEx=!Pl%ownerB%!成為了原房主
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
set MGEx=!Pl%ownerA%!成為了房主
call:mgdiag
goto :eof

:set02
if "!UDTurn!"=="1" (set MGEx=錯誤：翻轉回合不可進行自我介紹&call:mgdiag&goto ScoreMenu)
if defined F03R%R% (set MGEx=錯誤：此回合已進行&call:mgdiag&goto ScoreMenu)
if not defined F01R0 (set MGEx=錯誤：還未進行玩家登錄&call:mgdiag&goto ScoreMenu) else (
 set MG=自我介紹檢核表
 set Hp=標記完成自我介紹的玩家，數字大小不具意義
 set CEx=處罰未進行自我介紹的玩家
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
 if defined MGExt (set MGEx=已處罰!MGExt!位未進行自我介紹的玩家) else (set MGEx=沒有未進行自我介紹的玩家)
 call:mgdiag
) else (
 set C=2
)
goto set-1

:set03
if not defined F02R0 (set MGEx=錯誤：還未進行自我介紹檢核&call:mgdiag&goto ScoreMenu) else (
 set MG=宣布主題檢核表
 set Hp=
 set CP=1
 set C=1
 for /l %%a in (1,1,16) do set Mop%%a=
 for /l %%a in (1,1,8) do (
  if defined Pl%ownerB%C1%%aR%R% (
   set Ex1%%a=!Ex1%%ao:@=撤除!
   set Ex1%%a=!Ex1%%a:#=的!
   set Mop%%a=[已處罰]
  ) else (
   set Ex1%%a=!Ex1%%ao:@=對!
   set Ex1%%a=!Ex1%%a:#=進行!
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
 set Ex1%C%=!Ex1%C%o:@=對!
 set Ex1%C%=!Ex1%C%:#=進行!
 set Mop%C%=
 set MGEx=已撤除原房主!Pl%ownerB%!的%SN%處罰
 call:mgdiag
) else (
 set/a "Pl%ownerB%S1%C%R%R%=-5,Pl%ownerB%C1%C%R%R%=1"
 set Ex1%C%=!Ex1%C%o:@=撤除!
 set Ex1%C%=!Ex1%C%:#=的!
 set Mop%C%=[已處罰]
 set MGEx=已對原房主!Pl%ownerB%!進行%SN%處罰
 call:mgdiag
)
goto ScoreMenu

:set10
set F03R%R%=1
set C=4
goto set-1

:set04
if not defined F03R%R% (set MGEx=錯誤：還未進行主題宣布檢核&call:mgdiag&goto ScoreMenu) else (
 set MG=歌曲選擇檢核表
 set Hp=
 set CP=2
 if defined oC2 (set C=%oC2%&set oC2=) else (set C=1)
 for /l %%a in (1,1,16) do set Mop%%a=
 for /l %%a in (1,1,2) do (
  if defined Pl%ownerA%C2%%aR%R% (
   set Ex2%%a=!Ex2%%ao:@=撤除!
   set Ex2%%a=!Ex2%%a:#=的!
   set Mop%%a=[已處罰]
  ) else (
   set Ex2%%a=!Ex2%%ao:@=對!
   set Ex2%%a=!Ex2%%a:#=進行!
  )
 )
 if defined HardMap23R%R% (
  set Mop3=[已宣告]
 ) else (
  if defined Pl%ownerA%C23R%R% (
   set Mop3=[未宣告．已處罰]
  ) else (
   set Mop3=[未宣告]
  )
 )
 goto ScoreMenu
)

:set21
if defined Pl%ownerA%C2%C%R%R% (
 set Pl%ownerA%S2%C%R%R%=
 set Pl%ownerA%C2%C%R%R%=
 set Ex2%C%=!Ex2%C%o:@=對!
 set Ex2%C%=!Ex2%C%:#=進行!
 set Mop%C%=
 set MGEx=已撤除房主!Pl%ownerA%!的%SN%處罰
 call:mgdiag
) else (
 set/a "Pl%ownerA%S2%C%R%R%=-5,Pl%ownerA%C2%C%R%R%=1"
 set Ex2%C%=!Ex2%C%o:@=撤除!
 set Ex2%C%=!Ex2%C%:#=的!
 set Mop%C%=[已處罰]
 set MGEx=已對房主!Pl%ownerA%!進行%SN%處罰
 call:mgdiag
)
goto ScoreMenu

:set23
if defined HardMap23R%R% (
 set HardMap23R%R%=
 if defined HardMapR%R% (
  set/a "Pl%ownerA%S23R%R%=-5-Pl%ownerA%S32R%R%"
  set Pl%ownerA%C23R%R%=1
  set Mop%C%=[未宣告．已處罰]
  set MGEx=房主!Pl%ownerA%!的高難度回合宣告狀態已設為未宣告
  call:mgdiag
  set MGEx=已對房主!Pl%ownerA%!進行越界高難度懲罰
  call:mgdiag
 ) else (
  set Mop%C%=[未宣告]
  set MGEx=房主!Pl%ownerA%!的高難度回合宣告狀態已設為未宣告
  call:mgdiag
 )
) else (
 set Mop%C%=[已宣告]
 set MGEx=房主!Pl%ownerA%!的高難度回合宣告狀態已設為已宣告
 call:mgdiag
 set HardMap23R%R%=1
 if not defined HardMapR%RB% (
  set Pl%ownerA%S23R%R%=
  set Pl%ownerA%C23R%R%=
  if defined HardMapR%R% (
   set MGEx=已撤除房主!Pl%ownerA%!的越界高難度懲罰
   call:mgdiag
  )
 )
)
goto ScoreMenu

:set25
set MG=神聖的審判之所
set Hp=將認為此歌曲與主題相關的玩家標記「0」，認為不相關的玩家標記其它數字
set CEx=完成表決
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
   set MGEx=此歌曲與主題嚴重無關，已對房主!Pl%ownerA%!進行懲罰
   call:mgdiag
 ) else (
  if !ForRP! geq !RPt! (
   set Pl%ownerA%S25R%R%=5
   set Pl%ownerA%C25R%R%=
   set MGEx=此歌曲與主題有關，房主!Pl%ownerA%!獲得了5分
   call:mgdiag
  ) else (
   set MGEx=此歌曲與主題無關，房主!Pl%ownerA%!沒有獲得分數
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
if not defined F03R%R% (set MGEx=錯誤：還未進行主題宣布檢核&call:mgdiag&goto ScoreMenu) else (
 if not defined F04R%R% (set MGEx=錯誤：還未進行歌曲選擇檢核&call:mgdiag&goto ScoreMenu) else (
  set MG=等待！計時室
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
set MG=回合結算
set Hp=過關的標註排名，失敗的標０，未完成不標；成績優異時可將所有完成玩家並列第一
set CEx=完成回合排名登記，並處罰未完成歌曲的玩家
for /l %%a in (1,1,16) do set Mop%%a=!Pl%%aM31R%R%!
if !F05R%R%!==2 (
 set F05R%R%=0
 set MGEx=計時已停止
 call:mgdiag
)
goto CheckScoreMenu

:save31
if %Vd%==1 (
 set MGEx=回合時間：!Set05Timeta!:!Set05Timetb!:!Set05Timetc!.!Set05Time!
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
    set MGEx=玩家!Pl%%a!取得第一名，獲得了4分的回合獎勵
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
    set MGEx=連續高難度回合，已對房主!Pl%ownerA%!進行越界高難度懲罰
    call:mgdiag
   )
  ) else (
   set/a "Pl%ownerA%S23R%R%=-5-Pl%ownerA%S32R%R%"
   set Pl%ownerA%C23R%R%=1
   set MGEx=未宣告高難度回合，已對房主!Pl%ownerA%!進行越界高難度懲罰
   call:mgdiag
  )
 )
 set Pl%ownerA%C31R%R%=
 set Pl%ownerA%Skip=
 if !Set05TimeR! gtr 39000 (
  set Pl%ownerA%C31R%R%=1
  set Pl%ownerA%Skip=1
  set MGEx=譜面超過六分鐘半，房主!Pl%ownerA%!需付出譜面過長代價
  call:mgdiag
 )
 set F31R%R%=1
 set F05R%R%=1
 if !F25R%R%!==1 (set C=6) else (set C=4)
 set/a MGExt=RP-FailedRP
 if defined HardMapR%R% (
  if !MGExt! gtr 0 (
   set MGEx=!MGExt!位玩家成功過關，獲得了5分的得分和4分的高難度獎勵
  ) else (
   set MGEx=全軍覆沒
  )
 ) else (
  if !MGExt! gtr 0 (
   set MGEx=!MGExt!位玩家過關，獲得了5分
  ) else (
   set MGEx=沒有玩家過關
  )
 )
 call:mgdiag
 if !FailedRP! gtr 0 (set MGEx=!FailedRP!位玩家失敗，沒有獲得分數) else (set MGEx=沒有玩家失敗)
 call:mgdiag
 if !QuitRP! gtr 0 (set MGEx=!QuitRP!位玩家沒有完成歌曲，受到了失去5分的懲罰) else (set MGEx=所有玩家皆完成歌曲)
 call:mgdiag
 if defined UDTurn if "!Mop%ownerA%!"=="1" (
  set MGEx=房主!Pl%ownerA%!翻轉成功，並獲得了五倍的回合得分
  call:mgdiag
 ) else (
  set MGEx=房主!Pl%ownerA%!翻轉失敗，積分非第一名的其它玩家獲得了五倍的回合得分
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
if not "!F04R%R%!!F05R%R%!"=="11" (set MGEx=錯誤：還未完成該回合&call:mgdiag&goto ScoreMenu)
if "!UDTurn!"=="1" (set MGEx=錯誤：翻轉回合已結束，不可進入下一回合；競賽結束&call:mgdiag&goto ScoreMenu)
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
set MGEx=!Pl%ownerB%!成為了原房主，!Pl%ownerA%!成為了房主
call:mgdiag
set MGEx=已進入下一回合
call:mgdiag
for /l %%a in (1,1,16) do set Mop%%a=
goto ScoreMenu

:set07
if not "!F04R%R%!!F05R%R%!"=="11" (set MGEx=錯誤：還未完成該回合&call:mgdiag&goto ScoreMenu)
if not defined EnUDTurn (set MGEx=錯誤：還未結束該輪&call:mgdiag&goto ScoreMenu)
if "!UDTurn!"=="1" (set MGEx=錯誤：翻轉回合已結束，不可進入下一回合；競賽結束&call:mgdiag&goto ScoreMenu)
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
set MGEx=!Pl%ownerB%!成為了原房主，!Pl%ownerA%!成為了房主
call:mgdiag
set MGEx=已進入翻轉回合
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
if not defined F01R0 (set MGEx=錯誤：還未進行玩家登錄&call:mgdiag&goto :eof) else (
 set oMG=%MG%
 set MG=秩序懲罰選單
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
if %C%==1 set PN=任意切換&set Hp=代表其次數
if %C%==2 set PN=使用粗話&set Hp=代表其字數
if %C%==3 set PN=拖延競賽進度&set Hp=不具意義
set MG=%PN%懲罰表
set Hp=標記!PN!的玩家，數字大小%Hp%
set CEx=處罰%PN%的玩家（注意：此處罰不可撤除）
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
 if defined MGExt (set MGEx=已處罰!MGExt!位%PN%的玩家) else (set MGEx=沒有%PN%的玩家)
 call:mgdiag
)
set MG=秩序懲罰選單
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
set MG=設定與說明
set Hp=
set CP=5
set C=1
goto OptionMenu

:set51
set MG=競賽規則
set VCM=0
goto ManualMenu

:set59
for /l %%a in (1,1,10) do set OP%%aV=
goto OptionMenu

:set50
set C=9
goto set-1

:set00
color&title 記分結束
call:DT
>>"%~dpn0log.txt" echo;%_DT%　結束了記分板程式
>nul timeout /t 1
endlocal
goto :eof

:osu！競記.dat
set Manual1=　　　　第四次osu！競賽規則說明　　　　　　　　　　　　　　　　　　　　　 
set Manual2=　此次競賽採積分制，最終得分最高的玩家獲勝，使用記分板程式計分。　　　　　
set Manual3=　使用ＲＣ語音，並且全程錄影。　　　　　　　　　　　　　　　　　　　　　　
set Manual4=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual5=　　＃規則說明　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual6=　競賽開始前，所有玩家皆要使用osu！聊天功能進行自我介紹。　　　　　　　　 
set Manual7=　　○無自我介紹懲罰　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual8=無介紹　扣五分、黃牌一張（－５，X＋１）　　　　　　　　　　　　　　　　　 
set Manual9=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual10=　自我介紹完成後，此時多人遊戲房中的最上位玩家為第一位房主，須要宣布一個主
set Manual11=題，選與主題有關的歌。其它玩家可於回合結束前對歌曲與主題是否相關進行表決。
set Manual12=　　○選歌得分　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual13=與主題有關（一半表決玩家認為相關）　房主　得五分　　　　　（＋５）　　　　
set Manual14=與主題無關（過半表決玩家認為無關）　房主　無得分　　　　　（＋０）　　　　
set Manual15=與主題嚴重無關（沒有玩家認為相關）　房主　扣五分、黃牌一張（－５，X＋１） 
set Manual16=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual17=　歌曲選擇完畢，玩家準備完畢後，即可開始一個歌曲回合。　　　　　　　　　　
set Manual18=　　○回合得分　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual19=過關　　　　得五分　（＋５）　　　　　　　　　　　　　　　　　　　　　　　
set Manual20=失敗　　　　無得分　（＋０）　　　　　　　　　　　　　　　　　　　　　　　
set Manual21=未完成歌曲　扣五分　（－５）　　　　　　　　　　　　　　　　　　　　　　　
set Manual22=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual23=　　○回合獎勵　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual24=第一名　　　多得四分（＋４）　　　　　　　　　　　　　　　　　　　　　　　
set Manual25=　如果玩家皆表現優異，此回合的第一名可以選擇將全部玩家並列為第一名。　　　
set Manual26=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual27=　如果難度過高，一半以上玩家失敗，則為高難度回合，過關的玩家可以得到獎勵。
set Manual28=　　○高難度獎勵　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual29=過關　　　　　　　多得四分　　　　　　　　　　　　（＋４）　　　　　　　　
set Manual30=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual31=　如果房主沒有提示此歌曲可能引發高難度回合，或是連續發生高難度回合，則為越
set Manual32=界高難度，房主要接受懲罰。　　　　　　　　　　　　　　　　　　　　　　　　
set Manual33=　　○越界高難度懲罰　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual34=越界高難度　房主　扣五分、高難度獎勵無效、黃牌一張（－５，－高難度獎勵，X 
set Manual35=＋１）　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual36=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual37=　如果譜面長度超過六分鐘半，房主要接受代價。　　　　　　　　　　　　　　　
set Manual38=　　○譜面過長代價　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual39=譜面過長　　房主　下一輪不得選歌、黃牌一張（選歌次數－１，X＋１）　　　　 
set Manual40=　如果某玩家不得選歌，須將房主資格給與下一位玩家，這時此玩家已經被輪過。　
set Manual41=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual42=　回合結束後，此時的房主須要宣布下一個主題，並將房主資格給與多人遊戲房中最
set Manual43=鄰近的下一位玩家，由新房主選擇與此主題有關的歌。　　　　　　　　　　　　　
set Manual44=　主題只能有一個，最好是眾人皆知的，避免過於複雜，例如使用某動畫的某角色名
set Manual45=作為主題是不建議的。如果能夠在osu！中搜尋則可以，例如某動畫名附羅馬拼音。 
set Manual46=　不能直接以歌曲名作為主題。　　　　　　　　　　　　　　　　　　　　　　　
set Manual47=　主題也可以是抽象的，但要是容易理解、且可在osu！中搜尋的。　　　　　　　 
set Manual48=　　○主題不能搜尋懲罰　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual49=主題不能搜尋　原房主　扣五分、黃牌一張（－５，X＋１）　　　　　　　　　　 
set Manual50=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual51=　　○主題過多懲罰　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual52=主題過多　　　原房主　扣五分、黃牌一張（－５，X＋１）　　　　　　　　　　 
set Manual53=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual54=　　○以歌曲名作為主題懲罰　　　　　　　　　　　　　　　　　　　　　　　　
set Manual55=主題為歌曲名　原房主　扣五分、黃牌一張（－５，X＋１）　　　　　　　　　　 
set Manual56=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual57=　將房主資格給錯也須懲罰　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual58=　　○房主資格給錯懲罰　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual59=給錯房主資格　原房主　扣五分、黃牌一張（－５，X＋１）　　　　　　　　　　 
set Manual60=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual61=　選歌時，不得選擇競賽中已被選過的歌曲。　　　　　　　　　　　　　　　　　
set Manual62=　　○歌曲重複懲罰　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual63=歌曲重複　　房主　扣五分、黃牌一張　　　　　（－５，X＋１）　　　　　　　 
set Manual64=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual65=　如果房主傳到了最下位玩家，並且此玩家結束了他的回合，則完成一輪，須宣布下
set Manual66=一個主題，並將房主資格給與多人遊戲房中的第一位玩家，繼續下一輪。　　　　　
set Manual67=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual68=　如果在多人遊戲房中任意切換位置時未經同意或是已進入翻轉回合，將會懲罰。　
set Manual69=　　○任意切換懲罰　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual70=任意切換位置　一次扣五分、黃牌一張（－５＊切換位置到原位置前次數，X＋１） 
set Manual71=　如果宣布主題前，原房主經過同意更換了位置，須將原房主資格讓與原位置的上一
set Manual72=位玩家；房主經過同意更換位置，房主資格傳給下一房主，視同進入下一回合。　　
set Manual73=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual74=　如果某位玩家收到了三張黃牌，則有大懲罰，並且重計黃牌數量。　　　　　　　
set Manual75=　　○黃牌懲罰　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual76=三張黃牌　　　扣二十分　　　　　　（－２０，X－３）　　　　　　　　　　　 
set Manual77=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual78=　如果結束一輪時，競賽即將到達結束時間，則將房主資格給與當時積分最低的玩家
set Manual79=之一，並進入翻轉回合。如果積分最低的玩家同時包括下一輪被禁止選歌和未被禁止
set Manual80=的玩家，則只將房主資格給與未被禁止的玩家之一。　　　　　　　　　　　　　　
set Manual81=　翻轉回合的房主，如果贏得此回合的第一名，則可以得到翻轉獎勵，否則除了積分
set Manual82=第一名外的其他玩家獲得獎勵。　　　　　　　　　　　　　　　　　　　　　　　
set Manual83=　　○翻轉獎勵　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual84=翻轉成功　翻轉回合房主　　　　　　回合得分五倍（回合得分＊５）　　　　　　
set Manual85=翻轉失敗　積分非第一名的其他玩家　回合得分五倍（回合得分＊５）　　　　　　
set Manual86=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual87=　回合得分也包括未完成歌曲時的扣五分。　　　　　　　　　　　　　　　　　　
set Manual88=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual89=　另外，競賽中於聊天室使用粗話，將會懲罰。　　　　　　　　　　　　　　　　
set Manual90=　　○粗話懲罰　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual91=使用粗話　一字扣二分、一次黃牌一張（－２＊字數，X＋１）　　　　　　　　　 
set Manual92=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual93=　如果蓄意拖慢競賽進度，也會懲罰。　　　　　　　　　　　　　　　　　　　　
set Manual94=　　○拖延懲罰　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual95=拖慢競賽進度　一次扣五分、黃牌一張（－５，X＋１）　　　　　　　　　　　　 
set Manual96=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set Manual97=　　＃說明完畢　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set eoManual=97