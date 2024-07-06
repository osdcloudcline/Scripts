$app1 = "Nextcloud Desktop Client"

Write-Host "Processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id Nextcloud.NextcloudDesktop
