@echo off
rem EN: Allow multiple RDP sessions per user (max 10) and reboot. Run as Administrator.
rem TR: Kullanici basina birden fazla RDP oturumuna izin verir (en fazla 10) ve yeniden baslatir. Yonetici olarak calistirin.
rem Note / Not: comply with Microsoft RDS licensing (CALs) / Microsoft RDS lisans kosullarina uyun.

echo Enabling multiple RDP sessions...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fSingleSessionPerUser /t REG_DWORD /d 0 /f

echo Limiting RDP session count to 10...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v MaxInstanceCount /t REG_DWORD /d 10 /f

echo Rebooting in 10 seconds... (run "shutdown /a" to cancel)
shutdown /r /t 10 /c "Enabling multiple RDP sessions"
pause
