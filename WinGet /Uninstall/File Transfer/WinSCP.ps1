$app1 = "WinSCP"

Write-Host "Uninstalling $app1..." -ForegroundColor Cyan

winget uninstall --id WinSCP.WinSCP
