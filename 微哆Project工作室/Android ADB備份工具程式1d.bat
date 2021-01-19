:BAT start
@echo off&>nul chcp 950&setlocal enableextensions enabledelayedexpansion
title 程式載入中…… Now Loading…
echo Microdoft "arring"
>nul adb start-server
goto start

:start
cls&color 2f
set page=1
set tpg=？？
set dev=無
set err=0
call:op6
cls
title ＡＤＢ備份與還原工具程序　Ver.1d
echo ********************************************
echo *                                          *
echo *         ＡＤＢ備份與還原工具程式         *
echo *                                          *
echo ********************************************
echo.
for /f "tokens=1" %%i in ('adb -s %dev% shell getprop ro.product.manufacturer') do (
  set MF=%%i
)
for /f "delims=/" %%a in ('adb -s %dev% shell getprop ro.product.model') do (
  set MD=%%a
)
for /f "tokens=1" %%x in ('adb -s %dev% shell getprop ro.build.version.release') do (
  set RL=%%x
)
if "%MF:~0,5%"=="error" set/a err+=1
if "%MD:~0,5%"=="error" set/a err+=2
if "%RL:~0,5%"=="error" set/a err+=4
if not %err%==0 (
  echo.
  echo ADB找不到裝置，請檢查是否已連接，確認驅動是否已正確安裝，並查看USB除錯模式是否已開啟。
  >nul pause
  goto op7
) else (
  for /f "tokens=1 delims=." %%k in ('adb -s %dev% shell getprop ro.build.version.release') do (
   if %%k lss 4 (
    echo 抱歉，您的裝置版本並不支援ADB備份。
    >nul pause
    goto op7
   ) else (
    goto main
   )))
goto start

:main
cls&color 2f
title ＡＤＢ備份與還原工具程序　Ver.1d
echo ********************************************
echo *                                          *
echo *         ＡＤＢ備份與還原工具程式         *
echo *                                          *
echo ********************************************
echo.
echo.
echo 1. 備份手機程式及資料（不含系統）
echo 2. 備份整支手機 （包含系統應用程式，請謹慎使用！）
echo 3. 備份單個應用程式
echo 4. 還原資料
echo 5. 設定應用程式預設安裝位置
echo 6. 連線測試＆選擇手機
echo 7. 離開
echo.
echo.     
choice /n /c 1234567 /m "請輸入代號（１～７）"
set op=%errorlevel%
if %op%==6 (
  set page=1
  set tpg=？？
  call:op6
) else (
  set apk=
  set stor=
  goto op%op%
)
goto main

:op1
cls
title 備份手機程式及資料
echo 請指定存檔路徑與檔名。
set input=
set/p input="若在同目錄，只需輸入檔名（不需輸入「.ab」）。"
if not defined input goto op1
echo.
choice /n /c zx /m "是否要備份應用程式？（Z／X）"
if %errorlevel%==1 (set apk=y) else (set apk=)
choice /n /c zx /m "是否要連同記憶卡（儲存空間）資料一起備份？（Z／X）"
if %errorlevel%==1 (set stor=y) else (set stor=)
color 27
if defined apk (
  if defined stor (
   adb -s %dev% backup -apk -shared -nosystem -all -f "%input%.ab"
  ) else (
   adb -s %dev% backup -apk -noshared -nosystem -all -f "%input%.ab"
  )
) else (
  if defined stor (
   adb -s %dev% backup -shared -nosystem -all -f "%input%.ab"
  ) else (
   adb -s %dev% backup -noshared -nosystem -all -f "%input%.ab"
  ))
echo 備份完成。&>nul pause
goto main

:op2
cls&color c0
title 備份整支手機
echo 警告！！！
echo 備份含有系統軟體的檔案時，雖然會一併備份部分系統設定和聯絡人等資訊，但在還原時有一定的風險。
echo 該備份檔不得使用在不同軟體版本上，更不得使用在不同手機上，
echo 否則可能會發生系統軟體無法執行或是手機變磚的狀況。
echo.
echo 另外，亦不保證使用在相同軟體版本的相同手機上就不會出問題。
echo.
choice /n /c zx /m "您確定要繼續執行嗎？（Z／X）"
if %errorlevel%==1 (
  goto op21
) else (
  cls
  goto main
)
goto op2

:op21
cls
echo 請指定存檔路徑與檔名。
set input=
set/p input="若在同目錄，只需輸入檔名（不需輸入「.ab」） "
if not defined input goto op21
echo.
choice /n /c zx /m "是否要備份應用程式？（Z／X）"
if %errorlevel%==1 (set apk=y) else (set apk=)
choice /n /c zx /m "是否要連同記憶卡（儲存空間）資料一起備份？（Z／X）"
if %errorlevel%==1 (set stor=y) else (set stor=)
color 27
if defined apk (
  if defined stor (
   adb -s %dev% backup -apk -shared -system -all -f "%input%.ab"
  ) else (
   adb -s %dev% backup -apk -noshared -system -all -f "%input%.ab"
  )
) else (
  if defined stor (
   adb -s %dev% backup -shared -system -all -f "%input%.ab"
  ) else (
   adb -s %dev% backup -noshared -system -all -f "%input%.ab"
  ))
echo 備份完成。&>nul pause
goto main

:op3
cls
title 備份單個應用程式
echo 請輸入你想要備份的應用程式類別名稱。
set name=
set/p name="注意！並非應用程式的直接名稱！ "
if not defined name goto op3
echo.

:op31
echo 請輸入備份檔存放路徑與檔名。
set save=
set/p save="若在同目錄，只需輸入檔名（不需輸入「.ab」）。"
if not defined save goto op31
echo.
choice /n /c zx /m "是否要備份應用程式？（Z／X）"
if %errorlevel%==1 (set apk=y) else (set apk=)
color 27
if defined apk (
  adb -s %dev% backup -apk %name% -f "%save%.ab"
) else (
  adb -s %dev% backup %name% -f "%save%.ab"
) 
echo 備份完成。&>nul pause
goto main

:op4
cls
title 還原資料
echo 請輸入備份檔存放路徑與檔名。
set input=
set/p input="若在同目錄，只需輸入檔名（不需輸入「.ab」）。"
if not defined input goto op4
color 27
adb -s %dev% restore "%input%.ab"
echo 還原完成。&>nul pause
goto main

:op5
cls
title 設定應用程式預設安裝位置
echo 請輸入備份檔存放路徑與檔名。
set appde=
choice /n /c 120 /m "（0：由系統選擇，1：內建儲存空間，2：SD卡）。"
if %errorlevel% gtr 3 goto op5
if %errorlevel% lss 1 goto op5
set/a "appde=%errorlevel%%%3"
color 27
adb -s %dev% shell pm set-install-location %appde%
echo 設定完成^(%appde%^)。&>nul pause
goto main

:op6
cls
title 連線測試＆選擇手機　第%page%／%tpg%頁　目前裝置：%dev%
set tm=0
set/a skip=1+(page-1)*10
echo 序號　裝置　種類
for /f "skip=%skip% tokens=1,2" %%A in ('adb devices') do (
  set/a tm+=1
  set D!tm!=%%A
  echo !tm!．　%%A　%%B
)
if !tm!==0 echo 沒有可用裝置！&>nul pause&set err=8&goto :eof
set/a tpg=(tm-tm%10)/10+1
title 連線測試＆選擇手機　第%page%／%tpg%頁　目前裝置：%dev%
choice /n /c 123456789zx0 /m "輸入序號以選擇（１～９），按０返回，「Z」下一頁，「X」上一頁"
if %errorlevel%==10 (
  if %page% geq %tpg% (
   set page=%tpg%
  ) else (
   set/a page+=1
  )
  goto op6
)
if %errorlevel%==11 (
  if %page% leq 1 (
   set page=1
  ) else (
   set/a page-=1
  )
  goto op6
)
if %errorlevel% leq 9 set dev=!D%errorlevel%!
if "!dev!"=="" set dev=無
if not "!dev!"=="無" (echo 選擇裝置成功！&if %errorlevel%==12 goto :eof) else (
  echo 沒有正確選擇裝置！
)
>nul pause
goto op6

:op7
cls&color 27
2>&1 >nul adb kill-server
exit /b %err%