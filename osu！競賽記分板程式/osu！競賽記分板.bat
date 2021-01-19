:BAT start
@title 程式載入中…… Now Loading…&echo off&setlocal enableextensions&if not "%1"=="" goto %1
>nul chcp 950&call:DT
if exist "%~dpn0log.txt" (
 for /f "tokens=* delims= usebackq" %%a in ("%~dpn0log.txt") do (
  if "%%a"=="微哆動作紀錄 --------------------------------------------- " (
   >>"%~dpn0log.txt" echo ---------------------------------------------------------- 
  ) else (
   >"%~dpn0log.txt" echo 微哆動作紀錄 --------------------------------------------- 
  )
 )
) else (
 >"%~dpn0log.txt" echo 微哆動作紀錄 --------------------------------------------- 
)
>>"%~dpn0log.txt" echo %_DT%　啟動了記分板程式
echo Microdoft "arring"...
setlocal enabledelayedexpansion
call:readsave
goto start

:readsave
for /f "tokens=1 delims=| usebackq" %%a in ("%~dpn0存檔.dat") do %%a
set cls=cls
goto :eof

:storesave
call:%MenuType%
echo Ｎｏｗ　Ｌｏａｄｉｎｇ......
>nul 2>&1 del /f /q /a "%~dpn0存檔temp.dat"
for /f "tokens=1 delims==" %%a in ('set') do (>>"%~dpn0存檔temp.dat" echo set %%a=!%%a!)
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
%cls%&title 程式開始中…… Now Loading...
%cls%&echo Microdoft "arring"
call:DT
>>"%~dpn0log.txt" echo %_DT%　開始了記分板程式
>nul timeout /t 1 /nobreak
color 27&goto ready

:restart
%cls%&color
title 程式重新開始中…… Now Loading...
echo Microdoft re"arring"
call:DT
>>"%~dpn0log.txt" echo %_DT%　重開了記分板程式
>nul timeout /t 1 /nobreak
color 27&goto ready

:ready
%cls%&color 2f
title 記分板
set MG=請按下選項
echo;　　%MG%。
echo.
set NT=Ｚ鍵　進入記分板；Ｘ鍵　結束
echo 　%NT:~,8%
choice /n /c zxqr /m "　%NT:~-5%"
call:DT
if %errorlevel%==4 (
 >>"%~dpn0log.txt" echo %_DT%　%MG% "%NT%" R
 color 27&goto restart
)
if %errorlevel%==3 (
 >>"%~dpn0log.txt" echo %_DT%　%MG% "%NT%" Q
 color 27&goto set00
)
if %errorlevel%==2 (
 >>"%~dpn0log.txt" echo %_DT%　%MG% "%NT%" X
 color 27&goto set00
)
if %errorlevel%==1 (
 >>"%~dpn0log.txt" echo %_DT%　%MG% "%NT%" Z
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
set SN01=玩家登錄　　&set Ex01=進行玩家的競賽登錄&set ESp01=　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set SN02=自我介紹　　&set Ex02=進入自我介紹檢核表&set ESp02=　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set SN03=宣布主題　　&set Ex03=進入歌曲主題的檢核表&set ESp03=　　　　　　　　　　　　　　　　　　　　　　　　　　　
set SN04=選擇歌曲　　&set Ex04=進入選擇歌曲的檢核表&set ESp04=　　　　　　　　　　　　　　　　　　　　　　　　　　　
set SN05=開始回合　　&set Ex05=進入計時室，並開始這個歌曲回合&set ESp05=　　　　　　　　　　　　　　　　　　　　　　
set SN06=下一回合　　&set Ex06=進入下一回合&set ESp06=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set SN07=翻轉回合　　&set Ex07=進入翻轉回合&set ESp07=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set SN08=秩序懲罰　　&set Ex08=開啟秩序懲罰選單&set ESp08=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set SN00=退出　　　　&set Ex00=退出記分板程式&set ESp00=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　

set SN11=主題不能搜尋&set Ex11o=@宣布了沒有適當搜尋關鍵字的主題的原房主#處罰&set ESp11=　　　　　　　　　　　　　
set SN12=主題過多　　&set Ex12o=@宣布了一個以上主題的原房主#處罰&set ESp12=　　　　　　　　　　　　　　　　　　　
set SN13=主題為歌曲名&set Ex13o=@以歌曲名稱作為主題的原房主#處罰&set ESp13=　　　　　　　　　　　　　　　　　　　
set SN15=給錯房主資格&set Ex15o=@將房主資格給錯玩家的原房主#處罰&set ESp15=　　　　　　　　　　　　　　　　　　　
set SN10=離開　　　　&set Ex10=離開主題宣布檢核表&set ESp10=　　　　　　　　　　　　　　　　　　　　　　　　　　　　

set SN21=歌曲重複懲罰&set Ex21o=@選擇了競賽中已被選過的歌曲的房主#處罰&set ESp21=　　　　　　　　　　　　　　　　
set SN23=高難度宣告　&set Ex23=切換房主提示所選歌曲將引發高難度回合的狀況&set ESp23=　　　　　　　　　　　　　　　　
set SN25=選歌評價　　&set Ex25=進行對房主所選的歌曲是否符合主題的表決&set ESp25=　　　　　　　　　　　　　　　　　　
set SN20=離開　　　　&set Ex20=離開歌曲選擇檢核表&set ESp20=　　　　　　　　　　　　　　　　　　　　　　　　　　　　

set SN31=結束回合　　&set Ex31=停止計時，進入玩家排行登錄表&set ESp31=　　　　　　　　　　　　　　　　　　　　　　　
set SN30=離開　　　　&set Ex30=離開歌曲選擇檢核表&set ESp30=　　　　　　　　　　　　　　　　　　　　　　　　　　　　

set SN41=任意切換位置&set Ex41=懲罰任意切換位置的玩家&set ESp41=　　　　　　　　　　　　　　　　　　　　　　　　　　
set SN42=使用粗話　　&set Ex42=懲罰使用粗話的玩家&set ESp42=　　　　　　　　　　　　　　　　　　　　　　　　　　　　
set SN43=拖延競賽進度&set Ex43=懲罰拖延競賽進度的玩家&set ESp43=　　　　　　　　　　　　　　　　　　　　　　　　　　
set SN40=離開　　　　&set Ex40=離開秩序懲罰選單&set ESp40=　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
goto set-1

:set-1
title 記分板選單
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
set SN=!SN%CP%%C%!&set Ex=!Ex%CP%%C%!&set ESp=!ESp%CP%%C%!&set Sl%C%=》 
for /l %%a in (1,1,9) do (
 set Ml%%a=!Sl%%a!&set M%%a=!SN%CP%%%a!
 if "!F%CP%%%aR0!"=="1" set Mop%%a=[已完成]
 if "!F%CP%%%aR%R%!"=="0" set Mop%%a=[計時停止]
 if "!F%CP%%%aR%R%!"=="1" set Mop%%a=[已完成]
 if "!F%CP%%%aR%R%!"=="2" set Mop%%a=[計時中......]
 if "!F%CP%%%aR%R%!"=="3" set Mop%%a=[尚未投票]
 if "%CP%""%UDTurn%"=="0""1"  set Mop7=[已進入翻轉回合]
 if %CP%==0 if defined SN%CP%%%a (if not defined Mop%%a set Mop%%a=......) else (set Mop%%a=)
)
set Ml10=%Sl0%&set M10=!SN%CP%0!&set Mop10=......
if not %CP%==3 call:PlsScore
call:Menu
if %CP%==4 (
 set NT=Ｗ/Ｓ鍵 上下選擇　Ｚ鍵 確定　Ｘ鍵 離開
) else (
 set NT=Ｗ/Ｓ鍵 上下選擇　Ｚ鍵 確定　Ｘ鍵 離開　Ｃ鍵 秩序懲罰選單
)
if "%CP%""!F05R%R%!"=="3""2" (choice /n /c swzxqrc0 /t 1 /d 0 /m "%NT%") else (choice /n /c swzxqrc /m "%NT%")
if %errorlevel%==8 (call:set05Timer&goto ScoreMenu)
if %errorlevel%==7 (if not %CP%==4 call:set08Menu&goto ScoreMenu)
if %errorlevel%==6 (
 call:DT& >>"%~dpn0log.txt" echo !_DT!　%MG% "%NT%"　%SN%「R」
 color 27&goto restart
)
if %errorlevel%==5 (
 call:DT& >>"%~dpn0log.txt" echo !_DT!　%MG% "%NT%"　%SN%「Q」
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
set NT=Ｗ/Ｓ鍵 上下選擇　Ａ/Ｄ鍵 編輯標記^(0-!CMop!^)　Ｚ鍵 標記　Ｘ鍵 離開　Ｃ鍵 秩序懲罰選單
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
set Sl%VCM%=》
for /l %%a in (1,1,16) do (
 set CMl%%a=!Sl%%a!
 if defined PMop%%a (set Mop%%a=!Pl%%aM%CP%%C%R0!←　!PMop%%a!) else (set Mop%%a=!Pl%%aM%CP%%C%R0!)
)
set CMl17=%Sl-1%&set Mop17=......
set CMl18=%Sl0%&set Mop18=......
set CM17=清除標記
call:CheckMenu
if %CP%==4 (
 set NT=Ｗ/Ｓ鍵 上下選擇　Ａ/Ｄ鍵 編輯標記^(1-16^)　Ｚ鍵 標記　Ｘ鍵 離開
) else (
 set NT=Ｗ/Ｓ鍵 上下選擇　Ａ/Ｄ鍵 編輯標記^(1-16^)　Ｚ鍵 標記　Ｘ鍵 離開　Ｃ鍵 秩序懲罰選單
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
set Sl%VCM%=》
for /l %%a in (1,1,16) do (
 set CMl%%a=!Sl%%a!
 if defined Pln%%a (set Mop%%a=←　!Pln%%a!) else (set Mop%%a=[無玩家])
)
set CMl17=%Sl-1%&set Mop17=......
set CMl18=%Sl0%&set Mop18=......
set CM17=重設　　
call:CheckMenu
set NT=Ｗ/Ｓ鍵 上下選擇　Ｚ鍵 輸入　Ｘ鍵 離開
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
  set/p Pln%VCM%=輸入玩家名稱並按下Ｅｎｔｅｒ　
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
echo;　　　　　　　　　　　　　－%MG%－
echo.
for /l %%a in (1,1,10) do (
 if %%a==6 (echo;　!Ml%%a:~,1!　　　!M%%a!　　　　!Hpdiag!) else (
  if %%a==7 (echo;　!Ml%%a:~,1!　　　!M%%a!　　　　　　　　!Mopdiag!) else (echo;　!Ml%%a:~,1!　　　!M%%a!)
 )
 echo;　!Ml%%a:~1!　　　　　　　　　!Mop%%a!
)
echo.
echo;　　回合:%R% %PlSn:~1%
echo;　　房主:!Pl%ownerA%! 宣布主題:!Pl%ownerB%!
echo;　　%ESp%%Ex%
echo.
goto :eof

:CheckMenu
%cls%&color 2f
echo;　　　　　　　　　　　　　－%MG%－
echo.　　%Hp%
echo.
for /l %%a in (1,1,16) do (
 if %%a==10 (echo;　!CMl%%a!　　　!Pl%%a!　　!Mop%%a!　　　　!Hpdiag!) else (
  if %%a==12 (echo;　!CMl%%a!　　　!Pl%%a!　　!Mop%%a!　　　　　　　　!Mopdiag!) else (echo;　!CMl%%a!　　　!Pl%%a!　　!Mop%%a!)
 )
)
echo.
echo;　%CMl17%　　　%CM17%　　%Mop17%
echo;　%CMl18%　　　離開　　　　%Mop18%
echo.
echo;　　回合:%R% %PlSn:~1%
echo;　　房主:!Pl%ownerA%! 宣布主題:!Pl%ownerB%!
echo.
echo.
goto :eof

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
set NT=Ａ/Ｄ鍵 左右選擇　Ｚ鍵 確定　Ｘ鍵 關閉
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
call:DT&>>"%~dpn0log.txt" echo !_DT!　%MGEx%
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
set MG=登錄玩家
set Hp=依照玩家在多人遊戲房中的位置登錄玩家名稱，輸入單一空格鍵可刪除玩家
set CEx=完成登錄玩家
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
  set MGEx=登錄玩家完成，共登錄!ownerL!位玩家
  call:mgdiag
  set F01R0=1
  set C=2
 ) else (
  set MGEx=錯誤：沒有玩家被登錄
  call:mgdiag
  goto set01
 )
) else (
 set C=1
)
goto set-1

:set02
if not defined F01R0 (set MGEx=錯誤：還未進行玩家登錄&call:mgdiag&goto ScoreMenu) else (
 set MG=自我介紹檢核表
 set Hp=標記完成自我介紹的玩家，數字大小不具意義。
 set CEx=處罰未進行自我介紹的玩家
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
 if defined oC (set C=%oC%) else (set C=1)
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
set MG=神聖的慎審之所
set Hp=將認為此歌曲與主題相關的玩家標記「0」，認為不相關的玩家標記其它數字
set CEx=完成表決
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
  set MGEx=此歌曲與主題有關，房主!Pl%ownerA%!獲得了5分
  call:mgdiag
 ) else (
  if !ForRP!==0 (
   set Pl%ownerA%S25R%R%=-5
   set Pl%ownerA%C25R%R%=1
   set MGEx=此歌曲與主題嚴重無關，已對房主!Pl%ownerA%!進行懲罰
   call:mgdiag
  ) else (
   set MGEx=此歌曲與主題無關，房主!Pl%ownerA%!沒有獲得分數
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
if not defined F03R%R% (set MGEx=錯誤：還未進行主題宣布檢核&call:mgdiag&goto ScoreMenu) else (
 if not defined F04R%R% (set MGEx=錯誤：還未進行歌曲選擇檢核&call:mgdiag&goto ScoreMenu) else (
  if not defined F05R%R% for %%a in (eta etb etc e) do (set Set05Tim%%a=0)
  set MG=等待！計時室　!Set05Timeta!:!Set05Timetb!:!Set05Timetc!.!Set05Time!
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
set MG=等待！計時室　!Set05Timeta!:!Set05Timetb!:!Set05Timetc!.!Set05Time!
goto :eof

:set31
set MG=回合結算
set Hp=過關的標註排名，失敗的標０，未完成不標。成績優異時可將所有完成玩家並列第一
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
  set MGEx=房主!Pl%ownerA%!翻轉失敗，其它玩家獲得了五倍的回合得分
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
if not "!F04R%R%!!F05R%R%!"=="11" (set MGEx=錯誤：還未完成該回合&call:mgdiag&goto ScoreMenu) else (
 if "!UDTurn!"=="1" (set MGEx=錯誤：翻轉回合已結束，不可進入下一回合；競賽結束&call:mgdiag&goto ScoreMenu) else (
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
set MGEx=已進入下一回合
call:mgdiag
for /l %%a in (1,1,16) do set Mop%%a=
goto ScoreMenu

:set07
if not "!F04R%R%!!F05R%R%!"=="11" (set MGEx=錯誤：還未完成該回合&call:mgdiag&goto ScoreMenu) else (
 if not defined EnUDTurn (set MGEx=錯誤：還未結束該輪&call:mgdiag&goto ScoreMenu) else (
  if "!UDTurn!"=="1" (set MGEx=錯誤：翻轉回合已結束，不可進入下一回合；競賽結束&call:mgdiag&goto ScoreMenu) else (
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
set MGEx=已進入翻轉回合
call:mgdiag
for /l %%a in (1,1,16) do set Mop%%a=
goto ScoreMenu

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
if %C%==1 set PN=任意切換&set Hp=代表其次數。
if %C%==2 set PN=使用粗話&set Hp=代表其字數。
if %C%==3 set PN=拖延競賽進度&set Hp=不具意義。
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

:set00
title 記分結束
call:storesave&call:DT
>>"%~dpn0log.txt" echo %_DT%　結束了記分板程式
>>"%~dpn0log.txt" echo ---------------------------------------------------------- 
>nul timeout /t 1
endlocal