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

Write-Host "ATTN: $env:username - 53 pieces of software will be installed. 3 will be downloaded. Please be patient" -ForegroundColor Red

Write-Host "Installing Media Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing Media Software 1 of 10..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Mediaapp1..." -Verbose
winget install --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing Media Software 2 of 10..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Mediaapp2..." -Verbose
winget install --id MediaArea.MediaInfo.GUI --exact --accept-source-agreements  --accept-source-agreements --force

