Start-Transcript -Path "C:\Logs\Powershell\Corporate\$env:computername-CorporateCloudBackupInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Google Drive"
$app2 = "DropBox"
$app3 = "Microsoft OneDrive"
$app4 = "User Profile Backup and Restore"

Write-Host "Configuring OSD PowerShell Modules..." -ForegroundColor Green

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force



# Cloud Backup software
Write-Host "Installing Cloud Backup Applications on $env:computername..." -ForegroundColor Green
Write-Host
Write-Verbose "Processing: $app1..." -Verbose
Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan

winget install --id Google.GoogleDrive --exact --accept-source-agreements  --accept-source-agreements --force


Write-Verbose "Processing: $app2..." -Verbose
Write-Host
Write-Host "Installing $app2..." -ForegroundColor Cyan

winget install --id Dropbox.Dropbox --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Processing: $app3..." -Verbose
Write-Host
Write-Host "Installing $app3..." -ForegroundColor Cyan

winget install --id Microsoft.OneDrive --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Acquiring and Downloading $app4 from OSDCloudCline GitHub Repo..." -ForegroundColor Green

$UPBR = "https://github.com/osdcloudcline/OSDCloud/raw/main/User%20Profile%20Backup%20Restore/UserProfileBackupRestore.exe"
$UPBRFilePath = "C:\downloads\UserProfileBackupRestore.exe"
$UPBRFilePathNewName = "C:\downloads\UPBR.exe"
$UPBRDir = "C:\downloads"
Save-WebFile -SourceUrl $UPBR -DestinationDirectory $UPBRDir
Rename-Item -Path $UPBRFilePath  -NewName $UPBRFilePathNewName
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\UPBR.lnk")
$Shortcut.TargetPath = "C:\downloads\UPBR.exe"
$Shortcut.Save()

Stop-Transcript
