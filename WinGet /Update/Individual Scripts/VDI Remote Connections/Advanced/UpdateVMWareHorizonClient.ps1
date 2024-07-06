$app1 = "VMWare Horizon Remote Desktop Connection Client"

Write-Host "Processing updates: $app1 on $env:computername..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco upgrade vmware-horizon-client -y
