$app1 = "DropBox"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id Dropbox.Dropbox

$app2 = "Google Drive"

Write-Host "Checking for and processing update: $app2..." -ForegroundColor Cyan
winget upgrade --id Google.GoogleDrive

$app3 = "Nextcloud Desktop Client"

Write-Host "Checking for and processing update: $app3..." -ForegroundColor Cyan
winget upgrade --id Nextcloud.NextcloudDesktop

$app4 = "Microsoft OneDrive"

Write-Host "Checking for and processing update: $app4..." -ForegroundColor Cyan
winget upgrade --id Microsoft.OneDrive

$app5 = "Apple iCloud"

Write-Host "Checking for and processing update: $app5..." -ForegroundColor Cyan
winget upgrade --id Apple.iCloud 
