@title 
@echo off
>nul chcp 950
if not "%1"=="�{" start �w�M�{�� & exit
setlocal enabledelayedexpansion
set ��=08fceab9d7462315
set �C��=0
goto �C��

:�C��
set /a �C��+=1
if %�C��% gtr 15 set �C��=0
set �r��=!��:~%�C��%,1!
if !�r��!==0 (
color !�r��!1
) else (
color !�r��!0
)
>nul ping /n 1 /w 1000 127.0.0.1
goto �C��