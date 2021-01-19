@echo off
chcp 950>nul
echo %*
set err=%errorlevel%
timeout /t 1 >nul
exit %err%