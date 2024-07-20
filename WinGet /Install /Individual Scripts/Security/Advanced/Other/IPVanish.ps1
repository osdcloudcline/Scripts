Start-Transcript -Path "C:\Logs\Powershell\Advanced\Security\$env:computername-IPVanishDownload.log"

$app1 = "IP Vanish VPN"

Install-Module -Name OSD -AllowClobber -SkipPublisherCheck -Force
Import-Module -Name OSD -Force

$VPNURL = "https://www.ipvanish.com/software/setup-prod-v2/ipvanish-setup.exe"

$destination = "C:\downloads"

Write-Verbose "Processing $app1 for download..." -Verbose
Save-WebFile -SourceUrl $VPNURL -DestinationDirectory $destination

Stop-Transcript
