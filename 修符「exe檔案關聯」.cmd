@echo off
chcp 950>nul
setlocal
set err=0
set k=%%
set y="%k%1" %k%^*
ftype exefile=%y%
set/a err+=%errorlevel%
assoc .exe=exefile
set/a err+=%errorlevel%
timeout /t 1 >nul
(
 endlocal
 exit /b %err%
)