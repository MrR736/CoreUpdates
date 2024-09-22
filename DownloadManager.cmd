@echo off
cd /d %~dp0
for /f "delims=" %%i in (KPath) do (
    for /f "tokens=*" %%f in ('dir /b /a-d %%i\*.exe') do (
        del /q "%%i\%%~nf.exe"
    )
    for /f "tokens=*" %%f in ('dir /b /a-d %%i\*.dll') do (
        del /q "%%i\%%~nf.dll"
    )
    for /f "tokens=*" %%f in ('dir /b /a-d %%i\*.txt') do (
        del /q "%%i\%%~nf.txt"
    )
    for /f "tokens=*" %%f in ('dir /b /a-d %%i\*.url') do (
        del /q "%%i\%%~nf.url"
    )
    for /f "tokens=*" %%f in ('dir /b /a-d %%i\*.ico') do (
        del /q "%%i\%%~nf.ico"
    )
)
xcopy /s /y "%cd%\List" "%cd%\DownloadMgr"
start /W call "%cd%\DownloadMgr\Download.bat"
start InstallManager.cmd
exit