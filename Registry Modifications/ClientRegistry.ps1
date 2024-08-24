##################################
# Registry Files 
##################################

$REGLog = "C:\OSDCloud\DeploymentLogs\Registry\$env:computername-Registry.log"
Start-Transcript -Path $REGLog

$OSInfo1 = (Get-CimInstance -ClassName CIM_OperatingSystem).Caption
$OSInfo2 = (Get-CimInstance -ClassName CIM_OperatingSystem).Version


Write-Host "Executing $OSInfo1 $OSInfo2 Registry-related PowerShell scripts from OSDCloudCline GitHub repo..." -ForegroundColor Cyan
Write-Host

$SafeMode = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/AddSafeMode.ps1")
Invoke-Expression $($SafeMode.Content)

$Updates = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/CheckForUpdates.ps1")
Invoke-Expression $($Updates.Content)

$CopyMoveTo = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/CopyToMoveTo.ps1")
Invoke-Expression $($CopyMoveTo.Content)

$DisableBitLocker = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/DisableBitLockerDeviceEncryption.ps1")
Invoke-Expression $($DisableBitlocker.Content)

$DisableCoPilot = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/DisableWindowsCopilot.ps1")
Invoke-Expression $($DisableCoPilot.Content)

$DisableRecall = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/DisableWindowsRecall.ps1")
Invoke-Expression $($DisableRecall.Content)

$OSDesktop = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/OSDesktopIcons.ps1")
Invoke-Expression $($OSDesktop.Content)

$HiddenFilesFolders = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/ShowHiddenFilesFolders.ps1")
Invoke-Expression $($HiddenFilesFolders.Content)

$EnableSUDO = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/EnableSUDO.ps1")
Invoke-Expression $($EnableSUDO.Content)

$DisableWinDefender = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/DisableWindowsDefender.ps1")
Invoke-Expression $($DisableWinDefender.Content)

$RemoveSMRecommended = Invoke-WebRequest("")
Invoke-Expression $($RemoveSMRecommended.Content)


Write-Host "Executing Software-related Registry PowerShell scripts from OSDCloudCline GitHub repo..." -ForegroundColor Cyan
Write-Host

$Adobe = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Scripts/Adobe.ps1")
Invoke-Expression $($Adobe.Content) 

$3DMark = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Scripts/3DMark.ps1")
Invoke-Expression $($3DMark.Content) 

$PCMark = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Scripts/PCMark10.ps1")
Invoke-Expression $($PCMark.Content) 











Stop-Transcript
