$app1 = "Google Drive"
$app2 = "Nextcloud Desktop Client"
$app3 = "DropBox"
$app4 = "Microsoft OneDrive"
$app5 = "User Profile Backup and Restore"

Write-Host "Beginning Application Installation on $env:computername..." -ForegroundColor Green

# Cloud Backup software
Write-Host "Installing Cloud Backup Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing: $app41 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Google.GoogleDrive --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app42 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Nextcloud.NextcloudDesktop --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app43 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Dropbox.Dropbox --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app44 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.OneDrive --exact --accept-source-agreements  --accept-source-agreements --force

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
