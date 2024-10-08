$Win10Log = "C:\OSD Cloud\Logs\OS Downloads\Windows10.log"
Start-Transcript $Win10Log

Get-Date

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

################### ISO Download, Extraction and Creation Variables region ##########################

$ZIPDestination = "$env:userprofile\Downloads\OS\Windows10\22H2"

$Windows10URL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2010/22H2/19045.4472_amd64_en-us_multi_39143328_convert_virtual.zip"

$ExtractionLocation = $ZIPDestination

$Windows10Downloader = "$ZIPDestination\uup_download_windows.cmd"

########################################################################################

Write-Host "Downloading Windows 10 22H2 ZIP File..." -ForegroundColor Cyan 

Save-WebFile -SourceUrl $Windows10URL -DestinationDirectory $ZIPDestination

Write-Host "Expanding Windows 10 22H2 ZIP File..." -ForegroundColor Cyan 

Expand-Archive -Path "$ZIPDestination\19045.4472_amd64_en-us_multi_39143328_convert_virtual.zip" -DestinationPath $ExtractionLocation
Write-Host
Write-Host "Downloading Windows 10 22H2..." -ForegroundColor Cyan 

Start-Process -FilePath $Windows10Downloader

pause

#######    Delete Items Variables region ########################

$binfolder = "$ZIPDestination\bin"
$Driversfolder = "$ZIPDestination\Drivers"
$filesfolder = "$ZIPDestination\files"
$UUPsfolder = "$ZIPDestination\UUPs"

#####################################################

Write-Host "Deleting Subfolders and Files Windows 10 22H2 Source Directory..." -ForegroundColor Cyan 

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

$OSDBuilder = Read-Host -Prompt 'Do you want to use OSD Builder to further customize the ISO?'
If(($OSDBuilder -eq "yes") -or ($OSDBuilder -eq "y") -or ($OSDBuilder -eq "YES") -or ($OSDBuilder -eq "Y")){
$OSDBuilderCheck = Get-InstalledModule | Where-Object -Property Name -eq "OSDBuilder"
If($OSDBuilderCheck -eq $true){
$OSDBuilderPWD = Read-Host -Prompt 'Please specify a path for OSDBuilder working directory'
Get-OSDBuilder -SetPath $OSDBuilderPWD
Get-OSDBuilder -SetHome $OSDBuilderPWD
Import-OSMedia -Update -ShowInfo
}
ElseIf($OSDBuilderCheck -eq $false){
Install-Module -Name OSDBuilder -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDBuilder -Force
$OSDBuilderPWD = Read-Host -Prompt 'Please specify a path for OSDBuilder working directory'
Get-OSDBuilder -SetPath $OSDBuilderPWD
Get-OSDBuilder -SetHome $OSDBuilderPWD
Import-OSMedia -Update -ShowInfo
}
ElseIf(($OSDBuilder -eq "no") -or ($OSDBuilder -eq "n") -or ($OSDBuilder -eq "NO") -or ($OSDBuilder -eq "N")){
exit
}

