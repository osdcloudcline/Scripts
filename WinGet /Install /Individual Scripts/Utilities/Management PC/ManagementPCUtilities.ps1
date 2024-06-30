Write-Host "Processing and Downloading: User Profile Backup and Restpre..." -ForegroundColor Cyan
$UPBRUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/User%20Profile%20Backup%20Restore/UserProfileBackupRestore.exe'
Save-WebFile 'https://github.com/osdcloudcline/OSDCloud/raw/main/User%20Profile%20Backup%20Restore/UserProfileBackupRestore.exe' -DestinationDirectory "C:\downloads"
$UPBROrgFile = "C:\OSDCloud\GitHub\downloads\UserProfileBackupRestore.exe"
$UPBRNewName = "C:\OSDCloud\GitHub\downloads\UPBR.exe"
Rename-Item -Path $UPBROrgFile -NewName $UPBRNewName
Copy-Item -Path $UPBRNewName -Destination "$env:username\Desktop"

Write-Host "Accessing OSD Cloud\OS Kits GitHub Repo from OSDCloudCline to download Windows SDK, ADK and PE ADK Add-On files..." -ForegroundColor Cyan
Write-Host "Processing and Downloading: Windows 11 22H2 SDK Setup File..." -ForegroundColor Cyan
$Win11_22H2SDKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/winsdksetup.exe'
Save-WebFile 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/winsdksetup.exe' -DestinationDirectory "C:\OSDCloud\GitHub\downloads"

Write-Host "Processing and Downloading: Windows 11 22H2 ADK Setup File..." -ForegroundColor Cyan
$Win11_22H2ADKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adksetup.exe'
Save-WebFile 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adksetup.exe' -DestinationDirectory "C:\OSDCloud\GitHub\downloads"

Write-Host "Processing and Downloading: Windows 11 22H2 PE ADK Add-On Setup File..." -ForegroundColor Cyan
$Win11_22H2PEADKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adkwinpesetup.exe'
Save-WebFile 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adkwinpesetup.exe' -DestinationDirectory "C:\OSDCloud\GitHub\downloads"

Write-Host "Completed All Downloads..." -ForegroundColor Green

Get-Win11SDK

Get-Win11ADK

Get-Win11PEADK

Function Get-Win11SDK(){
$SDKSetup = "C:\OSDCloud\GitHub\downloads\winsdksetup.exe"
Write-Host "Installing Windows 11 SDK 22H2 10.0.22621" -ForegroundColor Green
Start-Process -FilePath $SDKSetup
Write-Host "Windows 11 SDK 22H2 10.0.22621 installed successfully" -ForegroundColor Green
}

Function Get-Win11ADK(){
$ADKSetup = "C:\OSDCloud\GitHub\downloads\adksetup.exe"
Write-Host "Installing Windows 11 ADK 22H2 10.0.22621" -ForegroundColor Green
Start-Process -FilePath $ADKSetup
Write-Host "Windows 11 ADK 22H2 10.0.22621 installed successfully" -ForegroundColor Green
}

Function Get-Win11PEADK(){
$ADKPESetup = "C:\OSDCloud\GitHub\downloads\adkwinpesetup.exe"
Write-Host "Installing Windows 11 ADK PE Add-On 22H2 10.0.22621" -ForegroundColor Green
Start-Process -FilePath $ADKPESetup
Write-Host "Windows 11 ADK PE Add-On 22H2 10.0.22621 installed successfully" -ForegroundColor Green
}
