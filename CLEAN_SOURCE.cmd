@echo off
setlocal
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0tools\CLEAN_SOURCE_TREE.ps1"
exit /b %errorlevel%
