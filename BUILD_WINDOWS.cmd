@echo off
setlocal
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0tools\BUILD_WINDOWS.ps1"
exit /b %errorlevel%
