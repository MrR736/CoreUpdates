@echo off
cls
cd /d %~dp0
rd /s /q ".\Download Manager\"
rd /s /q ".\Temp\"
ExtraDel.cmd