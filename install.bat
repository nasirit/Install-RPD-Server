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
"%~dp0RDPWInst" -i -o
echo ______________________________________________________________
echo.
echo RDP (Remote Desktop Protocol) server appears to be prepared for operation.
net stop termservice
if exist "C:\Program Files\RDP Wrapper\rdpwrap.ini" del "C:\Program Files\RDP Wrapper\rdpwrap.ini"
copy "%~dp0\rdpwrap.ini" "C:\Program Files\RDP Wrapper\rdpwrap.ini"
net start termservice
echo.
echo Get Ready !
echo.
echo Press any key to check RDP Localhost...
pause >nul
start "" mstsc /v:localhost
exit
:error
echo [-] Installer executable not found.
echo Please extract all files from the downloaded package or check your anti-virus.
goto :anykey
exit
:anykey
echo.
echo Press any key to exit...
pause
exit
