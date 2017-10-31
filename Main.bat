@echo off
Title Collecting Information
color 2
cls
set LogFile="c:\log.txt"
echo.********************************************************>%LogFile%
echo.Current Time is : %Time%>>%LogFile%
echo.Current Date is : %Date%>>%LogFile%
echo.>>%LogFile%
echo.>>%LogFile%

net use x: \\192.168.1.12\C$
psexec \\192.168.1.12 /c Image_Check.bat %LogFile%
copy x:\Information.txt %~dp0
copy /b %LogFile%+Information.txt %LogFile%
del x:\Information.txt
net use x: /delete /y

net use x: \\192.168.1.13\C$
psexec \\192.168.1.13 /c Image_Check.bat %LogFile%
copy x:\Information.txt %~dp0
copy /b %LogFile%+Information.txt %LogFile%
del x:\Information.txt
net use x: /delete /y

net use x: \\192.168.1.14\C$
psexec \\192.168.1.14 /c Image_Check.bat %LogFile%
copy x:\Information.txt %~dp0
copy /b %LogFile%+Information.txt %LogFile%
del x:\Information.txt
net use x: /delete /y

net use x: \\192.168.1.16\C$
psexec \\192.168.1.16 /c Image_Check.bat %LogFile%
copy x:\Information.txt %~dp0
copy /b %LogFile%+Information.txt %LogFile%
del x:\Information.txt
net use x: /delete /y

net use x: \\192.168.1.23\C$
psexec \\192.168.1.23 /c Image_Check.bat %LogFile%
copy x:\Information.txt %~dp0
copy /b %LogFile%+Information.txt %LogFile%
del x:\Information.txt
net use x: /delete /y

net use x: \\192.168.1.180\C$
psexec \\192.168.1.180 /c Image_Check.bat %LogFile%
copy x:\Information.txt %~dp0
copy /b %LogFile%+Information.txt %LogFile%
del x:\Information.txt
net use x: /delete /y

net use x: \\192.168.1.181\C$
Rpsexec \\192.168.1.181 /c Image_Check.bat %LogFile%
copy x:\Information.txt %~dp0
copy /b %LogFile%+Information.txt %LogFile%
del x:\Information.txt
net use x: /delete /y

net use x: \\192.168.1.5\C$
psexec \\192.168.1.5 /c Image_Check.bat %LogFile%
copy x:\Information.txt %~dp0
copy /b %LogFile%+Information.txt %LogFile%
del x:\Information.txt
net use x: /delete /y

net use x: \\192.168.1.20\C$
psexec \\192.168.1.20 /c Image_Check.bat %LogFile%
copy x:\Information.txt %~dp0
copy /b %LogFile%+Information.txt %LogFile%
del x:\Information.txt
net use x: /delete /y

del Information.txt

Title Finished!
pause