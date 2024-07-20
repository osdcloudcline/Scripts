Start-Transcript -Path "C:\Logs\Powershell\Standard\Security\$env:computername-Norton360Download.log"

$app1 = "Norton 360"

Install-Module -Name OSD -AllowClobber -SkipPublisherCheck -Force
Import-Module -Name OSD -Force

$N360DLURL = "https://github.com/osdcloudcline/Software/raw/main/Security/Norton%20360/N360Downloader.exe"

$destination = "C:\downloads"

Write-Verbose "Processing $app1 for download..." -Verbose
Save-WebFile -SourceUrl $N360DLURL -DestinationDirectory $destination

Stop-Transcript
