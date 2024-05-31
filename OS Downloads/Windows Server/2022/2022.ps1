$WinServer2022Log = "C:\OSD Cloud\Logs\OS Downloads\WinServer2022.log"
Start-Transcript $WinServer2022Log

Get-Date

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

################### ISO Download, Extraction and Creation Variables region ##########################

$ZIPDestination = "$env:userprofile\Downloads\OS\WindowsServer\2022"

$WinServer2022URL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%20Server/2022/20348.2461_amd64_en-us_multi_b9f1ddc0_convert.zip"

$ExtractionLocation = $ZIPDestination

$WindowsServerDownloader = "$ZIPDestination\uup_download_windows.cmd"

########################################################################################

Write-Host "Downloading Windows Server 2022 ZIP File..." -ForegroundColor Cyan 
Write-Host
Save-WebFile -SourceUrl $WinServer2022URL -DestinationDirectory $ZIPDestination
pause

Write-Host "Expanding Windows Server 2022 ZIP File..." -ForegroundColor Cyan 

Expand-Archive -Path "$ZIPDestination\20348.2461_amd64_en-us_multi_b9f1ddc0_convert.zip" -DestinationPath $ExtractionLocation
Write-Host
Write-Host "Downloading Windows Server 2022 Build: 20348.2461..." -ForegroundColor Cyan 

pause

Start-Process -FilePath $WindowsServerDownloader

pause

#######    Delete Items Variables region ########################

$binfolder = "$ZIPDestination\bin"
$Driversfolder = "$ZIPDestination\Drivers"
$filesfolder = "$ZIPDestination\files"
$UUPsfolder = "$ZIPDestination\UUPs"

#####################################################

Write-Host "Deleting Subfolders and Files Windows Server 2022 Source Directory..." -ForegroundColor Cyan 

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
