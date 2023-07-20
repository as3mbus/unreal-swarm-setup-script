@echo off
REM Check if running with administrator privileges
NET SESSION >NUL 2>&1
IF %ERRORLEVEL% EQU 0 (
    REM Already running with administrator privileges
    goto :continue
)

REM Restart the script with administrator privileges
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\run.bat.vbs"
echo UAC.ShellExecute "%~dp0%~nx0", "", "", "runas", 1 >> "%temp%\run.bat.vbs"
"%temp%\run.bat.vbs"
del "%temp%\run.bat.vbs"
exit /b

:continue

powershell -Command "Write-Host Setting Up Swarm Agent Auto Start"

powershell -ExecutionPolicy Bypass -NoProfile -NoLogo -File "%~dp0\SetAgentAutoStart.ps1"

REM change IP_RANGE value based on your internal network range
set IP_RANGE=172.16.0.0-172.16.255.255,10.10.10.0-10.10.10.255

powershell -Command "Write-Host Configuring Windows Firewall for Unreal Swarm Agent"

netsh advfirewall firewall add rule name="Unreal Swarm TCP" dir=in action=allow enable=yes remoteip=%IP_RANGE% protocol=tcp interfacetype=any localport=8008,8009,54430,56574,56587 remoteport=8008,8009,54430,56574,56587
netsh advfirewall firewall add rule name="Unreal Swarm ICMPv4" dir=in action=allow enable=yes remoteip=%IP_RANGE% protocol=icmpv4 interfacetype=any

pause