Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

$app1 = "Microsoft Office 2021 LTSC"

Write-Host "Processing: $app1..." -ForegroundColor Cyan
$OfficeGHdownloads = "C:\Office"
mkdir $OfficeGHdownloads
$Office2021FilesUrl = Invoke-WebRequest ("https://github.com/osdcloudcline/OSDCloud/raw/main/Software/Office2021/OSDCloud-Office2021.zip")
Save-WebFile -SourceUrl $Office2021FilesUrl -DestinationDirectory $OfficeGHdownloads
Expand-Archive -Path "$OfficeGHdownloads\OSDCloud-Office2021.zip" -DestinationPath $OfficeGHdownloads
