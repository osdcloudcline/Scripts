$app2 = "Nextcloud Desktop Client"

Write-Host "Processing update: $app2..." -ForegroundColor Cyan
winget upgrade --id Nextcloud.NextcloudDesktop
