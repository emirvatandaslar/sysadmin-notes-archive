@echo off
setlocal enabledelayedexpansion
rem EN: Open https://ping.pe/<prefix>.<n> in Chrome for each n in a range, 20 s apart, closing Chrome in between.
rem TR: Aralikteki her n icin Chrome'da https://ping.pe/<prefix>.<n> acar, 20 sn bekler ve Chrome'u kapatir.
rem WARNING / UYARI: "taskkill /im chrome.exe" closes ALL Chrome windows (save your work). Tum Chrome pencerelerini kapatir.

set start_ip=200
set end_ip=254
rem Example prefix from the documentation range / ornek on ek (kendi blogunuzu yazin)
set base_url=https://ping.pe/203.0.113.
set chrome_path="C:\Program Files\Google\Chrome\Application\chrome.exe"

for /L %%i in (%start_ip%,1,%end_ip%) do (
    set "current_url=!base_url!%%i"
    echo Opening: !current_url!
    start "" %chrome_path% "!current_url!" >nul
    timeout /t 20 >nul
    taskkill /im chrome.exe /f >nul 2>&1
)
endlocal
