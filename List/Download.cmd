@echo off
cls
cd /d %~dp0
call "%cd%\Everything\Everything.cmd"
cd /d %~dp0
call "%cd%\winaero-tweaker\winaero-tweaker.cmd"