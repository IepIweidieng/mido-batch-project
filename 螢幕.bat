@title 
@echo off
>nul chcp 950
if not "%1"=="�{" start �{�� �{ & exit
setlocal enabledelayedexpansion
set ��=abcdef0123456789
:�C��
  set ����=0
set �r��=
goto �r��
:�r��
set �H��=%random%
set /a �H��=�H��%%16
set �r��=!�r��!!��:~%�H��%,1!
set /a ����+=1
if !����! lss 2 goto �r��
  color !�r��!
goto �C��