$WinServer2025Log = "C:\OSD Cloud\Logs\OS Downloads\WinServer2025.log"
Start-Transcript $WinServer2025Log

Get-Date

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

################### ISO Download, Extraction and Creation Variables region ##########################

$ZIPDestination = "$env:userprofile\Downloads\OS\WindowsServer\2025"

$WinServer2025URL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%20Server/2025/26100.2314_amd64_en-us_multi_c4bd87c1_convert.zip"

$ExtractionLocation = $ZIPDestination

$WindowsServer2025Downloader = "$ZIPDestination\uup_download_windows.cmd"

########################################################################################

Write-Host "Downloading Windows Server 2025 ZIP File..." -ForegroundColor Cyan 
Write-Host
Save-WebFile -SourceUrl $WinServer2025URL -DestinationDirectory $ZIPDestination
pause

Write-Host "Expanding Windows Server 2025 ZIP File..." -ForegroundColor Cyan 

Expand-Archive -Path "$ZIPDestination\26100.2314_amd64_en-us_multi_c4bd87c1_convert.zip" -DestinationPath $ExtractionLocation
Write-Host
pause
Write-Host "Downloading Windows Server 2025 Build: 26100.2314..." -ForegroundColor Cyan 

Start-Process -FilePath $WindowsServer2025Downloader

pause

#######    Delete Items Variables region ########################

$binfolder = "$ZIPDestination\bin"
$Driversfolder = "$ZIPDestination\Drivers"
$filesfolder = "$ZIPDestination\files"
$UUPsfolder = "$ZIPDestination\UUPs"

#####################################################

Write-Host "Deleting Subfolders and Files Windows Server 2025 Source Directory..." -ForegroundColor Cyan 

rd -Path "$binfolder" -Recurse -Force
rd -Path "$Driversfolder" -Recurse -Force
rd -Path "$filesfolder" -Recurse -Force
rd -Path "$UUPsfolder" -Recurse -Force

Remove-Item -Path "$ZIPDestination\*.log" -Recurse -Force
Remove-Item -Path "$ZIPDestination\*.ini" -Recurse -Force
Remove-Item -Path "$ZIPDestination\*.cmd" -Recurse -Force
Remove-Item -Path "$ZIPDestination\*.txt" -Recurse -Force
Remove-Item -Path "$ZIPDestination\*.html" -Recurse -Force
Remove-Item -Path "$ZIPDestination\*.md" -Recurse -Force
Remove-Item -Path "$ZIPDestination\*.sh" -Recurse -Force
Remove-Item -Path "$ZIPDestination\*.zip" -Recurse -Force

Write-Host "Excess Files and folders have been successfully deleted..." -ForegroundColor Green 

Stop-Transcript

