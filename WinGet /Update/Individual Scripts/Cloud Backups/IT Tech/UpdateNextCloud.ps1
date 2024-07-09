$app1 = "Nextcloud Desktop Client"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id Nextcloud.NextcloudDesktop
