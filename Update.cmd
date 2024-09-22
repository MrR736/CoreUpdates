@echo off
cd /d %~dp0

setlocal enabledelayedexpansion

if not exist KPath (
    echo KPath file not found!
    exit /b
)

for /f "delims=" %%i in (KPath) do (
    echo Processing directory: %%i
    for %%e in (exe dll txt url ico) do (
        for /f "delims=" %%f in ('dir /b /a-d "%%i\*.%%e" 2^>nul') do (
            echo Found file: %%i\%%f
            set "process_name=%%~nf.%%e"
            taskkill /im "!process_name!" /f 2>nul
            if errorlevel 1 (
                echo Failed to kill process: !process_name!
            ) else (
                echo Successfully killed process: !process_name!
            )

            if exist "%%i\%%f" (
                echo Attempting to remove read-only attribute if set
                attrib -r "%%i\%%f" 2>nul

                echo Attempting to delete file: %%i\%%f
                del /q "%%i\%%f"
                if errorlevel 1 (
                    echo Failed to delete: %%i\%%f
                ) else (
                    echo Successfully deleted: %%i\%%f
                )
            ) else (
                echo File does not exist: %%i\%%f
            )
        )
    )
)

endlocal

mkdir DownloadMgr
mkdir Temp
echo %cd%\Temp> ".\DownloadMgr\Path.txt"
start call DownloadManager.cmd
exit
