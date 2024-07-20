Start-Transcript -Path "C:\Logs\Powershell\Advanced\Security\$env:computername-BitDefenderDownload.log"

$app1 = "Bitdefender Total Security"

Install-Module -Name OSD -AllowClobber -SkipPublisherCheck -Force
Import-Module -Name OSD -Force


$BDURLDL = ""
