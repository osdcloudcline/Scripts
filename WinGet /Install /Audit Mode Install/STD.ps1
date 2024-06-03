$OSDModuleLogs = "C:\OSDCloud\DeploymentLogs\STD\$env:computername-OSModule.log"
Start-Transcript -Path $OSDModuleLogs

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

Stop-Transcript

$OSDMediaSoftwareLogs = "C:\OSDCloud\DeploymentLogs\ADV\$env:computername-OSDMediaSoftware.log"
Start-Transcript -Path $OSDMediaSoftwareLogs

# Media Software

Write-Host
Write-Host
Write-Host "Step 1 : Media Software" -ForegroundColor Cyan
Write-Host
Write-Host

$Mediaapp1 = "VLC Media Player"
$Mediaapp2 = "MediaInfo"
