Start-Transcript -Path "C:\Logs\Powershell\Advanced\Security\$env:computername-Norton360Download.log"

$app1 = "MalwareBytes"

Install-Module -Name OSD -AllowClobber -SkipPublisherCheck -Force
Import-Module -Name OSD -Force

$MBDLURL = "https://www.malwarebytes.com/mwb-download/thankyou"

$destination = "C:\downloads"

Write-Verbose "Processing $app1 for download..." -Verbose
Save-WebFile -SourceUrl $MBDLURL -DestinationDirectory $destination

Stop-Transcript
