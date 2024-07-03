Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

$app1 = "Microsoft Office 2021 LTSC"

Write-Host "Processing: $app1..." -ForegroundColor Cyan
$OfficeGHdownloads = "C:\OSDCloud\GitHub\downloads\Office" 
mkdir $OfficeGHdownloads
$Office2021FilesUrl = "https://github.com/osdcloudcline/Software/raw/main/Productivity/Microsoft/Office%202021/OSDCloud-Office2021.zip"
Save-WebFile -SourceUrl $Office2021FilesUrl -DestinationDirectory $OfficeGHdownloads
Expand-Archive -Path "$OfficeGHdownloads\OSDCloud-Office2021.zip" -DestinationPath $OfficeGHdownloads
