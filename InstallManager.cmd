@echo off
cd /d %~dp0
copy "%cd%\Install Manager\TXT\WinaeroTweakerPortable.txt" "%cd%\Temp\winaero-tweaker\"
copy "%cd%\Install Manager\Install.cmd" "%cd%\Temp\winaero-tweaker"
copy "%cd%\Install Manager\Install2.cmd" "%cd%\Temp\Everything"
for /F "usebackq skip=1 delims=" %%I in ("%cd%\Temp\winaero-tweaker\SilentSetup.cmd") do if not defined SetupApp set "SetupApp=%%~I"
echo %SetupApp% >>"%cd%\Temp\winaero-tweaker\Install.cmd"
start Task.cmd
exit