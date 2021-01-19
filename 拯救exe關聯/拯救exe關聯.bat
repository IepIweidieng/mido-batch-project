@echo off
cls
chcp 950>nul
title ¬@±ÏexeÃöÁp¡X¡X±Ò°Ê¤¤¡K¡K
echo;·LÎG¤½¥q¥X«~¡À
timeout /t 2 /nobreak >nul
title ¬@±ÏexeÃöÁp¡X¡X±Ò°Ê§¹¦¨
echo.
echo;±Ò°Ê§¹¦¨¡A«ö¥ô·NÁäÄ~Äò¡C
pause>nul
cls
set k=%%
set y="%k%1" %k%^*
title ¬@±ÏexeÃöÁp
goto:start

:start
echo;%Date% %Time%¡A«ö¥ô·NÁä¶i¤J¥D¿ï³æ¡C
pause>nul
goto:title

:title
title ¬@±ÏexeÃöÁp¡X¡X¥D¿ï³æ
echo.
echo;­n¶}©l°hªv¤F¶Ü¡H
choice /n /t 99 /c zxc /d c /m "¡u¬O¦a¡v¡X¡X¡uZ¡vÁä¡F¡u¹ï¡A¥[«p¡v¡X¡X¡uX¡vÁä¡F¡u¤£»Ý­n¡v¡X¡X¡uCtrl¥[C©Î¥[PauseBreak¡vÁä¡C"
if %errorlevel%==255 echo;¦³°ÝÃD¡A½Ð¦A«ö¤@¦¸¡I
if %errorlevel%==3 goto:stop
if %errorlevel%==2 goto:spell
if %errorlevel%==1 goto:tueitsz
if %errorlevel%==0 goto:stop
goto:title

:spell
title ¬@±ÏexeÃöÁp¡X¡X¥[«p¼Ò¦¡
timeout /t 0 /nobreak >nul
if exist %~dp0­×²Å¡uexeÀÉ®×ÃöÁp¡v.cmd goto:attack
if not exist %~dp0­×²Å¡uexeÀÉ®×ÃöÁp¡v.cmd goto:haven't spell

:haven't spell
title ¥¼¬@±ÏexeÃöÁp¡X¡X®a«á¼Ò¦¡
echo;§A¨S¦³²Å¡A«ö¥ô·NÁäµ²§ô¡C
goto:stop

:attack
title ¬@±ÏexeÃöÁp¤¤¡X¡X²Å§ðÀ»¼Ò¦¡
echo;§Y±N¶i¤J²Å¼Ò¦¡¡C
timeout /t 3 /nobreak >nul
echo;µo°Ê²Å¥d¤¤¡K¡K
timeout /t 0 /nobreak >nul
echo;­×²Å¡uexeÀÉ®×ÃöÁp¡v
call "%~dp0­×²Å¡uexeÀÉ®×ÃöÁp¡v.cmd"
set err=%errorlevel%
set s=%random%
set S=%random%
set Ss=%random%
set/a score=(s*S)-(Ss*1111)
if "%err%"=="0" (
 if %score% gtr 0 (echo;SPELL BONUS %score%0) else (echo;BONUS FAILED)
 timeout /t 0 /nobreak >nul
 echo;°hªv¦¨¥\¡A«ö¥ô·NÁäµ²§ô¡C
) else (
 echo;GAME OVER
 timeout /t 0 /nobreak >nul
 echo;°hªv¥X²{°ÝÃD¡A«ö¥ô·NÁäµ²§ô¡C
)
pause>nul
goto:end

:tueitsz
title ¬@±ÏexeÃöÁp¤¤¡X¡X°hªv¼Ò¦¡
echo;§Y±N¶}©l¾Ô°«¡C
timeout /t 3 /nobreak >nul
echo;¥þ¤O¾Ô°«¤¤¡K¡K
set err=0
ftype exefile=%y%
set/a err+=%errorlevel%
assoc .exe=exefile
set/a err+=%errorlevel%
timeout /t 0 /nobreak >nul
timeout /t 0 /nobreak >nul
echo;¾Ô°«µ²§ô
timeout /t 0 /nobreak >nul
if "%err%"=="0" (
 echo;°hªv¦¨¥\¡A«ö¥ô·NÁäµ²§ô¡C
) else (
 echo;°hªv¥X²{°ÝÃD¡A«ö¥ô·NÁäµ²§ô¡C
)
pause>nul
goto:end

:stop
title ¬@±ÏexeÃöÁp¡X¡XGAME OVER
echo.
echo;§A¨S¦³¶i¦æ¥ô¦ó°Ê§@¡A«ö¥ô·NÁäµ²§ô¡C
pause>nul
goto:end

:end
echo.
echo;­n­«·s¶}©l¶Ü¡H
choice /n /t 99 /c zxcr /d x /m "¡u¦n¡v¡X¡X¡uZ¡vÁä¡F¡u¤£­n¤F¡I¡v¡X¡X¡uX¡vÁä¡F¡u¯u¦a¤£­n¤F¡I¡v¡X¡X¡uCtrl¥[C©Î¥[PauseBreak¡vÁä¡C"
if %errorlevel%==255 echo;µo¥Í¤F°ÝÃD¡I
if %errorlevel%==4 goto:start
if %errorlevel%==3 goto:exit
if %errorlevel%==2 goto:stop
if %errorlevel%==1 goto:title
if %errorlevel%==0 goto:exit
goto:end

:exit
title ¬@±ÏexeÃöÁp¡X¡X¦ÛÃz¼Ò¦¡
echo;§Y±N©ó¤­¬í«á¤ÞÃz¡C
timeout /t 1 /nobreak >nul
echo;¥|
timeout /t 1 /nobreak >nul
echo;¤T
timeout /t 1 /nobreak >nul
echo;¤G
timeout /t 1 /nobreak >nul
echo;¤@
timeout /t 1 /nobreak >nul
echo;¹s
timeout /t 1 /nobreak >nul
cls
echo;¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I¸I¡I
cls
exit