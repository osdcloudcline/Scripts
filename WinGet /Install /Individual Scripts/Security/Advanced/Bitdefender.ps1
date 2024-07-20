Start-Transcript -Path "C:\Logs\Powershell\Advanced\Security\$env:computername-BitDefenderDownload.log"

$app1 = "Bitdefender Total Security"

Install-Module -Name OSD -AllowClobber -SkipPublisherCheck -Force
Import-Module -Name OSD -Force


$BDURLDL = ""

$destination = "C:\downloads"

Write-Verbose "Processing $app1 for download..." -Verbose
Save-WebFile -SourceUrl $BDURLDL -DestinationDirectory $destination

Stop-Transcript
