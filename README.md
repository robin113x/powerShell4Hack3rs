# PowerShell Command Reference

This document provides a quick reference for using basic PowerShell commands and parameters. For more detailed information, you can visit [ss64.com](https://ss64.com/ps/).

| **Category**                 | **Description**                                      | **Command**                                                                                                                                                                                                                     |
|------------------------------|------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Basic Usages**             | Get Help and Examples                                | `Get-Help Get-Process -Example`<br>`Get-Help Get-Process -Online`                                                                                                                                                               |
|                              | Get PowerShell Version                               | `$PSVersionTable`                                                                                                                                                                                                               |
|                              | Determine if Operating System is 64-bit or 32-bit    | `[Environment]::Is64BitOperatingSystem`                                                                                                                                                                                         |
| **Execution Policy**         | Get current execution policy                         | `Get-ExecutionPolicy -List`                                                                                                                                                                                                     |
|                              | Set execution policy                                 | `Set-ExecutionPolicy [-ExecutionPolicy*] {Unrestricted \| RemoteSigned \| AllSigned \| Restricted \| Default \| Bypass \| Undefined} [[-Scope] {Process \| CurrentUser \| LocalMachine \| UserPolicy \| MachinePolicy}] [-Confirm] [-Force] [-WhatIf] [<CommonParameters>]`<br><br>Example:<br>`Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser -Force`<br>`powershell.exe -ExecutionPolicy Unrestricted .\script.ps1`  |
| **Window Style**             | Run PowerShell with Hidden Window                    | `powershell -WindowStyle Hidden .\Script.ps1`                                                                                                                                                                                   |
| **No Profile**               | Run PowerShell Without Loading Profile               | `Powershell -NoProfile .\script.ps1`                                                                                                                                                                                            |
| **Additional Parameters**    | Execution Policy and Encoded Command                 | `-ExecutionPolicy -ep Bypass \| -ex bypass `<br>`-EncodedCommand -enco \| -ec`<br>`-WindowStyle -W hidden \| -Wi hidden`                                                                                                                                           |
| **Example Command**          | Example Command                                      | `powershell[.exe] [-NoProfile] [-WindowStyle Hidden] [-NonInteractive] [-EncodedCommand Base64EncodedCommand] [-ExecutionPolicy ExecutionPolicy]`                                                                               |
| **Command Example**          | Get Command with Wildcard                            | `Get-Command -Name *FireWall*`                                                                                                                                                                                                  |
| **Unblock Script**           | Unblock a downloaded PowerShell script               | `Unblock-File -Path "C:\path\to\your\script.ps1"`                                                                                                                                                                               |
|                              | Unblock multiple scripts                             | `Get-ChildItem -Path "C:\path\to\your\scripts\*.ps1" \| Unblock-File`                                                                                                                                                              |
| **CMDLETS**   | Get all cmdlets available                              | `Get-Command -CommandType Cmdlet` \| `Get-Help Get-process -full`                                                                                                                                                                                       |
|      **Alias**                        | Get all aliases available                            | `Get-Alias` \| `Get-Alias -Definition Get_ChildItem `           |


# Encode the command
`$command = "Get-Process | Where-Object { $_.Handles -gt 100 }"`
`$encodedCommand = [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($command))`

# Execute the encoded command
`powershell.exe -EncodedCommand $encodedCommand `|
```
For more detailed information, you can visit [ss64.com](https://ss64.com/ps/).
