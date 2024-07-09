$app1 = "VMWare Horizon Remote Desktop Connection Client"

Write-Host "Checking for and processing update: $app1..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco upgrade vmware-horizon-client -y
