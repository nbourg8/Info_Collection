@echo off
if not "%username%"=="canrigadmin" (goto failed_username)
Title Collecting Information
color 2
cls
if not exist "c:\Canrig" mkdir "c:\Canrig"
if not exist "c:\Canrig\LogFolder" mkdir "c:\Canrig\LogFolder"
set LogFile="c:\Canrig\LogFolder\Info_Collection.txt"
echo.********************************************************>>%LogFile% 2>&1
echo.Current Time is : %Time%
echo.Current Date is : %Date%
echo.Log File is in %LogFile%
psexec \\192.168.1.12 /c Image_Check.bat %LogFile%
psexec \\192.168.1.13 /c Image_Check.bat %LogFile%
psexec \\192.168.1.14 /c Image_Check.bat %LogFile%
psexec \\192.168.1.16 /c Image_Check.bat %LogFile%
psexec \\192.168.1.23 /c Image_Check.bat %LogFile%
psexec \\192.168.1.180 /c Image_Check.bat %LogFile%
psexec \\192.168.1.181 /c Image_Check.bat %LogFile%
psexec \\192.168.1.5 /c Image_Check.bat %LogFile%
psexec \\192.168.1.20 /c Image_Check.bat %LogFile%
Title Finished!
pause