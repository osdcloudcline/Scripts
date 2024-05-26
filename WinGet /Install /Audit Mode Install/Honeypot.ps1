$OSDModuleLogs = "C:\OSDCloud\DeploymentLogs\Honeypot\$env:computername-OSModule.log"
Start-Transcript -Path $OSDModuleLogs

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

Stop-Transcript

$OSDSoftwareLogs = "C:\OSDCloud\DeploymentLogs\Honeypot\$env:computername-OSSoftware.log"
Start-Transcript -Path $OSDSoftwareLogs

$OSSoftware1 = "IPVanish"



Write-Host "Acquiring Software..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Downloading $OSSoftware1..." -Verbose
$VPN = "https://www.ipvanish.com/software/setup-prod-v2/ipvanish-setup.exe"
$Destination = "C:\OSDCloud\GitHub\downloads\Software"
Save-WebFile -SourceUrl $VPN -DestinationDirectory $Destination

Stop-Transcript
