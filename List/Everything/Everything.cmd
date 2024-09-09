@echo off
cd /d %~dp0
wget -q -O Everything-d.cmd https://raw.githubusercontent.com/MrR736/CoreAbout/main/Downloads/Everything-d.cmd
call Everything-d.cmd
del /s /q ".\Everything-d.cmd"
7za.exe e Everything.zip -o".\Everything\"
cd ".\Everything\"
for /f "tokens=*" %%f in ('dir /b /a-d "*.exe"') do (
    @echo %%f
    @rename "%%f" "Search.exe"
)
copy "Search.exe" "%ProgramData%\PhoenixOS\Search"
