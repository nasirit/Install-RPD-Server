@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
echo Please run as administrator.
echo.
echo Press any key to exit...
pause >nul
exit
)
if not exist "%~dp0RDPWInst.exe" goto :error
"%~dp0RDPWInst" -u
echo.
goto :anykey
:error
echo [-] Installer executable not found.
echo Please extract all files from the downloaded package or check your anti-virus.
:anykey
pause
