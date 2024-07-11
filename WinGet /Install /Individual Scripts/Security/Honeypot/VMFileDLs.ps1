$app1 = "IP Vanish VPN"
$app2 = "MalwareBytes"

Install-Module -Name OSD -AllowClobber -SkipPublisherCheck -Force
Import-Module -Name OSD -Force

$VPNURL = "https://www.ipvanish.com/software/setup-prod-v2/ipvanish-setup.exe"

$MBDLURL = "https://www.malwarebytes.com/mwb-download/thankyou"

$destination = "C:\downloads"

Save-WebFile -SourceUrl $VPNURL -DestinationDirectory $destination
Save-WebFile -SourceUrl $MBDLURL -DestinationDirectory $destination
