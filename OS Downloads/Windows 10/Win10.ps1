$Win10Log = "C:\OSD Cloud\Logs\OS Downloads\Windows10.log"
Start-Transcript $Win10Log

Get-Date

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

# Download Zip file region

$ZIPDestination = "$env:userprofile\Downloads\OS\Windows10\22H2"

$Windows10URL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2010/19045.4472_amd64_en-us_multi_39143328_convert_virtual.zip"

$ExtractLocation = $ZIPDestination

$Windows10Downloader = "$ZIPDestination\uup_download_windows.cmd"

Write-Host "Downloading Windows 10 22H2 ZIP File..." -ForegroundColor Cyan 

Save-WebFile -SourceUrl $Windows10URL -DestinationDirectory $ZIPDestination

Write-Host "Expanding Windows 10 22H2 ZIP File..." -ForegroundColor Cyan 

Expand-Archive -Path "$ZIPDestination\19045.4472_amd64_en-us_multi_39143328_convert_virtual.zip" -DestinationPath $ExtractionLocation

Write-Host "Downloading Windows 10 22H2..." -ForegroundColor Cyan 

Start-Process -FilePath $Windows10Downloader
