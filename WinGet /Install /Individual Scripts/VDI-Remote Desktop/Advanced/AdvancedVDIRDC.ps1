$app1 = "Microsoft Remote Desktop Client"
$app2 = "VMWare Horizon Remote Desktop Connection Client"
$app3 = "AnyDesk"


# Virtualization related software
Write-Host "Installing Virtualization and Remote Desktop Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing: $app1..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.RemoteDesktopClient --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Installing: $app2..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco install vmware-horizon-client -y

Write-Host "Installing: $app3..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id AnyDeskSoftwareGmbH.AnyDesk --exact --accept-source-agreements  --accept-source-agreements --force


