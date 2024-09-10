@echo off
cd /d %~dp0
wget -q -O winaerotweaker.zip https://winaerotweaker.com/download/winaerotweaker.zip
7za.exe e winaerotweaker.zip -o"%ProgramData%\PhoenixOS\Core\CoreUpdates\Temp\winaero-tweaker"
