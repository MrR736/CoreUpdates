@echo off
cd /d %~dp0
mkdir "Download Manager"
mkdir Temp
cd .\Temp
mkdir winaero-tweaker
for /f "tokens=*" %%f in ('dir /b /a-d %ProgramData%\PhoenixOS\WinaeroTweaker\*.exe') do (
    taskkill /im "%%~nf.exe"
)
taskKill /f /im Search.exe /t
del /s /q "%ProgramData%\PhoenixOS\WinaeroTweaker"
del /s /q "%ProgramData%\PhoenixOS\Search"
cd /d %~dp0
start call DownloadManager.cmd
exit
