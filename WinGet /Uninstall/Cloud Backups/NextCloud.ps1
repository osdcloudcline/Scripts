$app1 = "Nextcloud Desktop Client"

Write-Host "Uninstalling $app1..." -ForegroundColor Cyan

winget uninstall --id Nextcloud.NextcloudDesktop
