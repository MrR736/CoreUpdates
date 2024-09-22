@echo off
cd /d %~dp0

set /p P=<Path.txt

%p%\wget.exe -q -O winaerotweaker.zip https://winaerotweaker.com/download/winaerotweaker.zip
%p%\7z.exe e winaerotweaker.zip -o"%ProgramData%\PhoenixOS\Core\CoreUpdates\Temp\winaero-tweaker"
