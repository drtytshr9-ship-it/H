@echo off
setlocal
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0tools\EXTRACT_CLEAN_SOURCE.ps1"
exit /b %errorlevel%
