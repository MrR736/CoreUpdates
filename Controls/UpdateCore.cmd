@echo off
cd "%ProgramData%\PhoenixOS"
set page=https://github.com/MrR736/CoreUpdates/archive/refs/heads/main.zip
mkdir Update
cd .\Update
wget %page%
setlocal

Call :UnZipFile "%ProgramData%\PhoenixOS\Update" "%ProgramData%\PhoenixOS\Update\main.zip"
exit /b

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%

timeout /t 3 /nobreak

cd "%ProgramData%\PhoenixOS"
set "new_batch_file=%ProgramData%\PhoenixOS\Update\core.cmd"
echo @echo off > "%new_batch_file%"
echo cd /d %ProgramData%\PhoenixOS >> "%new_batch_file%"
echo timeout /t 1 /nobreak >> "%new_batch_file%"
echo rd /s /q "%ProgramData%\PhoenixOS\Core Updates" >> "%new_batch_file%"
echo mkdir "Core Updates" >> "%new_batch_file%"
echo timeout /t 3 /nobreak >> "%new_batch_file%"
echo xcopy /s /y "%ProgramData%\PhoenixOS\Update\CoreUpdates-main" "%ProgramData%\PhoenixOS\Core Updates" >> "%new_batch_file%"
echo rd /s /q "%ProgramData%\PhoenixOS\Update" >> "%new_batch_file%"
echo timeout /t 1 /nobreak >> "%new_batch_file%"
echo exit >> "%new_batch_file%"
cd /d %ProgramData%\PhoenixOS\Update
start core.cmd
exit
