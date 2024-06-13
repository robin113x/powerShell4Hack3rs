PowerShell Command Reference
This document provides a quick reference for using basic PowerShell commands and parameters. For more detailed information, you can visit ss64.com.

Basic Usages
Get Help and Examples
powershell
Copy code
Get-Help Get-Process -Example
Get-Help Get-Process -Online
Get PowerShell Version
powershell
Copy code
$PSVersionTable
Determine if Operating System is 64-bit or 32-bit
powershell
Copy code
[Environment]::Is64BitOperatingSystem
Execution Policy
Get and Set Execution Policy
powershell
Copy code
# Get current execution policy
Get-ExecutionPolicy -List

# Set execution policy
Set-ExecutionPolicy [-ExecutionPolicy*] {Unrestricted | RemoteSigned | AllSigned | Restricted | Default | Bypass | Undefined} 
                    [[-Scope] {Process | CurrentUser | LocalMachine | UserPolicy | MachinePolicy}]
                    [-Confirm] [-Force] [-WhatIf] [<CommonParameters>]

# Example: Set execution policy to Unrestricted for CurrentUser
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser -Force

# Run a script with Unrestricted policy
powershell.exe -ExecutionPolicy Unrestricted .\script.ps1
Window Style
Run PowerShell with Hidden Window
powershell
Copy code
powershell -WindowStyle Hidden .\Script.ps1
No Profile
Run PowerShell Without Loading Profile
powershell
Copy code
Powershell -NoProfile .\script.ps1
Additional Parameters
Execution Policy and Encoded Command
powershell
Copy code
-ExecutionPolicy -ep Bypass | -ex by
-EncodedCommand -enco      | -ec
-WindowStyle    -W h       | -Wi hi
Example Command
powershell
Copy code
powershell[.exe] [-NoProfile] [-WindowStyle Hidden] [-NonInteractive] [-EncodedCommand Base64EncodedCommand] [-ExecutionPolicy ExecutionPolicy]
Command Example
Get Command with Wildcard
powershell
Copy code
Get-Command -Name *FireWall*
