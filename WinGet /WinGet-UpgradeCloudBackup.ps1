$app1 = "Google Drive"
$app2 = "Nextcloud Desktop Client"
$app3 = "DropBox"
$app4 = "Microsoft OneDrive"


Write-Host "Beginning Application Upgrades on $env:computername..." -ForegroundColor Green

# Cloud Backup software
Write-Host "Upgrading Cloud Backup Applications on $env:computername..." -ForegroundColor Green

Write-Host "Upgrading: $app1 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Google.GoogleDrive --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Upgrading: $app2 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Nextcloud.NextcloudDesktop --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Upgrading: $app3 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Dropbox.Dropbox --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Upgrading: $app4 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.OneDrive --exact --accept-source-agreements  --accept-source-agreements --force
