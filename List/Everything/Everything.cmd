@echo off
cd /d %~dp0

set /p P=<Path.txt
set /p InstallPath=<InstallPath
set /p Rename=<Rename

taskKill /f /im %Rename%.exe /t
"%p%\wget.exe" -q -O Everything-d.cmd https://raw.githubusercontent.com/MrR736/CoreAbout/main/Downloads/Everything-d.cmd
call Everything-d.cmd
del /s /q ".\Everything-d.cmd"
"%p%\7z.exe" e Everything.zip -o".\Everything\"
del /q Path.txt
cd .\Everything
for /f "tokens=*" %%f in ('dir /b /a-d "*.exe"') do (
    @rename "%%f" "%Rename%.exe"
)
move "%Rename%.exe" "%InstallPath%"