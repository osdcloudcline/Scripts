Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

$app1 = "Microsoft Office 2021 LTSC"
$app2 = "Microsoft Office 365 for enterprise"
$app3 = "Microsoft 365 (Office)"
$app4 = "Adobe Acrobat Reader"

Write-Host "Processing: $app1..." -ForegroundColor Cyan
$OfficeGHdownloads = "C:\OSDCloud\GitHub\downloads\Office" 
mkdir $OfficeGHdownloads
$Office2021FilesUrl = "https://github.com/osdcloudcline/Software/raw/main/Productivity/Microsoft/Office%202021/OSDCloud-Office2021.zip"
Save-WebFile -SourceUrl $Office2021FilesUrl -DestinationDirectory $OfficeGHdownloads
Expand-Archive -Path "$OfficeGHdownloads\OSDCloud-Office2021.zip" -DestinationPath $OfficeGHdownloads
pause
Write-Host "Processing: $app1 download..." -ForegroundColor Cyan
$O21DLCMD = "C:\OSDCloud\GitHub\downloads\Office\OfficeCDNDownload.cmd"
Start-Process -FilePath $O21DLCMD
pause
Write-Host "Processing: $app1 setup install..." -ForegroundColor Cyan
$O21SetupCMD = "C:\OSDCloud\GitHub\downloads\Office\OfficeCDNSetup.cmd"
Start-Process -FilePath $O21SetupCMD

Write-Host "Processing: $app2..." -ForegroundColor Cyan
winget install --id Microsoft.Office --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Processing: $app3..." -ForegroundColor Cyan
winget install --id 9WZDNCRD29V9 --source msstore

Write-Host "Processing: $app4..." -ForegroundColor Cyan
winget install --id Adobe.Acrobat.Reader.64-bit --exact --accept-source-agreements  --accept-source-agreements --force
