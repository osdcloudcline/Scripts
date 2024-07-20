Start-Transcript -Path "C:\Logs\Powershell\Advanced\Security\$env:computername-BitDefenderDownload.log"

$app1 = "Bitdefender Total Security"

Install-Module -Name OSD -AllowClobber -SkipPublisherCheck -Force
Import-Module -Name OSD -Force


$BDURLDL = ""

$destination = "C:\downloads"

Save-WebFile -SourceUrl $BDURLDL -DestinationDirectory $destination
