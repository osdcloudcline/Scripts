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

Write-Host "Acquiring and Downloading $app5 from GitHub Repo..." -ForegroundColor Green

