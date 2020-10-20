PowerShell -Command "Set-ExecutionPolicy Unrestricted" >> "%TEMP%\StartupLog.txt" 2>&1
PowerShell C:\Projects\Local\Utilities\Powershell\neos-setup.ps1 >> "%TEMP%\StartupLog.txt" 2>&1