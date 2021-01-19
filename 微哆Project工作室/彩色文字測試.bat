@echo off&>nul chcp 950&setlocal enabledelayedexpansion
title 滿江紅––岳飛&mode con cols=34 lines=17&color 07
set "ca=27abcdef0"
<nul set/p="   ">"%~dp0temp"
for /f "skip=21 tokens=*" %%a in ('type "%0"') do (
 set "a=%%a"
 for /l %%b in (0,1,20) do (
  set "str=!a:~%%b,1!"
  if defined str (
   set/a "cb=!random!%%8+1"
   call set "cc=%%ca:~!cb!,1%%"
   >nul 2>nul ren "%~dp0temp" !str!
   findstr /s /a:!cc! . !str!
   >nul 2>nul ren "%~dp0!str!" temp
  )
 )
 echo.&echo.
)
del /f /q /a temp&>nul pause&exit
--------------文章正文------------------
怒髮衝冠，憑闌處、瀟瀟雨歇。
抬望眼、仰天長嘯，壯懷激烈。
三十功名塵與土，八千里路雲和月。
莫等閒、白了少年頭，空悲切！
靖康恥，猶未雪。臣子恨，何時滅？
駕長車踏破，賀蘭山缺。
壯志饑餐胡虜肉，笑談渴飲匈奴血。
待重頭、收拾舊山河，朝天闕！