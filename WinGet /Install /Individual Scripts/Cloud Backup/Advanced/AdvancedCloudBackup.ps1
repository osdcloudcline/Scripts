Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedCloudBackupInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Google Drive"
$app2 = "Nextcloud Desktop Client"
$app3 = "DropBox"
$app4 = "Microsoft OneDrive"
$app5 = "User Profile Backup and Restore"
$app6 = "Apple iCloud"

Write-Host "Configuring OSD PowerShell Modules..." -ForegroundColor Green

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force


# Cloud Backup software
Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Google.GoogleDrive --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing $app2..." -ForegroundColor Cyan
winget install --id Nextcloud.NextcloudDesktop --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host
Write-Host "Installing $app3..." -ForegroundColor Cyan
winget install --id Dropbox.Dropbox --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host
Write-Host "Installing $app4..." -ForegroundColor Cyan
winget install --id Microsoft.OneDrive --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Processing: $app5..." -Verbose
Write-Host
Write-Host "Acquiring and Downloading $app5 from OSDCloudCline GitHub Repo..." -ForegroundColor Green

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

Write-Host
Write-Host "Installing $app6..." -ForegroundColor Cyan
winget install --id Apple.iCloud --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
